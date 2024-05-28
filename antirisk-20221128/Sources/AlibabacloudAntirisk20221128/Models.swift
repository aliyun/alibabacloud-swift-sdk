import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetRealTimeRiskInfoRequest : Tea.TeaModel {
    public var atoken: String?

    public var dataSourceId: String?

    public var extra: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.atoken != nil {
            map["atoken"] = self.atoken!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("atoken") {
            self.atoken = dict["atoken"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("extra") {
            self.extra = dict["extra"] as! String
        }
    }
}

public class GetRealTimeRiskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appChannel: String?

        public var fakeDevice: String?

        public var idfa: String?

        public var oaid: String?

        public var proxyDevice: String?

        public var riskLevel: String?

        public var riskScore: String?

        public var zid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appChannel != nil {
                map["appChannel"] = self.appChannel!
            }
            if self.fakeDevice != nil {
                map["fakeDevice"] = self.fakeDevice!
            }
            if self.idfa != nil {
                map["idfa"] = self.idfa!
            }
            if self.oaid != nil {
                map["oaid"] = self.oaid!
            }
            if self.proxyDevice != nil {
                map["proxyDevice"] = self.proxyDevice!
            }
            if self.riskLevel != nil {
                map["riskLevel"] = self.riskLevel!
            }
            if self.riskScore != nil {
                map["riskScore"] = self.riskScore!
            }
            if self.zid != nil {
                map["zid"] = self.zid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appChannel") {
                self.appChannel = dict["appChannel"] as! String
            }
            if dict.keys.contains("fakeDevice") {
                self.fakeDevice = dict["fakeDevice"] as! String
            }
            if dict.keys.contains("idfa") {
                self.idfa = dict["idfa"] as! String
            }
            if dict.keys.contains("oaid") {
                self.oaid = dict["oaid"] as! String
            }
            if dict.keys.contains("proxyDevice") {
                self.proxyDevice = dict["proxyDevice"] as! String
            }
            if dict.keys.contains("riskLevel") {
                self.riskLevel = dict["riskLevel"] as! String
            }
            if dict.keys.contains("riskScore") {
                self.riskScore = dict["riskScore"] as! String
            }
            if dict.keys.contains("zid") {
                self.zid = dict["zid"] as! String
            }
        }
    }
    public var msg: String?

    public var code: Int64?

    public var data: GetRealTimeRiskInfoResponseBody.Data?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetRealTimeRiskInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetRealTimeRiskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealTimeRiskInfoResponseBody?

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
            var model = GetRealTimeRiskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetZidTagByAtokenRequest : Tea.TeaModel {
    public var atoken: String?

    public var dataSourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.atoken != nil {
            map["atoken"] = self.atoken!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("atoken") {
            self.atoken = dict["atoken"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
    }
}

public class GetZidTagByAtokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aHook: String?

        public var debug: String?

        public var doubleOpen: String?

        public var javaHook: String?

        public var nativeHook: String?

        public var root: String?

        public var simulator: String?

        public var vpnProxy: String?

        public var wifiProxy: String?

        public var zid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aHook != nil {
                map["aHook"] = self.aHook!
            }
            if self.debug != nil {
                map["debug"] = self.debug!
            }
            if self.doubleOpen != nil {
                map["doubleOpen"] = self.doubleOpen!
            }
            if self.javaHook != nil {
                map["javaHook"] = self.javaHook!
            }
            if self.nativeHook != nil {
                map["nativeHook"] = self.nativeHook!
            }
            if self.root != nil {
                map["root"] = self.root!
            }
            if self.simulator != nil {
                map["simulator"] = self.simulator!
            }
            if self.vpnProxy != nil {
                map["vpnProxy"] = self.vpnProxy!
            }
            if self.wifiProxy != nil {
                map["wifiProxy"] = self.wifiProxy!
            }
            if self.zid != nil {
                map["zid"] = self.zid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aHook") {
                self.aHook = dict["aHook"] as! String
            }
            if dict.keys.contains("debug") {
                self.debug = dict["debug"] as! String
            }
            if dict.keys.contains("doubleOpen") {
                self.doubleOpen = dict["doubleOpen"] as! String
            }
            if dict.keys.contains("javaHook") {
                self.javaHook = dict["javaHook"] as! String
            }
            if dict.keys.contains("nativeHook") {
                self.nativeHook = dict["nativeHook"] as! String
            }
            if dict.keys.contains("root") {
                self.root = dict["root"] as! String
            }
            if dict.keys.contains("simulator") {
                self.simulator = dict["simulator"] as! String
            }
            if dict.keys.contains("vpnProxy") {
                self.vpnProxy = dict["vpnProxy"] as! String
            }
            if dict.keys.contains("wifiProxy") {
                self.wifiProxy = dict["wifiProxy"] as! String
            }
            if dict.keys.contains("zid") {
                self.zid = dict["zid"] as! String
            }
        }
    }
    public var msg: String?

    public var code: Int64?

    public var data: GetZidTagByAtokenResponseBody.Data?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetZidTagByAtokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetZidTagByAtokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetZidTagByAtokenResponseBody?

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
            var model = GetZidTagByAtokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetZidTagScoreByAtokenRequest : Tea.TeaModel {
    public var atoken: String?

    public var dataSourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.atoken != nil {
            map["atoken"] = self.atoken!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("atoken") {
            self.atoken = dict["atoken"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
    }
}

public class GetZidTagScoreByAtokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aHook: String?

        public var debug: String?

        public var doubleOpen: String?

        public var javaHook: String?

        public var nativeHook: String?

        public var riskLevel: String?

        public var riskScore: String?

        public var root: String?

        public var simulator: String?

        public var vpnProxy: String?

        public var wifiProxy: String?

        public var zid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aHook != nil {
                map["aHook"] = self.aHook!
            }
            if self.debug != nil {
                map["debug"] = self.debug!
            }
            if self.doubleOpen != nil {
                map["doubleOpen"] = self.doubleOpen!
            }
            if self.javaHook != nil {
                map["javaHook"] = self.javaHook!
            }
            if self.nativeHook != nil {
                map["nativeHook"] = self.nativeHook!
            }
            if self.riskLevel != nil {
                map["riskLevel"] = self.riskLevel!
            }
            if self.riskScore != nil {
                map["riskScore"] = self.riskScore!
            }
            if self.root != nil {
                map["root"] = self.root!
            }
            if self.simulator != nil {
                map["simulator"] = self.simulator!
            }
            if self.vpnProxy != nil {
                map["vpnProxy"] = self.vpnProxy!
            }
            if self.wifiProxy != nil {
                map["wifiProxy"] = self.wifiProxy!
            }
            if self.zid != nil {
                map["zid"] = self.zid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aHook") {
                self.aHook = dict["aHook"] as! String
            }
            if dict.keys.contains("debug") {
                self.debug = dict["debug"] as! String
            }
            if dict.keys.contains("doubleOpen") {
                self.doubleOpen = dict["doubleOpen"] as! String
            }
            if dict.keys.contains("javaHook") {
                self.javaHook = dict["javaHook"] as! String
            }
            if dict.keys.contains("nativeHook") {
                self.nativeHook = dict["nativeHook"] as! String
            }
            if dict.keys.contains("riskLevel") {
                self.riskLevel = dict["riskLevel"] as! String
            }
            if dict.keys.contains("riskScore") {
                self.riskScore = dict["riskScore"] as! String
            }
            if dict.keys.contains("root") {
                self.root = dict["root"] as! String
            }
            if dict.keys.contains("simulator") {
                self.simulator = dict["simulator"] as! String
            }
            if dict.keys.contains("vpnProxy") {
                self.vpnProxy = dict["vpnProxy"] as! String
            }
            if dict.keys.contains("wifiProxy") {
                self.wifiProxy = dict["wifiProxy"] as! String
            }
            if dict.keys.contains("zid") {
                self.zid = dict["zid"] as! String
            }
        }
    }
    public var code: Int64?

    public var msg: String?

    public var data: GetZidTagScoreByAtokenResponseBody.Data?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetZidTagScoreByAtokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetZidTagScoreByAtokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetZidTagScoreByAtokenResponseBody?

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
            var model = GetZidTagScoreByAtokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListChannelRiskDetailsRequest : Tea.TeaModel {
    public var channel: String?

    public var dataSourceId: String?

    public var end: String?

    public var isAllChannel: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.isAllChannel != nil {
            map["isAllChannel"] = self.isAllChannel!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! String
        }
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("end") {
            self.end = dict["end"] as! String
        }
        if dict.keys.contains("isAllChannel") {
            self.isAllChannel = dict["isAllChannel"] as! String
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! String
        }
    }
}

