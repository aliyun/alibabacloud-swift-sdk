import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConfigNetStatusRequest : Tea.TeaModel {
    public var net: String?

    public var regions: [String]?

    public var saleId: String?

    public var status: String?

    public var subNets: [String]?

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
        if self.net != nil {
            map["Net"] = self.net!
        }
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subNets != nil {
            map["SubNets"] = self.subNets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Net") && dict["Net"] != nil {
            self.net = dict["Net"] as! String
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            self.regions = dict["Regions"] as! [String]
        }
        if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
            self.saleId = dict["SaleId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubNets") && dict["SubNets"] != nil {
            self.subNets = dict["SubNets"] as! [String]
        }
    }
}

public class ConfigNetStatusResponseBody : Tea.TeaModel {
    public var code: Int64?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfigNetStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigNetStatusResponseBody?

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
            var model = ConfigNetStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceRequest : Tea.TeaModel {
    public var name: String?

    public var num: Int64?

    public var page: Int64?

    public var saleId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int64
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
            self.saleId = dict["SaleId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class Spec : Tea.TeaModel {
                public var coverage: String?

                public var diversionType: String?

                public var edition: String?

                public var idcNumbers: String?

                public var initialInstallation: String?

                public var initialQty: String?

                public var ipSubnetNums: String?

                public var mitigationAnalysis: String?

                public var mitigationAnalysisCapacity: String?

                public var mitigationCapacity: String?

                public var mitigationNums: String?

                public var normalBandwidth: String?

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
                    if self.coverage != nil {
                        map["Coverage"] = self.coverage!
                    }
                    if self.diversionType != nil {
                        map["DiversionType"] = self.diversionType!
                    }
                    if self.edition != nil {
                        map["Edition"] = self.edition!
                    }
                    if self.idcNumbers != nil {
                        map["IdcNumbers"] = self.idcNumbers!
                    }
                    if self.initialInstallation != nil {
                        map["InitialInstallation"] = self.initialInstallation!
                    }
                    if self.initialQty != nil {
                        map["InitialQty"] = self.initialQty!
                    }
                    if self.ipSubnetNums != nil {
                        map["IpSubnetNums"] = self.ipSubnetNums!
                    }
                    if self.mitigationAnalysis != nil {
                        map["MitigationAnalysis"] = self.mitigationAnalysis!
                    }
                    if self.mitigationAnalysisCapacity != nil {
                        map["MitigationAnalysisCapacity"] = self.mitigationAnalysisCapacity!
                    }
                    if self.mitigationCapacity != nil {
                        map["MitigationCapacity"] = self.mitigationCapacity!
                    }
                    if self.mitigationNums != nil {
                        map["MitigationNums"] = self.mitigationNums!
                    }
                    if self.normalBandwidth != nil {
                        map["NormalBandwidth"] = self.normalBandwidth!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Coverage") && dict["Coverage"] != nil {
                        self.coverage = dict["Coverage"] as! String
                    }
                    if dict.keys.contains("DiversionType") && dict["DiversionType"] != nil {
                        self.diversionType = dict["DiversionType"] as! String
                    }
                    if dict.keys.contains("Edition") && dict["Edition"] != nil {
                        self.edition = dict["Edition"] as! String
                    }
                    if dict.keys.contains("IdcNumbers") && dict["IdcNumbers"] != nil {
                        self.idcNumbers = dict["IdcNumbers"] as! String
                    }
                    if dict.keys.contains("InitialInstallation") && dict["InitialInstallation"] != nil {
                        self.initialInstallation = dict["InitialInstallation"] as! String
                    }
                    if dict.keys.contains("InitialQty") && dict["InitialQty"] != nil {
                        self.initialQty = dict["InitialQty"] as! String
                    }
                    if dict.keys.contains("IpSubnetNums") && dict["IpSubnetNums"] != nil {
                        self.ipSubnetNums = dict["IpSubnetNums"] as! String
                    }
                    if dict.keys.contains("MitigationAnalysis") && dict["MitigationAnalysis"] != nil {
                        self.mitigationAnalysis = dict["MitigationAnalysis"] as! String
                    }
                    if dict.keys.contains("MitigationAnalysisCapacity") && dict["MitigationAnalysisCapacity"] != nil {
                        self.mitigationAnalysisCapacity = dict["MitigationAnalysisCapacity"] as! String
                    }
                    if dict.keys.contains("MitigationCapacity") && dict["MitigationCapacity"] != nil {
                        self.mitigationCapacity = dict["MitigationCapacity"] as! String
                    }
                    if dict.keys.contains("MitigationNums") && dict["MitigationNums"] != nil {
                        self.mitigationNums = dict["MitigationNums"] as! String
                    }
                    if dict.keys.contains("NormalBandwidth") && dict["NormalBandwidth"] != nil {
                        self.normalBandwidth = dict["NormalBandwidth"] as! String
                    }
                }
            }
            public var comment: String?

