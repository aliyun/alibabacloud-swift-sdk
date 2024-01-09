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

    public override init() {
        super.init()
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
    }
}

public class GetSummaryDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var lastMonthConsumptionConversion: String?

        public var lastYearConsumptionConversion: String?

        public var lastYearConsumptionConversionSum: String?

        public var latestDataTime: String?

        public var thisMonthConsumptionConversion: String?

        public var thisYearConsumptionConversion: String?

        public var totalCarbonConsumptionConversion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
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
            var model = GetSummaryDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCarbonTrackRequest : Tea.TeaModel {
    public var endTime: String?

    public var group: String?

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
        if self.group != nil {
            map["Group"] = self.group!
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
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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
            var model = QueryMultiAccountCarbonTrackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allowedUids: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedUids") && dict["AllowedUids"] != nil {
                self.allowedUids = dict["AllowedUids"] as! [String]
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
            var model = VerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
