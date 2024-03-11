import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllowResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AllowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllowResponseBody?

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
            var model = AllowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSummaryDataRequest : Tea.TeaModel {
    public var endTime: String?

    public var group: String?

    public var startTime: String?

    public var uids: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.uids != nil {
            map["Uids"] = self.uids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Uids") && dict["Uids"] != nil {
            self.uids = dict["Uids"] as! [String]
        }
    }
}

public class GetSummaryDataShrinkRequest : Tea.TeaModel {
    public var endTime: String?

    public var group: String?

    public var startTime: String?

    public var uidsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.uidsShrink != nil {
            map["Uids"] = self.uidsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Uids") && dict["Uids"] != nil {
            self.uidsShrink = dict["Uids"] as! String
        }
    }
}

public class GetSummaryDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aircraftConsumptionConversion: String?

        public var carConsumptionConversion: String?

        public var lastMonthConsumptionConversion: String?

        public var lastYearConsumptionConversion: String?

        public var lastYearConsumptionConversionSum: String?

        public var latestDataTime: String?

        public var thisMonthConsumptionConversion: String?

        public var thisYearConsumptionConversion: String?

        public var totalCarbonConsumptionConversion: String?

        public var treeConsumptionConversion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aircraftConsumptionConversion != nil {
                map["AircraftConsumptionConversion"] = self.aircraftConsumptionConversion!
            }
            if self.carConsumptionConversion != nil {
                map["CarConsumptionConversion"] = self.carConsumptionConversion!
            }
            if self.lastMonthConsumptionConversion != nil {
                map["LastMonthConsumptionConversion"] = self.lastMonthConsumptionConversion!
            }
            if self.lastYearConsumptionConversion != nil {
                map["LastYearConsumptionConversion"] = self.lastYearConsumptionConversion!
            }
            if self.lastYearConsumptionConversionSum != nil {
                map["LastYearConsumptionConversionSum"] = self.lastYearConsumptionConversionSum!
            }
            if self.latestDataTime != nil {
                map["LatestDataTime"] = self.latestDataTime!
            }
            if self.thisMonthConsumptionConversion != nil {
                map["ThisMonthConsumptionConversion"] = self.thisMonthConsumptionConversion!
            }
            if self.thisYearConsumptionConversion != nil {
                map["ThisYearConsumptionConversion"] = self.thisYearConsumptionConversion!
            }
            if self.totalCarbonConsumptionConversion != nil {
                map["TotalCarbonConsumptionConversion"] = self.totalCarbonConsumptionConversion!
            }
            if self.treeConsumptionConversion != nil {
                map["TreeConsumptionConversion"] = self.treeConsumptionConversion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AircraftConsumptionConversion") && dict["AircraftConsumptionConversion"] != nil {
                self.aircraftConsumptionConversion = dict["AircraftConsumptionConversion"] as! String
            }
            if dict.keys.contains("CarConsumptionConversion") && dict["CarConsumptionConversion"] != nil {
                self.carConsumptionConversion = dict["CarConsumptionConversion"] as! String
            }
            if dict.keys.contains("LastMonthConsumptionConversion") && dict["LastMonthConsumptionConversion"] != nil {
                self.lastMonthConsumptionConversion = dict["LastMonthConsumptionConversion"] as! String
            }
            if dict.keys.contains("LastYearConsumptionConversion") && dict["LastYearConsumptionConversion"] != nil {
                self.lastYearConsumptionConversion = dict["LastYearConsumptionConversion"] as! String
            }
            if dict.keys.contains("LastYearConsumptionConversionSum") && dict["LastYearConsumptionConversionSum"] != nil {
                self.lastYearConsumptionConversionSum = dict["LastYearConsumptionConversionSum"] as! String
            }
            if dict.keys.contains("LatestDataTime") && dict["LatestDataTime"] != nil {
                self.latestDataTime = dict["LatestDataTime"] as! String
            }
            if dict.keys.contains("ThisMonthConsumptionConversion") && dict["ThisMonthConsumptionConversion"] != nil {
                self.thisMonthConsumptionConversion = dict["ThisMonthConsumptionConversion"] as! String
            }
            if dict.keys.contains("ThisYearConsumptionConversion") && dict["ThisYearConsumptionConversion"] != nil {
                self.thisYearConsumptionConversion = dict["ThisYearConsumptionConversion"] as! String
            }
            if dict.keys.contains("TotalCarbonConsumptionConversion") && dict["TotalCarbonConsumptionConversion"] != nil {
                self.totalCarbonConsumptionConversion = dict["TotalCarbonConsumptionConversion"] as! String
            }
            if dict.keys.contains("TreeConsumptionConversion") && dict["TreeConsumptionConversion"] != nil {
                self.treeConsumptionConversion = dict["TreeConsumptionConversion"] as! String
            }
        }
    }
    public var data: GetSummaryDataResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSummaryDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSummaryDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSummaryDataResponseBody?

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
            var model = GetSummaryDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCarbonTrackRequest : Tea.TeaModel {
    public var endTime: String?

    public var filterRDAccount: Int32?

    public var group: String?

    public var startTime: String?

    public var topNum: Int32?

    public var uids: [String]?

    public var useCode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterRDAccount != nil {
            map["FilterRDAccount"] = self.filterRDAccount!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topNum != nil {
            map["TopNum"] = self.topNum!
        }
        if self.uids != nil {
            map["Uids"] = self.uids!
        }
        if self.useCode != nil {
            map["UseCode"] = self.useCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterRDAccount") && dict["FilterRDAccount"] != nil {
            self.filterRDAccount = dict["FilterRDAccount"] as! Int32
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TopNum") && dict["TopNum"] != nil {
            self.topNum = dict["TopNum"] as! Int32
        }
        if dict.keys.contains("Uids") && dict["Uids"] != nil {
            self.uids = dict["Uids"] as! [String]
        }
        if dict.keys.contains("UseCode") && dict["UseCode"] != nil {
            self.useCode = dict["UseCode"] as! Int32
        }
    }
}