            public var gmtCreate: String?

            public var gmtExpire: String?

            public var gmtModify: String?

            public var instanceId: String?

            public var message: String?

            public var name: String?

            public var saleId: String?

            public var spec: ListInstanceResponseBody.Data.Instances.Spec?

            public var status: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.spec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtExpire != nil {
                    map["GmtExpire"] = self.gmtExpire!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.saleId != nil {
                    map["SaleId"] = self.saleId!
                }
                if self.spec != nil {
                    map["Spec"] = self.spec?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comment") && dict["Comment"] != nil {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtExpire") && dict["GmtExpire"] != nil {
                    self.gmtExpire = dict["GmtExpire"] as! String
                }
                if dict.keys.contains("GmtModify") && dict["GmtModify"] != nil {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                    self.saleId = dict["SaleId"] as! String
                }
                if dict.keys.contains("Spec") && dict["Spec"] != nil {
                    var model = ListInstanceResponseBody.Data.Instances.Spec()
                    model.fromMap(dict["Spec"] as! [String: Any])
                    self.spec = model
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var instances: [ListInstanceResponseBody.Data.Instances]?

        public var num: Int64?

        public var page: Int64?

        public var total: Int64?

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
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["Instances"] = tmp
            }
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instances") && dict["Instances"] != nil {
                var tmp : [ListInstanceResponseBody.Data.Instances] = []
                for v in dict["Instances"] as! [Any] {
                    var model = ListInstanceResponseBody.Data.Instances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instances = tmp
            }
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int64
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int64
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var data: ListInstanceResponseBody.Data?

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
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListInstanceResponseBody.Data()
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

public class ListInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceResponseBody?

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
            var model = ListInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryNetListRequest : Tea.TeaModel {
    public var mainNet: String?

    public var mode: String?

    public var net: String?

    public var num: Int64?

    public var page: Int64?

    public var saleId: String?

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
        if self.mainNet != nil {
            map["MainNet"] = self.mainNet!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.net != nil {
            map["Net"] = self.net!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MainNet") && dict["MainNet"] != nil {
            self.mainNet = dict["MainNet"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Net") && dict["Net"] != nil {
            self.net = dict["Net"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int64
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
            self.saleId = dict["SaleId"] as! String
        }
    }
}

public class QueryNetListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Nets : Tea.TeaModel {
            public class DDoSDefense : Tea.TeaModel {
                public class CleanTh : Tea.TeaModel {
                    public var mbps: Int32?

                    public var pps: Int32?

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
                        if self.mbps != nil {
                            map["Mbps"] = self.mbps!
                        }
                        if self.pps != nil {
                            map["Pps"] = self.pps!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Mbps") && dict["Mbps"] != nil {
                            self.mbps = dict["Mbps"] as! Int32
                        }
                        if dict.keys.contains("Pps") && dict["Pps"] != nil {
                            self.pps = dict["Pps"] as! Int32
                        }
                    }
                }
                public class DjPolicy : Tea.TeaModel {
                    public var policyName: String?

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
                        if self.policyName != nil {
                            map["PolicyName"] = self.policyName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                            self.policyName = dict["PolicyName"] as! String
                        }
                    }
                }
                public class HoleTh : Tea.TeaModel {
                    public var threshMbps: Int32?

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
                        if self.threshMbps != nil {
                            map["ThreshMbps"] = self.threshMbps!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ThreshMbps") && dict["ThreshMbps"] != nil {
                            self.threshMbps = dict["ThreshMbps"] as! Int32
                        }
                    }
                }
                public var cleanTh: QueryNetListResponseBody.Data.Nets.DDoSDefense.CleanTh?

                public var djPolicy: QueryNetListResponseBody.Data.Nets.DDoSDefense.DjPolicy?

                public var holeTh: QueryNetListResponseBody.Data.Nets.DDoSDefense.HoleTh?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.cleanTh?.validate()
                    try self.djPolicy?.validate()
                    try self.holeTh?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cleanTh != nil {
                        map["CleanTh"] = self.cleanTh?.toMap()
                    }
                    if self.djPolicy != nil {
                        map["DjPolicy"] = self.djPolicy?.toMap()
                    }
                    if self.holeTh != nil {
                        map["HoleTh"] = self.holeTh?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CleanTh") && dict["CleanTh"] != nil {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.CleanTh()
                        model.fromMap(dict["CleanTh"] as! [String: Any])
                        self.cleanTh = model
                    }
                    if dict.keys.contains("DjPolicy") && dict["DjPolicy"] != nil {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.DjPolicy()
                        model.fromMap(dict["DjPolicy"] as! [String: Any])
                        self.djPolicy = model
                    }
                    if dict.keys.contains("HoleTh") && dict["HoleTh"] != nil {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.HoleTh()
                        model.fromMap(dict["HoleTh"] as! [String: Any])
                        self.holeTh = model
                    }
                }
            }
            public class Declared : Tea.TeaModel {
                public var declared: String?

