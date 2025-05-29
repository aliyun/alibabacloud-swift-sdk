import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetBillDetailFileListRequest : Tea.TeaModel {
    public var billMonth: String?

    public var ossAccessKeyId: String?

    public var ossAccessKeySecret: String?

    public var ossBucketName: String?

    public var ossEndpoint: String?

    public var ossRegion: String?

    public var ossSecurityToken: String?

    public override init() {
        super.init()
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
        if self.ossAccessKeyId != nil {
            map["OssAccessKeyId"] = self.ossAccessKeyId!
        }
        if self.ossAccessKeySecret != nil {
            map["OssAccessKeySecret"] = self.ossAccessKeySecret!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossRegion != nil {
            map["OssRegion"] = self.ossRegion!
        }
        if self.ossSecurityToken != nil {
            map["OssSecurityToken"] = self.ossSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillMonth"] as? String {
            self.billMonth = value
        }
        if let value = dict["OssAccessKeyId"] as? String {
            self.ossAccessKeyId = value
        }
        if let value = dict["OssAccessKeySecret"] as? String {
            self.ossAccessKeySecret = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["OssRegion"] as? String {
            self.ossRegion = value
        }
        if let value = dict["OssSecurityToken"] as? String {
            self.ossSecurityToken = value
        }
    }
}

public class GetBillDetailFileListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billMonth: String?

        public var fileName: String?

        public var fileUrl: String?

        public var status: String?

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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BillMonth"] as? String {
                self.billMonth = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetBillDetailFileListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetBillDetailFileListResponseBody.Data()
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
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetBillDetailFileListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCommissionDetailFileListRequest : Tea.TeaModel {
    public var billMonth: String?

    public var ossAccessKeyId: String?

    public var ossAccessKeySecret: String?

    public var ossBucketName: String?

    public var ossEndpoint: String?

    public var ossRegion: String?

    public var ossSecurityToken: String?

    public override init() {
        super.init()
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
        if self.ossAccessKeyId != nil {
            map["OssAccessKeyId"] = self.ossAccessKeyId!
        }
        if self.ossAccessKeySecret != nil {
            map["OssAccessKeySecret"] = self.ossAccessKeySecret!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossRegion != nil {
            map["OssRegion"] = self.ossRegion!
        }
        if self.ossSecurityToken != nil {
            map["OssSecurityToken"] = self.ossSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillMonth"] as? String {
            self.billMonth = value
        }
        if let value = dict["OssAccessKeyId"] as? String {
            self.ossAccessKeyId = value
        }
        if let value = dict["OssAccessKeySecret"] as? String {
            self.ossAccessKeySecret = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["OssRegion"] as? String {
            self.ossRegion = value
        }
        if let value = dict["OssSecurityToken"] as? String {
            self.ossSecurityToken = value
        }
    }
}

public class GetCommissionDetailFileListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FileList : Tea.TeaModel {
            public var bucketSyncStatus: String?

            public var commissionPolicyName: String?

            public var fileName: String?

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
                if self.bucketSyncStatus != nil {
                    map["BucketSyncStatus"] = self.bucketSyncStatus!
                }
                if self.commissionPolicyName != nil {
                    map["CommissionPolicyName"] = self.commissionPolicyName!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.fileUrl != nil {
                    map["FileUrl"] = self.fileUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BucketSyncStatus"] as? String {
                    self.bucketSyncStatus = value
                }
                if let value = dict["CommissionPolicyName"] as? String {
                    self.commissionPolicyName = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["FileUrl"] as? String {
                    self.fileUrl = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BillMonth"] as? String {
                self.billMonth = value
            }
            if let value = dict["FileList"] as? [Any?] {
                var tmp : [GetCommissionDetailFileListResponseBody.Data.FileList] = []
                for v in value {
                    if v != nil {
                        var model = GetCommissionDetailFileListResponseBody.Data.FileList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileList = tmp
            }
            if let value = dict["PartnerUid"] as? String {
                self.partnerUid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCommissionDetailFileListResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCommissionDetailFileListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerAccount"] as? String {
            self.customerAccount = value
        }
        if let value = dict["CustomerUid"] as? Int64 {
            self.customerUid = value
        }
        if let value = dict["OrderCreateAfter"] as? Int64 {
            self.orderCreateAfter = value
        }
        if let value = dict["OrderCreateBefore"] as? Int64 {
            self.orderCreateBefore = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderPayAfter"] as? Int64 {
            self.orderPayAfter = value
        }
        if let value = dict["OrderPayBefore"] as? Int64 {
            self.orderPayBefore = value
        }
        if let value = dict["OrderStatus"] as? Int32 {
            self.orderStatus = value
        }
        if let value = dict["OrderTypeList"] as? [String] {
            self.orderTypeList = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PayAmountAfter"] as? Double {
            self.payAmountAfter = value
        }
        if let value = dict["PayAmountBefore"] as? Double {
            self.payAmountBefore = value
        }
        if let value = dict["PayType"] as? Int32 {
            self.payType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProjectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["RamAccountForCustomerManager"] as? String {
            self.ramAccountForCustomerManager = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerAccount"] as? String {
            self.customerAccount = value
        }
        if let value = dict["CustomerUid"] as? Int64 {
            self.customerUid = value
        }
        if let value = dict["OrderCreateAfter"] as? Int64 {
            self.orderCreateAfter = value
        }
        if let value = dict["OrderCreateBefore"] as? Int64 {
            self.orderCreateBefore = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderPayAfter"] as? Int64 {
            self.orderPayAfter = value
        }
        if let value = dict["OrderPayBefore"] as? Int64 {
            self.orderPayBefore = value
        }
        if let value = dict["OrderStatus"] as? Int32 {
            self.orderStatus = value
        }
        if let value = dict["OrderTypeList"] as? String {
            self.orderTypeListShrink = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PayAmountAfter"] as? Double {
            self.payAmountAfter = value
        }
        if let value = dict["PayAmountBefore"] as? Double {
            self.payAmountBefore = value
        }
        if let value = dict["PayType"] as? Int32 {
            self.payType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProjectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["RamAccountForCustomerManager"] as? String {
            self.ramAccountForCustomerManager = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AmountDiscount"] as? Double {
                self.amountDiscount = value
            }
            if let value = dict["AmountDue"] as? Double {
                self.amountDue = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["CustomerAccount"] as? String {
                self.customerAccount = value
            }
            if let value = dict["CustomerClassification"] as? String {
                self.customerClassification = value
            }
            if let value = dict["CustomerUid"] as? Int64 {
                self.customerUid = value
            }
            if let value = dict["DeductedAmountByCoupons"] as? Double {
                self.deductedAmountByCoupons = value
            }
            if let value = dict["DiscountedPrice"] as? Double {
                self.discountedPrice = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["OrderStatus"] as? Int32 {
                self.orderStatus = value
            }
            if let value = dict["OrderType"] as? String {
                self.orderType = value
            }
            if let value = dict["PaidAt"] as? String {
                self.paidAt = value
            }
            if let value = dict["PayType"] as? Int32 {
                self.payType = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ProjectId"] as? Int64 {
                self.projectId = value
            }
            if let value = dict["RamAccountForCustomerManagers"] as? [String] {
                self.ramAccountForCustomerManagers = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetCustomerOrderListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetCustomerOrderListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCustomerOrderListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FiscalYearAndQuarter"] as? String {
            self.fiscalYearAndQuarter = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerAdjustedRenewalAmountDue"] as? Double {
                self.customerAdjustedRenewalAmountDue = value
            }
            if let value = dict["CustomerOtherBillAmount"] as? Double {
                self.customerOtherBillAmount = value
            }
            if let value = dict["FinalCustomerRenewalAmountDue"] as? Double {
                self.finalCustomerRenewalAmountDue = value
            }
            if let value = dict["FinalCustomerRenewalRate"] as? Double {
                self.finalCustomerRenewalRate = value
            }
            if let value = dict["FinalCustomerRenewedAmount"] as? Double {
                self.finalCustomerRenewedAmount = value
            }
            if let value = dict["FinalOtherBillAmount"] as? Double {
                self.finalOtherBillAmount = value
            }
            if let value = dict["FinalRenewalAmountDue"] as? Double {
                self.finalRenewalAmountDue = value
            }
            if let value = dict["FinalRenewalRate"] as? Double {
                self.finalRenewalRate = value
            }
            if let value = dict["FinalRenewedAmount"] as? Double {
                self.finalRenewedAmount = value
            }
            if let value = dict["FinalSubPartnerRenewalAmountDue"] as? Double {
                self.finalSubPartnerRenewalAmountDue = value
            }
            if let value = dict["FinalSubPartnerRenewalRate"] as? Double {
                self.finalSubPartnerRenewalRate = value
            }
            if let value = dict["FinalSubPartnerRenewedAmount"] as? Double {
                self.finalSubPartnerRenewedAmount = value
            }
            if let value = dict["FiscalYearAndQuarter"] as? String {
                self.fiscalYearAndQuarter = value
            }
            if let value = dict["MasterPid"] as? String {
                self.masterPid = value
            }
            if let value = dict["MasterPidName"] as? String {
                self.masterPidName = value
            }
            if let value = dict["SpecialCustomerRenewRatio"] as? Double {
                self.specialCustomerRenewRatio = value
            }
            if let value = dict["SpecialCustomerRenewalAmountDue"] as? Double {
                self.specialCustomerRenewalAmountDue = value
            }
            if let value = dict["SpecialCustomerRenewedAmount"] as? Double {
                self.specialCustomerRenewedAmount = value
            }
            if let value = dict["SpecialFinalRenewRatio"] as? Double {
                self.specialFinalRenewRatio = value
            }
            if let value = dict["SpecialFinalRenewalAmountDue"] as? Double {
                self.specialFinalRenewalAmountDue = value
            }
            if let value = dict["SpecialFinalRenewedAmount"] as? Double {
                self.specialFinalRenewedAmount = value
            }
            if let value = dict["SpecialSubPartnerRenewRatio"] as? Double {
                self.specialSubPartnerRenewRatio = value
            }
            if let value = dict["SpecialSubPartnerRenewalAmountDue"] as? Double {
                self.specialSubPartnerRenewalAmountDue = value
            }
            if let value = dict["SpecialSubPartnerRenewedAmount"] as? Double {
                self.specialSubPartnerRenewedAmount = value
            }
            if let value = dict["SubPartnerAdjustedRenewalAmountDue"] as? Double {
                self.subPartnerAdjustedRenewalAmountDue = value
            }
            if let value = dict["SubPartnerOtherBillAmount"] as? Double {
                self.subPartnerOtherBillAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetRenewalRateListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetRenewalRateListResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRenewalRateListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SubPartnerCompanyName"] as? String {
            self.subPartnerCompanyName = value
        }
        if let value = dict["SubPartnerPid"] as? String {
            self.subPartnerPid = value
        }
    }
}

public class GetSubPartnerListResponseBody : Tea.TeaModel {
    public class SubPartnerList : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["AgreementStatus"] as? String {
                self.agreementStatus = value
            }
            if let value = dict["AgreementStatusDesc"] as? String {
                self.agreementStatusDesc = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["CompanyName"] as? String {
                self.companyName = value
            }
            if let value = dict["Contact"] as? String {
                self.contact = value
            }
            if let value = dict["District"] as? String {
                self.district = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["MasterAccount"] as? String {
                self.masterAccount = value
            }
            if let value = dict["MasterUid"] as? String {
                self.masterUid = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
        }
    }
    public var message: String?

    public var pageNo: String?

    public var pageSize: String?

    public var requestId: String?

    public var subPartnerList: [GetSubPartnerListResponseBody.SubPartnerList]?

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
        if self.subPartnerList != nil {
            var tmp : [Any] = []
            for k in self.subPartnerList! {
                tmp.append(k.toMap())
            }
            map["SubPartnerList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? String {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubPartnerList"] as? [Any?] {
            var tmp : [GetSubPartnerListResponseBody.SubPartnerList] = []
            for v in value {
                if v != nil {
                    var model = GetSubPartnerListResponseBody.SubPartnerList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subPartnerList = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSubPartnerListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderCreateAfter"] as? Int64 {
            self.orderCreateAfter = value
        }
        if let value = dict["OrderCreateBefore"] as? Int64 {
            self.orderCreateBefore = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderPayAfter"] as? Int64 {
            self.orderPayAfter = value
        }
        if let value = dict["OrderPayBefore"] as? Int64 {
            self.orderPayBefore = value
        }
        if let value = dict["OrderStatus"] as? Int64 {
            self.orderStatus = value
        }
        if let value = dict["OrderTypeList"] as? [String] {
            self.orderTypeList = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PayAmountAfter"] as? Int64 {
            self.payAmountAfter = value
        }
        if let value = dict["PayAmountBefore"] as? Int64 {
            self.payAmountBefore = value
        }
        if let value = dict["PayType"] as? Int64 {
            self.payType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProjectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["SubPartnerName"] as? String {
            self.subPartnerName = value
        }
        if let value = dict["SubPartnerUid"] as? Int64 {
            self.subPartnerUid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderCreateAfter"] as? Int64 {
            self.orderCreateAfter = value
        }
        if let value = dict["OrderCreateBefore"] as? Int64 {
            self.orderCreateBefore = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderPayAfter"] as? Int64 {
            self.orderPayAfter = value
        }
        if let value = dict["OrderPayBefore"] as? Int64 {
            self.orderPayBefore = value
        }
        if let value = dict["OrderStatus"] as? Int64 {
            self.orderStatus = value
        }
        if let value = dict["OrderTypeList"] as? String {
            self.orderTypeListShrink = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PayAmountAfter"] as? Int64 {
            self.payAmountAfter = value
        }
        if let value = dict["PayAmountBefore"] as? Int64 {
            self.payAmountBefore = value
        }
        if let value = dict["PayType"] as? Int64 {
            self.payType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProjectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["SubPartnerName"] as? String {
            self.subPartnerName = value
        }
        if let value = dict["SubPartnerUid"] as? Int64 {
            self.subPartnerUid = value
        }
    }
}

public class GetSubPartnerOrderListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var amountDiscount: Double?

        public var amountDue: Double?

        public var createdAt: String?

        public var customerClassification: String?

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
            if self.customerClassification != nil {
                map["CustomerClassification"] = self.customerClassification!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AmountDiscount"] as? Double {
                self.amountDiscount = value
            }
            if let value = dict["AmountDue"] as? Double {
                self.amountDue = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["CustomerClassification"] as? String {
                self.customerClassification = value
            }
            if let value = dict["DeductedAmountByCoupons"] as? Double {
                self.deductedAmountByCoupons = value
            }
            if let value = dict["DiscountedPrice"] as? Double {
                self.discountedPrice = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["OrderStatus"] as? Int32 {
                self.orderStatus = value
            }
            if let value = dict["OrderType"] as? String {
                self.orderType = value
            }
            if let value = dict["PaidAt"] as? String {
                self.paidAt = value
            }
            if let value = dict["PayType"] as? Int32 {
                self.payType = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ProjectId"] as? Int64 {
                self.projectId = value
            }
            if let value = dict["SubPartnerName"] as? String {
                self.subPartnerName = value
            }
            if let value = dict["SubPartnerUid"] as? Int64 {
                self.subPartnerUid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetSubPartnerOrderListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSubPartnerOrderListResponseBody.Data()
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
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSubPartnerOrderListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
