import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDomainRequest : Tea.TeaModel {
    public var accountId: String?

    public var domainName: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class AddDomainResponseBody : Tea.TeaModel {
    public var domainName: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDomainResponseBody?

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
            var model = AddDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var accountId: String?

    public var domainName: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var domainName: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainsRequest : Tea.TeaModel {
    public var accountId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class DescribeDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public var domainName: String?

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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
            }
        }
        public var domain: [DescribeDomainsResponseBody.Domains.Domain]?

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
            if self.domain != nil {
                var tmp : [Any] = []
                for k in self.domain! {
                    tmp.append(k.toMap())
                }
                map["Domain"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                var tmp : [DescribeDomainsResponseBody.Domains.Domain] = []
                for v in dict["Domain"] as! [Any] {
                    var model = DescribeDomainsResponseBody.Domains.Domain()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domain = tmp
            }
        }
    }
    public var domains: DescribeDomainsResponseBody.Domains?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domains?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domains != nil {
            map["Domains"] = self.domains?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if dict.keys.contains("Domains") {
            var model = DescribeDomainsResponseBody.Domains()
            model.fromMap(dict["Domains"] as! [String: Any])
            self.domains = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainsResponseBody?

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
            var model = DescribeDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountInfoResponseBody : Tea.TeaModel {
    public class AccountInfo : Tea.TeaModel {
        public var accountId: String?

        public var dohEnabled: Bool?

        public var dohResolveAllEnabled: Bool?

        public var monthDohResolveCount: Int64?

        public var monthFreeCount: Int32?

        public var monthHttpsResolveCount: Int32?

        public var monthResolveCount: Int32?

        public var packageCount: Int32?

        public var signSecret: String?

        public var signedCount: Int64?

        public var unsignedCount: Int64?

        public var unsignedEnabled: Bool?

        public var userStatus: Int32?

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
            if self.dohEnabled != nil {
                map["DohEnabled"] = self.dohEnabled!
            }
            if self.dohResolveAllEnabled != nil {
                map["DohResolveAllEnabled"] = self.dohResolveAllEnabled!
            }
            if self.monthDohResolveCount != nil {
                map["MonthDohResolveCount"] = self.monthDohResolveCount!
            }
            if self.monthFreeCount != nil {
                map["MonthFreeCount"] = self.monthFreeCount!
            }
            if self.monthHttpsResolveCount != nil {
                map["MonthHttpsResolveCount"] = self.monthHttpsResolveCount!
            }
            if self.monthResolveCount != nil {
                map["MonthResolveCount"] = self.monthResolveCount!
            }
            if self.packageCount != nil {
                map["PackageCount"] = self.packageCount!
            }
            if self.signSecret != nil {
                map["SignSecret"] = self.signSecret!
            }
            if self.signedCount != nil {
                map["SignedCount"] = self.signedCount!
            }
            if self.unsignedCount != nil {
                map["UnsignedCount"] = self.unsignedCount!
            }
            if self.unsignedEnabled != nil {
                map["UnsignedEnabled"] = self.unsignedEnabled!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("DohEnabled") {
                self.dohEnabled = dict["DohEnabled"] as! Bool
            }
            if dict.keys.contains("DohResolveAllEnabled") {
                self.dohResolveAllEnabled = dict["DohResolveAllEnabled"] as! Bool
            }
            if dict.keys.contains("MonthDohResolveCount") {
                self.monthDohResolveCount = dict["MonthDohResolveCount"] as! Int64
            }
            if dict.keys.contains("MonthFreeCount") {
                self.monthFreeCount = dict["MonthFreeCount"] as! Int32
            }
            if dict.keys.contains("MonthHttpsResolveCount") {
                self.monthHttpsResolveCount = dict["MonthHttpsResolveCount"] as! Int32
            }
            if dict.keys.contains("MonthResolveCount") {
                self.monthResolveCount = dict["MonthResolveCount"] as! Int32
            }
            if dict.keys.contains("PackageCount") {
                self.packageCount = dict["PackageCount"] as! Int32
            }
            if dict.keys.contains("SignSecret") {
                self.signSecret = dict["SignSecret"] as! String
            }
            if dict.keys.contains("SignedCount") {
                self.signedCount = dict["SignedCount"] as! Int64
            }
            if dict.keys.contains("UnsignedCount") {
                self.unsignedCount = dict["UnsignedCount"] as! Int64
            }
            if dict.keys.contains("UnsignedEnabled") {
                self.unsignedEnabled = dict["UnsignedEnabled"] as! Bool
            }
            if dict.keys.contains("UserStatus") {
                self.userStatus = dict["UserStatus"] as! Int32
            }
        }
    }
    public var accountInfo: GetAccountInfoResponseBody.AccountInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfo != nil {
            map["AccountInfo"] = self.accountInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountInfo") {
            var model = GetAccountInfoResponseBody.AccountInfo()
            model.fromMap(dict["AccountInfo"] as! [String: Any])
            self.accountInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountInfoResponseBody?

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
            var model = GetAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResolveCountSummaryRequest : Tea.TeaModel {
    public var granularity: String?

    public var timeSpan: Int32?

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
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.timeSpan != nil {
            map["TimeSpan"] = self.timeSpan!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("TimeSpan") {
            self.timeSpan = dict["TimeSpan"] as! Int32
        }
    }
}

public class GetResolveCountSummaryResponseBody : Tea.TeaModel {
    public class ResolveSummary : Tea.TeaModel {
        public var doh: Int64?

        public var http: Int64?

        public var http6: Int64?

        public var https: Int64?

        public var https6: Int64?

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
            if self.doh != nil {
                map["Doh"] = self.doh!
            }
            if self.http != nil {
                map["Http"] = self.http!
            }
            if self.http6 != nil {
                map["Http6"] = self.http6!
            }
            if self.https != nil {
                map["Https"] = self.https!
            }
            if self.https6 != nil {
                map["Https6"] = self.https6!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Doh") {
                self.doh = dict["Doh"] as! Int64
            }
            if dict.keys.contains("Http") {
                self.http = dict["Http"] as! Int64
            }
            if dict.keys.contains("Http6") {
                self.http6 = dict["Http6"] as! Int64
            }
            if dict.keys.contains("Https") {
                self.https = dict["Https"] as! Int64
            }
            if dict.keys.contains("Https6") {
                self.https6 = dict["Https6"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var resolveSummary: GetResolveCountSummaryResponseBody.ResolveSummary?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resolveSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resolveSummary != nil {
            map["ResolveSummary"] = self.resolveSummary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResolveSummary") {
            var model = GetResolveCountSummaryResponseBody.ResolveSummary()
            model.fromMap(dict["ResolveSummary"] as! [String: Any])
            self.resolveSummary = model
        }
    }
}

public class GetResolveCountSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResolveCountSummaryResponseBody?

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
            var model = GetResolveCountSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResolveStatisticsRequest : Tea.TeaModel {
    public var domainName: String?

    public var granularity: String?

    public var protocolName: String?

    public var timeSpan: Int32?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.protocolName != nil {
            map["ProtocolName"] = self.protocolName!
        }
        if self.timeSpan != nil {
            map["TimeSpan"] = self.timeSpan!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("ProtocolName") {
            self.protocolName = dict["ProtocolName"] as! String
        }
        if dict.keys.contains("TimeSpan") {
            self.timeSpan = dict["TimeSpan"] as! Int32
        }
    }
}

public class GetResolveStatisticsResponseBody : Tea.TeaModel {
    public class DataPoints : Tea.TeaModel {
        public class DataPoint : Tea.TeaModel {
            public var count: Int32?

            public var time: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! Int32
                }
            }
        }
        public var dataPoint: [GetResolveStatisticsResponseBody.DataPoints.DataPoint]?

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
            if self.dataPoint != nil {
                var tmp : [Any] = []
                for k in self.dataPoint! {
                    tmp.append(k.toMap())
                }
                map["DataPoint"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataPoint") {
                var tmp : [GetResolveStatisticsResponseBody.DataPoints.DataPoint] = []
                for v in dict["DataPoint"] as! [Any] {
                    var model = GetResolveStatisticsResponseBody.DataPoints.DataPoint()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataPoint = tmp
            }
        }
    }
    public var dataPoints: GetResolveStatisticsResponseBody.DataPoints?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataPoints?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataPoints != nil {
            map["DataPoints"] = self.dataPoints?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPoints") {
            var model = GetResolveStatisticsResponseBody.DataPoints()
            model.fromMap(dict["DataPoints"] as! [String: Any])
            self.dataPoints = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResolveStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResolveStatisticsResponseBody?

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
            var model = GetResolveStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var search: String?

    public var withoutMeteringData: Bool?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.withoutMeteringData != nil {
            map["WithoutMeteringData"] = self.withoutMeteringData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("WithoutMeteringData") {
            self.withoutMeteringData = dict["WithoutMeteringData"] as! Bool
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class DomainInfos : Tea.TeaModel {
        public class DomainInfo : Tea.TeaModel {
            public var domainName: String?

            public var resolved: Int64?

            public var resolved6: Int64?

            public var resolvedDoh: Int64?

            public var resolvedHttps: Int64?

            public var resolvedHttps6: Int64?

            public var timeModified: Int64?

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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.resolved != nil {
                    map["Resolved"] = self.resolved!
                }
                if self.resolved6 != nil {
                    map["Resolved6"] = self.resolved6!
                }
                if self.resolvedDoh != nil {
                    map["ResolvedDoh"] = self.resolvedDoh!
                }
                if self.resolvedHttps != nil {
                    map["ResolvedHttps"] = self.resolvedHttps!
                }
                if self.resolvedHttps6 != nil {
                    map["ResolvedHttps6"] = self.resolvedHttps6!
                }
                if self.timeModified != nil {
                    map["TimeModified"] = self.timeModified!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("Resolved") {
                    self.resolved = dict["Resolved"] as! Int64
                }
                if dict.keys.contains("Resolved6") {
                    self.resolved6 = dict["Resolved6"] as! Int64
                }
                if dict.keys.contains("ResolvedDoh") {
                    self.resolvedDoh = dict["ResolvedDoh"] as! Int64
                }
                if dict.keys.contains("ResolvedHttps") {
                    self.resolvedHttps = dict["ResolvedHttps"] as! Int64
                }
                if dict.keys.contains("ResolvedHttps6") {
                    self.resolvedHttps6 = dict["ResolvedHttps6"] as! Int64
                }
                if dict.keys.contains("TimeModified") {
                    self.timeModified = dict["TimeModified"] as! Int64
                }
            }
        }
        public var domainInfo: [ListDomainsResponseBody.DomainInfos.DomainInfo]?

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
            if self.domainInfo != nil {
                var tmp : [Any] = []
                for k in self.domainInfo! {
                    tmp.append(k.toMap())
                }
                map["DomainInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainInfo") {
                var tmp : [ListDomainsResponseBody.DomainInfos.DomainInfo] = []
                for v in dict["DomainInfo"] as! [Any] {
                    var model = ListDomainsResponseBody.DomainInfos.DomainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainInfo = tmp
            }
        }
    }
    public var domainInfos: ListDomainsResponseBody.DomainInfos?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainInfos != nil {
            map["DomainInfos"] = self.domainInfos?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if dict.keys.contains("DomainInfos") {
            var model = ListDomainsResponseBody.DomainInfos()
            model.fromMap(dict["DomainInfos"] as! [String: Any])
            self.domainInfos = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

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
            var model = ListDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshResolveCacheRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! [String]
        }
    }
}

public class RefreshResolveCacheShrinkRequest : Tea.TeaModel {
    public var domainsShrink: String?

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
        if self.domainsShrink != nil {
            map["Domains"] = self.domainsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") {
            self.domainsShrink = dict["Domains"] as! String
        }
    }
}

public class RefreshResolveCacheResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshResolveCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshResolveCacheResponseBody?

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
            var model = RefreshResolveCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
