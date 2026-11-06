import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Net"] as? String {
            self.net = value
        }
        if let value = dict["Regions"] as? [String] {
            self.regions = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubNets"] as? [String] {
            self.subNets = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfigNetStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Num"] as? Int64 {
            self.num = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Coverage"] as? String {
                        self.coverage = value
                    }
                    if let value = dict["DiversionType"] as? String {
                        self.diversionType = value
                    }
                    if let value = dict["Edition"] as? String {
                        self.edition = value
                    }
                    if let value = dict["IdcNumbers"] as? String {
                        self.idcNumbers = value
                    }
                    if let value = dict["InitialInstallation"] as? String {
                        self.initialInstallation = value
                    }
                    if let value = dict["InitialQty"] as? String {
                        self.initialQty = value
                    }
                    if let value = dict["IpSubnetNums"] as? String {
                        self.ipSubnetNums = value
                    }
                    if let value = dict["MitigationAnalysis"] as? String {
                        self.mitigationAnalysis = value
                    }
                    if let value = dict["MitigationAnalysisCapacity"] as? String {
                        self.mitigationAnalysisCapacity = value
                    }
                    if let value = dict["MitigationCapacity"] as? String {
                        self.mitigationCapacity = value
                    }
                    if let value = dict["MitigationNums"] as? String {
                        self.mitigationNums = value
                    }
                    if let value = dict["NormalBandwidth"] as? String {
                        self.normalBandwidth = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtExpire"] as? String {
                    self.gmtExpire = value
                }
                if let value = dict["GmtModify"] as? String {
                    self.gmtModify = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["SaleId"] as? String {
                    self.saleId = value
                }
                if let value = dict["Spec"] as? [String: Any?] {
                    var model = ListInstanceResponseBody.Data.Instances.Spec()
                    model.fromMap(value)
                    self.spec = model
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instances"] as? [Any?] {
                var tmp : [ListInstanceResponseBody.Data.Instances] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceResponseBody.Data.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
            if let value = dict["Num"] as? Int64 {
                self.num = value
            }
            if let value = dict["Page"] as? Int64 {
                self.page = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MainNet"] as? String {
            self.mainNet = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Net"] as? String {
            self.net = value
        }
        if let value = dict["Num"] as? Int64 {
            self.num = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Mbps"] as? Int32 {
                            self.mbps = value
                        }
                        if let value = dict["Pps"] as? Int32 {
                            self.pps = value
                        }
                    }
                }
                public class CustomNetPolicy : Tea.TeaModel {
                    public var policyName: String?

                    public var tmplId: String?

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
                        if self.tmplId != nil {
                            map["TmplId"] = self.tmplId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PolicyName"] as? String {
                            self.policyName = value
                        }
                        if let value = dict["TmplId"] as? String {
                            self.tmplId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PolicyName"] as? String {
                            self.policyName = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ThreshMbps"] as? Int32 {
                            self.threshMbps = value
                        }
                    }
                }
                public var cleanTh: QueryNetListResponseBody.Data.Nets.DDoSDefense.CleanTh?

                public var customNetPolicy: QueryNetListResponseBody.Data.Nets.DDoSDefense.CustomNetPolicy?

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
                    try self.customNetPolicy?.validate()
                    try self.djPolicy?.validate()
                    try self.holeTh?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cleanTh != nil {
                        map["CleanTh"] = self.cleanTh?.toMap()
                    }
                    if self.customNetPolicy != nil {
                        map["CustomNetPolicy"] = self.customNetPolicy?.toMap()
                    }
                    if self.djPolicy != nil {
                        map["DjPolicy"] = self.djPolicy?.toMap()
                    }
                    if self.holeTh != nil {
                        map["HoleTh"] = self.holeTh?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CleanTh"] as? [String: Any?] {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.CleanTh()
                        model.fromMap(value)
                        self.cleanTh = model
                    }
                    if let value = dict["CustomNetPolicy"] as? [String: Any?] {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.CustomNetPolicy()
                        model.fromMap(value)
                        self.customNetPolicy = model
                    }
                    if let value = dict["DjPolicy"] as? [String: Any?] {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.DjPolicy()
                        model.fromMap(value)
                        self.djPolicy = model
                    }
                    if let value = dict["HoleTh"] as? [String: Any?] {
                        var model = QueryNetListResponseBody.Data.Nets.DDoSDefense.HoleTh()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Declared"] as? String {
                        self.declared = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
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

            public var netMain: String?

            public var netType: String?

            public var permit: Int32?

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
                if self.permit != nil {
                    map["Permit"] = self.permit!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DDoSDefense"] as? [String: Any?] {
                    var model = QueryNetListResponseBody.Data.Nets.DDoSDefense()
                    model.fromMap(value)
                    self.DDoSDefense = model
                }
                if let value = dict["Declared"] as? [Any?] {
                    var tmp : [QueryNetListResponseBody.Data.Nets.Declared] = []
                    for v in value {
                        if v != nil {
                            var model = QueryNetListResponseBody.Data.Nets.Declared()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.declared = tmp
                }
                if let value = dict["DeclaredState"] as? Int32 {
                    self.declaredState = value
                }
                if let value = dict["FwdEffect"] as? Int64 {
                    self.fwdEffect = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModify"] as? String {
                    self.gmtModify = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["Net"] as? String {
                    self.net = value
                }
                if let value = dict["NetExtend"] as? String {
                    self.netExtend = value
                }
                if let value = dict["NetMain"] as? String {
                    self.netMain = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
                if let value = dict["Permit"] as? Int32 {
                    self.permit = value
                }
                if let value = dict["SaleId"] as? String {
                    self.saleId = value
                }
                if let value = dict["UpstreamType"] as? String {
                    self.upstreamType = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nets"] as? [Any?] {
                var tmp : [QueryNetListResponseBody.Data.Nets] = []
                for v in value {
                    if v != nil {
                        var model = QueryNetListResponseBody.Data.Nets()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nets = tmp
            }
            if let value = dict["Num"] as? Int64 {
                self.num = value
            }
            if let value = dict["Page"] as? Int64 {
                self.page = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryNetListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryNetListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
