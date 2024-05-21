import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetH5PageTrendRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var endDate: String?

    public var startDate: String?

    public var timeUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.timeUnit != nil {
            map["timeUnit"] = self.timeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("timeUnit") {
            self.timeUnit = dict["timeUnit"] as! String
        }
    }
}

public class GetH5PageTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analyzeDOM: Double?

        public var appCache: Double?

        public var contentTrans: Double?

        public var dns: Double?

        public var domReady: Double?

        public var fcp: Double?

        public var firstByte: Double?

        public var fiveSecondRate: Double?

        public var fp: Double?

        public var loadEvent: Double?

        public var loadFinish: Double?

        public var loadResource: Double?

        public var logCnt: Int64?

        public var oneSecondRate: Double?

        public var redirect: Double?

        public var ssl: Double?

        public var tcp: Double?

        public var timePoint: String?

        public var ttfb: Double?

        public var tti: Double?

        public var twoSecondRate: Double?

        public var unload: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analyzeDOM != nil {
                map["analyzeDOM"] = self.analyzeDOM!
            }
            if self.appCache != nil {
                map["appCache"] = self.appCache!
            }
            if self.contentTrans != nil {
                map["contentTrans"] = self.contentTrans!
            }
            if self.dns != nil {
                map["dns"] = self.dns!
            }
            if self.domReady != nil {
                map["domReady"] = self.domReady!
            }
            if self.fcp != nil {
                map["fcp"] = self.fcp!
            }
            if self.firstByte != nil {
                map["firstByte"] = self.firstByte!
            }
            if self.fiveSecondRate != nil {
                map["fiveSecondRate"] = self.fiveSecondRate!
            }
            if self.fp != nil {
                map["fp"] = self.fp!
            }
            if self.loadEvent != nil {
                map["loadEvent"] = self.loadEvent!
            }
            if self.loadFinish != nil {
                map["loadFinish"] = self.loadFinish!
            }
            if self.loadResource != nil {
                map["loadResource"] = self.loadResource!
            }
            if self.logCnt != nil {
                map["logCnt"] = self.logCnt!
            }
            if self.oneSecondRate != nil {
                map["oneSecondRate"] = self.oneSecondRate!
            }
            if self.redirect != nil {
                map["redirect"] = self.redirect!
            }
            if self.ssl != nil {
                map["ssl"] = self.ssl!
            }
            if self.tcp != nil {
                map["tcp"] = self.tcp!
            }
            if self.timePoint != nil {
                map["timePoint"] = self.timePoint!
            }
            if self.ttfb != nil {
                map["ttfb"] = self.ttfb!
            }
            if self.tti != nil {
                map["tti"] = self.tti!
            }
            if self.twoSecondRate != nil {
                map["twoSecondRate"] = self.twoSecondRate!
            }
            if self.unload != nil {
                map["unload"] = self.unload!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analyzeDOM") {
                self.analyzeDOM = dict["analyzeDOM"] as! Double
            }
            if dict.keys.contains("appCache") {
                self.appCache = dict["appCache"] as! Double
            }
            if dict.keys.contains("contentTrans") {
                self.contentTrans = dict["contentTrans"] as! Double
            }
            if dict.keys.contains("dns") {
                self.dns = dict["dns"] as! Double
            }
            if dict.keys.contains("domReady") {
                self.domReady = dict["domReady"] as! Double
            }
            if dict.keys.contains("fcp") {
                self.fcp = dict["fcp"] as! Double
            }
            if dict.keys.contains("firstByte") {
                self.firstByte = dict["firstByte"] as! Double
            }
            if dict.keys.contains("fiveSecondRate") {
                self.fiveSecondRate = dict["fiveSecondRate"] as! Double
            }
            if dict.keys.contains("fp") {
                self.fp = dict["fp"] as! Double
            }
            if dict.keys.contains("loadEvent") {
                self.loadEvent = dict["loadEvent"] as! Double
            }
            if dict.keys.contains("loadFinish") {
                self.loadFinish = dict["loadFinish"] as! Double
            }
            if dict.keys.contains("loadResource") {
                self.loadResource = dict["loadResource"] as! Double
            }
            if dict.keys.contains("logCnt") {
                self.logCnt = dict["logCnt"] as! Int64
            }
            if dict.keys.contains("oneSecondRate") {
                self.oneSecondRate = dict["oneSecondRate"] as! Double
            }
            if dict.keys.contains("redirect") {
                self.redirect = dict["redirect"] as! Double
            }
            if dict.keys.contains("ssl") {
                self.ssl = dict["ssl"] as! Double
            }
            if dict.keys.contains("tcp") {
                self.tcp = dict["tcp"] as! Double
            }
            if dict.keys.contains("timePoint") {
                self.timePoint = dict["timePoint"] as! String
            }
            if dict.keys.contains("ttfb") {
                self.ttfb = dict["ttfb"] as! Double
            }
            if dict.keys.contains("tti") {
                self.tti = dict["tti"] as! Double
            }
            if dict.keys.contains("twoSecondRate") {
                self.twoSecondRate = dict["twoSecondRate"] as! Double
            }
            if dict.keys.contains("unload") {
                self.unload = dict["unload"] as! Double
            }
        }
    }
    public var code: Int64?

    public var data: [GetH5PageTrendResponseBody.Data]?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var tmp : [GetH5PageTrendResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetH5PageTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetH5PageTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetH5PageTrendResponseBody?

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
            var model = GetH5PageTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLaunchTrendRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var endDate: String?

    public var startDate: String?

    public var timeUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.timeUnit != nil {
            map["timeUnit"] = self.timeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("timeUnit") {
            self.timeUnit = dict["timeUnit"] as! String
        }
    }
}

