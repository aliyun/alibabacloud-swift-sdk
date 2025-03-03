import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelFundAccountLowAvailableAmountAlarmRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
    }
}

public class CancelFundAccountLowAvailableAmountAlarmResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelFundAccountLowAvailableAmountAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelFundAccountLowAvailableAmountAlarmResponseBody?

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
            var model = CancelFundAccountLowAvailableAmountAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFundAccountTransferRequest : Tea.TeaModel {
    public var amount: String?

    public var currency: String?

    public var financeType: String?

    public var fromFundAccountId: Int64?

    public var remark: String?

    public var toFundAccountId: Int64?

    public var transferType: String?

    public override init() {
        super.init()
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
            map["Amount"] = self.amount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.financeType != nil {
            map["FinanceType"] = self.financeType!
        }
        if self.fromFundAccountId != nil {
            map["FromFundAccountId"] = self.fromFundAccountId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.toFundAccountId != nil {
            map["ToFundAccountId"] = self.toFundAccountId!
        }
        if self.transferType != nil {
            map["TransferType"] = self.transferType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("FinanceType") {
            self.financeType = dict["FinanceType"] as! String
        }
        if dict.keys.contains("FromFundAccountId") {
            self.fromFundAccountId = dict["FromFundAccountId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ToFundAccountId") {
            self.toFundAccountId = dict["ToFundAccountId"] as! Int64
        }
        if dict.keys.contains("TransferType") {
            self.transferType = dict["TransferType"] as! String
        }
    }
}

public class CreateFundAccountTransferResponseBody : Tea.TeaModel {
    public var metadata: Any?

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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFundAccountTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFundAccountTransferResponseBody?

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
            var model = CreateFundAccountTransferResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountAvailableAmountRequest : Tea.TeaModel {
    public var fundAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! String
        }
    }
}

public class GetFundAccountAvailableAmountResponseBody : Tea.TeaModel {
    public class ExtendLedgerList : Tea.TeaModel {
        public var currency: String?

        public var ledgerName: String?

        public var originalAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.ledgerName != nil {
                map["LedgerName"] = self.ledgerName!
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("LedgerName") {
                self.ledgerName = dict["LedgerName"] as! String
            }
            if dict.keys.contains("OriginalAmount") {
                self.originalAmount = dict["OriginalAmount"] as! String
            }
        }
    }
    public class OriginalCashAmountList : Tea.TeaModel {
        public var amount: String?

        public var currency: String?

        public override init() {
            super.init()
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
                map["Amount"] = self.amount!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
        }
    }
    public var availableAmount: String?

    public var availableCreditAmount: String?

    public var bankAcceptanceAmount: String?

    public var cashAmount: String?

    public var creditAmount: String?

    public var creditRefundAmount: String?

    public var creditUser: Bool?

    public var currency: String?

    public var currentMonthUnclearedAmount: String?

    public var extendLedgerList: [GetFundAccountAvailableAmountResponseBody.ExtendLedgerList]?

    public var fundAccountId: String?

    public var fundAccountOwnerAccountId: String?

    public var fundAccountStatus: String?

    public var fundAccountType: String?

    public var historyMonthUnclearedAmount: String?

    public var metadata: Any?

    public var negativeBillAmount: String?

    public var originalCashAmountList: [GetFundAccountAvailableAmountResponseBody.OriginalCashAmountList]?

    public var quotaAmount: String?

    public var quotaConsumedAmount: String?

    public var requestId: String?

    public var unclearedAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAmount != nil {
            map["AvailableAmount"] = self.availableAmount!
        }
        if self.availableCreditAmount != nil {
            map["AvailableCreditAmount"] = self.availableCreditAmount!
        }
        if self.bankAcceptanceAmount != nil {
            map["BankAcceptanceAmount"] = self.bankAcceptanceAmount!
        }
        if self.cashAmount != nil {
            map["CashAmount"] = self.cashAmount!
        }
        if self.creditAmount != nil {
            map["CreditAmount"] = self.creditAmount!
        }
        if self.creditRefundAmount != nil {
            map["CreditRefundAmount"] = self.creditRefundAmount!
        }
        if self.creditUser != nil {
            map["CreditUser"] = self.creditUser!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.currentMonthUnclearedAmount != nil {
            map["CurrentMonthUnclearedAmount"] = self.currentMonthUnclearedAmount!
        }
        if self.extendLedgerList != nil {
            var tmp : [Any] = []
            for k in self.extendLedgerList! {
                tmp.append(k.toMap())
            }
            map["ExtendLedgerList"] = tmp
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.fundAccountOwnerAccountId != nil {
            map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
        }
        if self.fundAccountStatus != nil {
            map["FundAccountStatus"] = self.fundAccountStatus!
        }
        if self.fundAccountType != nil {
            map["FundAccountType"] = self.fundAccountType!
        }
        if self.historyMonthUnclearedAmount != nil {
            map["HistoryMonthUnclearedAmount"] = self.historyMonthUnclearedAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.negativeBillAmount != nil {
            map["NegativeBillAmount"] = self.negativeBillAmount!
        }
        if self.originalCashAmountList != nil {
            var tmp : [Any] = []
            for k in self.originalCashAmountList! {
                tmp.append(k.toMap())
            }
            map["OriginalCashAmountList"] = tmp
        }
        if self.quotaAmount != nil {
            map["QuotaAmount"] = self.quotaAmount!
        }
        if self.quotaConsumedAmount != nil {
            map["QuotaConsumedAmount"] = self.quotaConsumedAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.unclearedAmount != nil {
            map["UnclearedAmount"] = self.unclearedAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableAmount") {
            self.availableAmount = dict["AvailableAmount"] as! String
        }
        if dict.keys.contains("AvailableCreditAmount") {
            self.availableCreditAmount = dict["AvailableCreditAmount"] as! String
        }
        if dict.keys.contains("BankAcceptanceAmount") {
            self.bankAcceptanceAmount = dict["BankAcceptanceAmount"] as! String
        }
        if dict.keys.contains("CashAmount") {
            self.cashAmount = dict["CashAmount"] as! String
        }
        if dict.keys.contains("CreditAmount") {
            self.creditAmount = dict["CreditAmount"] as! String
        }
        if dict.keys.contains("CreditRefundAmount") {
            self.creditRefundAmount = dict["CreditRefundAmount"] as! String
        }
        if dict.keys.contains("CreditUser") {
            self.creditUser = dict["CreditUser"] as! Bool
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("CurrentMonthUnclearedAmount") {
            self.currentMonthUnclearedAmount = dict["CurrentMonthUnclearedAmount"] as! String
        }
        if dict.keys.contains("ExtendLedgerList") {
            var tmp : [GetFundAccountAvailableAmountResponseBody.ExtendLedgerList] = []
            for v in dict["ExtendLedgerList"] as! [Any] {
                var model = GetFundAccountAvailableAmountResponseBody.ExtendLedgerList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.extendLedgerList = tmp
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! String
        }
        if dict.keys.contains("FundAccountOwnerAccountId") {
            self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! String
        }
        if dict.keys.contains("FundAccountStatus") {
            self.fundAccountStatus = dict["FundAccountStatus"] as! String
        }
        if dict.keys.contains("FundAccountType") {
            self.fundAccountType = dict["FundAccountType"] as! String
        }
        if dict.keys.contains("HistoryMonthUnclearedAmount") {
            self.historyMonthUnclearedAmount = dict["HistoryMonthUnclearedAmount"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("NegativeBillAmount") {
            self.negativeBillAmount = dict["NegativeBillAmount"] as! String
        }
        if dict.keys.contains("OriginalCashAmountList") {
            var tmp : [GetFundAccountAvailableAmountResponseBody.OriginalCashAmountList] = []
            for v in dict["OriginalCashAmountList"] as! [Any] {
                var model = GetFundAccountAvailableAmountResponseBody.OriginalCashAmountList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.originalCashAmountList = tmp
        }
        if dict.keys.contains("QuotaAmount") {
            self.quotaAmount = dict["QuotaAmount"] as! String
        }
        if dict.keys.contains("QuotaConsumedAmount") {
            self.quotaConsumedAmount = dict["QuotaConsumedAmount"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UnclearedAmount") {
            self.unclearedAmount = dict["UnclearedAmount"] as! String
        }
    }
}

public class GetFundAccountAvailableAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountAvailableAmountResponseBody?

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
            var model = GetFundAccountAvailableAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountCanAllocateCreditAmountRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
    }
}

public class GetFundAccountCanAllocateCreditAmountResponseBody : Tea.TeaModel {
    public var ecid: String?

    public var ecidAllocatedCreditAmount: String?

    public var ecidCreditAmount: String?

    public var fundAccountEcid: String?

    public var fundAccountId: Int64?

    public var fundAccountName: String?

    public var fundAccountOwnerAccountId: Int64?

    public var maxCanAllocateCreditAmount: String?

    public var metadata: Any?

    public var minCanAllocateCreditAmount: String?

    public var nbid: String?

    public var requestId: String?

    public var site: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecid != nil {
            map["Ecid"] = self.ecid!
        }
        if self.ecidAllocatedCreditAmount != nil {
            map["EcidAllocatedCreditAmount"] = self.ecidAllocatedCreditAmount!
        }
        if self.ecidCreditAmount != nil {
            map["EcidCreditAmount"] = self.ecidCreditAmount!
        }
        if self.fundAccountEcid != nil {
            map["FundAccountEcid"] = self.fundAccountEcid!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.fundAccountName != nil {
            map["FundAccountName"] = self.fundAccountName!
        }
        if self.fundAccountOwnerAccountId != nil {
            map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
        }
        if self.maxCanAllocateCreditAmount != nil {
            map["MaxCanAllocateCreditAmount"] = self.maxCanAllocateCreditAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.minCanAllocateCreditAmount != nil {
            map["MinCanAllocateCreditAmount"] = self.minCanAllocateCreditAmount!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.site != nil {
            map["Site"] = self.site!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ecid") {
            self.ecid = dict["Ecid"] as! String
        }
        if dict.keys.contains("EcidAllocatedCreditAmount") {
            self.ecidAllocatedCreditAmount = dict["EcidAllocatedCreditAmount"] as! String
        }
        if dict.keys.contains("EcidCreditAmount") {
            self.ecidCreditAmount = dict["EcidCreditAmount"] as! String
        }
        if dict.keys.contains("FundAccountEcid") {
            self.fundAccountEcid = dict["FundAccountEcid"] as! String
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
        if dict.keys.contains("FundAccountName") {
            self.fundAccountName = dict["FundAccountName"] as! String
        }
        if dict.keys.contains("FundAccountOwnerAccountId") {
            self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! Int64
        }
        if dict.keys.contains("MaxCanAllocateCreditAmount") {
            self.maxCanAllocateCreditAmount = dict["MaxCanAllocateCreditAmount"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("MinCanAllocateCreditAmount") {
            self.minCanAllocateCreditAmount = dict["MinCanAllocateCreditAmount"] as! String
        }
        if dict.keys.contains("Nbid") {
            self.nbid = dict["Nbid"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Site") {
            self.site = dict["Site"] as! String
        }
    }
}

public class GetFundAccountCanAllocateCreditAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanAllocateCreditAmountResponseBody?

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
            var model = GetFundAccountCanAllocateCreditAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountCanRecycleAmountRequest : Tea.TeaModel {
    public var currency: String?

    public var recycleFromFundAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.recycleFromFundAccountId != nil {
            map["RecycleFromFundAccountId"] = self.recycleFromFundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("RecycleFromFundAccountId") {
            self.recycleFromFundAccountId = dict["RecycleFromFundAccountId"] as! String
        }
    }
}

public class GetFundAccountCanRecycleAmountResponseBody : Tea.TeaModel {
    public class RecycleToFundAccountList : Tea.TeaModel {
        public var fundAccountId: String?

        public var fundAccountName: String?

        public var fundAccountOwnerAccountId: String?

        public var maxRecyclableAmount: String?

        public var originalTransferRemainAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountName != nil {
                map["FundAccountName"] = self.fundAccountName!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.maxRecyclableAmount != nil {
                map["MaxRecyclableAmount"] = self.maxRecyclableAmount!
            }
            if self.originalTransferRemainAmount != nil {
                map["OriginalTransferRemainAmount"] = self.originalTransferRemainAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FundAccountId") {
                self.fundAccountId = dict["FundAccountId"] as! String
            }
            if dict.keys.contains("FundAccountName") {
                self.fundAccountName = dict["FundAccountName"] as! String
            }
            if dict.keys.contains("FundAccountOwnerAccountId") {
                self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! String
            }
            if dict.keys.contains("MaxRecyclableAmount") {
                self.maxRecyclableAmount = dict["MaxRecyclableAmount"] as! String
            }
            if dict.keys.contains("OriginalTransferRemainAmount") {
                self.originalTransferRemainAmount = dict["OriginalTransferRemainAmount"] as! String
            }
        }
    }
    public var availableAmount: String?

    public var currency: String?

    public var metadata: Any?

    public var recycleFromFundAccountId: String?

    public var recycleToFundAccountList: [GetFundAccountCanRecycleAmountResponseBody.RecycleToFundAccountList]?

    public var requestId: String?

    public var transferAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAmount != nil {
            map["AvailableAmount"] = self.availableAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.recycleFromFundAccountId != nil {
            map["RecycleFromFundAccountId"] = self.recycleFromFundAccountId!
        }
        if self.recycleToFundAccountList != nil {
            var tmp : [Any] = []
            for k in self.recycleToFundAccountList! {
                tmp.append(k.toMap())
            }
            map["RecycleToFundAccountList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transferAmount != nil {
            map["TransferAmount"] = self.transferAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableAmount") {
            self.availableAmount = dict["AvailableAmount"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("RecycleFromFundAccountId") {
            self.recycleFromFundAccountId = dict["RecycleFromFundAccountId"] as! String
        }
        if dict.keys.contains("RecycleToFundAccountList") {
            var tmp : [GetFundAccountCanRecycleAmountResponseBody.RecycleToFundAccountList] = []
            for v in dict["RecycleToFundAccountList"] as! [Any] {
                var model = GetFundAccountCanRecycleAmountResponseBody.RecycleToFundAccountList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.recycleToFundAccountList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransferAmount") {
            self.transferAmount = dict["TransferAmount"] as! String
        }
    }
}

public class GetFundAccountCanRecycleAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanRecycleAmountResponseBody?

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
            var model = GetFundAccountCanRecycleAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountCanTransferAmountRequest : Tea.TeaModel {
    public var currency: String?

    public var fundAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! String
        }
    }
}

public class GetFundAccountCanTransferAmountResponseBody : Tea.TeaModel {
    public var availableAmount: String?

    public var cashAmount: String?

    public var currency: String?

    public var fundAccountEcid: String?

    public var fundAccountId: Int64?

    public var fundAccountName: String?

    public var fundAccountOwnerAccountId: Int64?

    public var maxTransferableAmount: String?

    public var metadata: Any?

    public var nbid: String?

    public var requestId: String?

    public var site: String?

    public var transferAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAmount != nil {
            map["AvailableAmount"] = self.availableAmount!
        }
        if self.cashAmount != nil {
            map["CashAmount"] = self.cashAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.fundAccountEcid != nil {
            map["FundAccountEcid"] = self.fundAccountEcid!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.fundAccountName != nil {
            map["FundAccountName"] = self.fundAccountName!
        }
        if self.fundAccountOwnerAccountId != nil {
            map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
        }
        if self.maxTransferableAmount != nil {
            map["MaxTransferableAmount"] = self.maxTransferableAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.site != nil {
            map["Site"] = self.site!
        }
        if self.transferAmount != nil {
            map["TransferAmount"] = self.transferAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableAmount") {
            self.availableAmount = dict["AvailableAmount"] as! String
        }
        if dict.keys.contains("CashAmount") {
            self.cashAmount = dict["CashAmount"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("FundAccountEcid") {
            self.fundAccountEcid = dict["FundAccountEcid"] as! String
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
        if dict.keys.contains("FundAccountName") {
            self.fundAccountName = dict["FundAccountName"] as! String
        }
        if dict.keys.contains("FundAccountOwnerAccountId") {
            self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! Int64
        }
        if dict.keys.contains("MaxTransferableAmount") {
            self.maxTransferableAmount = dict["MaxTransferableAmount"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("Nbid") {
            self.nbid = dict["Nbid"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Site") {
            self.site = dict["Site"] as! String
        }
        if dict.keys.contains("TransferAmount") {
            self.transferAmount = dict["TransferAmount"] as! String
        }
    }
}

public class GetFundAccountCanTransferAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanTransferAmountResponseBody?

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
            var model = GetFundAccountCanTransferAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountCanWithdrawAmountRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
    }
}

public class GetFundAccountCanWithdrawAmountResponseBody : Tea.TeaModel {
    public var canOriginalWithdrawAmount: String?

    public var canWithdrawAmount: String?

    public var cannotOriginalWithdrawAmount: String?

    public var cashAmount: String?

    public var creditMemoAmount: String?

    public var currentMonthUnclearedAmount: String?

    public var historyMonthUnclearedAmount: String?

    public var metadata: Any?

    public var payAsYouGoReversedAmount: String?

    public var requestId: String?

    public var transferAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canOriginalWithdrawAmount != nil {
            map["CanOriginalWithdrawAmount"] = self.canOriginalWithdrawAmount!
        }
        if self.canWithdrawAmount != nil {
            map["CanWithdrawAmount"] = self.canWithdrawAmount!
        }
        if self.cannotOriginalWithdrawAmount != nil {
            map["CannotOriginalWithdrawAmount"] = self.cannotOriginalWithdrawAmount!
        }
        if self.cashAmount != nil {
            map["CashAmount"] = self.cashAmount!
        }
        if self.creditMemoAmount != nil {
            map["CreditMemoAmount"] = self.creditMemoAmount!
        }
        if self.currentMonthUnclearedAmount != nil {
            map["CurrentMonthUnclearedAmount"] = self.currentMonthUnclearedAmount!
        }
        if self.historyMonthUnclearedAmount != nil {
            map["HistoryMonthUnclearedAmount"] = self.historyMonthUnclearedAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.payAsYouGoReversedAmount != nil {
            map["PayAsYouGoReversedAmount"] = self.payAsYouGoReversedAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transferAmount != nil {
            map["TransferAmount"] = self.transferAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanOriginalWithdrawAmount") {
            self.canOriginalWithdrawAmount = dict["CanOriginalWithdrawAmount"] as! String
        }
        if dict.keys.contains("CanWithdrawAmount") {
            self.canWithdrawAmount = dict["CanWithdrawAmount"] as! String
        }
        if dict.keys.contains("CannotOriginalWithdrawAmount") {
            self.cannotOriginalWithdrawAmount = dict["CannotOriginalWithdrawAmount"] as! String
        }
        if dict.keys.contains("CashAmount") {
            self.cashAmount = dict["CashAmount"] as! String
        }
        if dict.keys.contains("CreditMemoAmount") {
            self.creditMemoAmount = dict["CreditMemoAmount"] as! String
        }
        if dict.keys.contains("CurrentMonthUnclearedAmount") {
            self.currentMonthUnclearedAmount = dict["CurrentMonthUnclearedAmount"] as! String
        }
        if dict.keys.contains("HistoryMonthUnclearedAmount") {
            self.historyMonthUnclearedAmount = dict["HistoryMonthUnclearedAmount"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("PayAsYouGoReversedAmount") {
            self.payAsYouGoReversedAmount = dict["PayAsYouGoReversedAmount"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransferAmount") {
            self.transferAmount = dict["TransferAmount"] as! String
        }
    }
}

public class GetFundAccountCanWithdrawAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanWithdrawAmountResponseBody?

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
            var model = GetFundAccountCanWithdrawAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountLowAvailableAmountAlarmRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
    }
}

public class GetFundAccountLowAvailableAmountAlarmResponseBody : Tea.TeaModel {
    public var alarmEnabled: Bool?

    public var metadata: Any?

    public var requestId: String?

    public var thresholdAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmEnabled != nil {
            map["AlarmEnabled"] = self.alarmEnabled!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.thresholdAmount != nil {
            map["ThresholdAmount"] = self.thresholdAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmEnabled") {
            self.alarmEnabled = dict["AlarmEnabled"] as! Bool
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ThresholdAmount") {
            self.thresholdAmount = dict["ThresholdAmount"] as! String
        }
    }
}

public class GetFundAccountLowAvailableAmountAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountLowAvailableAmountAlarmResponseBody?

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
            var model = GetFundAccountLowAvailableAmountAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFundAccountTransactionDetailsRequest : Tea.TeaModel {
    public var billNumber: String?

    public var channelTransactionNumber: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var fundAccountId: Int64?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var transactionChannelList: [String]?

    public var transactionDirection: String?

    public var transactionNumber: Int64?

    public var transactionType: String?

    public var transactionTypeList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billNumber != nil {
            map["BillNumber"] = self.billNumber!
        }
        if self.channelTransactionNumber != nil {
            map["ChannelTransactionNumber"] = self.channelTransactionNumber!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.transactionChannelList != nil {
            map["TransactionChannelList"] = self.transactionChannelList!
        }
        if self.transactionDirection != nil {
            map["TransactionDirection"] = self.transactionDirection!
        }
        if self.transactionNumber != nil {
            map["TransactionNumber"] = self.transactionNumber!
        }
        if self.transactionType != nil {
            map["TransactionType"] = self.transactionType!
        }
        if self.transactionTypeList != nil {
            map["TransactionTypeList"] = self.transactionTypeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillNumber") {
            self.billNumber = dict["BillNumber"] as! String
        }
        if dict.keys.contains("ChannelTransactionNumber") {
            self.channelTransactionNumber = dict["ChannelTransactionNumber"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("TransactionChannelList") {
            self.transactionChannelList = dict["TransactionChannelList"] as! [String]
        }
        if dict.keys.contains("TransactionDirection") {
            self.transactionDirection = dict["TransactionDirection"] as! String
        }
        if dict.keys.contains("TransactionNumber") {
            self.transactionNumber = dict["TransactionNumber"] as! Int64
        }
        if dict.keys.contains("TransactionType") {
            self.transactionType = dict["TransactionType"] as! String
        }
        if dict.keys.contains("TransactionTypeList") {
            self.transactionTypeList = dict["TransactionTypeList"] as! [String]
        }
    }
}

public class GetFundAccountTransactionDetailsShrinkRequest : Tea.TeaModel {
    public var billNumber: String?

    public var channelTransactionNumber: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var fundAccountId: Int64?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var transactionChannelListShrink: String?

    public var transactionDirection: String?

    public var transactionNumber: Int64?

    public var transactionType: String?

    public var transactionTypeListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billNumber != nil {
            map["BillNumber"] = self.billNumber!
        }
        if self.channelTransactionNumber != nil {
            map["ChannelTransactionNumber"] = self.channelTransactionNumber!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.transactionChannelListShrink != nil {
            map["TransactionChannelList"] = self.transactionChannelListShrink!
        }
        if self.transactionDirection != nil {
            map["TransactionDirection"] = self.transactionDirection!
        }
        if self.transactionNumber != nil {
            map["TransactionNumber"] = self.transactionNumber!
        }
        if self.transactionType != nil {
            map["TransactionType"] = self.transactionType!
        }
        if self.transactionTypeListShrink != nil {
            map["TransactionTypeList"] = self.transactionTypeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillNumber") {
            self.billNumber = dict["BillNumber"] as! String
        }
        if dict.keys.contains("ChannelTransactionNumber") {
            self.channelTransactionNumber = dict["ChannelTransactionNumber"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("TransactionChannelList") {
            self.transactionChannelListShrink = dict["TransactionChannelList"] as! String
        }
        if dict.keys.contains("TransactionDirection") {
            self.transactionDirection = dict["TransactionDirection"] as! String
        }
        if dict.keys.contains("TransactionNumber") {
            self.transactionNumber = dict["TransactionNumber"] as! Int64
        }
        if dict.keys.contains("TransactionType") {
            self.transactionType = dict["TransactionType"] as! String
        }
        if dict.keys.contains("TransactionTypeList") {
            self.transactionTypeListShrink = dict["TransactionTypeList"] as! String
        }
    }
}

public class GetFundAccountTransactionDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var balance: String?

        public var billNumber: String?

        public var channelTransactionNumber: String?

        public var currency: String?

        public var fundAccountEcid: String?

        public var fundAccountId: Int64?

        public var fundAccountName: String?

        public var fundAccountOwnerAccountId: Int64?

        public var fundType: String?

        public var nbid: String?

        public var remark: String?

        public var site: String?

        public var transactionAccount: String?

        public var transactionAmount: String?

        public var transactionChannel: String?

        public var transactionDirection: String?

        public var transactionNumber: Int64?

        public var transactionTime: String?

        public var transactionType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.balance != nil {
                map["Balance"] = self.balance!
            }
            if self.billNumber != nil {
                map["BillNumber"] = self.billNumber!
            }
            if self.channelTransactionNumber != nil {
                map["ChannelTransactionNumber"] = self.channelTransactionNumber!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.fundAccountEcid != nil {
                map["FundAccountEcid"] = self.fundAccountEcid!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountName != nil {
                map["FundAccountName"] = self.fundAccountName!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.fundType != nil {
                map["FundType"] = self.fundType!
            }
            if self.nbid != nil {
                map["Nbid"] = self.nbid!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.transactionAccount != nil {
                map["TransactionAccount"] = self.transactionAccount!
            }
            if self.transactionAmount != nil {
                map["TransactionAmount"] = self.transactionAmount!
            }
            if self.transactionChannel != nil {
                map["TransactionChannel"] = self.transactionChannel!
            }
            if self.transactionDirection != nil {
                map["TransactionDirection"] = self.transactionDirection!
            }
            if self.transactionNumber != nil {
                map["TransactionNumber"] = self.transactionNumber!
            }
            if self.transactionTime != nil {
                map["TransactionTime"] = self.transactionTime!
            }
            if self.transactionType != nil {
                map["TransactionType"] = self.transactionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Balance") {
                self.balance = dict["Balance"] as! String
            }
            if dict.keys.contains("BillNumber") {
                self.billNumber = dict["BillNumber"] as! String
            }
            if dict.keys.contains("ChannelTransactionNumber") {
                self.channelTransactionNumber = dict["ChannelTransactionNumber"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("FundAccountEcid") {
                self.fundAccountEcid = dict["FundAccountEcid"] as! String
            }
            if dict.keys.contains("FundAccountId") {
                self.fundAccountId = dict["FundAccountId"] as! Int64
            }
            if dict.keys.contains("FundAccountName") {
                self.fundAccountName = dict["FundAccountName"] as! String
            }
            if dict.keys.contains("FundAccountOwnerAccountId") {
                self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! Int64
            }
            if dict.keys.contains("FundType") {
                self.fundType = dict["FundType"] as! String
            }
            if dict.keys.contains("Nbid") {
                self.nbid = dict["Nbid"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Site") {
                self.site = dict["Site"] as! String
            }
            if dict.keys.contains("TransactionAccount") {
                self.transactionAccount = dict["TransactionAccount"] as! String
            }
            if dict.keys.contains("TransactionAmount") {
                self.transactionAmount = dict["TransactionAmount"] as! String
            }
            if dict.keys.contains("TransactionChannel") {
                self.transactionChannel = dict["TransactionChannel"] as! String
            }
            if dict.keys.contains("TransactionDirection") {
                self.transactionDirection = dict["TransactionDirection"] as! String
            }
            if dict.keys.contains("TransactionNumber") {
                self.transactionNumber = dict["TransactionNumber"] as! Int64
            }
            if dict.keys.contains("TransactionTime") {
                self.transactionTime = dict["TransactionTime"] as! String
            }
            if dict.keys.contains("TransactionType") {
                self.transactionType = dict["TransactionType"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var data: [GetFundAccountTransactionDetailsResponseBody.Data]?

    public var metadata: Any?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [GetFundAccountTransactionDetailsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetFundAccountTransactionDetailsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetFundAccountTransactionDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountTransactionDetailsResponseBody?

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
            var model = GetFundAccountTransactionDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFundAccountRequest : Tea.TeaModel {
    public var nbid: String?

    public var queryOnlyInUse: Bool?

    public var queryOnlyManage: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.queryOnlyInUse != nil {
            map["QueryOnlyInUse"] = self.queryOnlyInUse!
        }
        if self.queryOnlyManage != nil {
            map["QueryOnlyManage"] = self.queryOnlyManage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nbid") {
            self.nbid = dict["Nbid"] as! String
        }
        if dict.keys.contains("QueryOnlyInUse") {
            self.queryOnlyInUse = dict["QueryOnlyInUse"] as! Bool
        }
        if dict.keys.contains("QueryOnlyManage") {
            self.queryOnlyManage = dict["QueryOnlyManage"] as! Bool
        }
    }
}

public class ListFundAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createDate: String?

        public var fundAccountAdminAccountId: String?

        public var fundAccountAdminAccountName: String?

        public var fundAccountId: String?

        public var fundAccountName: String?

        public var fundAccountOwnerAccountId: String?

        public var fundAccountStatus: String?

        public var fundAccountType: String?

        public var nbid: String?

        public var permissions: [String]?

        public var site: String?

        public override init() {
            super.init()
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
            if self.fundAccountAdminAccountId != nil {
                map["FundAccountAdminAccountId"] = self.fundAccountAdminAccountId!
            }
            if self.fundAccountAdminAccountName != nil {
                map["FundAccountAdminAccountName"] = self.fundAccountAdminAccountName!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountName != nil {
                map["FundAccountName"] = self.fundAccountName!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.fundAccountStatus != nil {
                map["FundAccountStatus"] = self.fundAccountStatus!
            }
            if self.fundAccountType != nil {
                map["FundAccountType"] = self.fundAccountType!
            }
            if self.nbid != nil {
                map["Nbid"] = self.nbid!
            }
            if self.permissions != nil {
                map["Permissions"] = self.permissions!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("FundAccountAdminAccountId") {
                self.fundAccountAdminAccountId = dict["FundAccountAdminAccountId"] as! String
            }
            if dict.keys.contains("FundAccountAdminAccountName") {
                self.fundAccountAdminAccountName = dict["FundAccountAdminAccountName"] as! String
            }
            if dict.keys.contains("FundAccountId") {
                self.fundAccountId = dict["FundAccountId"] as! String
            }
            if dict.keys.contains("FundAccountName") {
                self.fundAccountName = dict["FundAccountName"] as! String
            }
            if dict.keys.contains("FundAccountOwnerAccountId") {
                self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! String
            }
            if dict.keys.contains("FundAccountStatus") {
                self.fundAccountStatus = dict["FundAccountStatus"] as! String
            }
            if dict.keys.contains("FundAccountType") {
                self.fundAccountType = dict["FundAccountType"] as! String
            }
            if dict.keys.contains("Nbid") {
                self.nbid = dict["Nbid"] as! String
            }
            if dict.keys.contains("Permissions") {
                self.permissions = dict["Permissions"] as! [String]
            }
            if dict.keys.contains("Site") {
                self.site = dict["Site"] as! String
            }
        }
    }
    public var data: [ListFundAccountResponseBody.Data]?

    public var metadata: Any?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListFundAccountResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListFundAccountResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFundAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFundAccountResponseBody?

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
            var model = ListFundAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFundAccountPayRelationRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var fundAccountId: String?

    public var nbid: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! String
        }
        if dict.keys.contains("Nbid") {
            self.nbid = dict["Nbid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListFundAccountPayRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var ecid: String?

        public var effectiveTime: String?

        public var fundAccountId: String?

        public var fundAccountOwnerAccountId: String?

        public var ineffectiveTime: String?

        public var nbid: String?

        public var operatorName: String?

        public var operatorNo: String?

        public var operatorType: String?

        public var relationType: String?

        public var site: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.ecid != nil {
                map["Ecid"] = self.ecid!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.ineffectiveTime != nil {
                map["IneffectiveTime"] = self.ineffectiveTime!
            }
            if self.nbid != nil {
                map["Nbid"] = self.nbid!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.operatorNo != nil {
                map["OperatorNo"] = self.operatorNo!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.relationType != nil {
                map["RelationType"] = self.relationType!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("Ecid") {
                self.ecid = dict["Ecid"] as! String
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("FundAccountId") {
                self.fundAccountId = dict["FundAccountId"] as! String
            }
            if dict.keys.contains("FundAccountOwnerAccountId") {
                self.fundAccountOwnerAccountId = dict["FundAccountOwnerAccountId"] as! String
            }
            if dict.keys.contains("IneffectiveTime") {
                self.ineffectiveTime = dict["IneffectiveTime"] as! String
            }
            if dict.keys.contains("Nbid") {
                self.nbid = dict["Nbid"] as! String
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("OperatorNo") {
                self.operatorNo = dict["OperatorNo"] as! String
            }
            if dict.keys.contains("OperatorType") {
                self.operatorType = dict["OperatorType"] as! String
            }
            if dict.keys.contains("RelationType") {
                self.relationType = dict["RelationType"] as! String
            }
            if dict.keys.contains("Site") {
                self.site = dict["Site"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var data: [ListFundAccountPayRelationResponseBody.Data]?

    public var metadata: Any?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListFundAccountPayRelationResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListFundAccountPayRelationResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListFundAccountPayRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFundAccountPayRelationResponseBody?

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
            var model = ListFundAccountPayRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetFundAccountCreditAmountRequest : Tea.TeaModel {
    public var creditAmount: String?

    public var currency: String?

    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creditAmount != nil {
            map["CreditAmount"] = self.creditAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreditAmount") {
            self.creditAmount = dict["CreditAmount"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("FundAccountId") {
            self.fundAccountId = dict["FundAccountId"] as! Int64
        }
    }
}

public class SetFundAccountCreditAmountResponseBody : Tea.TeaModel {
    public var metadata: Any?

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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetFundAccountCreditAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFundAccountCreditAmountResponseBody?

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
            var model = SetFundAccountCreditAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSavingPlanUserDeductRuleRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountIds") {
                self.accountIds = dict["AccountIds"] as! [Int64]
            }
            if dict.keys.contains("EcId") {
                self.ecId = dict["EcId"] as! String
            }
        }
    }
    public class UserDeductRules : Tea.TeaModel {
        public var commodityCode: String?

        public var moduleCode: String?

        public var skipDeduct: Bool?

        public override init() {
            super.init()
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
                map["CommodityCode"] = self.commodityCode!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.skipDeduct != nil {
                map["SkipDeduct"] = self.skipDeduct!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("ModuleCode") {
                self.moduleCode = dict["ModuleCode"] as! String
            }
            if dict.keys.contains("SkipDeduct") {
                self.skipDeduct = dict["SkipDeduct"] as! Bool
            }
        }
    }
    public var ecIdAccountIds: [SetSavingPlanUserDeductRuleRequest.EcIdAccountIds]?

    public var nbid: String?

    public var spnInstanceCode: String?

    public var userDeductRules: [SetSavingPlanUserDeductRuleRequest.UserDeductRules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        if self.userDeductRules != nil {
            var tmp : [Any] = []
            for k in self.userDeductRules! {
                tmp.append(k.toMap())
            }
            map["UserDeductRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcIdAccountIds") {
            var tmp : [SetSavingPlanUserDeductRuleRequest.EcIdAccountIds] = []
            for v in dict["EcIdAccountIds"] as! [Any] {
                var model = SetSavingPlanUserDeductRuleRequest.EcIdAccountIds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ecIdAccountIds = tmp
        }
        if dict.keys.contains("Nbid") {
            self.nbid = dict["Nbid"] as! String
        }
        if dict.keys.contains("SpnInstanceCode") {
            self.spnInstanceCode = dict["SpnInstanceCode"] as! String
        }
        if dict.keys.contains("UserDeductRules") {
            var tmp : [SetSavingPlanUserDeductRuleRequest.UserDeductRules] = []
            for v in dict["UserDeductRules"] as! [Any] {
                var model = SetSavingPlanUserDeductRuleRequest.UserDeductRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userDeductRules = tmp
        }
    }
}

public class SetSavingPlanUserDeductRuleShrinkRequest : Tea.TeaModel {
    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var spnInstanceCode: String?

    public var userDeductRulesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        if self.userDeductRulesShrink != nil {
            map["UserDeductRules"] = self.userDeductRulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcIdAccountIds") {
            self.ecIdAccountIdsShrink = dict["EcIdAccountIds"] as! String
        }
        if dict.keys.contains("Nbid") {
            self.nbid = dict["Nbid"] as! String
        }
        if dict.keys.contains("SpnInstanceCode") {
            self.spnInstanceCode = dict["SpnInstanceCode"] as! String
        }
        if dict.keys.contains("UserDeductRules") {
            self.userDeductRulesShrink = dict["UserDeductRules"] as! String
        }
    }
}

public class SetSavingPlanUserDeductRuleResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetSavingPlanUserDeductRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSavingPlanUserDeductRuleResponseBody?

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
            var model = SetSavingPlanUserDeductRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
