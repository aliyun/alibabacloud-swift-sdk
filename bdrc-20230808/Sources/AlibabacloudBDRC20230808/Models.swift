import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckRulesRequest : Tea.TeaModel {
    public var resourceArn: String?

    public var ruleId: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceArn") {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class CheckRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var data: CheckRulesResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = CheckRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckRulesResponseBody?

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
            var model = CheckRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloseBdrcServiceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CloseBdrcServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseBdrcServiceResponseBody?

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
            var model = CloseBdrcServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCheckDetailsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceArn: String?

    public var ruleId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceArn") {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class DescribeCheckDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var checkStatus: String?

            public var checkTime: Int64?

            public var detail: String?

            public var productType: String?

            public var resourceArn: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var ruleId: String?

            public var ruleTemplate: String?

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
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.checkTime != nil {
                    map["CheckTime"] = self.checkTime!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleTemplate != nil {
                    map["RuleTemplate"] = self.ruleTemplate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckStatus") {
                    self.checkStatus = dict["CheckStatus"] as! String
                }
                if dict.keys.contains("CheckTime") {
                    self.checkTime = dict["CheckTime"] as! Int64
                }
                if dict.keys.contains("Detail") {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("ResourceArn") {
                    self.resourceArn = dict["ResourceArn"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleTemplate") {
                    self.ruleTemplate = dict["RuleTemplate"] as! String
                }
            }
        }
        public var content: [DescribeCheckDetailsResponseBody.Data.Content]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int64?

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
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                var tmp : [DescribeCheckDetailsResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeCheckDetailsResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: DescribeCheckDetailsResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeCheckDetailsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCheckDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCheckDetailsResponseBody?

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
            var model = DescribeCheckDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProductsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class ProtectionScoreDistribution : Tea.TeaModel {
                public class Range : Tea.TeaModel {
                    public var from: Int32?

                    public var to: Int32?

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
                        if self.from != nil {
                            map["From"] = self.from!
                        }
                        if self.to != nil {
                            map["To"] = self.to!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("From") {
                            self.from = dict["From"] as! Int32
                        }
                        if dict.keys.contains("To") {
                            self.to = dict["To"] as! Int32
                        }
                    }
                }
                public var count: Int64?

                public var range: DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution.Range?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.range?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.range != nil {
                        map["Range"] = self.range?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int64
                    }
                    if dict.keys.contains("Range") {
                        var model = DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution.Range()
                        model.fromMap(dict["Range"] as! [String: Any])
                        self.range = model
                    }
                }
            }
            public var checkFailedCount: Int64?

            public var checkFailedResourceCount: Int64?

            public var disableCheckResourceCount: Int64?

            public var enableCheck: Bool?

            public var productType: String?

            public var protectionScore: Int32?

            public var protectionScoreDistribution: [DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution]?

            public var protectionScoreUpdatedTime: Int64?

            public var riskCount: Int64?

            public var riskyResourceCount: Int64?

            public var totalResourceCount: Int64?

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
                if self.checkFailedCount != nil {
                    map["CheckFailedCount"] = self.checkFailedCount!
                }
                if self.checkFailedResourceCount != nil {
                    map["CheckFailedResourceCount"] = self.checkFailedResourceCount!
                }
                if self.disableCheckResourceCount != nil {
                    map["DisableCheckResourceCount"] = self.disableCheckResourceCount!
                }
                if self.enableCheck != nil {
                    map["EnableCheck"] = self.enableCheck!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.protectionScore != nil {
                    map["ProtectionScore"] = self.protectionScore!
                }
                if self.protectionScoreDistribution != nil {
                    var tmp : [Any] = []
                    for k in self.protectionScoreDistribution! {
                        tmp.append(k.toMap())
                    }
                    map["ProtectionScoreDistribution"] = tmp
                }
                if self.protectionScoreUpdatedTime != nil {
                    map["ProtectionScoreUpdatedTime"] = self.protectionScoreUpdatedTime!
                }
                if self.riskCount != nil {
                    map["RiskCount"] = self.riskCount!
                }
                if self.riskyResourceCount != nil {
                    map["RiskyResourceCount"] = self.riskyResourceCount!
                }
                if self.totalResourceCount != nil {
                    map["TotalResourceCount"] = self.totalResourceCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckFailedCount") {
                    self.checkFailedCount = dict["CheckFailedCount"] as! Int64
                }
                if dict.keys.contains("CheckFailedResourceCount") {
                    self.checkFailedResourceCount = dict["CheckFailedResourceCount"] as! Int64
                }
                if dict.keys.contains("DisableCheckResourceCount") {
                    self.disableCheckResourceCount = dict["DisableCheckResourceCount"] as! Int64
                }
                if dict.keys.contains("EnableCheck") {
                    self.enableCheck = dict["EnableCheck"] as! Bool
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("ProtectionScore") {
                    self.protectionScore = dict["ProtectionScore"] as! Int32
                }
                if dict.keys.contains("ProtectionScoreDistribution") {
                    var tmp : [DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution] = []
                    for v in dict["ProtectionScoreDistribution"] as! [Any] {
                        var model = DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.protectionScoreDistribution = tmp
                }
                if dict.keys.contains("ProtectionScoreUpdatedTime") {
                    self.protectionScoreUpdatedTime = dict["ProtectionScoreUpdatedTime"] as! Int64
                }
                if dict.keys.contains("RiskCount") {
                    self.riskCount = dict["RiskCount"] as! Int64
                }
                if dict.keys.contains("RiskyResourceCount") {
                    self.riskyResourceCount = dict["RiskyResourceCount"] as! Int64
                }
                if dict.keys.contains("TotalResourceCount") {
                    self.totalResourceCount = dict["TotalResourceCount"] as! Int64
                }
            }
        }
        public var content: [DescribeProductsResponseBody.Data.Content]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int64?

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
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                var tmp : [DescribeProductsResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeProductsResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: DescribeProductsResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeProductsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProductsResponseBody?

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
            var model = DescribeProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourcesRequest : Tea.TeaModel {
    public var dataRedundancyType: String?

    public var failedRuleTemplate: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceId: String?

    public var resourceType: String?

    public var sortBy: String?

    public var sortOrder: String?

    public var storageClass: String?

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
        if self.dataRedundancyType != nil {
            map["DataRedundancyType"] = self.dataRedundancyType!
        }
        if self.failedRuleTemplate != nil {
            map["FailedRuleTemplate"] = self.failedRuleTemplate!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.storageClass != nil {
            map["StorageClass"] = self.storageClass!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataRedundancyType") {
            self.dataRedundancyType = dict["DataRedundancyType"] as! String
        }
        if dict.keys.contains("FailedRuleTemplate") {
            self.failedRuleTemplate = dict["FailedRuleTemplate"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StorageClass") {
            self.storageClass = dict["StorageClass"] as! String
        }
    }
}

public class DescribeResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var archiveDataSize: Int64?

            public var checkFailedCount: Int64?

            public var coldArchiveDataSize: Int64?

            public var createTime: Int64?

            public var dataRedundancyType: String?

            public var enableCheck: Bool?

            public var iaDataSize: Int64?

            public var productType: String?

            public var protectionScore: Int32?

            public var protectionScoreUpdatedTime: Int64?

            public var regionId: String?

            public var resourceArn: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var riskCount: Int64?

            public var standardDataSize: Int64?

            public var status: String?

            public var storageClass: String?

            public var totalDataSize: Int64?

            public var vSwitchId: String?

            public var vpcId: String?

            public var zoneId: String?

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
                if self.archiveDataSize != nil {
                    map["ArchiveDataSize"] = self.archiveDataSize!
                }
                if self.checkFailedCount != nil {
                    map["CheckFailedCount"] = self.checkFailedCount!
                }
                if self.coldArchiveDataSize != nil {
                    map["ColdArchiveDataSize"] = self.coldArchiveDataSize!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataRedundancyType != nil {
                    map["DataRedundancyType"] = self.dataRedundancyType!
                }
                if self.enableCheck != nil {
                    map["EnableCheck"] = self.enableCheck!
                }
                if self.iaDataSize != nil {
                    map["IaDataSize"] = self.iaDataSize!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.protectionScore != nil {
                    map["ProtectionScore"] = self.protectionScore!
                }
                if self.protectionScoreUpdatedTime != nil {
                    map["ProtectionScoreUpdatedTime"] = self.protectionScoreUpdatedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.riskCount != nil {
                    map["RiskCount"] = self.riskCount!
                }
                if self.standardDataSize != nil {
                    map["StandardDataSize"] = self.standardDataSize!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                if self.totalDataSize != nil {
                    map["TotalDataSize"] = self.totalDataSize!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArchiveDataSize") {
                    self.archiveDataSize = dict["ArchiveDataSize"] as! Int64
                }
                if dict.keys.contains("CheckFailedCount") {
                    self.checkFailedCount = dict["CheckFailedCount"] as! Int64
                }
                if dict.keys.contains("ColdArchiveDataSize") {
                    self.coldArchiveDataSize = dict["ColdArchiveDataSize"] as! Int64
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataRedundancyType") {
                    self.dataRedundancyType = dict["DataRedundancyType"] as! String
                }
                if dict.keys.contains("EnableCheck") {
                    self.enableCheck = dict["EnableCheck"] as! Bool
                }
                if dict.keys.contains("IaDataSize") {
                    self.iaDataSize = dict["IaDataSize"] as! Int64
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("ProtectionScore") {
                    self.protectionScore = dict["ProtectionScore"] as! Int32
                }
                if dict.keys.contains("ProtectionScoreUpdatedTime") {
                    self.protectionScoreUpdatedTime = dict["ProtectionScoreUpdatedTime"] as! Int64
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceArn") {
                    self.resourceArn = dict["ResourceArn"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("RiskCount") {
                    self.riskCount = dict["RiskCount"] as! Int64
                }
                if dict.keys.contains("StandardDataSize") {
                    self.standardDataSize = dict["StandardDataSize"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageClass") {
                    self.storageClass = dict["StorageClass"] as! String
                }
                if dict.keys.contains("TotalDataSize") {
                    self.totalDataSize = dict["TotalDataSize"] as! Int64
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var content: [DescribeResourcesResponseBody.Data.Content]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int64?

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
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                var tmp : [DescribeResourcesResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeResourcesResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: DescribeResourcesResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourcesResponseBody?

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
            var model = DescribeResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRulesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceType: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var checkFailedResourceCount: Int64?

            public var checkStatus: String?

            public var checkTime: Int64?

            public var productType: String?

            public var resourceType: String?

            public var riskyResourceCount: Int64?

            public var ruleId: String?

            public var ruleTemplate: String?

            public var totalResourceCount: Int64?

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
                if self.checkFailedResourceCount != nil {
                    map["CheckFailedResourceCount"] = self.checkFailedResourceCount!
                }
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.checkTime != nil {
                    map["CheckTime"] = self.checkTime!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.riskyResourceCount != nil {
                    map["RiskyResourceCount"] = self.riskyResourceCount!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleTemplate != nil {
                    map["RuleTemplate"] = self.ruleTemplate!
                }
                if self.totalResourceCount != nil {
                    map["TotalResourceCount"] = self.totalResourceCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckFailedResourceCount") {
                    self.checkFailedResourceCount = dict["CheckFailedResourceCount"] as! Int64
                }
                if dict.keys.contains("CheckStatus") {
                    self.checkStatus = dict["CheckStatus"] as! String
                }
                if dict.keys.contains("CheckTime") {
                    self.checkTime = dict["CheckTime"] as! Int64
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("RiskyResourceCount") {
                    self.riskyResourceCount = dict["RiskyResourceCount"] as! Int64
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleTemplate") {
                    self.ruleTemplate = dict["RuleTemplate"] as! String
                }
                if dict.keys.contains("TotalResourceCount") {
                    self.totalResourceCount = dict["TotalResourceCount"] as! Int64
                }
            }
        }
        public var content: [DescribeRulesResponseBody.Data.Content]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int64?

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
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                var tmp : [DescribeRulesResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeRulesResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: DescribeRulesResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRulesResponseBody?

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
            var model = DescribeRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completeTime: Int64?

        public var errorMessage: String?

        public var executionId: String?

        public var expireTime: Int64?

        public var progress: Int32?

        public var requestId: String?

        public var startTime: Int64?

        public var taskDescription: String?

        public var taskDetail: String?

        public var taskId: String?

        public var taskName: String?

        public var taskPriority: String?

        public var taskStatus: String?

        public var taskType: String?

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
            if self.completeTime != nil {
                map["CompleteTime"] = self.completeTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskDescription != nil {
                map["TaskDescription"] = self.taskDescription!
            }
            if self.taskDetail != nil {
                map["TaskDetail"] = self.taskDetail!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskPriority != nil {
                map["TaskPriority"] = self.taskPriority!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompleteTime") {
                self.completeTime = dict["CompleteTime"] as! Int64
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("ExecutionId") {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("TaskDescription") {
                self.taskDescription = dict["TaskDescription"] as! String
            }
            if dict.keys.contains("TaskDetail") {
                self.taskDetail = dict["TaskDetail"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskPriority") {
                self.taskPriority = dict["TaskPriority"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var data: DescribeTaskResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskResponseBody?

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
            var model = DescribeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var taskStatus: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var completeTime: Int64?

            public var errorMessage: String?

            public var executionId: String?

            public var expireTime: Int64?

            public var progress: Int32?

            public var requestId: String?

            public var startTime: Int64?

            public var taskDescription: String?

            public var taskDetail: String?

            public var taskId: String?

            public var taskName: String?

            public var taskPriority: String?

            public var taskStatus: String?

            public var taskType: String?

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
                if self.completeTime != nil {
                    map["CompleteTime"] = self.completeTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.executionId != nil {
                    map["ExecutionId"] = self.executionId!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.taskDescription != nil {
                    map["TaskDescription"] = self.taskDescription!
                }
                if self.taskDetail != nil {
                    map["TaskDetail"] = self.taskDetail!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskPriority != nil {
                    map["TaskPriority"] = self.taskPriority!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompleteTime") {
                    self.completeTime = dict["CompleteTime"] as! Int64
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ExecutionId") {
                    self.executionId = dict["ExecutionId"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("RequestId") {
                    self.requestId = dict["RequestId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("TaskDescription") {
                    self.taskDescription = dict["TaskDescription"] as! String
                }
                if dict.keys.contains("TaskDetail") {
                    self.taskDetail = dict["TaskDetail"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("TaskPriority") {
                    self.taskPriority = dict["TaskPriority"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskType") {
                    self.taskType = dict["TaskType"] as! String
                }
            }
        }
        public var content: [DescribeTasksResponseBody.Data.Content]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int64?

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
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                var tmp : [DescribeTasksResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeTasksResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: DescribeTasksResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

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
            var model = DescribeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTopRiskyResourcesRequest : Tea.TeaModel {
    public var resourceType: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeTopRiskyResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var archiveDataSize: Int64?

            public var checkFailedCount: Int64?

            public var coldArchiveDataSize: Int64?

            public var createTime: Int64?

            public var dataRedundancyType: String?

            public var enableCheck: Bool?

            public var iaDataSize: Int64?

            public var productType: String?

            public var protectionScore: Int32?

            public var protectionScoreUpdatedTime: Int64?

            public var regionId: String?

            public var resourceArn: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var riskCount: Int64?

            public var standardDataSize: Int64?

            public var status: String?

            public var storageClass: String?

            public var totalDataSize: Int64?

            public var vSwitchId: String?

            public var vpcId: String?

            public var zoneId: String?

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
                if self.archiveDataSize != nil {
                    map["ArchiveDataSize"] = self.archiveDataSize!
                }
                if self.checkFailedCount != nil {
                    map["CheckFailedCount"] = self.checkFailedCount!
                }
                if self.coldArchiveDataSize != nil {
                    map["ColdArchiveDataSize"] = self.coldArchiveDataSize!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataRedundancyType != nil {
                    map["DataRedundancyType"] = self.dataRedundancyType!
                }
                if self.enableCheck != nil {
                    map["EnableCheck"] = self.enableCheck!
                }
                if self.iaDataSize != nil {
                    map["IaDataSize"] = self.iaDataSize!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.protectionScore != nil {
                    map["ProtectionScore"] = self.protectionScore!
                }
                if self.protectionScoreUpdatedTime != nil {
                    map["ProtectionScoreUpdatedTime"] = self.protectionScoreUpdatedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.riskCount != nil {
                    map["RiskCount"] = self.riskCount!
                }
                if self.standardDataSize != nil {
                    map["StandardDataSize"] = self.standardDataSize!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                if self.totalDataSize != nil {
                    map["TotalDataSize"] = self.totalDataSize!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArchiveDataSize") {
                    self.archiveDataSize = dict["ArchiveDataSize"] as! Int64
                }
                if dict.keys.contains("CheckFailedCount") {
                    self.checkFailedCount = dict["CheckFailedCount"] as! Int64
                }
                if dict.keys.contains("ColdArchiveDataSize") {
                    self.coldArchiveDataSize = dict["ColdArchiveDataSize"] as! Int64
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataRedundancyType") {
                    self.dataRedundancyType = dict["DataRedundancyType"] as! String
                }
                if dict.keys.contains("EnableCheck") {
                    self.enableCheck = dict["EnableCheck"] as! Bool
                }
                if dict.keys.contains("IaDataSize") {
                    self.iaDataSize = dict["IaDataSize"] as! Int64
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("ProtectionScore") {
                    self.protectionScore = dict["ProtectionScore"] as! Int32
                }
                if dict.keys.contains("ProtectionScoreUpdatedTime") {
                    self.protectionScoreUpdatedTime = dict["ProtectionScoreUpdatedTime"] as! Int64
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceArn") {
                    self.resourceArn = dict["ResourceArn"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("RiskCount") {
                    self.riskCount = dict["RiskCount"] as! Int64
                }
                if dict.keys.contains("StandardDataSize") {
                    self.standardDataSize = dict["StandardDataSize"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageClass") {
                    self.storageClass = dict["StorageClass"] as! String
                }
                if dict.keys.contains("TotalDataSize") {
                    self.totalDataSize = dict["TotalDataSize"] as! Int64
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var content: [DescribeTopRiskyResourcesResponseBody.Data.Content]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var totalCount: Int64?

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
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                var tmp : [DescribeTopRiskyResourcesResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeTopRiskyResourcesResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: DescribeTopRiskyResourcesResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeTopRiskyResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTopRiskyResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTopRiskyResourcesResponseBody?

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
            var model = DescribeTopRiskyResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableCheckProductRequest : Tea.TeaModel {
    public var productType: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class DisableCheckProductResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableCheckProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableCheckProductResponseBody?

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
            var model = DisableCheckProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableCheckResourceRequest : Tea.TeaModel {
    public var resourceArn: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceArn") {
            self.resourceArn = dict["ResourceArn"] as! String
        }
    }
}

public class DisableCheckResourceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableCheckResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableCheckResourceResponseBody?

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
            var model = DisableCheckResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableCheckProductRequest : Tea.TeaModel {
    public var productType: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class EnableCheckProductResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableCheckProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableCheckProductResponseBody?

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
            var model = EnableCheckProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableCheckResourceRequest : Tea.TeaModel {
    public var resourceArn: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceArn") {
            self.resourceArn = dict["ResourceArn"] as! String
        }
    }
}

public class EnableCheckResourceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableCheckResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableCheckResourceResponseBody?

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
            var model = EnableCheckResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBdrcServiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var openTime: Int64?

        public var protectionScoreUpdatedTime: Int64?

        public var serviceInitializeStatus: String?

        public var serviceStatus: String?

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
            if self.openTime != nil {
                map["OpenTime"] = self.openTime!
            }
            if self.protectionScoreUpdatedTime != nil {
                map["ProtectionScoreUpdatedTime"] = self.protectionScoreUpdatedTime!
            }
            if self.serviceInitializeStatus != nil {
                map["ServiceInitializeStatus"] = self.serviceInitializeStatus!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OpenTime") {
                self.openTime = dict["OpenTime"] as! Int64
            }
            if dict.keys.contains("ProtectionScoreUpdatedTime") {
                self.protectionScoreUpdatedTime = dict["ProtectionScoreUpdatedTime"] as! Int64
            }
            if dict.keys.contains("ServiceInitializeStatus") {
                self.serviceInitializeStatus = dict["ServiceInitializeStatus"] as! String
            }
            if dict.keys.contains("ServiceStatus") {
                self.serviceStatus = dict["ServiceStatus"] as! String
            }
        }
    }
    public var data: GetBdrcServiceResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = GetBdrcServiceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBdrcServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBdrcServiceResponseBody?

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
            var model = GetBdrcServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenBdrcServiceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenBdrcServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenBdrcServiceResponseBody?

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
            var model = OpenBdrcServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourcesRequest : Tea.TeaModel {
    public var resourceType: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class UpdateResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var data: UpdateResourcesResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = UpdateResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourcesResponseBody?

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
            var model = UpdateResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