public class GetLaunchTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coldLaunchCount: Int64?

        public var coldLaunchDuration: Double?

        public var firstLaunchCount: Int64?

        public var firstLaunchDuration: Double?

        public var hotLaunchCount: Int64?

        public var hotLaunchDuration: Double?

        public var timePoint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coldLaunchCount != nil {
                map["coldLaunchCount"] = self.coldLaunchCount!
            }
            if self.coldLaunchDuration != nil {
                map["coldLaunchDuration"] = self.coldLaunchDuration!
            }
            if self.firstLaunchCount != nil {
                map["firstLaunchCount"] = self.firstLaunchCount!
            }
            if self.firstLaunchDuration != nil {
                map["firstLaunchDuration"] = self.firstLaunchDuration!
            }
            if self.hotLaunchCount != nil {
                map["hotLaunchCount"] = self.hotLaunchCount!
            }
            if self.hotLaunchDuration != nil {
                map["hotLaunchDuration"] = self.hotLaunchDuration!
            }
            if self.timePoint != nil {
                map["timePoint"] = self.timePoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("coldLaunchCount") {
                self.coldLaunchCount = dict["coldLaunchCount"] as! Int64
            }
            if dict.keys.contains("coldLaunchDuration") {
                self.coldLaunchDuration = dict["coldLaunchDuration"] as! Double
            }
            if dict.keys.contains("firstLaunchCount") {
                self.firstLaunchCount = dict["firstLaunchCount"] as! Int64
            }
            if dict.keys.contains("firstLaunchDuration") {
                self.firstLaunchDuration = dict["firstLaunchDuration"] as! Double
            }
            if dict.keys.contains("hotLaunchCount") {
                self.hotLaunchCount = dict["hotLaunchCount"] as! Int64
            }
            if dict.keys.contains("hotLaunchDuration") {
                self.hotLaunchDuration = dict["hotLaunchDuration"] as! Double
            }
            if dict.keys.contains("timePoint") {
                self.timePoint = dict["timePoint"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: [GetLaunchTrendResponseBody.Data]?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var tmp : [GetLaunchTrendResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetLaunchTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetLaunchTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLaunchTrendResponseBody?

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
            var model = GetLaunchTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNativePageTrendRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var endDate: String?

    public var startDate: String?

    public var timeUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.timeUnit != nil {
            map["timeUnit"] = self.timeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("timeUnit") {
            self.timeUnit = dict["timeUnit"] as! String
        }
    }
}

public class GetNativePageTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgLoadDuration: Double?

        public var crashRate: Double?

        public var loadCnt: Int64?

        public var slowLoadRate: Double?

        public var timePoint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgLoadDuration != nil {
                map["avgLoadDuration"] = self.avgLoadDuration!
            }
            if self.crashRate != nil {
                map["crashRate"] = self.crashRate!
            }
            if self.loadCnt != nil {
                map["loadCnt"] = self.loadCnt!
            }
            if self.slowLoadRate != nil {
                map["slowLoadRate"] = self.slowLoadRate!
            }
            if self.timePoint != nil {
                map["timePoint"] = self.timePoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("avgLoadDuration") {
                self.avgLoadDuration = dict["avgLoadDuration"] as! Double
            }
            if dict.keys.contains("crashRate") {
                self.crashRate = dict["crashRate"] as! Double
            }
            if dict.keys.contains("loadCnt") {
                self.loadCnt = dict["loadCnt"] as! Int64
            }
            if dict.keys.contains("slowLoadRate") {
                self.slowLoadRate = dict["slowLoadRate"] as! Double
            }
            if dict.keys.contains("timePoint") {
                self.timePoint = dict["timePoint"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: [GetNativePageTrendResponseBody.Data]?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var tmp : [GetNativePageTrendResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetNativePageTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetNativePageTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNativePageTrendResponseBody?

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
            var model = GetNativePageTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNetworkTrendRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var endDate: String?

    public var startDate: String?

    public var timeUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.timeUnit != nil {
            map["timeUnit"] = self.timeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("timeUnit") {
            self.timeUnit = dict["timeUnit"] as! String
        }
    }
}

public class GetNetworkTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgCost: Double?

        public var avgResponseTime: Double?

        public var avgTransformBytes: Double?

        public var requestPerMinute: Double?

        public var timePoint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgCost != nil {
                map["avgCost"] = self.avgCost!
            }
            if self.avgResponseTime != nil {
                map["avgResponseTime"] = self.avgResponseTime!
            }
            if self.avgTransformBytes != nil {
                map["avgTransformBytes"] = self.avgTransformBytes!
            }
            if self.requestPerMinute != nil {
                map["requestPerMinute"] = self.requestPerMinute!
            }
            if self.timePoint != nil {
                map["timePoint"] = self.timePoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("avgCost") {
                self.avgCost = dict["avgCost"] as! Double
            }
            if dict.keys.contains("avgResponseTime") {
                self.avgResponseTime = dict["avgResponseTime"] as! Double
            }
            if dict.keys.contains("avgTransformBytes") {
                self.avgTransformBytes = dict["avgTransformBytes"] as! Double
            }
            if dict.keys.contains("requestPerMinute") {
                self.requestPerMinute = dict["requestPerMinute"] as! Double
            }
            if dict.keys.contains("timePoint") {
                self.timePoint = dict["timePoint"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: [GetNetworkTrendResponseBody.Data]?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var tmp : [GetNetworkTrendResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetNetworkTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetNetworkTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetworkTrendResponseBody?

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
            var model = GetNetworkTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStatTrendRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var endDate: String?

    public var startDate: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class GetStatTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var affectedUserCount: Int64?

        public var affectedUserRate: Double?

        public var errorCount: Int64?

        public var errorRate: Double?

        public var timePoint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedUserCount != nil {
                map["affectedUserCount"] = self.affectedUserCount!
            }
            if self.affectedUserRate != nil {
                map["affectedUserRate"] = self.affectedUserRate!
            }
            if self.errorCount != nil {
                map["errorCount"] = self.errorCount!
            }
            if self.errorRate != nil {
                map["errorRate"] = self.errorRate!
            }
            if self.timePoint != nil {
                map["timePoint"] = self.timePoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("affectedUserCount") {
                self.affectedUserCount = dict["affectedUserCount"] as! Int64
            }
            if dict.keys.contains("affectedUserRate") {
                self.affectedUserRate = dict["affectedUserRate"] as! Double
            }
            if dict.keys.contains("errorCount") {
                self.errorCount = dict["errorCount"] as! Int64
            }
            if dict.keys.contains("errorRate") {
                self.errorRate = dict["errorRate"] as! Double
            }
            if dict.keys.contains("timePoint") {
                self.timePoint = dict["timePoint"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: [GetStatTrendResponseBody.Data]?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var tmp : [GetStatTrendResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetStatTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetStatTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStatTrendResponseBody?

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
            var model = GetStatTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSymUploadParamRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var fileName: String?

    public var fileType: Int32?

    public var flutterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["fileType"] = self.fileType!
        }
        if self.flutterName != nil {
            map["flutterName"] = self.flutterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileType") {
            self.fileType = dict["fileType"] as! Int32
        }
        if dict.keys.contains("flutterName") {
            self.flutterName = dict["flutterName"] as! String
        }
    }
}

public class GetSymUploadParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var callback: String?

        public var key: String?

        public var policy: String?

        public var signature: String?

        public var uploadAddress: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["accessKeyId"] = self.accessKeyId!
            }
            if self.callback != nil {
                map["callback"] = self.callback!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.policy != nil {
                map["policy"] = self.policy!
            }
            if self.signature != nil {
                map["signature"] = self.signature!
            }
            if self.uploadAddress != nil {
                map["uploadAddress"] = self.uploadAddress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKeyId") {
                self.accessKeyId = dict["accessKeyId"] as! String
            }
            if dict.keys.contains("callback") {
                self.callback = dict["callback"] as! String
            }
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("policy") {
                self.policy = dict["policy"] as! String
            }
            if dict.keys.contains("signature") {
                self.signature = dict["signature"] as! String
            }
            if dict.keys.contains("uploadAddress") {
                self.uploadAddress = dict["uploadAddress"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: GetSymUploadParamResponseBody.Data?

    public var msg: String?

    public var success: Bool?

    public var traceId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetSymUploadParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class GetSymUploadParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSymUploadParamResponseBody?

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
            var model = GetSymUploadParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTodayStatTrendRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class GetTodayStatTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var affectedUserCount: Int64?

        public var affectedUserRate: Double?

        public var errorCount: Int64?

        public var errorRate: Double?

        public var timePoint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedUserCount != nil {
                map["affectedUserCount"] = self.affectedUserCount!
            }
            if self.affectedUserRate != nil {
                map["affectedUserRate"] = self.affectedUserRate!
            }
            if self.errorCount != nil {
                map["errorCount"] = self.errorCount!
            }
            if self.errorRate != nil {
                map["errorRate"] = self.errorRate!
            }
            if self.timePoint != nil {
                map["timePoint"] = self.timePoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("affectedUserCount") {
                self.affectedUserCount = dict["affectedUserCount"] as! Int64
            }
            if dict.keys.contains("affectedUserRate") {
                self.affectedUserRate = dict["affectedUserRate"] as! Double
            }
            if dict.keys.contains("errorCount") {
                self.errorCount = dict["errorCount"] as! Int64
            }
            if dict.keys.contains("errorRate") {
                self.errorRate = dict["errorRate"] as! Double
            }
            if dict.keys.contains("timePoint") {
                self.timePoint = dict["timePoint"] as! String
            }
        }
    }
    public var code: Int64?

    public var data: [GetTodayStatTrendResponseBody.Data]?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var tmp : [GetTodayStatTrendResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetTodayStatTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetTodayStatTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTodayStatTrendResponseBody?

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
            var model = GetTodayStatTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAlertPlanRequest : Tea.TeaModel {
    public var dataSourceId: String?

    public var planId: Int64?

    public var versions: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.versions != nil {
            map["versions"] = self.versions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("planId") {
            self.planId = dict["planId"] as! Int64
        }
        if dict.keys.contains("versions") {
            self.versions = dict["versions"] as! String
        }
    }
}

public class UpdateAlertPlanResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateAlertPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertPlanResponseBody?

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
            var model = UpdateAlertPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadSymbolFileRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var fileName: String?

    public var fileType: Int32?

    public var flutterName: String?

    public var ossUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["fileType"] = self.fileType!
        }
        if self.flutterName != nil {
            map["flutterName"] = self.flutterName!
        }
        if self.ossUrl != nil {
            map["ossUrl"] = self.ossUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileType") {
            self.fileType = dict["fileType"] as! Int32
        }
        if dict.keys.contains("flutterName") {
            self.flutterName = dict["flutterName"] as! String
        }
        if dict.keys.contains("ossUrl") {
            self.ossUrl = dict["ossUrl"] as! String
        }
    }
}

public class UploadSymbolFileAdvanceRequest : Tea.TeaModel {
    public var appVersion: String?

    public var dataSourceId: String?

    public var fileName: String?

    public var fileType: Int32?

    public var flutterName: String?

    public var ossUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["fileType"] = self.fileType!
        }
        if self.flutterName != nil {
            map["flutterName"] = self.flutterName!
        }
        if self.ossUrlObject != nil {
            map["ossUrl"] = self.ossUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileType") {
            self.fileType = dict["fileType"] as! Int32
        }
        if dict.keys.contains("flutterName") {
            self.flutterName = dict["flutterName"] as! String
        }
        if dict.keys.contains("ossUrl") {
            self.ossUrlObject = dict["ossUrl"] as! InputStream
        }
    }
}

public class UploadSymbolFileResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var msg: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class UploadSymbolFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadSymbolFileResponseBody?

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
            var model = UploadSymbolFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