public class ListChannelRiskDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RiskDetails : Tea.TeaModel {
            public var an: String?

            public var av: String?

            public var bn: String?

            public var c: String?

            public var date: String?

            public var fd: String?

            public var idfa: String?

            public var jb: String?

            public var oaid: String?

            public var py: String?

            public var rl: String?

            public var rs: String?

            public var zid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.an != nil {
                    map["an"] = self.an!
                }
                if self.av != nil {
                    map["av"] = self.av!
                }
                if self.bn != nil {
                    map["bn"] = self.bn!
                }
                if self.c != nil {
                    map["c"] = self.c!
                }
                if self.date != nil {
                    map["date"] = self.date!
                }
                if self.fd != nil {
                    map["fd"] = self.fd!
                }
                if self.idfa != nil {
                    map["idfa"] = self.idfa!
                }
                if self.jb != nil {
                    map["jb"] = self.jb!
                }
                if self.oaid != nil {
                    map["oaid"] = self.oaid!
                }
                if self.py != nil {
                    map["py"] = self.py!
                }
                if self.rl != nil {
                    map["rl"] = self.rl!
                }
                if self.rs != nil {
                    map["rs"] = self.rs!
                }
                if self.zid != nil {
                    map["zid"] = self.zid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("an") {
                    self.an = dict["an"] as! String
                }
                if dict.keys.contains("av") {
                    self.av = dict["av"] as! String
                }
                if dict.keys.contains("bn") {
                    self.bn = dict["bn"] as! String
                }
                if dict.keys.contains("c") {
                    self.c = dict["c"] as! String
                }
                if dict.keys.contains("date") {
                    self.date = dict["date"] as! String
                }
                if dict.keys.contains("fd") {
                    self.fd = dict["fd"] as! String
                }
                if dict.keys.contains("idfa") {
                    self.idfa = dict["idfa"] as! String
                }
                if dict.keys.contains("jb") {
                    self.jb = dict["jb"] as! String
                }
                if dict.keys.contains("oaid") {
                    self.oaid = dict["oaid"] as! String
                }
                if dict.keys.contains("py") {
                    self.py = dict["py"] as! String
                }
                if dict.keys.contains("rl") {
                    self.rl = dict["rl"] as! String
                }
                if dict.keys.contains("rs") {
                    self.rs = dict["rs"] as! String
                }
                if dict.keys.contains("zid") {
                    self.zid = dict["zid"] as! String
                }
            }
        }
        public class RiskSumary : Tea.TeaModel {
            public var date: String?

            public var riskZidEmuDistinctNew: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["date"] = self.date!
                }
                if self.riskZidEmuDistinctNew != nil {
                    map["riskZidEmuDistinctNew"] = self.riskZidEmuDistinctNew!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("date") {
                    self.date = dict["date"] as! String
                }
                if dict.keys.contains("riskZidEmuDistinctNew") {
                    self.riskZidEmuDistinctNew = dict["riskZidEmuDistinctNew"] as! String
                }
            }
        }
        public var riskDetails: [ListChannelRiskDetailsResponseBody.Data.RiskDetails]?

        public var riskSumary: [ListChannelRiskDetailsResponseBody.Data.RiskSumary]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.riskDetails != nil {
                var tmp : [Any] = []
                for k in self.riskDetails! {
                    tmp.append(k.toMap())
                }
                map["riskDetails"] = tmp
            }
            if self.riskSumary != nil {
                var tmp : [Any] = []
                for k in self.riskSumary! {
                    tmp.append(k.toMap())
                }
                map["riskSumary"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("riskDetails") {
                var tmp : [ListChannelRiskDetailsResponseBody.Data.RiskDetails] = []
                for v in dict["riskDetails"] as! [Any] {
                    var model = ListChannelRiskDetailsResponseBody.Data.RiskDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.riskDetails = tmp
            }
            if dict.keys.contains("riskSumary") {
                var tmp : [ListChannelRiskDetailsResponseBody.Data.RiskSumary] = []
                for v in dict["riskSumary"] as! [Any] {
                    var model = ListChannelRiskDetailsResponseBody.Data.RiskSumary()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.riskSumary = tmp
            }
        }
    }
    public var msg: String?

    public var code: Int64?

    public var data: ListChannelRiskDetailsResponseBody.Data?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = ListChannelRiskDetailsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListChannelRiskDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChannelRiskDetailsResponseBody?

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
            var model = ListChannelRiskDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUninstallDetailRequest : Tea.TeaModel {
    public var dataSourceId: String?

    public var endDs: String?

    public var startDs: String?

    public override init() {
        super.init()
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
        if self.endDs != nil {
            map["endDs"] = self.endDs!
        }
        if self.startDs != nil {
            map["startDs"] = self.startDs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSourceId") {
            self.dataSourceId = dict["dataSourceId"] as! String
        }
        if dict.keys.contains("endDs") {
            self.endDs = dict["endDs"] as! String
        }
        if dict.keys.contains("startDs") {
            self.startDs = dict["startDs"] as! String
        }
    }
}

public class ListUninstallDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var activeDatetime: String?

            public var city: String?

            public var deviceBrand: String?

            public var deviceModel: String?

            public var firstActiveDatetime: String?

            public var idfa: String?

            public var imei: String?

            public var installAppVersion: String?

            public var installChannel: String?

            public var oaid: String?

            public var osVersion: String?

            public var puid: String?

            public var umid: String?

            public var uninstallCount: Int32?

            public var uninstallDatetime: String?

            public var zid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeDatetime != nil {
                    map["activeDatetime"] = self.activeDatetime!
                }
                if self.city != nil {
                    map["city"] = self.city!
                }
                if self.deviceBrand != nil {
                    map["deviceBrand"] = self.deviceBrand!
                }
                if self.deviceModel != nil {
                    map["deviceModel"] = self.deviceModel!
                }
                if self.firstActiveDatetime != nil {
                    map["firstActiveDatetime"] = self.firstActiveDatetime!
                }
                if self.idfa != nil {
                    map["idfa"] = self.idfa!
                }
                if self.imei != nil {
                    map["imei"] = self.imei!
                }
                if self.installAppVersion != nil {
                    map["installAppVersion"] = self.installAppVersion!
                }
                if self.installChannel != nil {
                    map["installChannel"] = self.installChannel!
                }
                if self.oaid != nil {
                    map["oaid"] = self.oaid!
                }
                if self.osVersion != nil {
                    map["osVersion"] = self.osVersion!
                }
                if self.puid != nil {
                    map["puid"] = self.puid!
                }
                if self.umid != nil {
                    map["umid"] = self.umid!
                }
                if self.uninstallCount != nil {
                    map["uninstallCount"] = self.uninstallCount!
                }
                if self.uninstallDatetime != nil {
                    map["uninstallDatetime"] = self.uninstallDatetime!
                }
                if self.zid != nil {
                    map["zid"] = self.zid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("activeDatetime") {
                    self.activeDatetime = dict["activeDatetime"] as! String
                }
                if dict.keys.contains("city") {
                    self.city = dict["city"] as! String
                }
                if dict.keys.contains("deviceBrand") {
                    self.deviceBrand = dict["deviceBrand"] as! String
                }
                if dict.keys.contains("deviceModel") {
                    self.deviceModel = dict["deviceModel"] as! String
                }
                if dict.keys.contains("firstActiveDatetime") {
                    self.firstActiveDatetime = dict["firstActiveDatetime"] as! String
                }
                if dict.keys.contains("idfa") {
                    self.idfa = dict["idfa"] as! String
                }
                if dict.keys.contains("imei") {
                    self.imei = dict["imei"] as! String
                }
                if dict.keys.contains("installAppVersion") {
                    self.installAppVersion = dict["installAppVersion"] as! String
                }
                if dict.keys.contains("installChannel") {
                    self.installChannel = dict["installChannel"] as! String
                }
                if dict.keys.contains("oaid") {
                    self.oaid = dict["oaid"] as! String
                }
                if dict.keys.contains("osVersion") {
                    self.osVersion = dict["osVersion"] as! String
                }
                if dict.keys.contains("puid") {
                    self.puid = dict["puid"] as! String
                }
                if dict.keys.contains("umid") {
                    self.umid = dict["umid"] as! String
                }
                if dict.keys.contains("uninstallCount") {
                    self.uninstallCount = dict["uninstallCount"] as! Int32
                }
                if dict.keys.contains("uninstallDatetime") {
                    self.uninstallDatetime = dict["uninstallDatetime"] as! String
                }
                if dict.keys.contains("zid") {
                    self.zid = dict["zid"] as! String
                }
            }
        }
        public var details: [ListUninstallDetailResponseBody.Data.Details]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("details") {
                var tmp : [ListUninstallDetailResponseBody.Data.Details] = []
                for v in dict["details"] as! [Any] {
                    var model = ListUninstallDetailResponseBody.Data.Details()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.details = tmp
            }
        }
    }
    public var msg: String?

    public var success: Bool?

    public var code: Int64?

    public var data: ListUninstallDetailResponseBody.Data?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = ListUninstallDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListUninstallDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUninstallDetailResponseBody?

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
            var model = ListUninstallDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
