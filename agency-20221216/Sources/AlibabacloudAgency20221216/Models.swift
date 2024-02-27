import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelSubscriptionBillRequest : Tea.TeaModel {
    public var subscribeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subscribeType != nil {
            map["SubscribeType"] = self.subscribeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubscribeType") && dict["SubscribeType"] != nil {
            self.subscribeType = dict["SubscribeType"] as! String
        }
    }
}

public class CancelSubscriptionBillResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelSubscriptionBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelSubscriptionBillResponseBody?

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
            var model = CancelSubscriptionBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomerRequest : Tea.TeaModel {
    public var customerName: String?

    public var customerSource: String?

    public var customerSubTrade: String?

    public var customerTrade: String?

    public var nation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerName != nil {
            map["CustomerName"] = self.customerName!
        }
        if self.customerSource != nil {
            map["CustomerSource"] = self.customerSource!
        }
        if self.customerSubTrade != nil {
            map["CustomerSubTrade"] = self.customerSubTrade!
        }
        if self.customerTrade != nil {
            map["CustomerTrade"] = self.customerTrade!
        }
        if self.nation != nil {
            map["Nation"] = self.nation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerName") && dict["CustomerName"] != nil {
            self.customerName = dict["CustomerName"] as! String
        }
        if dict.keys.contains("CustomerSource") && dict["CustomerSource"] != nil {
            self.customerSource = dict["CustomerSource"] as! String
        }
        if dict.keys.contains("CustomerSubTrade") && dict["CustomerSubTrade"] != nil {
            self.customerSubTrade = dict["CustomerSubTrade"] as! String
        }
        if dict.keys.contains("CustomerTrade") && dict["CustomerTrade"] != nil {
            self.customerTrade = dict["CustomerTrade"] as! String
        }
        if dict.keys.contains("Nation") && dict["Nation"] != nil {
            self.nation = dict["Nation"] as! String
        }
    }
}