public class QueryCarbonTrackShrinkRequest : Tea.TeaModel {
    public var endTime: String?

    public var filterRDAccount: Int32?

    public var group: String?

    public var startTime: String?

    public var topNum: Int32?

    public var uidsShrink: String?

    public var useCode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterRDAccount != nil {
            map["FilterRDAccount"] = self.filterRDAccount!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topNum != nil {
            map["TopNum"] = self.topNum!
        }
        if self.uidsShrink != nil {
            map["Uids"] = self.uidsShrink!
        }
        if self.useCode != nil {
            map["UseCode"] = self.useCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterRDAccount") && dict["FilterRDAccount"] != nil {
            self.filterRDAccount = dict["FilterRDAccount"] as! Int32
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TopNum") && dict["TopNum"] != nil {
            self.topNum = dict["TopNum"] as! Int32
        }
        if dict.keys.contains("Uids") && dict["Uids"] != nil {
            self.uidsShrink = dict["Uids"] as! String
        }
        if dict.keys.contains("UseCode") && dict["UseCode"] != nil {
            self.useCode = dict["UseCode"] as! Int32
        }
    }
}

public class QueryCarbonTrackResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var productCode: String?

        public var quotaValue: Double?

        public var region: String?

        public var statisticsDate: Int64?

        public var subUid: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaValue != nil {
                map["QuotaValue"] = self.quotaValue!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.statisticsDate != nil {
                map["StatisticsDate"] = self.statisticsDate!
            }
            if self.subUid != nil {
                map["SubUid"] = self.subUid!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaValue") && dict["QuotaValue"] != nil {
                self.quotaValue = dict["QuotaValue"] as! Double
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("StatisticsDate") && dict["StatisticsDate"] != nil {
                self.statisticsDate = dict["StatisticsDate"] as! Int64
            }
            if dict.keys.contains("SubUid") && dict["SubUid"] != nil {
                self.subUid = dict["SubUid"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var data: [QueryCarbonTrackResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryCarbonTrackResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryCarbonTrackResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryCarbonTrackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCarbonTrackResponseBody?

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
            var model = QueryCarbonTrackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMultiAccountCarbonTrackRequest : Tea.TeaModel {
    public var endTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryMultiAccountCarbonTrackResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carbonActualEmission: String?

        public var month: String?

        public var productCode: String?

        public var region: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carbonActualEmission != nil {
                map["CarbonActualEmission"] = self.carbonActualEmission!
            }
            if self.month != nil {
                map["Month"] = self.month!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CarbonActualEmission") && dict["CarbonActualEmission"] != nil {
                self.carbonActualEmission = dict["CarbonActualEmission"] as! String
            }
            if dict.keys.contains("Month") && dict["Month"] != nil {
                self.month = dict["Month"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var data: [QueryMultiAccountCarbonTrackResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryMultiAccountCarbonTrackResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryMultiAccountCarbonTrackResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryMultiAccountCarbonTrackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMultiAccountCarbonTrackResponseBody?

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
            var model = QueryMultiAccountCarbonTrackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AllMultiAccountUids : Tea.TeaModel {
            public var accountId: String?

            public var displayName: String?

            public override init() {
                super.init()
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
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accountId") && dict["accountId"] != nil {
                    self.accountId = dict["accountId"] as! String
                }
                if dict.keys.contains("displayName") && dict["displayName"] != nil {
                    self.displayName = dict["displayName"] as! String
                }
            }
        }
        public var allowedUids: [String]?

        public var accountType: Int32?

        public var allMultiAccountUids: [VerifyResponseBody.Data.AllMultiAccountUids]?

        public var code: String?

        public var message: String?

        public var multiAccountsAllow: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedUids != nil {
                map["AllowedUids"] = self.allowedUids!
            }
            if self.accountType != nil {
                map["accountType"] = self.accountType!
            }
            if self.allMultiAccountUids != nil {
                var tmp : [Any] = []
                for k in self.allMultiAccountUids! {
                    tmp.append(k.toMap())
                }
                map["allMultiAccountUids"] = tmp
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.multiAccountsAllow != nil {
                map["multiAccountsAllow"] = self.multiAccountsAllow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedUids") && dict["AllowedUids"] != nil {
                self.allowedUids = dict["AllowedUids"] as! [String]
            }
            if dict.keys.contains("accountType") && dict["accountType"] != nil {
                self.accountType = dict["accountType"] as! Int32
            }
            if dict.keys.contains("allMultiAccountUids") && dict["allMultiAccountUids"] != nil {
                var tmp : [VerifyResponseBody.Data.AllMultiAccountUids] = []
                for v in dict["allMultiAccountUids"] as! [Any] {
                    var model = VerifyResponseBody.Data.AllMultiAccountUids()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.allMultiAccountUids = tmp
            }
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("multiAccountsAllow") && dict["multiAccountsAllow"] != nil {
                self.multiAccountsAllow = dict["multiAccountsAllow"] as! Int32
            }
        }
    }
    public var data: VerifyResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = VerifyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyResponseBody?

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
            var model = VerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
