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

public class CreateSdnsRuleCategoryRequest : Tea.TeaModel {
    public class Paths : Tea.TeaModel {
        public var id: String?

        public var key: String?

        public var level: Int32?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Level"] as? Int32 {
                self.level = value
            }
        }
    }
    public class Rules : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var ip: String?

            public var type: Int32?

            public var typeLabel: String?

            public var weight: Int32?

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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.typeLabel != nil {
                    map["TypeLabel"] = self.typeLabel!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
                if let value = dict["TypeLabel"] as? String {
                    self.typeLabel = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var argKeys: [String]?

        public var args: [String: String]?

        public var name: String?

        public var records: [CreateSdnsRuleCategoryRequest.Rules.Records]?

        public var resultMode: Int32?

        public var ttl: Int32?

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
            if self.argKeys != nil {
                map["ArgKeys"] = self.argKeys!
            }
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.resultMode != nil {
                map["ResultMode"] = self.resultMode!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArgKeys"] as? [String] {
                self.argKeys = value
            }
            if let value = dict["Args"] as? [String: String] {
                self.args = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [CreateSdnsRuleCategoryRequest.Rules.Records] = []
                for v in value {
                    if v != nil {
                        var model = CreateSdnsRuleCategoryRequest.Rules.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["ResultMode"] as? Int32 {
                self.resultMode = value
            }
            if let value = dict["Ttl"] as? Int32 {
                self.ttl = value
            }
        }
    }
    public var clientIpRanges: [String]?

    public var domainName: String?

    public var enable: Bool?

    public var lineId: String?

    public var matchType: String?

    public var paths: [CreateSdnsRuleCategoryRequest.Paths]?

    public var rules: [CreateSdnsRuleCategoryRequest.Rules]?

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
        if self.clientIpRanges != nil {
            map["ClientIpRanges"] = self.clientIpRanges!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.paths != nil {
            var tmp : [Any] = []
            for k in self.paths! {
                tmp.append(k.toMap())
            }
            map["Paths"] = tmp
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIpRanges"] as? [String] {
            self.clientIpRanges = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["Paths"] as? [Any?] {
            var tmp : [CreateSdnsRuleCategoryRequest.Paths] = []
            for v in value {
                if v != nil {
                    var model = CreateSdnsRuleCategoryRequest.Paths()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.paths = tmp
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [CreateSdnsRuleCategoryRequest.Rules] = []
            for v in value {
                if v != nil {
                    var model = CreateSdnsRuleCategoryRequest.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class CreateSdnsRuleCategoryShrinkRequest : Tea.TeaModel {
    public var clientIpRangesShrink: String?

    public var domainName: String?

    public var enable: Bool?

    public var lineId: String?

    public var matchType: String?

    public var pathsShrink: String?

    public var rulesShrink: String?

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
        if self.clientIpRangesShrink != nil {
            map["ClientIpRanges"] = self.clientIpRangesShrink!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.pathsShrink != nil {
            map["Paths"] = self.pathsShrink!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIpRanges"] as? String {
            self.clientIpRangesShrink = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["Paths"] as? String {
            self.pathsShrink = value
        }
        if let value = dict["Rules"] as? String {
            self.rulesShrink = value
        }
    }
}

public class CreateSdnsRuleCategoryResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSdnsRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSdnsRuleCategoryResponseBody?

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
            var model = CreateSdnsRuleCategoryResponseBody()
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

public class SdnsDeleteRuleCategoryRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class SdnsDeleteRuleCategoryResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SdnsDeleteRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdnsDeleteRuleCategoryResponseBody?

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
            var model = SdnsDeleteRuleCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SdnsGetRuleCategoryRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class SdnsGetRuleCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RecordLine : Tea.TeaModel {
            public class Paths : Tea.TeaModel {
                public var id: String?

                public var key: String?

                public var label: String?

                public var level: Int32?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Level"] as? Int32 {
                        self.level = value
                    }
                }
            }
            public var lineId: String?

            public var lineLabel: String?

            public var paths: [SdnsGetRuleCategoryResponseBody.Data.RecordLine.Paths]?

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
                if self.lineId != nil {
                    map["LineId"] = self.lineId!
                }
                if self.lineLabel != nil {
                    map["LineLabel"] = self.lineLabel!
                }
                if self.paths != nil {
                    var tmp : [Any] = []
                    for k in self.paths! {
                        tmp.append(k.toMap())
                    }
                    map["Paths"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LineId"] as? String {
                    self.lineId = value
                }
                if let value = dict["LineLabel"] as? String {
                    self.lineLabel = value
                }
                if let value = dict["Paths"] as? [Any?] {
                    var tmp : [SdnsGetRuleCategoryResponseBody.Data.RecordLine.Paths] = []
                    for v in value {
                        if v != nil {
                            var model = SdnsGetRuleCategoryResponseBody.Data.RecordLine.Paths()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.paths = tmp
                }
            }
        }
        public class Region : Tea.TeaModel {
            public class Area : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class City : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Continent : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Country : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Isp : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Province : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public var area: SdnsGetRuleCategoryResponseBody.Data.Region.Area?

            public var city: SdnsGetRuleCategoryResponseBody.Data.Region.City?

            public var continent: SdnsGetRuleCategoryResponseBody.Data.Region.Continent?

            public var country: SdnsGetRuleCategoryResponseBody.Data.Region.Country?

            public var isp: SdnsGetRuleCategoryResponseBody.Data.Region.Isp?

            public var province: SdnsGetRuleCategoryResponseBody.Data.Region.Province?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.area?.validate()
                try self.city?.validate()
                try self.continent?.validate()
                try self.country?.validate()
                try self.isp?.validate()
                try self.province?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.area != nil {
                    map["Area"] = self.area?.toMap()
                }
                if self.city != nil {
                    map["City"] = self.city?.toMap()
                }
                if self.continent != nil {
                    map["Continent"] = self.continent?.toMap()
                }
                if self.country != nil {
                    map["Country"] = self.country?.toMap()
                }
                if self.isp != nil {
                    map["Isp"] = self.isp?.toMap()
                }
                if self.province != nil {
                    map["Province"] = self.province?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Area"] as? [String: Any?] {
                    var model = SdnsGetRuleCategoryResponseBody.Data.Region.Area()
                    model.fromMap(value)
                    self.area = model
                }
                if let value = dict["City"] as? [String: Any?] {
                    var model = SdnsGetRuleCategoryResponseBody.Data.Region.City()
                    model.fromMap(value)
                    self.city = model
                }
                if let value = dict["Continent"] as? [String: Any?] {
                    var model = SdnsGetRuleCategoryResponseBody.Data.Region.Continent()
                    model.fromMap(value)
                    self.continent = model
                }
                if let value = dict["Country"] as? [String: Any?] {
                    var model = SdnsGetRuleCategoryResponseBody.Data.Region.Country()
                    model.fromMap(value)
                    self.country = model
                }
                if let value = dict["Isp"] as? [String: Any?] {
                    var model = SdnsGetRuleCategoryResponseBody.Data.Region.Isp()
                    model.fromMap(value)
                    self.isp = model
                }
                if let value = dict["Province"] as? [String: Any?] {
                    var model = SdnsGetRuleCategoryResponseBody.Data.Region.Province()
                    model.fromMap(value)
                    self.province = model
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public class Records : Tea.TeaModel {
                public var ip: String?

                public var type: Int32?

                public var typeLabel: String?

                public var weight: Int32?

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
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.typeLabel != nil {
                        map["TypeLabel"] = self.typeLabel!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ip"] as? String {
                        self.ip = value
                    }
                    if let value = dict["Type"] as? Int32 {
                        self.type = value
                    }
                    if let value = dict["TypeLabel"] as? String {
                        self.typeLabel = value
                    }
                    if let value = dict["Weight"] as? Int32 {
                        self.weight = value
                    }
                }
            }
            public var argKeys: [String]?

            public var args: [String: String]?

            public var name: String?

            public var records: [SdnsGetRuleCategoryResponseBody.Data.Rules.Records]?

            public var resultMode: Int32?

            public var ttl: Int32?

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
                if self.argKeys != nil {
                    map["ArgKeys"] = self.argKeys!
                }
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.records != nil {
                    var tmp : [Any] = []
                    for k in self.records! {
                        tmp.append(k.toMap())
                    }
                    map["Records"] = tmp
                }
                if self.resultMode != nil {
                    map["ResultMode"] = self.resultMode!
                }
                if self.ttl != nil {
                    map["Ttl"] = self.ttl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArgKeys"] as? [String] {
                    self.argKeys = value
                }
                if let value = dict["Args"] as? [String: String] {
                    self.args = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Records"] as? [Any?] {
                    var tmp : [SdnsGetRuleCategoryResponseBody.Data.Rules.Records] = []
                    for v in value {
                        if v != nil {
                            var model = SdnsGetRuleCategoryResponseBody.Data.Rules.Records()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.records = tmp
                }
                if let value = dict["ResultMode"] as? Int32 {
                    self.resultMode = value
                }
                if let value = dict["Ttl"] as? Int32 {
                    self.ttl = value
                }
            }
        }
        public var clientIpRanges: [String]?

        public var domainName: String?

        public var id: String?

        public var matchType: String?

        public var recordLine: SdnsGetRuleCategoryResponseBody.Data.RecordLine?

        public var region: SdnsGetRuleCategoryResponseBody.Data.Region?

        public var rules: [SdnsGetRuleCategoryResponseBody.Data.Rules]?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.recordLine?.validate()
            try self.region?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientIpRanges != nil {
                map["ClientIpRanges"] = self.clientIpRanges!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.recordLine != nil {
                map["RecordLine"] = self.recordLine?.toMap()
            }
            if self.region != nil {
                map["Region"] = self.region?.toMap()
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientIpRanges"] as? [String] {
                self.clientIpRanges = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["RecordLine"] as? [String: Any?] {
                var model = SdnsGetRuleCategoryResponseBody.Data.RecordLine()
                model.fromMap(value)
                self.recordLine = model
            }
            if let value = dict["Region"] as? [String: Any?] {
                var model = SdnsGetRuleCategoryResponseBody.Data.Region()
                model.fromMap(value)
                self.region = model
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [SdnsGetRuleCategoryResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = SdnsGetRuleCategoryResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var data: SdnsGetRuleCategoryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SdnsGetRuleCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SdnsGetRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdnsGetRuleCategoryResponseBody?

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
            var model = SdnsGetRuleCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SdnsListRuleCategoriesRequest : Tea.TeaModel {
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

public class SdnsListRuleCategoriesResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class RecordLine : Tea.TeaModel {
            public class Paths : Tea.TeaModel {
                public var id: String?

                public var key: String?

                public var label: String?

                public var level: Int32?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Level"] as? Int32 {
                        self.level = value
                    }
                }
            }
            public var lineId: String?

            public var lineLabel: String?

            public var paths: [SdnsListRuleCategoriesResponseBody.List.RecordLine.Paths]?

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
                if self.lineId != nil {
                    map["LineId"] = self.lineId!
                }
                if self.lineLabel != nil {
                    map["LineLabel"] = self.lineLabel!
                }
                if self.paths != nil {
                    var tmp : [Any] = []
                    for k in self.paths! {
                        tmp.append(k.toMap())
                    }
                    map["Paths"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LineId"] as? String {
                    self.lineId = value
                }
                if let value = dict["LineLabel"] as? String {
                    self.lineLabel = value
                }
                if let value = dict["Paths"] as? [Any?] {
                    var tmp : [SdnsListRuleCategoriesResponseBody.List.RecordLine.Paths] = []
                    for v in value {
                        if v != nil {
                            var model = SdnsListRuleCategoriesResponseBody.List.RecordLine.Paths()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.paths = tmp
                }
            }
        }
        public class Region : Tea.TeaModel {
            public class Area : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class City : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Continent : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Country : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Isp : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public class Province : Tea.TeaModel {
                public var id: String?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public var area: SdnsListRuleCategoriesResponseBody.List.Region.Area?

            public var city: SdnsListRuleCategoriesResponseBody.List.Region.City?

            public var continent: SdnsListRuleCategoriesResponseBody.List.Region.Continent?

            public var country: SdnsListRuleCategoriesResponseBody.List.Region.Country?

            public var isp: SdnsListRuleCategoriesResponseBody.List.Region.Isp?

            public var province: SdnsListRuleCategoriesResponseBody.List.Region.Province?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.area?.validate()
                try self.city?.validate()
                try self.continent?.validate()
                try self.country?.validate()
                try self.isp?.validate()
                try self.province?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.area != nil {
                    map["Area"] = self.area?.toMap()
                }
                if self.city != nil {
                    map["City"] = self.city?.toMap()
                }
                if self.continent != nil {
                    map["Continent"] = self.continent?.toMap()
                }
                if self.country != nil {
                    map["Country"] = self.country?.toMap()
                }
                if self.isp != nil {
                    map["Isp"] = self.isp?.toMap()
                }
                if self.province != nil {
                    map["Province"] = self.province?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Area"] as? [String: Any?] {
                    var model = SdnsListRuleCategoriesResponseBody.List.Region.Area()
                    model.fromMap(value)
                    self.area = model
                }
                if let value = dict["City"] as? [String: Any?] {
                    var model = SdnsListRuleCategoriesResponseBody.List.Region.City()
                    model.fromMap(value)
                    self.city = model
                }
                if let value = dict["Continent"] as? [String: Any?] {
                    var model = SdnsListRuleCategoriesResponseBody.List.Region.Continent()
                    model.fromMap(value)
                    self.continent = model
                }
                if let value = dict["Country"] as? [String: Any?] {
                    var model = SdnsListRuleCategoriesResponseBody.List.Region.Country()
                    model.fromMap(value)
                    self.country = model
                }
                if let value = dict["Isp"] as? [String: Any?] {
                    var model = SdnsListRuleCategoriesResponseBody.List.Region.Isp()
                    model.fromMap(value)
                    self.isp = model
                }
                if let value = dict["Province"] as? [String: Any?] {
                    var model = SdnsListRuleCategoriesResponseBody.List.Region.Province()
                    model.fromMap(value)
                    self.province = model
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public class Records : Tea.TeaModel {
                public var ip: String?

                public var type: Int32?

                public var typeLabel: String?

                public var weight: Int32?

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
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.typeLabel != nil {
                        map["TypeLabel"] = self.typeLabel!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ip"] as? String {
                        self.ip = value
                    }
                    if let value = dict["Type"] as? Int32 {
                        self.type = value
                    }
                    if let value = dict["TypeLabel"] as? String {
                        self.typeLabel = value
                    }
                    if let value = dict["Weight"] as? Int32 {
                        self.weight = value
                    }
                }
            }
            public var argKeys: [String]?

            public var args: [String: String]?

            public var name: String?

            public var records: [SdnsListRuleCategoriesResponseBody.List.Rules.Records]?

            public var resultMode: Int32?

            public var ttl: Int32?

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
                if self.argKeys != nil {
                    map["ArgKeys"] = self.argKeys!
                }
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.records != nil {
                    var tmp : [Any] = []
                    for k in self.records! {
                        tmp.append(k.toMap())
                    }
                    map["Records"] = tmp
                }
                if self.resultMode != nil {
                    map["ResultMode"] = self.resultMode!
                }
                if self.ttl != nil {
                    map["Ttl"] = self.ttl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArgKeys"] as? [String] {
                    self.argKeys = value
                }
                if let value = dict["Args"] as? [String: String] {
                    self.args = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Records"] as? [Any?] {
                    var tmp : [SdnsListRuleCategoriesResponseBody.List.Rules.Records] = []
                    for v in value {
                        if v != nil {
                            var model = SdnsListRuleCategoriesResponseBody.List.Rules.Records()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.records = tmp
                }
                if let value = dict["ResultMode"] as? Int32 {
                    self.resultMode = value
                }
                if let value = dict["Ttl"] as? Int32 {
                    self.ttl = value
                }
            }
        }
        public var clientIpRanges: [String]?

        public var domainName: String?

        public var id: String?

        public var matchType: String?

        public var recordLine: SdnsListRuleCategoriesResponseBody.List.RecordLine?

        public var region: SdnsListRuleCategoriesResponseBody.List.Region?

        public var rules: [SdnsListRuleCategoriesResponseBody.List.Rules]?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.recordLine?.validate()
            try self.region?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientIpRanges != nil {
                map["ClientIpRanges"] = self.clientIpRanges!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.recordLine != nil {
                map["RecordLine"] = self.recordLine?.toMap()
            }
            if self.region != nil {
                map["Region"] = self.region?.toMap()
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientIpRanges"] as? [String] {
                self.clientIpRanges = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["MatchType"] as? String {
                self.matchType = value
            }
            if let value = dict["RecordLine"] as? [String: Any?] {
                var model = SdnsListRuleCategoriesResponseBody.List.RecordLine()
                model.fromMap(value)
                self.recordLine = model
            }
            if let value = dict["Region"] as? [String: Any?] {
                var model = SdnsListRuleCategoriesResponseBody.List.Region()
                model.fromMap(value)
                self.region = model
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [SdnsListRuleCategoriesResponseBody.List.Rules] = []
                for v in value {
                    if v != nil {
                        var model = SdnsListRuleCategoriesResponseBody.List.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var list: [SdnsListRuleCategoriesResponseBody.List]?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [SdnsListRuleCategoriesResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = SdnsListRuleCategoriesResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SdnsListRuleCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdnsListRuleCategoriesResponseBody?

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
            var model = SdnsListRuleCategoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SdnsSwitchRuleCategoryRequest : Tea.TeaModel {
    public var enable: Bool?

    public var id: String?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class SdnsSwitchRuleCategoryResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SdnsSwitchRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdnsSwitchRuleCategoryResponseBody?

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
            var model = SdnsSwitchRuleCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SdnsVerifyRuleCategoryRequest : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var ip: String?

            public var type: Int32?

            public var typeLabel: String?

            public var weight: Int32?

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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.typeLabel != nil {
                    map["TypeLabel"] = self.typeLabel!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
                if let value = dict["TypeLabel"] as? String {
                    self.typeLabel = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var argKeys: [String]?

        public var args: [String: String]?

        public var name: String?

        public var records: [SdnsVerifyRuleCategoryRequest.Rules.Records]?

        public var resultMode: Int32?

        public var ttl: Int32?

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
            if self.argKeys != nil {
                map["ArgKeys"] = self.argKeys!
            }
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.resultMode != nil {
                map["ResultMode"] = self.resultMode!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArgKeys"] as? [String] {
                self.argKeys = value
            }
            if let value = dict["Args"] as? [String: String] {
                self.args = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [SdnsVerifyRuleCategoryRequest.Rules.Records] = []
                for v in value {
                    if v != nil {
                        var model = SdnsVerifyRuleCategoryRequest.Rules.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["ResultMode"] as? Int32 {
                self.resultMode = value
            }
            if let value = dict["Ttl"] as? Int32 {
                self.ttl = value
            }
        }
    }
    public var args: [String: String]?

    public var cip: String?

    public var clientIpRanges: [String]?

    public var matchType: String?

    public var rules: [SdnsVerifyRuleCategoryRequest.Rules]?

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
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.cip != nil {
            map["Cip"] = self.cip!
        }
        if self.clientIpRanges != nil {
            map["ClientIpRanges"] = self.clientIpRanges!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: String] {
            self.args = value
        }
        if let value = dict["Cip"] as? String {
            self.cip = value
        }
        if let value = dict["ClientIpRanges"] as? [String] {
            self.clientIpRanges = value
        }
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [SdnsVerifyRuleCategoryRequest.Rules] = []
            for v in value {
                if v != nil {
                    var model = SdnsVerifyRuleCategoryRequest.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class SdnsVerifyRuleCategoryShrinkRequest : Tea.TeaModel {
    public var argsShrink: String?

    public var cip: String?

    public var clientIpRangesShrink: String?

    public var matchType: String?

    public var rulesShrink: String?

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
        if self.argsShrink != nil {
            map["Args"] = self.argsShrink!
        }
        if self.cip != nil {
            map["Cip"] = self.cip!
        }
        if self.clientIpRangesShrink != nil {
            map["ClientIpRanges"] = self.clientIpRangesShrink!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? String {
            self.argsShrink = value
        }
        if let value = dict["Cip"] as? String {
            self.cip = value
        }
        if let value = dict["ClientIpRanges"] as? String {
            self.clientIpRangesShrink = value
        }
        if let value = dict["MatchType"] as? String {
            self.matchType = value
        }
        if let value = dict["Rules"] as? String {
            self.rulesShrink = value
        }
    }
}

public class SdnsVerifyRuleCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var ip: String?

            public var type: Int32?

            public var typeLabel: String?

            public var weight: Int32?

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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.typeLabel != nil {
                    map["TypeLabel"] = self.typeLabel!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
                if let value = dict["TypeLabel"] as? String {
                    self.typeLabel = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var argKeys: [String]?

        public var args: [String: String]?

        public var name: String?

        public var records: [SdnsVerifyRuleCategoryResponseBody.Data.Records]?

        public var resultMode: Int32?

        public var ttl: Int32?

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
            if self.argKeys != nil {
                map["ArgKeys"] = self.argKeys!
            }
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.resultMode != nil {
                map["ResultMode"] = self.resultMode!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArgKeys"] as? [String] {
                self.argKeys = value
            }
            if let value = dict["Args"] as? [String: String] {
                self.args = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [SdnsVerifyRuleCategoryResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = SdnsVerifyRuleCategoryResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["ResultMode"] as? Int32 {
                self.resultMode = value
            }
            if let value = dict["Ttl"] as? Int32 {
                self.ttl = value
            }
        }
    }
    public var data: SdnsVerifyRuleCategoryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SdnsVerifyRuleCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SdnsVerifyRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdnsVerifyRuleCategoryResponseBody?

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
            var model = SdnsVerifyRuleCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSdnsRuleCategoryRequest : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var ip: String?

            public var type: Int32?

            public var typeLabel: String?

            public var weight: Int32?

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
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.typeLabel != nil {
                    map["TypeLabel"] = self.typeLabel!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
                if let value = dict["TypeLabel"] as? String {
                    self.typeLabel = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var argKeys: [String]?

        public var args: [String: String]?

        public var name: String?

        public var records: [UpdateSdnsRuleCategoryRequest.Rules.Records]?

        public var resultMode: Int32?

        public var ttl: Int32?

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
            if self.argKeys != nil {
                map["ArgKeys"] = self.argKeys!
            }
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.resultMode != nil {
                map["ResultMode"] = self.resultMode!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArgKeys"] as? [String] {
                self.argKeys = value
            }
            if let value = dict["Args"] as? [String: String] {
                self.args = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [UpdateSdnsRuleCategoryRequest.Rules.Records] = []
                for v in value {
                    if v != nil {
                        var model = UpdateSdnsRuleCategoryRequest.Rules.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["ResultMode"] as? Int32 {
                self.resultMode = value
            }
            if let value = dict["Ttl"] as? Int32 {
                self.ttl = value
            }
        }
    }
    public var clientIpRanges: String?

    public var id: String?

    public var rules: [UpdateSdnsRuleCategoryRequest.Rules]?

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
        if self.clientIpRanges != nil {
            map["ClientIpRanges"] = self.clientIpRanges!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIpRanges"] as? String {
            self.clientIpRanges = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [UpdateSdnsRuleCategoryRequest.Rules] = []
            for v in value {
                if v != nil {
                    var model = UpdateSdnsRuleCategoryRequest.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class UpdateSdnsRuleCategoryShrinkRequest : Tea.TeaModel {
    public var clientIpRanges: String?

    public var id: String?

    public var rulesShrink: String?

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
        if self.clientIpRanges != nil {
            map["ClientIpRanges"] = self.clientIpRanges!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIpRanges"] as? String {
            self.clientIpRanges = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Rules"] as? String {
            self.rulesShrink = value
        }
    }
}

public class UpdateSdnsRuleCategoryResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateSdnsRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSdnsRuleCategoryResponseBody?

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
            var model = UpdateSdnsRuleCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
