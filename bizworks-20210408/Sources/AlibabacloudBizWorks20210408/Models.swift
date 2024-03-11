import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabacloudEndpointUtil

public class QueryUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ArticleInfos : Tea.TeaModel {
            public var articleType: String?

            public var title: String?

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
                if self.articleType != nil {
                    map["articleType"] = self.articleType!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("articleType") && dict["articleType"] != nil {
                    self.articleType = dict["articleType"] as! String
                }
                if dict.keys.contains("title") && dict["title"] != nil {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class CommoditySpecUsageInfos : Tea.TeaModel {
            public class CommodityConfig : Tea.TeaModel {
                public var betaDeadlineMs: Int64?

                public var commodityCode: String?

                public var commodityName: String?

                public var expiredToReleasedHour: Int64?

                public var inBeta: Bool?

                public var independent: Bool?

                public var paidType: String?

                public var productCode: String?

                public var quotaItems: [String]?

                public var specCodes: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.betaDeadlineMs != nil {
                        map["betaDeadlineMs"] = self.betaDeadlineMs!
                    }
                    if self.commodityCode != nil {
                        map["commodityCode"] = self.commodityCode!
                    }
                    if self.commodityName != nil {
                        map["commodityName"] = self.commodityName!
                    }
                    if self.expiredToReleasedHour != nil {
                        map["expiredToReleasedHour"] = self.expiredToReleasedHour!
                    }
                    if self.inBeta != nil {
                        map["inBeta"] = self.inBeta!
                    }
                    if self.independent != nil {
                        map["independent"] = self.independent!
                    }
                    if self.paidType != nil {
                        map["paidType"] = self.paidType!
                    }
                    if self.productCode != nil {
                        map["productCode"] = self.productCode!
                    }
                    if self.quotaItems != nil {
                        map["quotaItems"] = self.quotaItems!
                    }
                    if self.specCodes != nil {
                        map["specCodes"] = self.specCodes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("betaDeadlineMs") && dict["betaDeadlineMs"] != nil {
                        self.betaDeadlineMs = dict["betaDeadlineMs"] as! Int64
                    }
                    if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                        self.commodityCode = dict["commodityCode"] as! String
                    }
                    if dict.keys.contains("commodityName") && dict["commodityName"] != nil {
                        self.commodityName = dict["commodityName"] as! String
                    }
                    if dict.keys.contains("expiredToReleasedHour") && dict["expiredToReleasedHour"] != nil {
                        self.expiredToReleasedHour = dict["expiredToReleasedHour"] as! Int64
                    }
                    if dict.keys.contains("inBeta") && dict["inBeta"] != nil {
                        self.inBeta = dict["inBeta"] as! Bool
                    }
                    if dict.keys.contains("independent") && dict["independent"] != nil {
                        self.independent = dict["independent"] as! Bool
                    }
                    if dict.keys.contains("paidType") && dict["paidType"] != nil {
                        self.paidType = dict["paidType"] as! String
                    }
                    if dict.keys.contains("productCode") && dict["productCode"] != nil {
                        self.productCode = dict["productCode"] as! String
                    }
                    if dict.keys.contains("quotaItems") && dict["quotaItems"] != nil {
                        self.quotaItems = dict["quotaItems"] as! [String]
                    }
                    if dict.keys.contains("specCodes") && dict["specCodes"] != nil {
                        self.specCodes = dict["specCodes"] as! [String]
                    }
                }
            }
            public class PurchasedCommoditySpecUsages : Tea.TeaModel {
                public class CommoditySpec : Tea.TeaModel {
                    public var applicationNum: String?

                    public var commercializeStatus: String?

                    public var commodityCode: String?

                    public var commodityName: String?

                    public var cpuNum: Int64?

                    public var expireDate: Int64?

                    public var memNum: Int64?

                    public var nextBuyActions: [String]?

                    public var ntmCommodityInstanceId: String?

                    public var openDate: Int64?

                    public var relatedSubProducts: [String]?

                    public var remainingTime: String?

                    public var specCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.applicationNum != nil {
                            map["applicationNum"] = self.applicationNum!
                        }
                        if self.commercializeStatus != nil {
                            map["commercializeStatus"] = self.commercializeStatus!
                        }
                        if self.commodityCode != nil {
                            map["commodityCode"] = self.commodityCode!
                        }
                        if self.commodityName != nil {
                            map["commodityName"] = self.commodityName!
                        }
                        if self.cpuNum != nil {
                            map["cpuNum"] = self.cpuNum!
                        }
                        if self.expireDate != nil {
                            map["expireDate"] = self.expireDate!
                        }
                        if self.memNum != nil {
                            map["memNum"] = self.memNum!
                        }
                        if self.nextBuyActions != nil {
                            map["nextBuyActions"] = self.nextBuyActions!
                        }
                        if self.ntmCommodityInstanceId != nil {
                            map["ntmCommodityInstanceId"] = self.ntmCommodityInstanceId!
                        }
                        if self.openDate != nil {
                            map["openDate"] = self.openDate!
                        }
                        if self.relatedSubProducts != nil {
                            map["relatedSubProducts"] = self.relatedSubProducts!
                        }
                        if self.remainingTime != nil {
                            map["remainingTime"] = self.remainingTime!
                        }
                        if self.specCode != nil {
                            map["specCode"] = self.specCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("applicationNum") && dict["applicationNum"] != nil {
                            self.applicationNum = dict["applicationNum"] as! String
                        }
                        if dict.keys.contains("commercializeStatus") && dict["commercializeStatus"] != nil {
                            self.commercializeStatus = dict["commercializeStatus"] as! String
                        }
                        if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                            self.commodityCode = dict["commodityCode"] as! String
                        }
                        if dict.keys.contains("commodityName") && dict["commodityName"] != nil {
                            self.commodityName = dict["commodityName"] as! String
                        }
                        if dict.keys.contains("cpuNum") && dict["cpuNum"] != nil {
                            self.cpuNum = dict["cpuNum"] as! Int64
                        }
                        if dict.keys.contains("expireDate") && dict["expireDate"] != nil {
                            self.expireDate = dict["expireDate"] as! Int64
                        }
                        if dict.keys.contains("memNum") && dict["memNum"] != nil {
                            self.memNum = dict["memNum"] as! Int64
                        }
                        if dict.keys.contains("nextBuyActions") && dict["nextBuyActions"] != nil {
                            self.nextBuyActions = dict["nextBuyActions"] as! [String]
                        }
                        if dict.keys.contains("ntmCommodityInstanceId") && dict["ntmCommodityInstanceId"] != nil {
                            self.ntmCommodityInstanceId = dict["ntmCommodityInstanceId"] as! String
                        }
                        if dict.keys.contains("openDate") && dict["openDate"] != nil {
                            self.openDate = dict["openDate"] as! Int64
                        }
                        if dict.keys.contains("relatedSubProducts") && dict["relatedSubProducts"] != nil {
                            self.relatedSubProducts = dict["relatedSubProducts"] as! [String]
                        }
                        if dict.keys.contains("remainingTime") && dict["remainingTime"] != nil {
                            self.remainingTime = dict["remainingTime"] as! String
                        }
                        if dict.keys.contains("specCode") && dict["specCode"] != nil {
                            self.specCode = dict["specCode"] as! String
                        }
                    }
                }
                public class CommodityUsage : Tea.TeaModel {
                    public var applicationNum: Int64?

                    public var cpuNum: Int64?

                    public var memNum: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.applicationNum != nil {
                            map["applicationNum"] = self.applicationNum!
                        }
                        if self.cpuNum != nil {
                            map["cpuNum"] = self.cpuNum!
                        }
                        if self.memNum != nil {
                            map["memNum"] = self.memNum!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("applicationNum") && dict["applicationNum"] != nil {
                            self.applicationNum = dict["applicationNum"] as! Int64
                        }
                        if dict.keys.contains("cpuNum") && dict["cpuNum"] != nil {
                            self.cpuNum = dict["cpuNum"] as! Int64
                        }
                        if dict.keys.contains("memNum") && dict["memNum"] != nil {
                            self.memNum = dict["memNum"] as! Int64
                        }
                    }
                }
                public var commoditySpec: QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages.CommoditySpec?

                public var commodityUsage: QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages.CommodityUsage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.commoditySpec?.validate()
                    try self.commodityUsage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.commoditySpec != nil {
                        map["commoditySpec"] = self.commoditySpec?.toMap()
                    }
                    if self.commodityUsage != nil {
                        map["commodityUsage"] = self.commodityUsage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("commoditySpec") && dict["commoditySpec"] != nil {
                        var model = QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages.CommoditySpec()
                        model.fromMap(dict["commoditySpec"] as! [String: Any])
                        self.commoditySpec = model
                    }
                    if dict.keys.contains("commodityUsage") && dict["commodityUsage"] != nil {
                        var model = QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages.CommodityUsage()
                        model.fromMap(dict["commodityUsage"] as! [String: Any])
                        self.commodityUsage = model
                    }
                }
            }
            public var commodityConfig: QueryUsageResponseBody.Data.CommoditySpecUsageInfos.CommodityConfig?

            public var purchasedCommoditySpecUsages: [QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.commodityConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityConfig != nil {
                    map["commodityConfig"] = self.commodityConfig?.toMap()
                }
                if self.purchasedCommoditySpecUsages != nil {
                    var tmp : [Any] = []
                    for k in self.purchasedCommoditySpecUsages! {
                        tmp.append(k.toMap())
                    }
                    map["purchasedCommoditySpecUsages"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("commodityConfig") && dict["commodityConfig"] != nil {
                    var model = QueryUsageResponseBody.Data.CommoditySpecUsageInfos.CommodityConfig()
                    model.fromMap(dict["commodityConfig"] as! [String: Any])
                    self.commodityConfig = model
                }
                if dict.keys.contains("purchasedCommoditySpecUsages") && dict["purchasedCommoditySpecUsages"] != nil {
                    var tmp : [QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages] = []
                    for v in dict["purchasedCommoditySpecUsages"] as! [Any] {
                        var model = QueryUsageResponseBody.Data.CommoditySpecUsageInfos.PurchasedCommoditySpecUsages()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.purchasedCommoditySpecUsages = tmp
                }
            }
        }
        public class SubProductInfos : Tea.TeaModel {
            public class SubProduct : Tea.TeaModel {
                public var display: Bool?

                public var extendProperties: [String: Any]?

                public var subProductCode: String?

                public var subProductName: String?

                public var subProductState: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.display != nil {
                        map["display"] = self.display!
                    }
                    if self.extendProperties != nil {
                        map["extendProperties"] = self.extendProperties!
                    }
                    if self.subProductCode != nil {
                        map["subProductCode"] = self.subProductCode!
                    }
                    if self.subProductName != nil {
                        map["subProductName"] = self.subProductName!
                    }
                    if self.subProductState != nil {
                        map["subProductState"] = self.subProductState!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("display") && dict["display"] != nil {
                        self.display = dict["display"] as! Bool
                    }
                    if dict.keys.contains("extendProperties") && dict["extendProperties"] != nil {
                        self.extendProperties = dict["extendProperties"] as! [String: Any]
                    }
                    if dict.keys.contains("subProductCode") && dict["subProductCode"] != nil {
                        self.subProductCode = dict["subProductCode"] as! String
                    }
                    if dict.keys.contains("subProductName") && dict["subProductName"] != nil {
                        self.subProductName = dict["subProductName"] as! String
                    }
                    if dict.keys.contains("subProductState") && dict["subProductState"] != nil {
                        self.subProductState = dict["subProductState"] as! String
                    }
                }
            }
            public class SubProductCommoditySpecsForGuideToBuy : Tea.TeaModel {
                public class CommodityConfig : Tea.TeaModel {
                    public var betaDeadlineMs: Int64?

                    public var commodityCode: String?

                    public var commodityName: String?

                    public var expiredToReleasedHour: Int64?

                    public var inBeta: Bool?

                    public var independent: Bool?

                    public var paidType: String?

                    public var productCode: String?

                    public var quotaItems: [String]?

                    public var specCodes: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.betaDeadlineMs != nil {
                            map["betaDeadlineMs"] = self.betaDeadlineMs!
                        }
                        if self.commodityCode != nil {
                            map["commodityCode"] = self.commodityCode!
                        }
                        if self.commodityName != nil {
                            map["commodityName"] = self.commodityName!
                        }
                        if self.expiredToReleasedHour != nil {
                            map["expiredToReleasedHour"] = self.expiredToReleasedHour!
                        }
                        if self.inBeta != nil {
                            map["inBeta"] = self.inBeta!
                        }
                        if self.independent != nil {
                            map["independent"] = self.independent!
                        }
                        if self.paidType != nil {
                            map["paidType"] = self.paidType!
                        }
                        if self.productCode != nil {
                            map["productCode"] = self.productCode!
                        }
                        if self.quotaItems != nil {
                            map["quotaItems"] = self.quotaItems!
                        }
                        if self.specCodes != nil {
                            map["specCodes"] = self.specCodes!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("betaDeadlineMs") && dict["betaDeadlineMs"] != nil {
                            self.betaDeadlineMs = dict["betaDeadlineMs"] as! Int64
                        }
                        if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                            self.commodityCode = dict["commodityCode"] as! String
                        }
                        if dict.keys.contains("commodityName") && dict["commodityName"] != nil {
                            self.commodityName = dict["commodityName"] as! String
                        }
                        if dict.keys.contains("expiredToReleasedHour") && dict["expiredToReleasedHour"] != nil {
                            self.expiredToReleasedHour = dict["expiredToReleasedHour"] as! Int64
                        }
                        if dict.keys.contains("inBeta") && dict["inBeta"] != nil {
                            self.inBeta = dict["inBeta"] as! Bool
                        }
                        if dict.keys.contains("independent") && dict["independent"] != nil {
                            self.independent = dict["independent"] as! Bool
                        }
                        if dict.keys.contains("paidType") && dict["paidType"] != nil {
                            self.paidType = dict["paidType"] as! String
                        }
                        if dict.keys.contains("productCode") && dict["productCode"] != nil {
                            self.productCode = dict["productCode"] as! String
                        }
                        if dict.keys.contains("quotaItems") && dict["quotaItems"] != nil {
                            self.quotaItems = dict["quotaItems"] as! [String]
                        }
                        if dict.keys.contains("specCodes") && dict["specCodes"] != nil {
                            self.specCodes = dict["specCodes"] as! [String]
                        }
                    }
                }
                public class CommoditySpec : Tea.TeaModel {
                    public var applicationNum: Int64?

                    public var commercializeStatus: String?

                    public var commodityCode: String?

                    public var commodityName: String?

                    public var cpuNum: Int64?

                    public var expireDate: Int64?

                    public var memNum: Int64?

                    public var nextBuyActions: String?

                    public var ntmCommodityInstanceId: String?

                    public var openDate: Int64?

                    public var relatedSubProducts: [String]?

                    public var specCode: String?

                    public var specName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.applicationNum != nil {
                            map["applicationNum"] = self.applicationNum!
                        }
                        if self.commercializeStatus != nil {
                            map["commercializeStatus"] = self.commercializeStatus!
                        }
                        if self.commodityCode != nil {
                            map["commodityCode"] = self.commodityCode!
                        }
                        if self.commodityName != nil {
                            map["commodityName"] = self.commodityName!
                        }
                        if self.cpuNum != nil {
                            map["cpuNum"] = self.cpuNum!
                        }
                        if self.expireDate != nil {
                            map["expireDate"] = self.expireDate!
                        }
                        if self.memNum != nil {
                            map["memNum"] = self.memNum!
                        }
                        if self.nextBuyActions != nil {
                            map["nextBuyActions"] = self.nextBuyActions!
                        }
                        if self.ntmCommodityInstanceId != nil {
                            map["ntmCommodityInstanceId"] = self.ntmCommodityInstanceId!
                        }
                        if self.openDate != nil {
                            map["openDate"] = self.openDate!
                        }
                        if self.relatedSubProducts != nil {
                            map["relatedSubProducts"] = self.relatedSubProducts!
                        }
                        if self.specCode != nil {
                            map["specCode"] = self.specCode!
                        }
                        if self.specName != nil {
                            map["specName"] = self.specName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("applicationNum") && dict["applicationNum"] != nil {
                            self.applicationNum = dict["applicationNum"] as! Int64
                        }
                        if dict.keys.contains("commercializeStatus") && dict["commercializeStatus"] != nil {
                            self.commercializeStatus = dict["commercializeStatus"] as! String
                        }
                        if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                            self.commodityCode = dict["commodityCode"] as! String
                        }
                        if dict.keys.contains("commodityName") && dict["commodityName"] != nil {
                            self.commodityName = dict["commodityName"] as! String
                        }
                        if dict.keys.contains("cpuNum") && dict["cpuNum"] != nil {
                            self.cpuNum = dict["cpuNum"] as! Int64
                        }
                        if dict.keys.contains("expireDate") && dict["expireDate"] != nil {
                            self.expireDate = dict["expireDate"] as! Int64
                        }
                        if dict.keys.contains("memNum") && dict["memNum"] != nil {
                            self.memNum = dict["memNum"] as! Int64
                        }
                        if dict.keys.contains("nextBuyActions") && dict["nextBuyActions"] != nil {
                            self.nextBuyActions = dict["nextBuyActions"] as! String
                        }
                        if dict.keys.contains("ntmCommodityInstanceId") && dict["ntmCommodityInstanceId"] != nil {
                            self.ntmCommodityInstanceId = dict["ntmCommodityInstanceId"] as! String
                        }
                        if dict.keys.contains("openDate") && dict["openDate"] != nil {
                            self.openDate = dict["openDate"] as! Int64
                        }
                        if dict.keys.contains("relatedSubProducts") && dict["relatedSubProducts"] != nil {
                            self.relatedSubProducts = dict["relatedSubProducts"] as! [String]
                        }
                        if dict.keys.contains("specCode") && dict["specCode"] != nil {
                            self.specCode = dict["specCode"] as! String
                        }
                        if dict.keys.contains("specName") && dict["specName"] != nil {
                            self.specName = dict["specName"] as! String
                        }
                    }
                }
                public var commodityConfig: QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy.CommodityConfig?

                public var commoditySpec: QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy.CommoditySpec?

                public var releaseTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.commodityConfig?.validate()
                    try self.commoditySpec?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.commodityConfig != nil {
                        map["commodityConfig"] = self.commodityConfig?.toMap()
                    }
                    if self.commoditySpec != nil {
                        map["commoditySpec"] = self.commoditySpec?.toMap()
                    }
                    if self.releaseTime != nil {
                        map["releaseTime"] = self.releaseTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("commodityConfig") && dict["commodityConfig"] != nil {
                        var model = QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy.CommodityConfig()
                        model.fromMap(dict["commodityConfig"] as! [String: Any])
                        self.commodityConfig = model
                    }
                    if dict.keys.contains("commoditySpec") && dict["commoditySpec"] != nil {
                        var model = QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy.CommoditySpec()
                        model.fromMap(dict["commoditySpec"] as! [String: Any])
                        self.commoditySpec = model
                    }
                    if dict.keys.contains("releaseTime") && dict["releaseTime"] != nil {
                        self.releaseTime = dict["releaseTime"] as! Int64
                    }
                }
            }
            public var subProduct: QueryUsageResponseBody.Data.SubProductInfos.SubProduct?

            public var subProductCommoditySpecsForGuideToBuy: [QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.subProduct?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subProduct != nil {
                    map["subProduct"] = self.subProduct?.toMap()
                }
                if self.subProductCommoditySpecsForGuideToBuy != nil {
                    var tmp : [Any] = []
                    for k in self.subProductCommoditySpecsForGuideToBuy! {
                        tmp.append(k.toMap())
                    }
                    map["subProductCommoditySpecsForGuideToBuy"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("subProduct") && dict["subProduct"] != nil {
                    var model = QueryUsageResponseBody.Data.SubProductInfos.SubProduct()
                    model.fromMap(dict["subProduct"] as! [String: Any])
                    self.subProduct = model
                }
                if dict.keys.contains("subProductCommoditySpecsForGuideToBuy") && dict["subProductCommoditySpecsForGuideToBuy"] != nil {
                    var tmp : [QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy] = []
                    for v in dict["subProductCommoditySpecsForGuideToBuy"] as! [Any] {
                        var model = QueryUsageResponseBody.Data.SubProductInfos.SubProductCommoditySpecsForGuideToBuy()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subProductCommoditySpecsForGuideToBuy = tmp
                }
            }
        }
        public var articleInfos: [QueryUsageResponseBody.Data.ArticleInfos]?

        public var commoditySpecUsageInfos: [QueryUsageResponseBody.Data.CommoditySpecUsageInfos]?

        public var subProductInfos: [QueryUsageResponseBody.Data.SubProductInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.articleInfos != nil {
                var tmp : [Any] = []
                for k in self.articleInfos! {
                    tmp.append(k.toMap())
                }
                map["articleInfos"] = tmp
            }
            if self.commoditySpecUsageInfos != nil {
                var tmp : [Any] = []
                for k in self.commoditySpecUsageInfos! {
                    tmp.append(k.toMap())
                }
                map["commoditySpecUsageInfos"] = tmp
            }
            if self.subProductInfos != nil {
                var tmp : [Any] = []
                for k in self.subProductInfos! {
                    tmp.append(k.toMap())
                }
                map["subProductInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("articleInfos") && dict["articleInfos"] != nil {
                var tmp : [QueryUsageResponseBody.Data.ArticleInfos] = []
                for v in dict["articleInfos"] as! [Any] {
                    var model = QueryUsageResponseBody.Data.ArticleInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.articleInfos = tmp
            }
            if dict.keys.contains("commoditySpecUsageInfos") && dict["commoditySpecUsageInfos"] != nil {
                var tmp : [QueryUsageResponseBody.Data.CommoditySpecUsageInfos] = []
                for v in dict["commoditySpecUsageInfos"] as! [Any] {
                    var model = QueryUsageResponseBody.Data.CommoditySpecUsageInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.commoditySpecUsageInfos = tmp
            }
            if dict.keys.contains("subProductInfos") && dict["subProductInfos"] != nil {
                var tmp : [QueryUsageResponseBody.Data.SubProductInfos] = []
                for v in dict["subProductInfos"] as! [Any] {
                    var model = QueryUsageResponseBody.Data.SubProductInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subProductInfos = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryUsageResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryUsageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUsageResponseBody?

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
            var model = QueryUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
