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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [Any?] {
                var tmp : [DescribeDomainsResponseBody.Domains.Domain] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDomainsResponseBody.Domains.Domain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String: Any?] {
            var model = DescribeDomainsResponseBody.Domains()
            model.fromMap(value)
            self.domains = model
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainsResponseBody()
            model.fromMap(value)
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

        public var monthHttpAesResolveCount: Int64?

        public var monthHttpsAesResolveCount: Int64?

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
            if self.monthHttpAesResolveCount != nil {
                map["MonthHttpAesResolveCount"] = self.monthHttpAesResolveCount!
            }
            if self.monthHttpsAesResolveCount != nil {
                map["MonthHttpsAesResolveCount"] = self.monthHttpsAesResolveCount!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["DohEnabled"] as? Bool {
                self.dohEnabled = value
            }
            if let value = dict["DohResolveAllEnabled"] as? Bool {
                self.dohResolveAllEnabled = value
            }
            if let value = dict["MonthDohResolveCount"] as? Int64 {
                self.monthDohResolveCount = value
            }
            if let value = dict["MonthFreeCount"] as? Int32 {
                self.monthFreeCount = value
            }
            if let value = dict["MonthHttpAesResolveCount"] as? Int64 {
                self.monthHttpAesResolveCount = value
            }
            if let value = dict["MonthHttpsAesResolveCount"] as? Int64 {
                self.monthHttpsAesResolveCount = value
            }
            if let value = dict["MonthHttpsResolveCount"] as? Int32 {
                self.monthHttpsResolveCount = value
            }
            if let value = dict["MonthResolveCount"] as? Int32 {
                self.monthResolveCount = value
            }
            if let value = dict["PackageCount"] as? Int32 {
                self.packageCount = value
            }
            if let value = dict["SignSecret"] as? String {
                self.signSecret = value
            }
            if let value = dict["SignedCount"] as? Int64 {
                self.signedCount = value
            }
            if let value = dict["UnsignedCount"] as? Int64 {
                self.unsignedCount = value
            }
            if let value = dict["UnsignedEnabled"] as? Bool {
                self.unsignedEnabled = value
            }
            if let value = dict["UserStatus"] as? Int32 {
                self.userStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountInfo"] as? [String: Any?] {
            var model = GetAccountInfoResponseBody.AccountInfo()
            model.fromMap(value)
            self.accountInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["TimeSpan"] as? Int32 {
            self.timeSpan = value
        }
    }
}

public class GetResolveCountSummaryResponseBody : Tea.TeaModel {
    public class ResolveSummary : Tea.TeaModel {
        public var doh: Int64?

        public var http: Int64?

        public var http6: Int64?

        public var httpAes: String?

        public var https: Int64?

        public var https6: Int64?

        public var httpsAes: String?

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
            if self.httpAes != nil {
                map["HttpAes"] = self.httpAes!
            }
            if self.https != nil {
                map["Https"] = self.https!
            }
            if self.https6 != nil {
                map["Https6"] = self.https6!
            }
            if self.httpsAes != nil {
                map["HttpsAes"] = self.httpsAes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Doh"] as? Int64 {
                self.doh = value
            }
            if let value = dict["Http"] as? Int64 {
                self.http = value
            }
            if let value = dict["Http6"] as? Int64 {
                self.http6 = value
            }
            if let value = dict["HttpAes"] as? String {
                self.httpAes = value
            }
            if let value = dict["Https"] as? Int64 {
                self.https = value
            }
            if let value = dict["Https6"] as? Int64 {
                self.https6 = value
            }
            if let value = dict["HttpsAes"] as? String {
                self.httpsAes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResolveSummary"] as? [String: Any?] {
            var model = GetResolveCountSummaryResponseBody.ResolveSummary()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResolveCountSummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["ProtocolName"] as? String {
            self.protocolName = value
        }
        if let value = dict["TimeSpan"] as? Int32 {
            self.timeSpan = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["Time"] as? Int32 {
                    self.time = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataPoint"] as? [Any?] {
                var tmp : [GetResolveStatisticsResponseBody.DataPoints.DataPoint] = []
                for v in value {
                    if v != nil {
                        var model = GetResolveStatisticsResponseBody.DataPoints.DataPoint()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPoints"] as? [String: Any?] {
            var model = GetResolveStatisticsResponseBody.DataPoints()
            model.fromMap(value)
            self.dataPoints = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResolveStatisticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Search"] as? String {
            self.search = value
        }
        if let value = dict["WithoutMeteringData"] as? Bool {
            self.withoutMeteringData = value
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class DomainInfos : Tea.TeaModel {
        public class DomainInfo : Tea.TeaModel {
            public var domainName: String?

            public var resolveHttpAes: Int64?

            public var resolveHttpsAes: Int64?

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
                if self.resolveHttpAes != nil {
                    map["ResolveHttpAes"] = self.resolveHttpAes!
                }
                if self.resolveHttpsAes != nil {
                    map["ResolveHttpsAes"] = self.resolveHttpsAes!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["ResolveHttpAes"] as? Int64 {
                    self.resolveHttpAes = value
                }
                if let value = dict["ResolveHttpsAes"] as? Int64 {
                    self.resolveHttpsAes = value
                }
                if let value = dict["Resolved"] as? Int64 {
                    self.resolved = value
                }
                if let value = dict["Resolved6"] as? Int64 {
                    self.resolved6 = value
                }
                if let value = dict["ResolvedDoh"] as? Int64 {
                    self.resolvedDoh = value
                }
                if let value = dict["ResolvedHttps"] as? Int64 {
                    self.resolvedHttps = value
                }
                if let value = dict["ResolvedHttps6"] as? Int64 {
                    self.resolvedHttps6 = value
                }
                if let value = dict["TimeModified"] as? Int64 {
                    self.timeModified = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainInfo"] as? [Any?] {
                var tmp : [ListDomainsResponseBody.DomainInfos.DomainInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListDomainsResponseBody.DomainInfos.DomainInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainInfos"] as? [String: Any?] {
            var model = ListDomainsResponseBody.DomainInfos()
            model.fromMap(value)
            self.domainInfos = model
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDomainsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? String {
            self.domainsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefreshResolveCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
