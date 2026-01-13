import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccountCreateCmd : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
    }
}

public class AccountCredentialDTO : Tea.TeaModel {
    public var accountId: String?

    public var callerIdentity: String?

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
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.callerIdentity != nil {
            map["callerIdentity"] = self.callerIdentity!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["callerIdentity"] as? String {
            self.callerIdentity = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class AccountInfoManageRequest : Tea.TeaModel {
    public var accountId: String?

    public var name: String?

    public var quarkKey: String?

    public var quarkName: String?

    public var testQps: Int32?

    public var testQueryPerDay: Int32?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.quarkKey != nil {
            map["quarkKey"] = self.quarkKey!
        }
        if self.quarkName != nil {
            map["quarkName"] = self.quarkName!
        }
        if self.testQps != nil {
            map["testQps"] = self.testQps!
        }
        if self.testQueryPerDay != nil {
            map["testQueryPerDay"] = self.testQueryPerDay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["quarkKey"] as? String {
            self.quarkKey = value
        }
        if let value = dict["quarkName"] as? String {
            self.quarkName = value
        }
        if let value = dict["testQps"] as? Int32 {
            self.testQps = value
        }
        if let value = dict["testQueryPerDay"] as? Int32 {
            self.testQueryPerDay = value
        }
    }
}

public class ApplyFormalServiceCmd : Tea.TeaModel {
    public var accountId: String?

    public var accountName: String?

    public var address: String?

    public var applyServiceInfos: [[String: Any]]?

    public var applyType: String?

    public var contactName: String?

    public var instanceId: String?

    public var phone: String?

    public var productName: String?

    public var qps: Int32?

    public var sceneDesc: String?

    public var serviceType: String?

    public override init() {
        super.init()
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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.applyServiceInfos != nil {
            map["applyServiceInfos"] = self.applyServiceInfos!
        }
        if self.applyType != nil {
            map["applyType"] = self.applyType!
        }
        if self.contactName != nil {
            map["contactName"] = self.contactName!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.qps != nil {
            map["qps"] = self.qps!
        }
        if self.sceneDesc != nil {
            map["sceneDesc"] = self.sceneDesc!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
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
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["applyServiceInfos"] as? [[String: Any]] {
            self.applyServiceInfos = value
        }
        if let value = dict["applyType"] as? String {
            self.applyType = value
        }
        if let value = dict["contactName"] as? String {
            self.contactName = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["phone"] as? String {
            self.phone = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["qps"] as? Int32 {
            self.qps = value
        }
        if let value = dict["sceneDesc"] as? String {
            self.sceneDesc = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class BaseResponse : Tea.TeaModel {
    public var data: [String: Any]?

    public var errorCode: String?

    public var errorMessage: String?

    public override init() {
        super.init()
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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
    }
}

public class BillDownOrUpgradeCmd : Tea.TeaModel {
    public var accountId: String?

    public var activeDate: String?

    public var codeType: String?

    public var operateTypEnum: String?

    public var qps: Int32?

    public override init() {
        super.init()
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
        if self.activeDate != nil {
            map["activeDate"] = self.activeDate!
        }
        if self.codeType != nil {
            map["codeType"] = self.codeType!
        }
        if self.operateTypEnum != nil {
            map["operateTypEnum"] = self.operateTypEnum!
        }
        if self.qps != nil {
            map["qps"] = self.qps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["activeDate"] as? String {
            self.activeDate = value
        }
        if let value = dict["codeType"] as? String {
            self.codeType = value
        }
        if let value = dict["operateTypEnum"] as? String {
            self.operateTypEnum = value
        }
        if let value = dict["qps"] as? Int32 {
            self.qps = value
        }
    }
}

public class DownloadApiCallDailyDetailCmd : Tea.TeaModel {
    public var apiName: String?

    public var endTime: String?

    public var engineType: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["apiName"] = self.apiName!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.engineType != nil {
            map["engineType"] = self.engineType!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiName"] as? String {
            self.apiName = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["engineType"] as? String {
            self.engineType = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class DownloadMeteringDailyDetailCmd : Tea.TeaModel {
    public var billPeriod: String?

    public var billingItem: String?

    public var endTime: String?

    public var startTime: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billPeriod != nil {
            map["billPeriod"] = self.billPeriod!
        }
        if self.billingItem != nil {
            map["billingItem"] = self.billingItem!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billPeriod"] as? String {
            self.billPeriod = value
        }
        if let value = dict["billingItem"] as? String {
            self.billingItem = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["subAccountId"] as? String {
            self.subAccountId = value
        }
    }
}

public class ExpendExpiredTimeRequest : Tea.TeaModel {
    public var accountId: String?

    public var testStartTime: String?

    public override init() {
        super.init()
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
        if self.testStartTime != nil {
            map["testStartTime"] = self.testStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["testStartTime"] as? String {
            self.testStartTime = value
        }
    }
}

public class IrAccountEntity : Tea.TeaModel {
    public var accountId: String?

    public var accountName: String?

    public var accountStatus: String?

    public var adjustedNormalQps: Int32?

    public var configuration: String?

    public var createTime: String?

    public var id: Int64?

    public var isDeleted: Int32?

    public var modifiedTime: String?

    public var quarkKey: String?

    public var quarkOsr: String?

    public var quarkUsername: String?

    public var searchType: String?

    public var testQps: Int32?

    public var testQueryPerDay: Int32?

    public var testStartTime: String?

    public override init() {
        super.init()
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
        if self.accountStatus != nil {
            map["accountStatus"] = self.accountStatus!
        }
        if self.adjustedNormalQps != nil {
            map["adjustedNormalQps"] = self.adjustedNormalQps!
        }
        if self.configuration != nil {
            map["configuration"] = self.configuration!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isDeleted != nil {
            map["isDeleted"] = self.isDeleted!
        }
        if self.modifiedTime != nil {
            map["modifiedTime"] = self.modifiedTime!
        }
        if self.quarkKey != nil {
            map["quarkKey"] = self.quarkKey!
        }
        if self.quarkOsr != nil {
            map["quarkOsr"] = self.quarkOsr!
        }
        if self.quarkUsername != nil {
            map["quarkUsername"] = self.quarkUsername!
        }
        if self.searchType != nil {
            map["searchType"] = self.searchType!
        }
        if self.testQps != nil {
            map["testQps"] = self.testQps!
        }
        if self.testQueryPerDay != nil {
            map["testQueryPerDay"] = self.testQueryPerDay!
        }
        if self.testStartTime != nil {
            map["testStartTime"] = self.testStartTime!
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
        if let value = dict["accountStatus"] as? String {
            self.accountStatus = value
        }
        if let value = dict["adjustedNormalQps"] as? Int32 {
            self.adjustedNormalQps = value
        }
        if let value = dict["configuration"] as? String {
            self.configuration = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["isDeleted"] as? Int32 {
            self.isDeleted = value
        }
        if let value = dict["modifiedTime"] as? String {
            self.modifiedTime = value
        }
        if let value = dict["quarkKey"] as? String {
            self.quarkKey = value
        }
        if let value = dict["quarkOsr"] as? String {
            self.quarkOsr = value
        }
        if let value = dict["quarkUsername"] as? String {
            self.quarkUsername = value
        }
        if let value = dict["searchType"] as? String {
            self.searchType = value
        }
        if let value = dict["testQps"] as? Int32 {
            self.testQps = value
        }
        if let value = dict["testQueryPerDay"] as? Int32 {
            self.testQueryPerDay = value
        }
        if let value = dict["testStartTime"] as? String {
            self.testStartTime = value
        }
    }
}

public class IrAccountPageQuery : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ListApiCallDailyDetailResult : Tea.TeaModel {
    public class Details : Tea.TeaModel {
        public var apiName: String?

        public var avgLatency: Int32?

        public var billDate: String?

        public var engineType: String?

        public var failedCount: Int32?

        public var p90Latency: Int32?

        public var p95Latency: Int32?

        public var requestMaxQps: Int32?

        public var subAccountId: String?

        public var successCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiName != nil {
                map["apiName"] = self.apiName!
            }
            if self.avgLatency != nil {
                map["avgLatency"] = self.avgLatency!
            }
            if self.billDate != nil {
                map["billDate"] = self.billDate!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.failedCount != nil {
                map["failedCount"] = self.failedCount!
            }
            if self.p90Latency != nil {
                map["p90Latency"] = self.p90Latency!
            }
            if self.p95Latency != nil {
                map["p95Latency"] = self.p95Latency!
            }
            if self.requestMaxQps != nil {
                map["requestMaxQps"] = self.requestMaxQps!
            }
            if self.subAccountId != nil {
                map["subAccountId"] = self.subAccountId!
            }
            if self.successCount != nil {
                map["successCount"] = self.successCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiName"] as? String {
                self.apiName = value
            }
            if let value = dict["avgLatency"] as? Int32 {
                self.avgLatency = value
            }
            if let value = dict["billDate"] as? String {
                self.billDate = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["failedCount"] as? Int32 {
                self.failedCount = value
            }
            if let value = dict["p90Latency"] as? Int32 {
                self.p90Latency = value
            }
            if let value = dict["p95Latency"] as? Int32 {
                self.p95Latency = value
            }
            if let value = dict["requestMaxQps"] as? Int32 {
                self.requestMaxQps = value
            }
            if let value = dict["subAccountId"] as? String {
                self.subAccountId = value
            }
            if let value = dict["successCount"] as? Int32 {
                self.successCount = value
            }
        }
    }
    public var details: [ListApiCallDailyDetailResult.Details]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.details != nil {
            var tmp : [Any] = []
            for k in self.details! {
                tmp.append(k.toMap())
            }
            map["details"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["details"] as? [Any?] {
            var tmp : [ListApiCallDailyDetailResult.Details] = []
            for v in value {
                if v != nil {
                    var model = ListApiCallDailyDetailResult.Details()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.details = tmp
        }
    }
}

public class ListMeteringDailyDetailResult : Tea.TeaModel {
    public class MeteringDailyDetailList : Tea.TeaModel {
        public var billDate: String?

        public var billPeriod: String?

        public var billingFunctionItem: String?

        public var billingItem: String?

        public var billingQps: Int32?

        public var failedCount: Int32?

        public var ladderTypeCode: Int32?

        public var subAccountId: String?

        public var successCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billDate != nil {
                map["billDate"] = self.billDate!
            }
            if self.billPeriod != nil {
                map["billPeriod"] = self.billPeriod!
            }
            if self.billingFunctionItem != nil {
                map["billingFunctionItem"] = self.billingFunctionItem!
            }
            if self.billingItem != nil {
                map["billingItem"] = self.billingItem!
            }
            if self.billingQps != nil {
                map["billingQps"] = self.billingQps!
            }
            if self.failedCount != nil {
                map["failedCount"] = self.failedCount!
            }
            if self.ladderTypeCode != nil {
                map["ladderTypeCode"] = self.ladderTypeCode!
            }
            if self.subAccountId != nil {
                map["subAccountId"] = self.subAccountId!
            }
            if self.successCount != nil {
                map["successCount"] = self.successCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billDate"] as? String {
                self.billDate = value
            }
            if let value = dict["billPeriod"] as? String {
                self.billPeriod = value
            }
            if let value = dict["billingFunctionItem"] as? String {
                self.billingFunctionItem = value
            }
            if let value = dict["billingItem"] as? String {
                self.billingItem = value
            }
            if let value = dict["billingQps"] as? Int32 {
                self.billingQps = value
            }
            if let value = dict["failedCount"] as? Int32 {
                self.failedCount = value
            }
            if let value = dict["ladderTypeCode"] as? Int32 {
                self.ladderTypeCode = value
            }
            if let value = dict["subAccountId"] as? String {
                self.subAccountId = value
            }
            if let value = dict["successCount"] as? Int32 {
                self.successCount = value
            }
        }
    }
    public var meteringDailyDetailList: [ListMeteringDailyDetailResult.MeteringDailyDetailList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringDailyDetailList != nil {
            var tmp : [Any] = []
            for k in self.meteringDailyDetailList! {
                tmp.append(k.toMap())
            }
            map["meteringDailyDetailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meteringDailyDetailList"] as? [Any?] {
            var tmp : [ListMeteringDailyDetailResult.MeteringDailyDetailList] = []
            for v in value {
                if v != nil {
                    var model = ListMeteringDailyDetailResult.MeteringDailyDetailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.meteringDailyDetailList = tmp
        }
    }
}

public class ListServicesResult : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var services: LrOrder?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.services?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.services != nil {
            map["services"] = self.services?.toMap()
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["services"] as? [String: Any?] {
            var model = LrOrder()
            model.fromMap(value)
            self.services = model
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListSubAccountInfoResult : Tea.TeaModel {
    public class SubAccountInfos : Tea.TeaModel {
        public var accountName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountName != nil {
                map["accountName"] = self.accountName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountName"] as? String {
                self.accountName = value
            }
        }
    }
    public var subAccountInfos: [ListSubAccountInfoResult.SubAccountInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subAccountInfos != nil {
            var tmp : [Any] = []
            for k in self.subAccountInfos! {
                tmp.append(k.toMap())
            }
            map["subAccountInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["subAccountInfos"] as? [Any?] {
            var tmp : [ListSubAccountInfoResult.SubAccountInfos] = []
            for v in value {
                if v != nil {
                    var model = ListSubAccountInfoResult.SubAccountInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subAccountInfos = tmp
        }
    }
}

public class LrOrder : Tea.TeaModel {
    public var accountCredentials: [AccountCredentialDTO]?

    public var aliUid: String?

    public var commodityCode: String?

    public var commodityId: String?

    public var commoditySpec: String?

    public var customerName: String?

    public var eventTime: String?

    public var expirationTime: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var instanceId: String?

    public var orderCategory: String?

    public var orderId: Int64?

    public var qps: Int32?

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
        if self.accountCredentials != nil {
            var tmp : [Any] = []
            for k in self.accountCredentials! {
                tmp.append(k.toMap())
            }
            map["accountCredentials"] = tmp
        }
        if self.aliUid != nil {
            map["aliUid"] = self.aliUid!
        }
        if self.commodityCode != nil {
            map["commodityCode"] = self.commodityCode!
        }
        if self.commodityId != nil {
            map["commodityId"] = self.commodityId!
        }
        if self.commoditySpec != nil {
            map["commoditySpec"] = self.commoditySpec!
        }
        if self.customerName != nil {
            map["customerName"] = self.customerName!
        }
        if self.eventTime != nil {
            map["eventTime"] = self.eventTime!
        }
        if self.expirationTime != nil {
            map["expirationTime"] = self.expirationTime!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.orderCategory != nil {
            map["orderCategory"] = self.orderCategory!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.qps != nil {
            map["qps"] = self.qps!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountCredentials"] as? [Any?] {
            var tmp : [AccountCredentialDTO] = []
            for v in value {
                if v != nil {
                    var model = AccountCredentialDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accountCredentials = tmp
        }
        if let value = dict["aliUid"] as? String {
            self.aliUid = value
        }
        if let value = dict["commodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["commodityId"] as? String {
            self.commodityId = value
        }
        if let value = dict["commoditySpec"] as? String {
            self.commoditySpec = value
        }
        if let value = dict["customerName"] as? String {
            self.customerName = value
        }
        if let value = dict["eventTime"] as? String {
            self.eventTime = value
        }
        if let value = dict["expirationTime"] as? String {
            self.expirationTime = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["orderCategory"] as? String {
            self.orderCategory = value
        }
        if let value = dict["orderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["qps"] as? Int32 {
            self.qps = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ManageAccountResult : Tea.TeaModel {
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
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class MeteringSummaryResult : Tea.TeaModel {
    public class MeteringSummaryList : Tea.TeaModel {
        public var billingFunctionItem: String?

        public var billingItem: String?

        public var failCount: Int32?

        public var successCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingFunctionItem != nil {
                map["billingFunctionItem"] = self.billingFunctionItem!
            }
            if self.billingItem != nil {
                map["billingItem"] = self.billingItem!
            }
            if self.failCount != nil {
                map["failCount"] = self.failCount!
            }
            if self.successCount != nil {
                map["successCount"] = self.successCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billingFunctionItem"] as? String {
                self.billingFunctionItem = value
            }
            if let value = dict["billingItem"] as? String {
                self.billingItem = value
            }
            if let value = dict["failCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["successCount"] as? Int32 {
                self.successCount = value
            }
        }
    }
    public var meteringSummaryList: [MeteringSummaryResult.MeteringSummaryList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringSummaryList != nil {
            var tmp : [Any] = []
            for k in self.meteringSummaryList! {
                tmp.append(k.toMap())
            }
            map["meteringSummaryList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meteringSummaryList"] as? [Any?] {
            var tmp : [MeteringSummaryResult.MeteringSummaryList] = []
            for v in value {
                if v != nil {
                    var model = MeteringSummaryResult.MeteringSummaryList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.meteringSummaryList = tmp
        }
    }
}

public class OperationResult : Tea.TeaModel {
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
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PrepaidRecord : Tea.TeaModel {
    public var accountId: String?

    public var accountName: String?

    public var codeType: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var remainQuota: Int64?

    public var status: String?

    public var totalQuota: Int64?

    public var usedQuota: Int64?

    public override init() {
        super.init()
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
        if self.codeType != nil {
            map["codeType"] = self.codeType!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.remainQuota != nil {
            map["remainQuota"] = self.remainQuota!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalQuota != nil {
            map["totalQuota"] = self.totalQuota!
        }
        if self.usedQuota != nil {
            map["usedQuota"] = self.usedQuota!
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
        if let value = dict["codeType"] as? String {
            self.codeType = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["remainQuota"] as? Int64 {
            self.remainQuota = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalQuota"] as? Int64 {
            self.totalQuota = value
        }
        if let value = dict["usedQuota"] as? Int64 {
            self.usedQuota = value
        }
    }
}

public class ReviewRecordResult : Tea.TeaModel {
    public var address: String?

    public var applyType: String?

    public var contactName: String?

    public var phone: String?

    public var sceneDesc: String?

    public var scopes: [String]?

    public var serviceType: String?

    public override init() {
        super.init()
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
            map["address"] = self.address!
        }
        if self.applyType != nil {
            map["applyType"] = self.applyType!
        }
        if self.contactName != nil {
            map["contactName"] = self.contactName!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        if self.sceneDesc != nil {
            map["sceneDesc"] = self.sceneDesc!
        }
        if self.scopes != nil {
            map["scopes"] = self.scopes!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["applyType"] as? String {
            self.applyType = value
        }
        if let value = dict["contactName"] as? String {
            self.contactName = value
        }
        if let value = dict["phone"] as? String {
            self.phone = value
        }
        if let value = dict["sceneDesc"] as? String {
            self.sceneDesc = value
        }
        if let value = dict["scopes"] as? [String] {
            self.scopes = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class ServiceConfigResult : Tea.TeaModel {
    public var poiSearchTotalQuota: String?

    public var poiSearchUsedQuota: String?

    public var searchTotalQuota: String?

    public var searchUsedQuota: String?

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
        if self.poiSearchTotalQuota != nil {
            map["poiSearchTotalQuota"] = self.poiSearchTotalQuota!
        }
        if self.poiSearchUsedQuota != nil {
            map["poiSearchUsedQuota"] = self.poiSearchUsedQuota!
        }
        if self.searchTotalQuota != nil {
            map["searchTotalQuota"] = self.searchTotalQuota!
        }
        if self.searchUsedQuota != nil {
            map["searchUsedQuota"] = self.searchUsedQuota!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["poiSearchTotalQuota"] as? String {
            self.poiSearchTotalQuota = value
        }
        if let value = dict["poiSearchUsedQuota"] as? String {
            self.poiSearchUsedQuota = value
        }
        if let value = dict["searchTotalQuota"] as? String {
            self.searchTotalQuota = value
        }
        if let value = dict["searchUsedQuota"] as? String {
            self.searchUsedQuota = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ApplyFormalServiceRequest : Tea.TeaModel {
    public var body: ApplyFormalServiceCmd?

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
            var model = ApplyFormalServiceCmd()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyFormalServiceResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ApplyFormalServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyFormalServiceResponseBody?

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
            var model = ApplyFormalServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckAccountTypeResponseBody : Tea.TeaModel {
    public var link: String?

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
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["link"] as? String {
            self.link = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckAccountTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAccountTypeResponseBody?

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
            var model = CheckAccountTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DownloadApiCallDailyDetailRequest : Tea.TeaModel {
    public var body: DownloadApiCallDailyDetailCmd?

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
            var model = DownloadApiCallDailyDetailCmd()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DownloadApiCallDailyDetailResponseBody : Tea.TeaModel {
    public var downloadUrl: String?

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
        if self.downloadUrl != nil {
            map["downloadUrl"] = self.downloadUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["downloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DownloadApiCallDailyDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadApiCallDailyDetailResponseBody?

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
            var model = DownloadApiCallDailyDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DownloadMeteringDailyDetailRequest : Tea.TeaModel {
    public var body: DownloadMeteringDailyDetailCmd?

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
            var model = DownloadMeteringDailyDetailCmd()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DownloadMeteringDailyDetailResponseBody : Tea.TeaModel {
    public var downloadUrl: String?

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
        if self.downloadUrl != nil {
            map["downloadUrl"] = self.downloadUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["downloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DownloadMeteringDailyDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadMeteringDailyDetailResponseBody?

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
            var model = DownloadMeteringDailyDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExpandSearchExpiredTimeRequest : Tea.TeaModel {
    public var body: ExpendExpiredTimeRequest?

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
            var model = ExpendExpiredTimeRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExpandSearchExpiredTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperationResult?

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
            var model = OperationResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountConfigInfoResponseBody : Tea.TeaModel {
    public var accountStatus: String?

    public var availableTime: String?

    public var billQps: String?

    public var ladderType: String?

    public var mainAccountId: String?

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
        if self.accountStatus != nil {
            map["accountStatus"] = self.accountStatus!
        }
        if self.availableTime != nil {
            map["availableTime"] = self.availableTime!
        }
        if self.billQps != nil {
            map["billQps"] = self.billQps!
        }
        if self.ladderType != nil {
            map["ladderType"] = self.ladderType!
        }
        if self.mainAccountId != nil {
            map["mainAccountId"] = self.mainAccountId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountStatus"] as? String {
            self.accountStatus = value
        }
        if let value = dict["availableTime"] as? String {
            self.availableTime = value
        }
        if let value = dict["billQps"] as? String {
            self.billQps = value
        }
        if let value = dict["ladderType"] as? String {
            self.ladderType = value
        }
        if let value = dict["mainAccountId"] as? String {
            self.mainAccountId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccountConfigInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountConfigInfoResponseBody?

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
            var model = GetAccountConfigInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountReviewRecordResponseBody : Tea.TeaModel {
    public var address: String?

    public var aliUid: String?

    public var applyType: String?

    public var contactName: String?

    public var instanceId: String?

    public var phone: String?

    public var productName: String?

    public var qps: Int32?

    public var requestId: String?

    public var sceneDesc: String?

    public var scopes: [String]?

    public var serviceType: String?

    public override init() {
        super.init()
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
            map["address"] = self.address!
        }
        if self.aliUid != nil {
            map["aliUid"] = self.aliUid!
        }
        if self.applyType != nil {
            map["applyType"] = self.applyType!
        }
        if self.contactName != nil {
            map["contactName"] = self.contactName!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.qps != nil {
            map["qps"] = self.qps!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sceneDesc != nil {
            map["sceneDesc"] = self.sceneDesc!
        }
        if self.scopes != nil {
            map["scopes"] = self.scopes!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["aliUid"] as? String {
            self.aliUid = value
        }
        if let value = dict["applyType"] as? String {
            self.applyType = value
        }
        if let value = dict["contactName"] as? String {
            self.contactName = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["phone"] as? String {
            self.phone = value
        }
        if let value = dict["productName"] as? String {
            self.productName = value
        }
        if let value = dict["qps"] as? Int32 {
            self.qps = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sceneDesc"] as? String {
            self.sceneDesc = value
        }
        if let value = dict["scopes"] as? [String] {
            self.scopes = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class GetAccountReviewRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountReviewRecordResponseBody?

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
            var model = GetAccountReviewRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMeteringSummaryRequest : Tea.TeaModel {
    public var billPeriod: String?

    public var billingItem: String?

    public var endTime: String?

    public var startTime: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billPeriod != nil {
            map["billPeriod"] = self.billPeriod!
        }
        if self.billingItem != nil {
            map["billingItem"] = self.billingItem!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billPeriod"] as? String {
            self.billPeriod = value
        }
        if let value = dict["billingItem"] as? String {
            self.billingItem = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["subAccountId"] as? String {
            self.subAccountId = value
        }
    }
}

public class GetMeteringSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MeteringSummaryResult?

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
            var model = MeteringSummaryResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ServiceConfigResult?

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
            var model = ServiceConfigResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiCallDailyDetailRequest : Tea.TeaModel {
    public var apiName: String?

    public var endTime: String?

    public var engineType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["apiName"] = self.apiName!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.engineType != nil {
            map["engineType"] = self.engineType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiName"] as? String {
            self.apiName = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["engineType"] as? String {
            self.engineType = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListApiCallDailyDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiCallDailyDetailResult?

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
            var model = ListApiCallDailyDetailResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiNamesResponseBody : Tea.TeaModel {
    public var apiNames: [String]?

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
        if self.apiNames != nil {
            map["apiNames"] = self.apiNames!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiNames"] as? [String] {
            self.apiNames = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListApiNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiNamesResponseBody?

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
            var model = ListApiNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMeteringDailyDetailRequest : Tea.TeaModel {
    public var billPeriod: String?

    public var billingItem: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billPeriod != nil {
            map["billPeriod"] = self.billPeriod!
        }
        if self.billingItem != nil {
            map["billingItem"] = self.billingItem!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billPeriod"] as? String {
            self.billPeriod = value
        }
        if let value = dict["billingItem"] as? String {
            self.billingItem = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["subAccountId"] as? String {
            self.subAccountId = value
        }
    }
}

public class ListMeteringDailyDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMeteringDailyDetailResult?

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
            var model = ListMeteringDailyDetailResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubAccountInfoResult?

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
            var model = ListSubAccountInfoResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManageSearchAccountInfoRequest : Tea.TeaModel {
    public var body: AccountInfoManageRequest?

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
            var model = AccountInfoManageRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManageSearchAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperationResult?

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
            var model = OperationResult()
            model.fromMap(value)
            self.body = model
        }
    }
}