                public var region: String?

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
                    if self.declared != nil {
                        map["Declared"] = self.declared!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Declared") && dict["Declared"] != nil {
                        self.declared = dict["Declared"] as! String
                    }
                    if dict.keys.contains("Region") && dict["Region"] != nil {
                        self.region = dict["Region"] as! String
                    }
                }
            }
            public var DDoSDefense: QueryNetListResponseBody.Data.Nets.DDoSDefense?

            public var declared: [QueryNetListResponseBody.Data.Nets.Declared]?

            public var declaredState: Int32?

            public var fwdEffect: Int64?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var mode: String?

            public var net: String?

            public var netExtend: String?

            public var netMain: Int64?

            public var netType: String?

            public var saleId: String?

            public var upstreamType: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.DDoSDefense?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DDoSDefense != nil {
                    map["DDoSDefense"] = self.DDoSDefense?.toMap()
                }
                if self.declared != nil {
                    var tmp : [Any] = []
                    for k in self.declared! {
                        tmp.append(k.toMap())
                    }
                    map["Declared"] = tmp
                }
                if self.declaredState != nil {
                    map["DeclaredState"] = self.declaredState!
                }
                if self.fwdEffect != nil {
                    map["FwdEffect"] = self.fwdEffect!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.net != nil {
                    map["Net"] = self.net!
                }
                if self.netExtend != nil {
                    map["NetExtend"] = self.netExtend!
                }
                if self.netMain != nil {
                    map["NetMain"] = self.netMain!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.saleId != nil {
                    map["SaleId"] = self.saleId!
                }
                if self.upstreamType != nil {
                    map["UpstreamType"] = self.upstreamType!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DDoSDefense") && dict["DDoSDefense"] != nil {
                    var model = QueryNetListResponseBody.Data.Nets.DDoSDefense()
                    model.fromMap(dict["DDoSDefense"] as! [String: Any])
                    self.DDoSDefense = model
                }
                if dict.keys.contains("Declared") && dict["Declared"] != nil {
                    var tmp : [QueryNetListResponseBody.Data.Nets.Declared] = []
                    for v in dict["Declared"] as! [Any] {
                        var model = QueryNetListResponseBody.Data.Nets.Declared()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.declared = tmp
                }
                if dict.keys.contains("DeclaredState") && dict["DeclaredState"] != nil {
                    self.declaredState = dict["DeclaredState"] as! Int32
                }
                if dict.keys.contains("FwdEffect") && dict["FwdEffect"] != nil {
                    self.fwdEffect = dict["FwdEffect"] as! Int64
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModify") && dict["GmtModify"] != nil {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("Net") && dict["Net"] != nil {
                    self.net = dict["Net"] as! String
                }
                if dict.keys.contains("NetExtend") && dict["NetExtend"] != nil {
                    self.netExtend = dict["NetExtend"] as! String
                }
                if dict.keys.contains("NetMain") && dict["NetMain"] != nil {
                    self.netMain = dict["NetMain"] as! Int64
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
                }
                if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                    self.saleId = dict["SaleId"] as! String
                }
                if dict.keys.contains("UpstreamType") && dict["UpstreamType"] != nil {
                    self.upstreamType = dict["UpstreamType"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var nets: [QueryNetListResponseBody.Data.Nets]?

        public var num: Int64?

        public var page: Int64?

        public var total: Int64?

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
            if self.nets != nil {
                var tmp : [Any] = []
                for k in self.nets! {
                    tmp.append(k.toMap())
                }
                map["Nets"] = tmp
            }
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nets") && dict["Nets"] != nil {
                var tmp : [QueryNetListResponseBody.Data.Nets] = []
                for v in dict["Nets"] as! [Any] {
                    var model = QueryNetListResponseBody.Data.Nets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nets = tmp
            }
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int64
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int64
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var data: QueryNetListResponseBody.Data?

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
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryNetListResponseBody.Data()
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

public class QueryNetListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryNetListResponseBody?

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
            var model = QueryNetListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