public class CreateCustomerResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomerResponseBody?

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
            var model = CreateCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CustomerQuotaRecordListRequest : Tea.TeaModel {
    public var endDate: String?

    public var endUserPk: Int64?

    public var language: String?

    public var operationType: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.endUserPk != nil {
            map["EndUserPk"] = self.endUserPk!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("EndUserPk") && dict["EndUserPk"] != nil {
            self.endUserPk = dict["EndUserPk"] as! Int64
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class CustomerQuotaRecordListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var operationSubmitType: String?

        public var operationTime: String?

        public var operationTypeCode: String?

        public var operationTypeDesc: String?

        public var operationUid: String?

        public var updateAfterAmount: String?

        public var updateAmount: String?

        public var updateBeforeAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operationSubmitType != nil {
                map["OperationSubmitType"] = self.operationSubmitType!
            }
            if self.operationTime != nil {
                map["OperationTime"] = self.operationTime!
            }
            if self.operationTypeCode != nil {
                map["OperationTypeCode"] = self.operationTypeCode!
            }
            if self.operationTypeDesc != nil {
                map["OperationTypeDesc"] = self.operationTypeDesc!
            }
            if self.operationUid != nil {
                map["OperationUid"] = self.operationUid!
            }
            if self.updateAfterAmount != nil {
                map["UpdateAfterAmount"] = self.updateAfterAmount!
            }
            if self.updateAmount != nil {
                map["UpdateAmount"] = self.updateAmount!
            }
            if self.updateBeforeAmount != nil {
                map["UpdateBeforeAmount"] = self.updateBeforeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperationSubmitType") && dict["OperationSubmitType"] != nil {
                self.operationSubmitType = dict["OperationSubmitType"] as! String
            }
            if dict.keys.contains("OperationTime") && dict["OperationTime"] != nil {
                self.operationTime = dict["OperationTime"] as! String
            }
            if dict.keys.contains("OperationTypeCode") && dict["OperationTypeCode"] != nil {
                self.operationTypeCode = dict["OperationTypeCode"] as! String
            }
            if dict.keys.contains("OperationTypeDesc") && dict["OperationTypeDesc"] != nil {
                self.operationTypeDesc = dict["OperationTypeDesc"] as! String
            }
            if dict.keys.contains("OperationUid") && dict["OperationUid"] != nil {
                self.operationUid = dict["OperationUid"] as! String
            }
            if dict.keys.contains("UpdateAfterAmount") && dict["UpdateAfterAmount"] != nil {
                self.updateAfterAmount = dict["UpdateAfterAmount"] as! String
            }
            if dict.keys.contains("UpdateAmount") && dict["UpdateAmount"] != nil {
                self.updateAmount = dict["UpdateAmount"] as! String
            }
            if dict.keys.contains("UpdateBeforeAmount") && dict["UpdateBeforeAmount"] != nil {
                self.updateBeforeAmount = dict["UpdateBeforeAmount"] as! String
            }
        }
    }
    public var code: String?

    public var data: [CustomerQuotaRecordListResponseBody.Data]?

    public var msg: String?

    public var pageNo: Int32?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [CustomerQuotaRecordListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = CustomerQuotaRecordListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class CustomerQuotaRecordListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomerQuotaRecordListResponseBody?

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
            var model = CustomerQuotaRecordListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeductOutstandingBalanceRequest : Tea.TeaModel {
    public var deductAmount: String?

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
        if self.deductAmount != nil {
            map["DeductAmount"] = self.deductAmount!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeductAmount") && dict["DeductAmount"] != nil {
            self.deductAmount = dict["DeductAmount"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class DeductOutstandingBalanceResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeductOutstandingBalanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeductOutstandingBalanceResponseBody?

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
            var model = DeductOutstandingBalanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditEndUserStatusRequest : Tea.TeaModel {
    public var creditStatus: String?

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
        if self.creditStatus != nil {
            map["CreditStatus"] = self.creditStatus!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreditStatus") && dict["CreditStatus"] != nil {
            self.creditStatus = dict["CreditStatus"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class EditEndUserStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EditEndUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditEndUserStatusResponseBody?

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
            var model = EditEndUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditNewBuyStatusRequest : Tea.TeaModel {
    public var newBuyStatus: String?

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
        if self.newBuyStatus != nil {
            map["NewBuyStatus"] = self.newBuyStatus!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewBuyStatus") && dict["NewBuyStatus"] != nil {
            self.newBuyStatus = dict["NewBuyStatus"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class EditNewBuyStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EditNewBuyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditNewBuyStatusResponseBody?

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
            var model = EditNewBuyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditZeroCreditShutdownRequest : Tea.TeaModel {
    public var shutdownPolicy: String?

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
        if self.shutdownPolicy != nil {
            map["ShutdownPolicy"] = self.shutdownPolicy!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ShutdownPolicy") && dict["ShutdownPolicy"] != nil {
            self.shutdownPolicy = dict["ShutdownPolicy"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class EditZeroCreditShutdownResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EditZeroCreditShutdownResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditZeroCreditShutdownResponseBody?

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
            var model = EditZeroCreditShutdownResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportCustomerQuotaRecordRequest : Tea.TeaModel {
    public var endDate: String?

    public var endUserPk: Int64?

    public var language: String?

    public var operationType: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.endUserPk != nil {
            map["EndUserPk"] = self.endUserPk!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("EndUserPk") && dict["EndUserPk"] != nil {
            self.endUserPk = dict["EndUserPk"] as! Int64
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class ExportCustomerQuotaRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cost: Int32?

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
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cost") && dict["Cost"] != nil {
                self.cost = dict["Cost"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ExportCustomerQuotaRecordResponseBody.Data?

    public var msg: String?

    public var requestId: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ExportCustomerQuotaRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExportCustomerQuotaRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportCustomerQuotaRecordResponseBody?

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
            var model = ExportCustomerQuotaRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountInfoRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var uid: Int64?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class GetAccountInfoResponseBody : Tea.TeaModel {
    public class AccountInfoList : Tea.TeaModel {
        public class AccountInfo : Tea.TeaModel {
            public var accountNickname: String?

            public var aliyunId: String?

            public var associationSuccessTime: String?

            public var cid: Int64?

            public var email: String?

            public var mobile: String?

            public var remark: String?

            public var subAccountType: Int32?

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
                if self.accountNickname != nil {
                    map["AccountNickname"] = self.accountNickname!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.associationSuccessTime != nil {
                    map["AssociationSuccessTime"] = self.associationSuccessTime!
                }
                if self.cid != nil {
                    map["Cid"] = self.cid!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.subAccountType != nil {
                    map["SubAccountType"] = self.subAccountType!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountNickname") && dict["AccountNickname"] != nil {
                    self.accountNickname = dict["AccountNickname"] as! String
                }
                if dict.keys.contains("AliyunId") && dict["AliyunId"] != nil {
                    self.aliyunId = dict["AliyunId"] as! String
                }
                if dict.keys.contains("AssociationSuccessTime") && dict["AssociationSuccessTime"] != nil {
                    self.associationSuccessTime = dict["AssociationSuccessTime"] as! String
                }
                if dict.keys.contains("Cid") && dict["Cid"] != nil {
                    self.cid = dict["Cid"] as! Int64
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("SubAccountType") && dict["SubAccountType"] != nil {
                    self.subAccountType = dict["SubAccountType"] as! Int32
                }
                if dict.keys.contains("Uid") && dict["Uid"] != nil {
                    self.uid = dict["Uid"] as! Int64
                }
            }
        }
        public var accountInfo: [GetAccountInfoResponseBody.AccountInfoList.AccountInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountInfo != nil {
                var tmp : [Any] = []
                for k in self.accountInfo! {
                    tmp.append(k.toMap())
                }
                map["AccountInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountInfo") && dict["AccountInfo"] != nil {
                var tmp : [GetAccountInfoResponseBody.AccountInfoList.AccountInfo] = []
                for v in dict["AccountInfo"] as! [Any] {
                    var model = GetAccountInfoResponseBody.AccountInfoList.AccountInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accountInfo = tmp
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

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
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var accountInfoList: GetAccountInfoResponseBody.AccountInfoList?

    public var code: String?

    public var message: String?

    public var pageInfo: GetAccountInfoResponseBody.PageInfo?

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
        try self.accountInfoList?.validate()
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfoList != nil {
            map["AccountInfoList"] = self.accountInfoList?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if dict.keys.contains("AccountInfoList") && dict["AccountInfoList"] != nil {
            var model = GetAccountInfoResponseBody.AccountInfoList()
            model.fromMap(dict["AccountInfoList"] as! [String: Any])
            self.accountInfoList = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
            var model = GetAccountInfoResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountInfoResponseBody?

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
            var model = GetAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCreditInfoRequest : Tea.TeaModel {
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
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class GetCreditInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountStatus: String?

        public var alarmThreshold: String?

        public var availableCredit: String?

        public var consumedUndeductedValue: String?

        public var creditLine: String?

        public var outstandingBalance: String?

        public var zeroCreditShutdownPolicy: String?

        public var newBuyStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountStatus != nil {
                map["AccountStatus"] = self.accountStatus!
            }
            if self.alarmThreshold != nil {
                map["AlarmThreshold"] = self.alarmThreshold!
            }
            if self.availableCredit != nil {
                map["AvailableCredit"] = self.availableCredit!
            }
            if self.consumedUndeductedValue != nil {
                map["ConsumedUndeductedValue"] = self.consumedUndeductedValue!
            }
            if self.creditLine != nil {
                map["CreditLine"] = self.creditLine!
            }
            if self.outstandingBalance != nil {
                map["OutstandingBalance"] = self.outstandingBalance!
            }
            if self.zeroCreditShutdownPolicy != nil {
                map["ZeroCreditShutdownPolicy"] = self.zeroCreditShutdownPolicy!
            }
            if self.newBuyStatus != nil {
                map["newBuyStatus"] = self.newBuyStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountStatus") && dict["AccountStatus"] != nil {
                self.accountStatus = dict["AccountStatus"] as! String
            }
            if dict.keys.contains("AlarmThreshold") && dict["AlarmThreshold"] != nil {
                self.alarmThreshold = dict["AlarmThreshold"] as! String
            }
            if dict.keys.contains("AvailableCredit") && dict["AvailableCredit"] != nil {
                self.availableCredit = dict["AvailableCredit"] as! String
            }
            if dict.keys.contains("ConsumedUndeductedValue") && dict["ConsumedUndeductedValue"] != nil {
                self.consumedUndeductedValue = dict["ConsumedUndeductedValue"] as! String
            }
            if dict.keys.contains("CreditLine") && dict["CreditLine"] != nil {
                self.creditLine = dict["CreditLine"] as! String
            }
            if dict.keys.contains("OutstandingBalance") && dict["OutstandingBalance"] != nil {
                self.outstandingBalance = dict["OutstandingBalance"] as! String
            }
            if dict.keys.contains("ZeroCreditShutdownPolicy") && dict["ZeroCreditShutdownPolicy"] != nil {
                self.zeroCreditShutdownPolicy = dict["ZeroCreditShutdownPolicy"] as! String
            }
            if dict.keys.contains("newBuyStatus") && dict["newBuyStatus"] != nil {
                self.newBuyStatus = dict["newBuyStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetCreditInfoResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCreditInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCreditInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreditInfoResponseBody?

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
            var model = GetCreditInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDailyBillRequest : Tea.TeaModel {
    public var billOwner: String?

    public var billType: String?

    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwner != nil {
            map["BillOwner"] = self.billOwner!
        }
        if self.billType != nil {
            map["BillType"] = self.billType!
        }
        if self.date != nil {
            map["Date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwner") && dict["BillOwner"] != nil {
            self.billOwner = dict["BillOwner"] as! String
        }
        if dict.keys.contains("BillType") && dict["BillType"] != nil {
            self.billType = dict["BillType"] as! String
        }
        if dict.keys.contains("Date") && dict["Date"] != nil {
            self.date = dict["Date"] as! String
        }
    }
}

public class GetDailyBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billLinkCSV: String?

        public var billLinkXLSX: String?

        public var billOwner: String?

        public var billType: String?

        public var spendingTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billLinkCSV != nil {
                map["BillLinkCSV"] = self.billLinkCSV!
            }
            if self.billLinkXLSX != nil {
                map["BillLinkXLSX"] = self.billLinkXLSX!
            }
            if self.billOwner != nil {
                map["BillOwner"] = self.billOwner!
            }
            if self.billType != nil {
                map["BillType"] = self.billType!
            }
            if self.spendingTime != nil {
                map["SpendingTime"] = self.spendingTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillLinkCSV") && dict["BillLinkCSV"] != nil {
                self.billLinkCSV = dict["BillLinkCSV"] as! String
            }
            if dict.keys.contains("BillLinkXLSX") && dict["BillLinkXLSX"] != nil {
                self.billLinkXLSX = dict["BillLinkXLSX"] as! String
            }
            if dict.keys.contains("BillOwner") && dict["BillOwner"] != nil {
                self.billOwner = dict["BillOwner"] as! String
            }
            if dict.keys.contains("BillType") && dict["BillType"] != nil {
                self.billType = dict["BillType"] as! String
            }
            if dict.keys.contains("SpendingTime") && dict["SpendingTime"] != nil {
                self.spendingTime = dict["SpendingTime"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDailyBillResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDailyBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetDailyBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDailyBillResponseBody?

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
            var model = GetDailyBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInviteStatusRequest : Tea.TeaModel {
    public class InviteStatusList : Tea.TeaModel {
        public var inviteId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inviteId != nil {
                map["InviteId"] = self.inviteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InviteId") && dict["InviteId"] != nil {
                self.inviteId = dict["InviteId"] as! Int64
            }
        }
    }
    public var inviteStatusList: [GetInviteStatusRequest.InviteStatusList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inviteStatusList != nil {
            var tmp : [Any] = []
            for k in self.inviteStatusList! {
                tmp.append(k.toMap())
            }
            map["InviteStatusList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InviteStatusList") && dict["InviteStatusList"] != nil {
            var tmp : [GetInviteStatusRequest.InviteStatusList] = []
            for v in dict["InviteStatusList"] as! [Any] {
                var model = GetInviteStatusRequest.InviteStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.inviteStatusList = tmp
        }
    }
}

public class GetInviteStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InviteStatus : Tea.TeaModel {
            public class InviteStatusList : Tea.TeaModel {
                public var associationSuccessTime: String?

                public var cid: Int64?

                public var gmtCreate: String?

                public var parentId: String?

                public var status: Int32?

                public var subAccountType: String?

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
                    if self.associationSuccessTime != nil {
                        map["AssociationSuccessTime"] = self.associationSuccessTime!
                    }
                    if self.cid != nil {
                        map["Cid"] = self.cid!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.parentId != nil {
                        map["ParentId"] = self.parentId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subAccountType != nil {
                        map["SubAccountType"] = self.subAccountType!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AssociationSuccessTime") && dict["AssociationSuccessTime"] != nil {
                        self.associationSuccessTime = dict["AssociationSuccessTime"] as! String
                    }
                    if dict.keys.contains("Cid") && dict["Cid"] != nil {
                        self.cid = dict["Cid"] as! Int64
                    }
                    if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                        self.parentId = dict["ParentId"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("SubAccountType") && dict["SubAccountType"] != nil {
                        self.subAccountType = dict["SubAccountType"] as! String
                    }
                    if dict.keys.contains("Uid") && dict["Uid"] != nil {
                        self.uid = dict["Uid"] as! Int64
                    }
                }
            }
            public var code: String?

            public var inviteStatusList: GetInviteStatusResponseBody.Data.InviteStatus.InviteStatusList?

            public var message: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.inviteStatusList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.inviteStatusList != nil {
                    map["InviteStatusList"] = self.inviteStatusList?.toMap()
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("InviteStatusList") && dict["InviteStatusList"] != nil {
                    var model = GetInviteStatusResponseBody.Data.InviteStatus.InviteStatusList()
                    model.fromMap(dict["InviteStatusList"] as! [String: Any])
                    self.inviteStatusList = model
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Success") && dict["Success"] != nil {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var inviteStatus: [GetInviteStatusResponseBody.Data.InviteStatus]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inviteStatus != nil {
                var tmp : [Any] = []
                for k in self.inviteStatus! {
                    tmp.append(k.toMap())
                }
                map["InviteStatus"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InviteStatus") && dict["InviteStatus"] != nil {
                var tmp : [GetInviteStatusResponseBody.Data.InviteStatus] = []
                for v in dict["InviteStatus"] as! [Any] {
                    var model = GetInviteStatusResponseBody.Data.InviteStatus()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inviteStatus = tmp
            }
        }
    }
    public var code: String?

    public var data: GetInviteStatusResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetInviteStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInviteStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInviteStatusResponseBody?

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
            var model = GetInviteStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMonthlyBillRequest : Tea.TeaModel {
    public var billOwner: String?

    public var billType: String?

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
        if self.billOwner != nil {
            map["BillOwner"] = self.billOwner!
        }
        if self.billType != nil {
            map["BillType"] = self.billType!
        }
        if self.month != nil {
            map["Month"] = self.month!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwner") && dict["BillOwner"] != nil {
            self.billOwner = dict["BillOwner"] as! String
        }
        if dict.keys.contains("BillType") && dict["BillType"] != nil {
            self.billType = dict["BillType"] as! String
        }
        if dict.keys.contains("Month") && dict["Month"] != nil {
            self.month = dict["Month"] as! String
        }
    }
}

public class GetMonthlyBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billLinkCSV: String?

        public var billLinkXLSX: String?

        public var billOwner: String?

        public var billType: String?

        public var invoiceLink: String?

        public var refundInvoiceFlag: Bool?

        public var refundInvoiceLink: String?

        public var spendingTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billLinkCSV != nil {
                map["BillLinkCSV"] = self.billLinkCSV!
            }
            if self.billLinkXLSX != nil {
                map["BillLinkXLSX"] = self.billLinkXLSX!
            }
            if self.billOwner != nil {
                map["BillOwner"] = self.billOwner!
            }
            if self.billType != nil {
                map["BillType"] = self.billType!
            }
            if self.invoiceLink != nil {
                map["InvoiceLink"] = self.invoiceLink!
            }
            if self.refundInvoiceFlag != nil {
                map["RefundInvoiceFlag"] = self.refundInvoiceFlag!
            }
            if self.refundInvoiceLink != nil {
                map["RefundInvoiceLink"] = self.refundInvoiceLink!
            }
            if self.spendingTime != nil {
                map["SpendingTime"] = self.spendingTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillLinkCSV") && dict["BillLinkCSV"] != nil {
                self.billLinkCSV = dict["BillLinkCSV"] as! String
            }
            if dict.keys.contains("BillLinkXLSX") && dict["BillLinkXLSX"] != nil {
                self.billLinkXLSX = dict["BillLinkXLSX"] as! String
            }
            if dict.keys.contains("BillOwner") && dict["BillOwner"] != nil {
                self.billOwner = dict["BillOwner"] as! String
            }
            if dict.keys.contains("BillType") && dict["BillType"] != nil {
                self.billType = dict["BillType"] as! String
            }
            if dict.keys.contains("InvoiceLink") && dict["InvoiceLink"] != nil {
                self.invoiceLink = dict["InvoiceLink"] as! String
            }
            if dict.keys.contains("RefundInvoiceFlag") && dict["RefundInvoiceFlag"] != nil {
                self.refundInvoiceFlag = dict["RefundInvoiceFlag"] as! Bool
            }
            if dict.keys.contains("RefundInvoiceLink") && dict["RefundInvoiceLink"] != nil {
                self.refundInvoiceLink = dict["RefundInvoiceLink"] as! String
            }
            if dict.keys.contains("SpendingTime") && dict["SpendingTime"] != nil {
                self.spendingTime = dict["SpendingTime"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMonthlyBillResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetMonthlyBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMonthlyBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMonthlyBillResponseBody?

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
            var model = GetMonthlyBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUnassociatedCustomerRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class GetUnassociatedCustomerResponseBody : Tea.TeaModel {
    public class InviteInfoList : Tea.TeaModel {
        public class InviteInfo : Tea.TeaModel {
            public var accountNickname: String?

            public var email: String?

            public var gmtCreate: String?

            public var inviteId: Int64?

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
                if self.accountNickname != nil {
                    map["AccountNickname"] = self.accountNickname!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.inviteId != nil {
                    map["InviteId"] = self.inviteId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountNickname") && dict["AccountNickname"] != nil {
                    self.accountNickname = dict["AccountNickname"] as! String
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("InviteId") && dict["InviteId"] != nil {
                    self.inviteId = dict["InviteId"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var inviteInfo: [GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inviteInfo != nil {
                var tmp : [Any] = []
                for k in self.inviteInfo! {
                    tmp.append(k.toMap())
                }
                map["InviteInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InviteInfo") && dict["InviteInfo"] != nil {
                var tmp : [GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo] = []
                for v in dict["InviteInfo"] as! [Any] {
                    var model = GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inviteInfo = tmp
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

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
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: String?

    public var inviteInfoList: GetUnassociatedCustomerResponseBody.InviteInfoList?

    public var message: String?

    public var pageInfo: GetUnassociatedCustomerResponseBody.PageInfo?

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
        try self.inviteInfoList?.validate()
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.inviteInfoList != nil {
            map["InviteInfoList"] = self.inviteInfoList?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InviteInfoList") && dict["InviteInfoList"] != nil {
            var model = GetUnassociatedCustomerResponseBody.InviteInfoList()
            model.fromMap(dict["InviteInfoList"] as! [String: Any])
            self.inviteInfoList = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
            var model = GetUnassociatedCustomerResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUnassociatedCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUnassociatedCustomerResponseBody?

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
            var model = GetUnassociatedCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InviteSubAccountRequest : Tea.TeaModel {
    public class AccountInfoList : Tea.TeaModel {
        public var accountNickname: String?

        public var creditLine: String?

        public var customerId: String?

        public var emailAddress: String?

        public var newBuyStatus: String?

        public var remark: String?

        public var subAccountType: String?

        public var zeroCreditShutdownPolicy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountNickname != nil {
                map["AccountNickname"] = self.accountNickname!
            }
            if self.creditLine != nil {
                map["CreditLine"] = self.creditLine!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.emailAddress != nil {
                map["EmailAddress"] = self.emailAddress!
            }
            if self.newBuyStatus != nil {
                map["NewBuyStatus"] = self.newBuyStatus!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.subAccountType != nil {
                map["SubAccountType"] = self.subAccountType!
            }
            if self.zeroCreditShutdownPolicy != nil {
                map["ZeroCreditShutdownPolicy"] = self.zeroCreditShutdownPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountNickname") && dict["AccountNickname"] != nil {
                self.accountNickname = dict["AccountNickname"] as! String
            }
            if dict.keys.contains("CreditLine") && dict["CreditLine"] != nil {
                self.creditLine = dict["CreditLine"] as! String
            }
            if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
                self.emailAddress = dict["EmailAddress"] as! String
            }
            if dict.keys.contains("NewBuyStatus") && dict["NewBuyStatus"] != nil {
                self.newBuyStatus = dict["NewBuyStatus"] as! String
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("SubAccountType") && dict["SubAccountType"] != nil {
                self.subAccountType = dict["SubAccountType"] as! String
            }
            if dict.keys.contains("ZeroCreditShutdownPolicy") && dict["ZeroCreditShutdownPolicy"] != nil {
                self.zeroCreditShutdownPolicy = dict["ZeroCreditShutdownPolicy"] as! String
            }
        }
    }
    public var accountInfoList: [InviteSubAccountRequest.AccountInfoList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfoList != nil {
            var tmp : [Any] = []
            for k in self.accountInfoList! {
                tmp.append(k.toMap())
            }
            map["AccountInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountInfoList") && dict["AccountInfoList"] != nil {
            var tmp : [InviteSubAccountRequest.AccountInfoList] = []
            for v in dict["AccountInfoList"] as! [Any] {
                var model = InviteSubAccountRequest.AccountInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accountInfoList = tmp
        }
    }
}

public class InviteSubAccountResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var days: Int32?

                public var inviteId: Int64?

                public var regUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.days != nil {
                        map["Days"] = self.days!
                    }
                    if self.inviteId != nil {
                        map["InviteId"] = self.inviteId!
                    }
                    if self.regUrl != nil {
                        map["RegUrl"] = self.regUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Days") && dict["Days"] != nil {
                        self.days = dict["Days"] as! Int32
                    }
                    if dict.keys.contains("InviteId") && dict["InviteId"] != nil {
                        self.inviteId = dict["InviteId"] as! Int64
                    }
                    if dict.keys.contains("RegUrl") && dict["RegUrl"] != nil {
                        self.regUrl = dict["RegUrl"] as! String
                    }
                }
            }
            public var code: String?

            public var message: String?

            public var result: InviteSubAccountResponseBody.Results.Result.Result?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.result?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.result != nil {
                    map["Result"] = self.result?.toMap()
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Result") && dict["Result"] != nil {
                    var model = InviteSubAccountResponseBody.Results.Result.Result()
                    model.fromMap(dict["Result"] as! [String: Any])
                    self.result = model
                }
                if dict.keys.contains("Success") && dict["Success"] != nil {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var result: [InviteSubAccountResponseBody.Results.Result]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") && dict["Result"] != nil {
                var tmp : [InviteSubAccountResponseBody.Results.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = InviteSubAccountResponseBody.Results.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var results: InviteSubAccountResponseBody.Results?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.results?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var model = InviteSubAccountResponseBody.Results()
            model.fromMap(dict["Results"] as! [String: Any])
            self.results = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InviteSubAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InviteSubAccountResponseBody?

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
            var model = InviteSubAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCountriesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListCountriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCountriesResponseBody?

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
            var model = ListCountriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuotaListExportPagedRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var language: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QuotaListExportPagedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var fileName: String?

        public var message: String?

        public var status: String?

        public var statusCode: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusCode") && dict["StatusCode"] != nil {
                self.statusCode = dict["StatusCode"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var data: [QuotaListExportPagedResponseBody.Data]?

    public var msg: String?

    public var pageNo: Int32?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QuotaListExportPagedResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QuotaListExportPagedResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class QuotaListExportPagedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuotaListExportPagedResponseBody?

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
            var model = QuotaListExportPagedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResendEmailRequest : Tea.TeaModel {
    public var inviteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inviteId != nil {
            map["InviteId"] = self.inviteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InviteId") && dict["InviteId"] != nil {
            self.inviteId = dict["InviteId"] as! Int64
        }
    }
}

public class ResendEmailResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ResendEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendEmailResponseBody?

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
            var model = ResendEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccountInfoRequest : Tea.TeaModel {
    public var accountNickname: String?

    public var remark: String?

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
        if self.accountNickname != nil {
            map["AccountNickname"] = self.accountNickname!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNickname") && dict["AccountNickname"] != nil {
            self.accountNickname = dict["AccountNickname"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class SetAccountInfoResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccountInfoResponseBody?

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
            var model = SetAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetCreditLineRequest : Tea.TeaModel {
    public var creditLine: String?

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
        if self.creditLine != nil {
            map["CreditLine"] = self.creditLine!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreditLine") && dict["CreditLine"] != nil {
            self.creditLine = dict["CreditLine"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class SetCreditLineResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetCreditLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCreditLineResponseBody?

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
            var model = SetCreditLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetWarningThresholdRequest : Tea.TeaModel {
    public var uid: Int64?

    public var warningValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.warningValue != nil {
            map["WarningValue"] = self.warningValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
        if dict.keys.contains("WarningValue") && dict["WarningValue"] != nil {
            self.warningValue = dict["WarningValue"] as! String
        }
    }
}

public class SetWarningThresholdResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetWarningThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetWarningThresholdResponseBody?

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
            var model = SetWarningThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubscriptionBillRequest : Tea.TeaModel {
    public var beginBillingCycle: String?

    public var billFormat: String?

    public var bucketOwnerId: Int64?

    public var subscribeBucket: String?

    public var subscribeSegmentSize: Int32?

    public var subscribeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginBillingCycle != nil {
            map["BeginBillingCycle"] = self.beginBillingCycle!
        }
        if self.billFormat != nil {
            map["BillFormat"] = self.billFormat!
        }
        if self.bucketOwnerId != nil {
            map["BucketOwnerId"] = self.bucketOwnerId!
        }
        if self.subscribeBucket != nil {
            map["SubscribeBucket"] = self.subscribeBucket!
        }
        if self.subscribeSegmentSize != nil {
            map["SubscribeSegmentSize"] = self.subscribeSegmentSize!
        }
        if self.subscribeType != nil {
            map["SubscribeType"] = self.subscribeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginBillingCycle") && dict["BeginBillingCycle"] != nil {
            self.beginBillingCycle = dict["BeginBillingCycle"] as! String
        }
        if dict.keys.contains("BillFormat") && dict["BillFormat"] != nil {
            self.billFormat = dict["BillFormat"] as! String
        }
        if dict.keys.contains("BucketOwnerId") && dict["BucketOwnerId"] != nil {
            self.bucketOwnerId = dict["BucketOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscribeBucket") && dict["SubscribeBucket"] != nil {
            self.subscribeBucket = dict["SubscribeBucket"] as! String
        }
        if dict.keys.contains("SubscribeSegmentSize") && dict["SubscribeSegmentSize"] != nil {
            self.subscribeSegmentSize = dict["SubscribeSegmentSize"] as! Int32
        }
        if dict.keys.contains("SubscribeType") && dict["SubscribeType"] != nil {
            self.subscribeType = dict["SubscribeType"] as! String
        }
    }
}

public class SubscriptionBillResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubscriptionBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubscriptionBillResponseBody?

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
            var model = SubscriptionBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
