import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetNatTopNRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var ip: String?

    public var natGatewayId: String?

    public var orderBy: String?

    public var regionId: String?

    public var topN: Int32?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
    }
}

public class GetNatTopNResponseBody : Tea.TeaModel {
    public class NatGatewayTopN : Tea.TeaModel {
        public var activeSessionCount: Double?

        public var inBps: Double?

        public var inFlowPerMinute: Double?

        public var inPps: Double?

        public var ip: String?

        public var newSessionPerSecond: Double?

        public var outBps: Double?

        public var outFlowPerMinute: Double?

        public var outPps: Double?

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
            if self.activeSessionCount != nil {
                map["ActiveSessionCount"] = self.activeSessionCount!
            }
            if self.inBps != nil {
                map["InBps"] = self.inBps!
            }
            if self.inFlowPerMinute != nil {
                map["InFlowPerMinute"] = self.inFlowPerMinute!
            }
            if self.inPps != nil {
                map["InPps"] = self.inPps!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.newSessionPerSecond != nil {
                map["NewSessionPerSecond"] = self.newSessionPerSecond!
            }
            if self.outBps != nil {
                map["OutBps"] = self.outBps!
            }
            if self.outFlowPerMinute != nil {
                map["OutFlowPerMinute"] = self.outFlowPerMinute!
            }
            if self.outPps != nil {
                map["OutPps"] = self.outPps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveSessionCount") && dict["ActiveSessionCount"] != nil {
                self.activeSessionCount = dict["ActiveSessionCount"] as! Double
            }
            if dict.keys.contains("InBps") && dict["InBps"] != nil {
                self.inBps = dict["InBps"] as! Double
            }
            if dict.keys.contains("InFlowPerMinute") && dict["InFlowPerMinute"] != nil {
                self.inFlowPerMinute = dict["InFlowPerMinute"] as! Double
            }
            if dict.keys.contains("InPps") && dict["InPps"] != nil {
                self.inPps = dict["InPps"] as! Double
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("NewSessionPerSecond") && dict["NewSessionPerSecond"] != nil {
                self.newSessionPerSecond = dict["NewSessionPerSecond"] as! Double
            }
            if dict.keys.contains("OutBps") && dict["OutBps"] != nil {
                self.outBps = dict["OutBps"] as! Double
            }
            if dict.keys.contains("OutFlowPerMinute") && dict["OutFlowPerMinute"] != nil {
                self.outFlowPerMinute = dict["OutFlowPerMinute"] as! Double
            }
            if dict.keys.contains("OutPps") && dict["OutPps"] != nil {
                self.outPps = dict["OutPps"] as! Double
            }
        }
    }
    public var isTopNOpen: Bool?

    public var natGatewayTopN: [GetNatTopNResponseBody.NatGatewayTopN]?

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
        if self.isTopNOpen != nil {
            map["IsTopNOpen"] = self.isTopNOpen!
        }
        if self.natGatewayTopN != nil {
            var tmp : [Any] = []
            for k in self.natGatewayTopN! {
                tmp.append(k.toMap())
            }
            map["NatGatewayTopN"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTopNOpen") && dict["IsTopNOpen"] != nil {
            self.isTopNOpen = dict["IsTopNOpen"] as! Bool
        }
        if dict.keys.contains("NatGatewayTopN") && dict["NatGatewayTopN"] != nil {
            var tmp : [GetNatTopNResponseBody.NatGatewayTopN] = []
            for v in dict["NatGatewayTopN"] as! [Any] {
                var model = GetNatTopNResponseBody.NatGatewayTopN()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.natGatewayTopN = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNatTopNResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNatTopNResponseBody?

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
            var model = GetNatTopNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
