import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActiveConfigRulesRequest : Tea.TeaModel {
    public var configRuleIds: String?

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
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class ActiveConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

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
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [ActiveConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

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
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [ActiveConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: ActiveConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = ActiveConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ActiveConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveConfigRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ActiveConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConfigRulesRequest : Tea.TeaModel {
    public var configRuleIds: String?

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
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class DeleteConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

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
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [DeleteConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

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
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [DeleteConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: DeleteConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = DeleteConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComplianceRequest : Tea.TeaModel {
    public var complianceType: String?

    public var configRuleId: String?

    public var memberId: Int64?

    public var multiAccount: Bool?

    public var resourceId: String?

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
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeComplianceResponseBody : Tea.TeaModel {
    public class ComplianceResult : Tea.TeaModel {
        public class Compliances : Tea.TeaModel {
            public var complianceType: String?

            public var count: Int32?

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
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
            }
        }
        public var compliances: [DescribeComplianceResponseBody.ComplianceResult.Compliances]?

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
            if self.compliances != nil {
                var tmp : [Any] = []
                for k in self.compliances! {
                    tmp.append(k.toMap())
                }
                map["Compliances"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compliances") {
                self.compliances = dict["Compliances"] as! [DescribeComplianceResponseBody.ComplianceResult.Compliances]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var complianceResult: DescribeComplianceResponseBody.ComplianceResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceResult != nil {
            map["ComplianceResult"] = self.complianceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceResult") {
            var model = DescribeComplianceResponseBody.ComplianceResult()
            model.fromMap(dict["ComplianceResult"] as! [String: Any])
            self.complianceResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComplianceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComplianceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeComplianceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComplianceSummaryRequest : Tea.TeaModel {
    public var memberId: Int64?

    public var multiAccount: Bool?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
    }
}

public class DescribeComplianceSummaryResponseBody : Tea.TeaModel {
    public class ComplianceSummary : Tea.TeaModel {
        public class ComplianceSummaryByConfigRule : Tea.TeaModel {
            public var complianceSummaryTimestamp: Int64?

            public var compliantCount: Int32?

            public var nonCompliantCount: Int32?

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
                if self.complianceSummaryTimestamp != nil {
                    map["ComplianceSummaryTimestamp"] = self.complianceSummaryTimestamp!
                }
                if self.compliantCount != nil {
                    map["CompliantCount"] = self.compliantCount!
                }
                if self.nonCompliantCount != nil {
                    map["NonCompliantCount"] = self.nonCompliantCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceSummaryTimestamp") {
                    self.complianceSummaryTimestamp = dict["ComplianceSummaryTimestamp"] as! Int64
                }
                if dict.keys.contains("CompliantCount") {
                    self.compliantCount = dict["CompliantCount"] as! Int32
                }
                if dict.keys.contains("NonCompliantCount") {
                    self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ComplianceSummaryByResource : Tea.TeaModel {
            public var complianceSummaryTimestamp: Int64?

            public var compliantCount: Int32?

            public var nonCompliantCount: Int32?

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
                if self.complianceSummaryTimestamp != nil {
                    map["ComplianceSummaryTimestamp"] = self.complianceSummaryTimestamp!
                }
                if self.compliantCount != nil {
                    map["CompliantCount"] = self.compliantCount!
                }
                if self.nonCompliantCount != nil {
                    map["NonCompliantCount"] = self.nonCompliantCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceSummaryTimestamp") {
                    self.complianceSummaryTimestamp = dict["ComplianceSummaryTimestamp"] as! Int64
                }
                if dict.keys.contains("CompliantCount") {
                    self.compliantCount = dict["CompliantCount"] as! Int32
                }
                if dict.keys.contains("NonCompliantCount") {
                    self.nonCompliantCount = dict["NonCompliantCount"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public var complianceSummaryByConfigRule: DescribeComplianceSummaryResponseBody.ComplianceSummary.ComplianceSummaryByConfigRule?

        public var complianceSummaryByResource: DescribeComplianceSummaryResponseBody.ComplianceSummary.ComplianceSummaryByResource?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.complianceSummaryByConfigRule?.validate()
            try self.complianceSummaryByResource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.complianceSummaryByConfigRule != nil {
                map["ComplianceSummaryByConfigRule"] = self.complianceSummaryByConfigRule?.toMap()
            }
            if self.complianceSummaryByResource != nil {
                map["ComplianceSummaryByResource"] = self.complianceSummaryByResource?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComplianceSummaryByConfigRule") {
                var model = DescribeComplianceSummaryResponseBody.ComplianceSummary.ComplianceSummaryByConfigRule()
                model.fromMap(dict["ComplianceSummaryByConfigRule"] as! [String: Any])
                self.complianceSummaryByConfigRule = model
            }
            if dict.keys.contains("ComplianceSummaryByResource") {
                var model = DescribeComplianceSummaryResponseBody.ComplianceSummary.ComplianceSummaryByResource()
                model.fromMap(dict["ComplianceSummaryByResource"] as! [String: Any])
                self.complianceSummaryByResource = model
            }
        }
    }
    public var complianceSummary: DescribeComplianceSummaryResponseBody.ComplianceSummary?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.complianceSummary != nil {
            map["ComplianceSummary"] = self.complianceSummary?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceSummary") {
            var model = DescribeComplianceSummaryResponseBody.ComplianceSummary()
            model.fromMap(dict["ComplianceSummary"] as! [String: Any])
            self.complianceSummary = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComplianceSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComplianceSummaryResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeComplianceSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigRuleRequest : Tea.TeaModel {
    public var configRuleId: String?

    public var memberId: Int64?

    public var multiAccount: Bool?

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
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
    }
}

public class DescribeConfigRuleResponseBody : Tea.TeaModel {
    public class ConfigRule : Tea.TeaModel {
        public class ConfigRuleEvaluationStatus : Tea.TeaModel {
            public var firstActivatedTimestamp: Int64?

            public var firstEvaluationStarted: Bool?

            public var lastErrorCode: String?

            public var lastErrorMessage: String?

            public var lastFailedEvaluationTimestamp: Int64?

            public var lastFailedInvocationTimestamp: Int64?

            public var lastSuccessfulEvaluationTimestamp: Int64?

            public var lastSuccessfulInvocationTimestamp: Int64?

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
                if self.firstActivatedTimestamp != nil {
                    map["FirstActivatedTimestamp"] = self.firstActivatedTimestamp!
                }
                if self.firstEvaluationStarted != nil {
                    map["FirstEvaluationStarted"] = self.firstEvaluationStarted!
                }
                if self.lastErrorCode != nil {
                    map["LastErrorCode"] = self.lastErrorCode!
                }
                if self.lastErrorMessage != nil {
                    map["LastErrorMessage"] = self.lastErrorMessage!
                }
                if self.lastFailedEvaluationTimestamp != nil {
                    map["LastFailedEvaluationTimestamp"] = self.lastFailedEvaluationTimestamp!
                }
                if self.lastFailedInvocationTimestamp != nil {
                    map["LastFailedInvocationTimestamp"] = self.lastFailedInvocationTimestamp!
                }
                if self.lastSuccessfulEvaluationTimestamp != nil {
                    map["LastSuccessfulEvaluationTimestamp"] = self.lastSuccessfulEvaluationTimestamp!
                }
                if self.lastSuccessfulInvocationTimestamp != nil {
                    map["LastSuccessfulInvocationTimestamp"] = self.lastSuccessfulInvocationTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FirstActivatedTimestamp") {
                    self.firstActivatedTimestamp = dict["FirstActivatedTimestamp"] as! Int64
                }
                if dict.keys.contains("FirstEvaluationStarted") {
                    self.firstEvaluationStarted = dict["FirstEvaluationStarted"] as! Bool
                }
                if dict.keys.contains("LastErrorCode") {
                    self.lastErrorCode = dict["LastErrorCode"] as! String
                }
                if dict.keys.contains("LastErrorMessage") {
                    self.lastErrorMessage = dict["LastErrorMessage"] as! String
                }
                if dict.keys.contains("LastFailedEvaluationTimestamp") {
                    self.lastFailedEvaluationTimestamp = dict["LastFailedEvaluationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastFailedInvocationTimestamp") {
                    self.lastFailedInvocationTimestamp = dict["LastFailedInvocationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastSuccessfulEvaluationTimestamp") {
                    self.lastSuccessfulEvaluationTimestamp = dict["LastSuccessfulEvaluationTimestamp"] as! Int64
                }
                if dict.keys.contains("LastSuccessfulInvocationTimestamp") {
                    self.lastSuccessfulInvocationTimestamp = dict["LastSuccessfulInvocationTimestamp"] as! Int64
                }
            }
        }
        public class ManagedRule : Tea.TeaModel {
            public class SourceDetails : Tea.TeaModel {
                public var eventSource: String?

                public var maximumExecutionFrequency: String?

                public var messageType: String?

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
                    if self.eventSource != nil {
                        map["EventSource"] = self.eventSource!
                    }
                    if self.maximumExecutionFrequency != nil {
                        map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventSource") {
                        self.eventSource = dict["EventSource"] as! String
                    }
                    if dict.keys.contains("MaximumExecutionFrequency") {
                        self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                    }
                    if dict.keys.contains("MessageType") {
                        self.messageType = dict["MessageType"] as! String
                    }
                }
            }
            public var compulsoryInputParameterDetails: [String: Any]?

            public var description_: String?

            public var identifier: String?

            public var labels: [String]?

            public var managedRuleName: String?

            public var optionalInputParameterDetails: [String: Any]?

            public var sourceDetails: [DescribeConfigRuleResponseBody.ConfigRule.ManagedRule.SourceDetails]?

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
                if self.compulsoryInputParameterDetails != nil {
                    map["CompulsoryInputParameterDetails"] = self.compulsoryInputParameterDetails!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.managedRuleName != nil {
                    map["ManagedRuleName"] = self.managedRuleName!
                }
                if self.optionalInputParameterDetails != nil {
                    map["OptionalInputParameterDetails"] = self.optionalInputParameterDetails!
                }
                if self.sourceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sourceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SourceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompulsoryInputParameterDetails") {
                    self.compulsoryInputParameterDetails = dict["CompulsoryInputParameterDetails"] as! [String: Any]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! [String]
                }
                if dict.keys.contains("ManagedRuleName") {
                    self.managedRuleName = dict["ManagedRuleName"] as! String
                }
                if dict.keys.contains("OptionalInputParameterDetails") {
                    self.optionalInputParameterDetails = dict["OptionalInputParameterDetails"] as! [String: Any]
                }
                if dict.keys.contains("SourceDetails") {
                    self.sourceDetails = dict["SourceDetails"] as! [DescribeConfigRuleResponseBody.ConfigRule.ManagedRule.SourceDetails]
                }
            }
        }
        public class Scope : Tea.TeaModel {
            public var complianceResourceId: String?

            public var complianceResourceTypes: [String]?

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
                if self.complianceResourceId != nil {
                    map["ComplianceResourceId"] = self.complianceResourceId!
                }
                if self.complianceResourceTypes != nil {
                    map["ComplianceResourceTypes"] = self.complianceResourceTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComplianceResourceId") {
                    self.complianceResourceId = dict["ComplianceResourceId"] as! String
                }
                if dict.keys.contains("ComplianceResourceTypes") {
                    self.complianceResourceTypes = dict["ComplianceResourceTypes"] as! [String]
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class SourceConditions : Tea.TeaModel {
                public var desiredValue: String?

                public var name: String?

                public var operator_: String?

                public var tips: String?

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
                    if self.desiredValue != nil {
                        map["DesiredValue"] = self.desiredValue!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_!
                    }
                    if self.tips != nil {
                        map["Tips"] = self.tips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DesiredValue") {
                        self.desiredValue = dict["DesiredValue"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Operator") {
                        self.operator_ = dict["Operator"] as! String
                    }
                    if dict.keys.contains("Tips") {
                        self.tips = dict["Tips"] as! String
                    }
                }
            }
            public class SourceDetails : Tea.TeaModel {
                public var eventSource: String?

                public var maximumExecutionFrequency: String?

                public var messageType: String?

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
                    if self.eventSource != nil {
                        map["EventSource"] = self.eventSource!
                    }
                    if self.maximumExecutionFrequency != nil {
                        map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventSource") {
                        self.eventSource = dict["EventSource"] as! String
                    }
                    if dict.keys.contains("MaximumExecutionFrequency") {
                        self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
                    }
                    if dict.keys.contains("MessageType") {
                        self.messageType = dict["MessageType"] as! String
                    }
                }
            }
            public var identifier: String?

            public var owner: String?

            public var sourceConditions: [DescribeConfigRuleResponseBody.ConfigRule.Source.SourceConditions]?

            public var sourceDetails: [DescribeConfigRuleResponseBody.ConfigRule.Source.SourceDetails]?

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
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.sourceConditions != nil {
                    var tmp : [Any] = []
                    for k in self.sourceConditions! {
                        tmp.append(k.toMap())
                    }
                    map["SourceConditions"] = tmp
                }
                if self.sourceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sourceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SourceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("SourceConditions") {
                    self.sourceConditions = dict["SourceConditions"] as! [DescribeConfigRuleResponseBody.ConfigRule.Source.SourceConditions]
                }
                if dict.keys.contains("SourceDetails") {
                    self.sourceDetails = dict["SourceDetails"] as! [DescribeConfigRuleResponseBody.ConfigRule.Source.SourceDetails]
                }
            }
        }
        public var configRuleArn: String?

        public var configRuleEvaluationStatus: DescribeConfigRuleResponseBody.ConfigRule.ConfigRuleEvaluationStatus?

        public var configRuleId: String?

        public var configRuleName: String?

        public var configRuleState: String?

        public var createTimestamp: Int64?

        public var description_: String?

        public var inputParameters: [String: Any]?

        public var managedRule: DescribeConfigRuleResponseBody.ConfigRule.ManagedRule?

        public var maximumExecutionFrequency: String?

        public var modifiedTimestamp: Int64?

        public var riskLevel: Int32?

        public var scope: DescribeConfigRuleResponseBody.ConfigRule.Scope?

        public var source: DescribeConfigRuleResponseBody.ConfigRule.Source?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configRuleEvaluationStatus?.validate()
            try self.managedRule?.validate()
            try self.scope?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRuleArn != nil {
                map["ConfigRuleArn"] = self.configRuleArn!
            }
            if self.configRuleEvaluationStatus != nil {
                map["ConfigRuleEvaluationStatus"] = self.configRuleEvaluationStatus?.toMap()
            }
            if self.configRuleId != nil {
                map["ConfigRuleId"] = self.configRuleId!
            }
            if self.configRuleName != nil {
                map["ConfigRuleName"] = self.configRuleName!
            }
            if self.configRuleState != nil {
                map["ConfigRuleState"] = self.configRuleState!
            }
            if self.createTimestamp != nil {
                map["CreateTimestamp"] = self.createTimestamp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.inputParameters != nil {
                map["InputParameters"] = self.inputParameters!
            }
            if self.managedRule != nil {
                map["ManagedRule"] = self.managedRule?.toMap()
            }
            if self.maximumExecutionFrequency != nil {
                map["MaximumExecutionFrequency"] = self.maximumExecutionFrequency!
            }
            if self.modifiedTimestamp != nil {
                map["ModifiedTimestamp"] = self.modifiedTimestamp!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.scope != nil {
                map["Scope"] = self.scope?.toMap()
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleArn") {
                self.configRuleArn = dict["ConfigRuleArn"] as! String
            }
            if dict.keys.contains("ConfigRuleEvaluationStatus") {
                var model = DescribeConfigRuleResponseBody.ConfigRule.ConfigRuleEvaluationStatus()
                model.fromMap(dict["ConfigRuleEvaluationStatus"] as! [String: Any])
                self.configRuleEvaluationStatus = model
            }
            if dict.keys.contains("ConfigRuleId") {
                self.configRuleId = dict["ConfigRuleId"] as! String
            }
            if dict.keys.contains("ConfigRuleName") {
                self.configRuleName = dict["ConfigRuleName"] as! String
            }
            if dict.keys.contains("ConfigRuleState") {
                self.configRuleState = dict["ConfigRuleState"] as! String
            }
            if dict.keys.contains("CreateTimestamp") {
                self.createTimestamp = dict["CreateTimestamp"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InputParameters") {
                self.inputParameters = dict["InputParameters"] as! [String: Any]
            }
            if dict.keys.contains("ManagedRule") {
                var model = DescribeConfigRuleResponseBody.ConfigRule.ManagedRule()
                model.fromMap(dict["ManagedRule"] as! [String: Any])
                self.managedRule = model
            }
            if dict.keys.contains("MaximumExecutionFrequency") {
                self.maximumExecutionFrequency = dict["MaximumExecutionFrequency"] as! String
            }
            if dict.keys.contains("ModifiedTimestamp") {
                self.modifiedTimestamp = dict["ModifiedTimestamp"] as! Int64
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("Scope") {
                var model = DescribeConfigRuleResponseBody.ConfigRule.Scope()
                model.fromMap(dict["Scope"] as! [String: Any])
                self.scope = model
            }
            if dict.keys.contains("Source") {
                var model = DescribeConfigRuleResponseBody.ConfigRule.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
        }
    }
    public var configRule: DescribeConfigRuleResponseBody.ConfigRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRule != nil {
            map["ConfigRule"] = self.configRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRule") {
            var model = DescribeConfigRuleResponseBody.ConfigRule()
            model.fromMap(dict["ConfigRule"] as! [String: Any])
            self.configRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigurationRecorderResponseBody : Tea.TeaModel {
    public class ConfigurationRecorder : Tea.TeaModel {
        public var accountId: Int64?

        public var configurationRecorderStatus: String?

        public var organizationEnableStatus: String?

        public var organizationMasterId: Int64?

        public var resourceTypes: [String]?

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
            if self.configurationRecorderStatus != nil {
                map["ConfigurationRecorderStatus"] = self.configurationRecorderStatus!
            }
            if self.organizationEnableStatus != nil {
                map["OrganizationEnableStatus"] = self.organizationEnableStatus!
            }
            if self.organizationMasterId != nil {
                map["OrganizationMasterId"] = self.organizationMasterId!
            }
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ConfigurationRecorderStatus") {
                self.configurationRecorderStatus = dict["ConfigurationRecorderStatus"] as! String
            }
            if dict.keys.contains("OrganizationEnableStatus") {
                self.organizationEnableStatus = dict["OrganizationEnableStatus"] as! String
            }
            if dict.keys.contains("OrganizationMasterId") {
                self.organizationMasterId = dict["OrganizationMasterId"] as! Int64
            }
            if dict.keys.contains("ResourceTypes") {
                self.resourceTypes = dict["ResourceTypes"] as! [String]
            }
        }
    }
    public var configurationRecorder: DescribeConfigurationRecorderResponseBody.ConfigurationRecorder?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configurationRecorder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configurationRecorder != nil {
            map["ConfigurationRecorder"] = self.configurationRecorder?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigurationRecorder") {
            var model = DescribeConfigurationRecorderResponseBody.ConfigurationRecorder()
            model.fromMap(dict["ConfigurationRecorder"] as! [String: Any])
            self.configurationRecorder = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeConfigurationRecorderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigurationRecorderResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeConfigurationRecorderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeliveryChannelsRequest : Tea.TeaModel {
    public var deliveryChannelIds: String?

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
        if self.deliveryChannelIds != nil {
            map["DeliveryChannelIds"] = self.deliveryChannelIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelIds") {
            self.deliveryChannelIds = dict["DeliveryChannelIds"] as! String
        }
    }
}

public class DescribeDeliveryChannelsResponseBody : Tea.TeaModel {
    public class DeliveryChannels : Tea.TeaModel {
        public var configurationItemChangeNotification: Bool?

        public var configurationSnapshot: Bool?

        public var deliveryChannelAssumeRoleArn: String?

        public var deliveryChannelCondition: String?

        public var deliveryChannelId: String?

        public var deliveryChannelName: String?

        public var deliveryChannelTargetArn: String?

        public var deliveryChannelType: String?

        public var description_: String?

        public var nonCompliantNotification: Bool?

        public var oversizedDataOSSTargetArn: String?

        public var status: Int32?

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
            if self.configurationItemChangeNotification != nil {
                map["ConfigurationItemChangeNotification"] = self.configurationItemChangeNotification!
            }
            if self.configurationSnapshot != nil {
                map["ConfigurationSnapshot"] = self.configurationSnapshot!
            }
            if self.deliveryChannelAssumeRoleArn != nil {
                map["DeliveryChannelAssumeRoleArn"] = self.deliveryChannelAssumeRoleArn!
            }
            if self.deliveryChannelCondition != nil {
                map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
            }
            if self.deliveryChannelId != nil {
                map["DeliveryChannelId"] = self.deliveryChannelId!
            }
            if self.deliveryChannelName != nil {
                map["DeliveryChannelName"] = self.deliveryChannelName!
            }
            if self.deliveryChannelTargetArn != nil {
                map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
            }
            if self.deliveryChannelType != nil {
                map["DeliveryChannelType"] = self.deliveryChannelType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.nonCompliantNotification != nil {
                map["NonCompliantNotification"] = self.nonCompliantNotification!
            }
            if self.oversizedDataOSSTargetArn != nil {
                map["OversizedDataOSSTargetArn"] = self.oversizedDataOSSTargetArn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigurationItemChangeNotification") {
                self.configurationItemChangeNotification = dict["ConfigurationItemChangeNotification"] as! Bool
            }
            if dict.keys.contains("ConfigurationSnapshot") {
                self.configurationSnapshot = dict["ConfigurationSnapshot"] as! Bool
            }
            if dict.keys.contains("DeliveryChannelAssumeRoleArn") {
                self.deliveryChannelAssumeRoleArn = dict["DeliveryChannelAssumeRoleArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelCondition") {
                self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
            }
            if dict.keys.contains("DeliveryChannelId") {
                self.deliveryChannelId = dict["DeliveryChannelId"] as! String
            }
            if dict.keys.contains("DeliveryChannelName") {
                self.deliveryChannelName = dict["DeliveryChannelName"] as! String
            }
            if dict.keys.contains("DeliveryChannelTargetArn") {
                self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
            }
            if dict.keys.contains("DeliveryChannelType") {
                self.deliveryChannelType = dict["DeliveryChannelType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NonCompliantNotification") {
                self.nonCompliantNotification = dict["NonCompliantNotification"] as! Bool
            }
            if dict.keys.contains("OversizedDataOSSTargetArn") {
                self.oversizedDataOSSTargetArn = dict["OversizedDataOSSTargetArn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var deliveryChannels: [DescribeDeliveryChannelsResponseBody.DeliveryChannels]?

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
        if self.deliveryChannels != nil {
            var tmp : [Any] = []
            for k in self.deliveryChannels! {
                tmp.append(k.toMap())
            }
            map["DeliveryChannels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannels") {
            self.deliveryChannels = dict["DeliveryChannels"] as! [DescribeDeliveryChannelsResponseBody.DeliveryChannels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeliveryChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeliveryChannelsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeliveryChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiscoveredResourceRequest : Tea.TeaModel {
    public var memberId: Int64?

    public var multiAccount: Bool?

    public var region: String?

    public var resourceId: String?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeDiscoveredResourceResponseBody : Tea.TeaModel {
    public class DiscoveredResourceDetail : Tea.TeaModel {
        public var accountId: Int64?

        public var availabilityZone: String?

        public var configuration: String?

        public var region: String?

        public var resourceCreationTime: Int64?

        public var resourceDeleted: Int32?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceStatus: String?

        public var resourceType: String?

        public var tags: String?

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
            if self.availabilityZone != nil {
                map["AvailabilityZone"] = self.availabilityZone!
            }
            if self.configuration != nil {
                map["Configuration"] = self.configuration!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCreationTime != nil {
                map["ResourceCreationTime"] = self.resourceCreationTime!
            }
            if self.resourceDeleted != nil {
                map["ResourceDeleted"] = self.resourceDeleted!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AvailabilityZone") {
                self.availabilityZone = dict["AvailabilityZone"] as! String
            }
            if dict.keys.contains("Configuration") {
                self.configuration = dict["Configuration"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCreationTime") {
                self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
            }
            if dict.keys.contains("ResourceDeleted") {
                self.resourceDeleted = dict["ResourceDeleted"] as! Int32
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
        }
    }
    public var discoveredResourceDetail: DescribeDiscoveredResourceResponseBody.DiscoveredResourceDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceDetail != nil {
            map["DiscoveredResourceDetail"] = self.discoveredResourceDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceDetail") {
            var model = DescribeDiscoveredResourceResponseBody.DiscoveredResourceDetail()
            model.fromMap(dict["DiscoveredResourceDetail"] as! [String: Any])
            self.discoveredResourceDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDiscoveredResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiscoveredResourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDiscoveredResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEvaluationResultsRequest : Tea.TeaModel {
    public var complianceType: String?

    public var configRuleId: String?

    public var memberId: Int64?

    public var multiAccount: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceId: String?

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
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeEvaluationResultsResponseBody : Tea.TeaModel {
    public class EvaluationResults : Tea.TeaModel {
        public class EvaluationResultList : Tea.TeaModel {
            public class EvaluationResultIdentifier : Tea.TeaModel {
                public class EvaluationResultQualifier : Tea.TeaModel {
                    public var configRuleArn: String?

                    public var configRuleId: String?

                    public var configRuleName: String?

                    public var regionId: String?

                    public var resourceId: String?

                    public var resourceName: String?

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
                        if self.configRuleArn != nil {
                            map["ConfigRuleArn"] = self.configRuleArn!
                        }
                        if self.configRuleId != nil {
                            map["ConfigRuleId"] = self.configRuleId!
                        }
                        if self.configRuleName != nil {
                            map["ConfigRuleName"] = self.configRuleName!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConfigRuleArn") {
                            self.configRuleArn = dict["ConfigRuleArn"] as! String
                        }
                        if dict.keys.contains("ConfigRuleId") {
                            self.configRuleId = dict["ConfigRuleId"] as! String
                        }
                        if dict.keys.contains("ConfigRuleName") {
                            self.configRuleName = dict["ConfigRuleName"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
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
                    }
                }
                public var evaluationResultQualifier: DescribeEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier?

                public var orderingTimestamp: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.evaluationResultQualifier?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.evaluationResultQualifier != nil {
                        map["EvaluationResultQualifier"] = self.evaluationResultQualifier?.toMap()
                    }
                    if self.orderingTimestamp != nil {
                        map["OrderingTimestamp"] = self.orderingTimestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EvaluationResultQualifier") {
                        var model = DescribeEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier.EvaluationResultQualifier()
                        model.fromMap(dict["EvaluationResultQualifier"] as! [String: Any])
                        self.evaluationResultQualifier = model
                    }
                    if dict.keys.contains("OrderingTimestamp") {
                        self.orderingTimestamp = dict["OrderingTimestamp"] as! Int64
                    }
                }
            }
            public var annotation: String?

            public var complianceType: String?

            public var configRuleInvokedTimestamp: Int64?

            public var evaluationResultIdentifier: DescribeEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier?

            public var invokingEventMessageType: String?

            public var remediationEnabled: Bool?

            public var resultRecordedTimestamp: Int64?

            public var riskLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.evaluationResultIdentifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotation != nil {
                    map["Annotation"] = self.annotation!
                }
                if self.complianceType != nil {
                    map["ComplianceType"] = self.complianceType!
                }
                if self.configRuleInvokedTimestamp != nil {
                    map["ConfigRuleInvokedTimestamp"] = self.configRuleInvokedTimestamp!
                }
                if self.evaluationResultIdentifier != nil {
                    map["EvaluationResultIdentifier"] = self.evaluationResultIdentifier?.toMap()
                }
                if self.invokingEventMessageType != nil {
                    map["InvokingEventMessageType"] = self.invokingEventMessageType!
                }
                if self.remediationEnabled != nil {
                    map["RemediationEnabled"] = self.remediationEnabled!
                }
                if self.resultRecordedTimestamp != nil {
                    map["ResultRecordedTimestamp"] = self.resultRecordedTimestamp!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Annotation") {
                    self.annotation = dict["Annotation"] as! String
                }
                if dict.keys.contains("ComplianceType") {
                    self.complianceType = dict["ComplianceType"] as! String
                }
                if dict.keys.contains("ConfigRuleInvokedTimestamp") {
                    self.configRuleInvokedTimestamp = dict["ConfigRuleInvokedTimestamp"] as! Int64
                }
                if dict.keys.contains("EvaluationResultIdentifier") {
                    var model = DescribeEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList.EvaluationResultIdentifier()
                    model.fromMap(dict["EvaluationResultIdentifier"] as! [String: Any])
                    self.evaluationResultIdentifier = model
                }
                if dict.keys.contains("InvokingEventMessageType") {
                    self.invokingEventMessageType = dict["InvokingEventMessageType"] as! String
                }
                if dict.keys.contains("RemediationEnabled") {
                    self.remediationEnabled = dict["RemediationEnabled"] as! Bool
                }
                if dict.keys.contains("ResultRecordedTimestamp") {
                    self.resultRecordedTimestamp = dict["ResultRecordedTimestamp"] as! Int64
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
            }
        }
        public var evaluationResultList: [DescribeEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.evaluationResultList != nil {
                var tmp : [Any] = []
                for k in self.evaluationResultList! {
                    tmp.append(k.toMap())
                }
                map["EvaluationResultList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluationResultList") {
                self.evaluationResultList = dict["EvaluationResultList"] as! [DescribeEvaluationResultsResponseBody.EvaluationResults.EvaluationResultList]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var evaluationResults: DescribeEvaluationResultsResponseBody.EvaluationResults?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationResults != nil {
            map["EvaluationResults"] = self.evaluationResults?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationResults") {
            var model = DescribeEvaluationResultsResponseBody.EvaluationResults()
            model.fromMap(dict["EvaluationResults"] as! [String: Any])
            self.evaluationResults = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEvaluationResultsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAggregateDiscoveredResourceRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var region: String?

    public var resourceId: String?

    public var resourceOwnerId: Int64?

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
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetAggregateDiscoveredResourceResponseBody : Tea.TeaModel {
    public class DiscoveredResourceDetail : Tea.TeaModel {
        public var accountId: Int64?

        public var availabilityZone: String?

        public var configuration: String?

        public var region: String?

        public var resourceCreationTime: Int64?

        public var resourceDeleted: Int32?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceStatus: String?

        public var resourceType: String?

        public var tags: String?

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
            if self.availabilityZone != nil {
                map["AvailabilityZone"] = self.availabilityZone!
            }
            if self.configuration != nil {
                map["Configuration"] = self.configuration!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCreationTime != nil {
                map["ResourceCreationTime"] = self.resourceCreationTime!
            }
            if self.resourceDeleted != nil {
                map["ResourceDeleted"] = self.resourceDeleted!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AvailabilityZone") {
                self.availabilityZone = dict["AvailabilityZone"] as! String
            }
            if dict.keys.contains("Configuration") {
                self.configuration = dict["Configuration"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCreationTime") {
                self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
            }
            if dict.keys.contains("ResourceDeleted") {
                self.resourceDeleted = dict["ResourceDeleted"] as! Int32
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
        }
    }
    public var discoveredResourceDetail: GetAggregateDiscoveredResourceResponseBody.DiscoveredResourceDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceDetail != nil {
            map["DiscoveredResourceDetail"] = self.discoveredResourceDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceDetail") {
            var model = GetAggregateDiscoveredResourceResponseBody.DiscoveredResourceDetail()
            model.fromMap(dict["DiscoveredResourceDetail"] as! [String: Any])
            self.discoveredResourceDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAggregateDiscoveredResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAggregateDiscoveredResourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAggregateDiscoveredResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiscoveredResourceCountsRequest : Tea.TeaModel {
    public var groupByKey: String?

    public var memberId: Int64?

    public var multiAccount: Bool?

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
        if self.groupByKey != nil {
            map["GroupByKey"] = self.groupByKey!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupByKey") {
            self.groupByKey = dict["GroupByKey"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
    }
}

public class GetDiscoveredResourceCountsResponseBody : Tea.TeaModel {
    public class GroupedResourceCounts : Tea.TeaModel {
        public class GroupedResourceCountList : Tea.TeaModel {
            public var groupName: String?

            public var resourceCount: Int64?

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
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.resourceCount != nil {
                    map["ResourceCount"] = self.resourceCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ResourceCount") {
                    self.resourceCount = dict["ResourceCount"] as! Int64
                }
            }
        }
        public var groupByKey: String?

        public var groupedResourceCountList: [GetDiscoveredResourceCountsResponseBody.GroupedResourceCounts.GroupedResourceCountList]?

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
            if self.groupByKey != nil {
                map["GroupByKey"] = self.groupByKey!
            }
            if self.groupedResourceCountList != nil {
                var tmp : [Any] = []
                for k in self.groupedResourceCountList! {
                    tmp.append(k.toMap())
                }
                map["GroupedResourceCountList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupByKey") {
                self.groupByKey = dict["GroupByKey"] as! String
            }
            if dict.keys.contains("GroupedResourceCountList") {
                self.groupedResourceCountList = dict["GroupedResourceCountList"] as! [GetDiscoveredResourceCountsResponseBody.GroupedResourceCounts.GroupedResourceCountList]
            }
        }
    }
    public var groupedResourceCounts: GetDiscoveredResourceCountsResponseBody.GroupedResourceCounts?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupedResourceCounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupedResourceCounts != nil {
            map["GroupedResourceCounts"] = self.groupedResourceCounts?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupedResourceCounts") {
            var model = GetDiscoveredResourceCountsResponseBody.GroupedResourceCounts()
            model.fromMap(dict["GroupedResourceCounts"] as! [String: Any])
            self.groupedResourceCounts = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDiscoveredResourceCountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiscoveredResourceCountsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiscoveredResourceCountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiscoveredResourceSummaryRequest : Tea.TeaModel {
    public var memberId: Int64?

    public var multiAccount: Bool?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
    }
}

public class GetDiscoveredResourceSummaryResponseBody : Tea.TeaModel {
    public class DiscoveredResourceSummary : Tea.TeaModel {
        public var regionCount: Int32?

        public var resourceCount: Int32?

        public var resourceTypeCount: Int32?

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
            if self.regionCount != nil {
                map["RegionCount"] = self.regionCount!
            }
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            if self.resourceTypeCount != nil {
                map["ResourceTypeCount"] = self.resourceTypeCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionCount") {
                self.regionCount = dict["RegionCount"] as! Int32
            }
            if dict.keys.contains("ResourceCount") {
                self.resourceCount = dict["ResourceCount"] as! Int32
            }
            if dict.keys.contains("ResourceTypeCount") {
                self.resourceTypeCount = dict["ResourceTypeCount"] as! Int32
            }
        }
    }
    public var discoveredResourceSummary: GetDiscoveredResourceSummaryResponseBody.DiscoveredResourceSummary?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceSummary != nil {
            map["DiscoveredResourceSummary"] = self.discoveredResourceSummary?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceSummary") {
            var model = GetDiscoveredResourceSummaryResponseBody.DiscoveredResourceSummary()
            model.fromMap(dict["DiscoveredResourceSummary"] as! [String: Any])
            self.discoveredResourceSummary = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDiscoveredResourceSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiscoveredResourceSummaryResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiscoveredResourceSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceComplianceTimelineRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var limit: Int32?

    public var memberId: String?

    public var multiAccount: Bool?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public var startTime: Int64?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetResourceComplianceTimelineResponseBody : Tea.TeaModel {
    public class ResourceComplianceTimeline : Tea.TeaModel {
        public class ComplianceList : Tea.TeaModel {
            public var accountId: String?

            public var availabilityZone: String?

            public var captureTime: Int64?

            public var configuration: String?

            public var configurationDiff: String?

            public var region: String?

            public var resourceCreateTime: Int64?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

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
                if self.availabilityZone != nil {
                    map["AvailabilityZone"] = self.availabilityZone!
                }
                if self.captureTime != nil {
                    map["CaptureTime"] = self.captureTime!
                }
                if self.configuration != nil {
                    map["Configuration"] = self.configuration!
                }
                if self.configurationDiff != nil {
                    map["ConfigurationDiff"] = self.configurationDiff!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreateTime != nil {
                    map["ResourceCreateTime"] = self.resourceCreateTime!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AvailabilityZone") {
                    self.availabilityZone = dict["AvailabilityZone"] as! String
                }
                if dict.keys.contains("CaptureTime") {
                    self.captureTime = dict["CaptureTime"] as! Int64
                }
                if dict.keys.contains("Configuration") {
                    self.configuration = dict["Configuration"] as! String
                }
                if dict.keys.contains("ConfigurationDiff") {
                    self.configurationDiff = dict["ConfigurationDiff"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreateTime") {
                    self.resourceCreateTime = dict["ResourceCreateTime"] as! Int64
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var complianceList: [GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline.ComplianceList]?

        public var limit: Int32?

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
            if self.complianceList != nil {
                var tmp : [Any] = []
                for k in self.complianceList! {
                    tmp.append(k.toMap())
                }
                map["ComplianceList"] = tmp
            }
            if self.limit != nil {
                map["Limit"] = self.limit!
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
            if dict.keys.contains("ComplianceList") {
                self.complianceList = dict["ComplianceList"] as! [GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline.ComplianceList]
            }
            if dict.keys.contains("Limit") {
                self.limit = dict["Limit"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var resourceComplianceTimeline: GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceComplianceTimeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceComplianceTimeline != nil {
            map["ResourceComplianceTimeline"] = self.resourceComplianceTimeline?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceComplianceTimeline") {
            var model = GetResourceComplianceTimelineResponseBody.ResourceComplianceTimeline()
            model.fromMap(dict["ResourceComplianceTimeline"] as! [String: Any])
            self.resourceComplianceTimeline = model
        }
    }
}

public class GetResourceComplianceTimelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceComplianceTimelineResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceComplianceTimelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceConfigurationTimelineRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var limit: Int32?

    public var memberId: Int64?

    public var multiAccount: Bool?

    public var nextToken: String?

    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public var startTime: Int64?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetResourceConfigurationTimelineResponseBody : Tea.TeaModel {
    public class ResourceConfigurationTimeline : Tea.TeaModel {
        public class ConfigurationList : Tea.TeaModel {
            public var accountId: Int64?

            public var availabilityZone: String?

            public var captureTime: String?

            public var configurationDiff: String?

            public var region: String?

            public var resourceCreateTime: String?

            public var resourceEventType: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var tags: String?

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
                if self.availabilityZone != nil {
                    map["AvailabilityZone"] = self.availabilityZone!
                }
                if self.captureTime != nil {
                    map["CaptureTime"] = self.captureTime!
                }
                if self.configurationDiff != nil {
                    map["ConfigurationDiff"] = self.configurationDiff!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreateTime != nil {
                    map["ResourceCreateTime"] = self.resourceCreateTime!
                }
                if self.resourceEventType != nil {
                    map["ResourceEventType"] = self.resourceEventType!
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
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AvailabilityZone") {
                    self.availabilityZone = dict["AvailabilityZone"] as! String
                }
                if dict.keys.contains("CaptureTime") {
                    self.captureTime = dict["CaptureTime"] as! String
                }
                if dict.keys.contains("ConfigurationDiff") {
                    self.configurationDiff = dict["ConfigurationDiff"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreateTime") {
                    self.resourceCreateTime = dict["ResourceCreateTime"] as! String
                }
                if dict.keys.contains("ResourceEventType") {
                    self.resourceEventType = dict["ResourceEventType"] as! String
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
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var configurationList: [GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline.ConfigurationList]?

        public var limit: Int32?

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
            if self.configurationList != nil {
                var tmp : [Any] = []
                for k in self.configurationList! {
                    tmp.append(k.toMap())
                }
                map["ConfigurationList"] = tmp
            }
            if self.limit != nil {
                map["Limit"] = self.limit!
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
            if dict.keys.contains("ConfigurationList") {
                self.configurationList = dict["ConfigurationList"] as! [GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline.ConfigurationList]
            }
            if dict.keys.contains("Limit") {
                self.limit = dict["Limit"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var resourceConfigurationTimeline: GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceConfigurationTimeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceConfigurationTimeline != nil {
            map["ResourceConfigurationTimeline"] = self.resourceConfigurationTimeline?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceConfigurationTimeline") {
            var model = GetResourceConfigurationTimelineResponseBody.ResourceConfigurationTimeline()
            model.fromMap(dict["ResourceConfigurationTimeline"] as! [String: Any])
            self.resourceConfigurationTimeline = model
        }
    }
}

public class GetResourceConfigurationTimelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceConfigurationTimelineResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceConfigurationTimelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSupportedResourceTypesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceTypes: [String]?

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
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! [String]
        }
    }
}

public class GetSupportedResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSupportedResourceTypesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSupportedResourceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAggregateDiscoveredResourcesRequest : Tea.TeaModel {
    public var aggregatorId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regions: String?

    public var resourceDeleted: Int32?

    public var resourceId: String?

    public var resourceOwnerId: Int64?

    public var resourceTypes: String?

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
        if self.aggregatorId != nil {
            map["AggregatorId"] = self.aggregatorId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.resourceDeleted != nil {
            map["ResourceDeleted"] = self.resourceDeleted!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregatorId") {
            self.aggregatorId = dict["AggregatorId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! String
        }
        if dict.keys.contains("ResourceDeleted") {
            self.resourceDeleted = dict["ResourceDeleted"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! String
        }
    }
}

public class ListAggregateDiscoveredResourcesResponseBody : Tea.TeaModel {
    public class DiscoveredResourceProfiles : Tea.TeaModel {
        public class DiscoveredResourceProfileList : Tea.TeaModel {
            public var accountId: Int64?

            public var region: String?

            public var resourceCreationTime: Int64?

            public var resourceDeleted: Int32?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceOwnerId: Int64?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

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
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreationTime != nil {
                    map["ResourceCreationTime"] = self.resourceCreationTime!
                }
                if self.resourceDeleted != nil {
                    map["ResourceDeleted"] = self.resourceDeleted!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceOwnerId != nil {
                    map["ResourceOwnerId"] = self.resourceOwnerId!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreationTime") {
                    self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
                }
                if dict.keys.contains("ResourceDeleted") {
                    self.resourceDeleted = dict["ResourceDeleted"] as! Int32
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceOwnerId") {
                    self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var discoveredResourceProfileList: [ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

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
            if self.discoveredResourceProfileList != nil {
                var tmp : [Any] = []
                for k in self.discoveredResourceProfileList! {
                    tmp.append(k.toMap())
                }
                map["DiscoveredResourceProfileList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiscoveredResourceProfileList") {
                self.discoveredResourceProfileList = dict["DiscoveredResourceProfileList"] as! [ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var discoveredResourceProfiles: ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceProfiles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceProfiles != nil {
            map["DiscoveredResourceProfiles"] = self.discoveredResourceProfiles?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceProfiles") {
            var model = ListAggregateDiscoveredResourcesResponseBody.DiscoveredResourceProfiles()
            model.fromMap(dict["DiscoveredResourceProfiles"] as! [String: Any])
            self.discoveredResourceProfiles = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAggregateDiscoveredResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAggregateDiscoveredResourcesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAggregateDiscoveredResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConfigRulesRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public var complianceType: String?

    public var configRuleName: String?

    public var configRuleState: String?

    public var memberId: Int64?

    public var multiAccount: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var riskLevel: Int32?

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
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.complianceType != nil {
            map["ComplianceType"] = self.complianceType!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.configRuleState != nil {
            map["ConfigRuleState"] = self.configRuleState!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ComplianceType") {
            self.complianceType = dict["ComplianceType"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("ConfigRuleState") {
            self.configRuleState = dict["ConfigRuleState"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
    }
}

public class ListConfigRulesResponseBody : Tea.TeaModel {
    public class ConfigRules : Tea.TeaModel {
        public class ConfigRuleList : Tea.TeaModel {
            public class Compliance : Tea.TeaModel {
                public var complianceType: String?

                public var count: Int32?

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
                    if self.complianceType != nil {
                        map["ComplianceType"] = self.complianceType!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplianceType") {
                        self.complianceType = dict["ComplianceType"] as! String
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                }
            }
            public class CreateBy : Tea.TeaModel {
                public var compliancePackId: String?

                public var compliancePackName: String?

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
                    if self.compliancePackId != nil {
                        map["CompliancePackId"] = self.compliancePackId!
                    }
                    if self.compliancePackName != nil {
                        map["CompliancePackName"] = self.compliancePackName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CompliancePackId") {
                        self.compliancePackId = dict["CompliancePackId"] as! String
                    }
                    if dict.keys.contains("CompliancePackName") {
                        self.compliancePackName = dict["CompliancePackName"] as! String
                    }
                }
            }
            public class Tags : Tea.TeaModel {
                public var key: String?

                public var value: String?

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
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var accountId: Int64?

            public var automationType: String?

            public var compliance: ListConfigRulesResponseBody.ConfigRules.ConfigRuleList.Compliance?

            public var compliancePackId: String?

            public var configRuleArn: String?

            public var configRuleId: String?

            public var configRuleName: String?

            public var configRuleState: String?

            public var createBy: ListConfigRulesResponseBody.ConfigRules.ConfigRuleList.CreateBy?

            public var description_: String?

            public var riskLevel: Int32?

            public var sourceIdentifier: String?

            public var sourceOwner: String?

            public var tags: [ListConfigRulesResponseBody.ConfigRules.ConfigRuleList.Tags]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compliance?.validate()
                try self.createBy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.automationType != nil {
                    map["AutomationType"] = self.automationType!
                }
                if self.compliance != nil {
                    map["Compliance"] = self.compliance?.toMap()
                }
                if self.compliancePackId != nil {
                    map["CompliancePackId"] = self.compliancePackId!
                }
                if self.configRuleArn != nil {
                    map["ConfigRuleArn"] = self.configRuleArn!
                }
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.configRuleName != nil {
                    map["ConfigRuleName"] = self.configRuleName!
                }
                if self.configRuleState != nil {
                    map["ConfigRuleState"] = self.configRuleState!
                }
                if self.createBy != nil {
                    map["CreateBy"] = self.createBy?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.sourceIdentifier != nil {
                    map["SourceIdentifier"] = self.sourceIdentifier!
                }
                if self.sourceOwner != nil {
                    map["SourceOwner"] = self.sourceOwner!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("AutomationType") {
                    self.automationType = dict["AutomationType"] as! String
                }
                if dict.keys.contains("Compliance") {
                    var model = ListConfigRulesResponseBody.ConfigRules.ConfigRuleList.Compliance()
                    model.fromMap(dict["Compliance"] as! [String: Any])
                    self.compliance = model
                }
                if dict.keys.contains("CompliancePackId") {
                    self.compliancePackId = dict["CompliancePackId"] as! String
                }
                if dict.keys.contains("ConfigRuleArn") {
                    self.configRuleArn = dict["ConfigRuleArn"] as! String
                }
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ConfigRuleName") {
                    self.configRuleName = dict["ConfigRuleName"] as! String
                }
                if dict.keys.contains("ConfigRuleState") {
                    self.configRuleState = dict["ConfigRuleState"] as! String
                }
                if dict.keys.contains("CreateBy") {
                    var model = ListConfigRulesResponseBody.ConfigRules.ConfigRuleList.CreateBy()
                    model.fromMap(dict["CreateBy"] as! [String: Any])
                    self.createBy = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int32
                }
                if dict.keys.contains("SourceIdentifier") {
                    self.sourceIdentifier = dict["SourceIdentifier"] as! String
                }
                if dict.keys.contains("SourceOwner") {
                    self.sourceOwner = dict["SourceOwner"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [ListConfigRulesResponseBody.ConfigRules.ConfigRuleList.Tags]
                }
            }
        }
        public var configRuleList: [ListConfigRulesResponseBody.ConfigRules.ConfigRuleList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.configRuleList != nil {
                var tmp : [Any] = []
                for k in self.configRuleList! {
                    tmp.append(k.toMap())
                }
                map["ConfigRuleList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigRuleList") {
                self.configRuleList = dict["ConfigRuleList"] as! [ListConfigRulesResponseBody.ConfigRules.ConfigRuleList]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var configRules: ListConfigRulesResponseBody.ConfigRules?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configRules != nil {
            map["ConfigRules"] = self.configRules?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRules") {
            var model = ListConfigRulesResponseBody.ConfigRules()
            model.fromMap(dict["ConfigRules"] as! [String: Any])
            self.configRules = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConfigRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDiscoveredResourcesRequest : Tea.TeaModel {
    public var memberId: Int64?

    public var multiAccount: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regions: String?

    public var resourceDeleted: Int32?

    public var resourceId: String?

    public var resourceTypes: String?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.resourceDeleted != nil {
            map["ResourceDeleted"] = self.resourceDeleted!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! String
        }
        if dict.keys.contains("ResourceDeleted") {
            self.resourceDeleted = dict["ResourceDeleted"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! String
        }
    }
}

public class ListDiscoveredResourcesResponseBody : Tea.TeaModel {
    public class DiscoveredResourceProfiles : Tea.TeaModel {
        public class DiscoveredResourceProfileList : Tea.TeaModel {
            public var accountId: Int64?

            public var region: String?

            public var resourceCreationTime: Int64?

            public var resourceDeleted: Int32?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceStatus: String?

            public var resourceType: String?

            public var tags: String?

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
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceCreationTime != nil {
                    map["ResourceCreationTime"] = self.resourceCreationTime!
                }
                if self.resourceDeleted != nil {
                    map["ResourceDeleted"] = self.resourceDeleted!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceCreationTime") {
                    self.resourceCreationTime = dict["ResourceCreationTime"] as! Int64
                }
                if dict.keys.contains("ResourceDeleted") {
                    self.resourceDeleted = dict["ResourceDeleted"] as! Int32
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public var discoveredResourceProfileList: [ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

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
            if self.discoveredResourceProfileList != nil {
                var tmp : [Any] = []
                for k in self.discoveredResourceProfileList! {
                    tmp.append(k.toMap())
                }
                map["DiscoveredResourceProfileList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiscoveredResourceProfileList") {
                self.discoveredResourceProfileList = dict["DiscoveredResourceProfileList"] as! [ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles.DiscoveredResourceProfileList]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var discoveredResourceProfiles: ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.discoveredResourceProfiles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.discoveredResourceProfiles != nil {
            map["DiscoveredResourceProfiles"] = self.discoveredResourceProfiles?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiscoveredResourceProfiles") {
            var model = ListDiscoveredResourcesResponseBody.DiscoveredResourceProfiles()
            model.fromMap(dict["DiscoveredResourceProfiles"] as! [String: Any])
            self.discoveredResourceProfiles = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDiscoveredResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDiscoveredResourcesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDiscoveredResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRemediationTemplatesRequest : Tea.TeaModel {
    public var managedRuleIdentifier: String?

    public var remediationType: String?

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
        if self.managedRuleIdentifier != nil {
            map["ManagedRuleIdentifier"] = self.managedRuleIdentifier!
        }
        if self.remediationType != nil {
            map["RemediationType"] = self.remediationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManagedRuleIdentifier") {
            self.managedRuleIdentifier = dict["ManagedRuleIdentifier"] as! String
        }
        if dict.keys.contains("RemediationType") {
            self.remediationType = dict["RemediationType"] as! String
        }
    }
}

public class ListRemediationTemplatesResponseBody : Tea.TeaModel {
    public class RemediationTemplates : Tea.TeaModel {
        public var remediationType: String?

        public var templateDefinition: String?

        public var templateIdentifier: String?

        public var templateName: String?

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
            if self.remediationType != nil {
                map["RemediationType"] = self.remediationType!
            }
            if self.templateDefinition != nil {
                map["TemplateDefinition"] = self.templateDefinition!
            }
            if self.templateIdentifier != nil {
                map["TemplateIdentifier"] = self.templateIdentifier!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RemediationType") {
                self.remediationType = dict["RemediationType"] as! String
            }
            if dict.keys.contains("TemplateDefinition") {
                self.templateDefinition = dict["TemplateDefinition"] as! String
            }
            if dict.keys.contains("TemplateIdentifier") {
                self.templateIdentifier = dict["TemplateIdentifier"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var remediationTemplates: [ListRemediationTemplatesResponseBody.RemediationTemplates]?

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
        if self.remediationTemplates != nil {
            var tmp : [Any] = []
            for k in self.remediationTemplates! {
                tmp.append(k.toMap())
            }
            map["RemediationTemplates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemediationTemplates") {
            self.remediationTemplates = dict["RemediationTemplates"] as! [ListRemediationTemplatesResponseBody.RemediationTemplates]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRemediationTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRemediationTemplatesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRemediationTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutConfigRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configRuleId: String?

    public var configRuleName: String?

    public var description_: String?

    public var inputParameters: String?

    public var memberId: Int64?

    public var multiAccount: Bool?

    public var riskLevel: Int32?

    public var scopeComplianceResourceId: String?

    public var scopeComplianceResourceTypes: String?

    public var sourceDetailMessageType: String?

    public var sourceIdentifier: String?

    public var sourceMaximumExecutionFrequency: String?

    public var sourceOwner: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.configRuleName != nil {
            map["ConfigRuleName"] = self.configRuleName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputParameters != nil {
            map["InputParameters"] = self.inputParameters!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.multiAccount != nil {
            map["MultiAccount"] = self.multiAccount!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.scopeComplianceResourceId != nil {
            map["ScopeComplianceResourceId"] = self.scopeComplianceResourceId!
        }
        if self.scopeComplianceResourceTypes != nil {
            map["ScopeComplianceResourceTypes"] = self.scopeComplianceResourceTypes!
        }
        if self.sourceDetailMessageType != nil {
            map["SourceDetailMessageType"] = self.sourceDetailMessageType!
        }
        if self.sourceIdentifier != nil {
            map["SourceIdentifier"] = self.sourceIdentifier!
        }
        if self.sourceMaximumExecutionFrequency != nil {
            map["SourceMaximumExecutionFrequency"] = self.sourceMaximumExecutionFrequency!
        }
        if self.sourceOwner != nil {
            map["SourceOwner"] = self.sourceOwner!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("ConfigRuleName") {
            self.configRuleName = dict["ConfigRuleName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputParameters") {
            self.inputParameters = dict["InputParameters"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! Int64
        }
        if dict.keys.contains("MultiAccount") {
            self.multiAccount = dict["MultiAccount"] as! Bool
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("ScopeComplianceResourceId") {
            self.scopeComplianceResourceId = dict["ScopeComplianceResourceId"] as! String
        }
        if dict.keys.contains("ScopeComplianceResourceTypes") {
            self.scopeComplianceResourceTypes = dict["ScopeComplianceResourceTypes"] as! String
        }
        if dict.keys.contains("SourceDetailMessageType") {
            self.sourceDetailMessageType = dict["SourceDetailMessageType"] as! String
        }
        if dict.keys.contains("SourceIdentifier") {
            self.sourceIdentifier = dict["SourceIdentifier"] as! String
        }
        if dict.keys.contains("SourceMaximumExecutionFrequency") {
            self.sourceMaximumExecutionFrequency = dict["SourceMaximumExecutionFrequency"] as! String
        }
        if dict.keys.contains("SourceOwner") {
            self.sourceOwner = dict["SourceOwner"] as! String
        }
    }
}

public class PutConfigRuleResponseBody : Tea.TeaModel {
    public var configRuleId: String?

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
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PutConfigRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutConfigRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutConfigRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutConfigurationRecorderRequest : Tea.TeaModel {
    public var resourceTypes: String?

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
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! String
        }
    }
}

public class PutConfigurationRecorderResponseBody : Tea.TeaModel {
    public class ConfigurationRecorder : Tea.TeaModel {
        public var accountId: Int64?

        public var configurationRecorderStatus: String?

        public var resourceTypes: [String]?

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
            if self.configurationRecorderStatus != nil {
                map["ConfigurationRecorderStatus"] = self.configurationRecorderStatus!
            }
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ConfigurationRecorderStatus") {
                self.configurationRecorderStatus = dict["ConfigurationRecorderStatus"] as! String
            }
            if dict.keys.contains("ResourceTypes") {
                self.resourceTypes = dict["ResourceTypes"] as! [String]
            }
        }
    }
    public var configurationRecorder: PutConfigurationRecorderResponseBody.ConfigurationRecorder?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configurationRecorder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configurationRecorder != nil {
            map["ConfigurationRecorder"] = self.configurationRecorder?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigurationRecorder") {
            var model = PutConfigurationRecorderResponseBody.ConfigurationRecorder()
            model.fromMap(dict["ConfigurationRecorder"] as! [String: Any])
            self.configurationRecorder = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PutConfigurationRecorderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutConfigurationRecorderResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutConfigurationRecorderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutDeliveryChannelRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deliveryChannelAssumeRoleArn: String?

    public var deliveryChannelCondition: String?

    public var deliveryChannelId: String?

    public var deliveryChannelName: String?

    public var deliveryChannelTargetArn: String?

    public var deliveryChannelType: String?

    public var description_: String?

    public var status: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deliveryChannelAssumeRoleArn != nil {
            map["DeliveryChannelAssumeRoleArn"] = self.deliveryChannelAssumeRoleArn!
        }
        if self.deliveryChannelCondition != nil {
            map["DeliveryChannelCondition"] = self.deliveryChannelCondition!
        }
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.deliveryChannelName != nil {
            map["DeliveryChannelName"] = self.deliveryChannelName!
        }
        if self.deliveryChannelTargetArn != nil {
            map["DeliveryChannelTargetArn"] = self.deliveryChannelTargetArn!
        }
        if self.deliveryChannelType != nil {
            map["DeliveryChannelType"] = self.deliveryChannelType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeliveryChannelAssumeRoleArn") {
            self.deliveryChannelAssumeRoleArn = dict["DeliveryChannelAssumeRoleArn"] as! String
        }
        if dict.keys.contains("DeliveryChannelCondition") {
            self.deliveryChannelCondition = dict["DeliveryChannelCondition"] as! String
        }
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("DeliveryChannelName") {
            self.deliveryChannelName = dict["DeliveryChannelName"] as! String
        }
        if dict.keys.contains("DeliveryChannelTargetArn") {
            self.deliveryChannelTargetArn = dict["DeliveryChannelTargetArn"] as! String
        }
        if dict.keys.contains("DeliveryChannelType") {
            self.deliveryChannelType = dict["DeliveryChannelType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class PutDeliveryChannelResponseBody : Tea.TeaModel {
    public var deliveryChannelId: String?

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
        if self.deliveryChannelId != nil {
            map["DeliveryChannelId"] = self.deliveryChannelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryChannelId") {
            self.deliveryChannelId = dict["DeliveryChannelId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PutDeliveryChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutDeliveryChannelResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutDeliveryChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutEvaluationsRequest : Tea.TeaModel {
    public var evaluations: String?

    public var resultToken: String?

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
        if self.evaluations != nil {
            map["Evaluations"] = self.evaluations!
        }
        if self.resultToken != nil {
            map["ResultToken"] = self.resultToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Evaluations") {
            self.evaluations = dict["Evaluations"] as! String
        }
        if dict.keys.contains("ResultToken") {
            self.resultToken = dict["ResultToken"] as! String
        }
    }
}

public class PutEvaluationsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class PutEvaluationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutEvaluationsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutEvaluationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartConfigRuleEvaluationRequest : Tea.TeaModel {
    public var compliancePackId: String?

    public var configRuleId: String?

    public var revertEvaluation: Bool?

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
        if self.compliancePackId != nil {
            map["CompliancePackId"] = self.compliancePackId!
        }
        if self.configRuleId != nil {
            map["ConfigRuleId"] = self.configRuleId!
        }
        if self.revertEvaluation != nil {
            map["RevertEvaluation"] = self.revertEvaluation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompliancePackId") {
            self.compliancePackId = dict["CompliancePackId"] as! String
        }
        if dict.keys.contains("ConfigRuleId") {
            self.configRuleId = dict["ConfigRuleId"] as! String
        }
        if dict.keys.contains("RevertEvaluation") {
            self.revertEvaluation = dict["RevertEvaluation"] as! Bool
        }
    }
}

public class StartConfigRuleEvaluationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class StartConfigRuleEvaluationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartConfigRuleEvaluationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartConfigRuleEvaluationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartConfigurationRecorderRequest : Tea.TeaModel {
    public var enterpriseEdition: Bool?

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
        if self.enterpriseEdition != nil {
            map["EnterpriseEdition"] = self.enterpriseEdition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnterpriseEdition") {
            self.enterpriseEdition = dict["EnterpriseEdition"] as! Bool
        }
    }
}

public class StartConfigurationRecorderResponseBody : Tea.TeaModel {
    public class ConfigurationRecorder : Tea.TeaModel {
        public var accountId: Int64?

        public var configurationRecorderStatus: String?

        public var organizationEnableStatus: String?

        public var organizationMasterId: Int64?

        public var resourceTypes: [String]?

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
            if self.configurationRecorderStatus != nil {
                map["ConfigurationRecorderStatus"] = self.configurationRecorderStatus!
            }
            if self.organizationEnableStatus != nil {
                map["OrganizationEnableStatus"] = self.organizationEnableStatus!
            }
            if self.organizationMasterId != nil {
                map["OrganizationMasterId"] = self.organizationMasterId!
            }
            if self.resourceTypes != nil {
                map["ResourceTypes"] = self.resourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("ConfigurationRecorderStatus") {
                self.configurationRecorderStatus = dict["ConfigurationRecorderStatus"] as! String
            }
            if dict.keys.contains("OrganizationEnableStatus") {
                self.organizationEnableStatus = dict["OrganizationEnableStatus"] as! String
            }
            if dict.keys.contains("OrganizationMasterId") {
                self.organizationMasterId = dict["OrganizationMasterId"] as! Int64
            }
            if dict.keys.contains("ResourceTypes") {
                self.resourceTypes = dict["ResourceTypes"] as! [String]
            }
        }
    }
    public var configurationRecorder: StartConfigurationRecorderResponseBody.ConfigurationRecorder?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configurationRecorder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configurationRecorder != nil {
            map["ConfigurationRecorder"] = self.configurationRecorder?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigurationRecorder") {
            var model = StartConfigurationRecorderResponseBody.ConfigurationRecorder()
            model.fromMap(dict["ConfigurationRecorder"] as! [String: Any])
            self.configurationRecorder = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartConfigurationRecorderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartConfigurationRecorderResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartConfigurationRecorderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopConfigRulesRequest : Tea.TeaModel {
    public var configRuleIds: String?

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
        if self.configRuleIds != nil {
            map["ConfigRuleIds"] = self.configRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigRuleIds") {
            self.configRuleIds = dict["ConfigRuleIds"] as! String
        }
    }
}

public class StopConfigRulesResponseBody : Tea.TeaModel {
    public class OperateRuleResult : Tea.TeaModel {
        public class OperateRuleItemList : Tea.TeaModel {
            public var configRuleId: String?

            public var errorCode: String?

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
                if self.configRuleId != nil {
                    map["ConfigRuleId"] = self.configRuleId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigRuleId") {
                    self.configRuleId = dict["ConfigRuleId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var operateRuleItemList: [StopConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]?

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
            if self.operateRuleItemList != nil {
                var tmp : [Any] = []
                for k in self.operateRuleItemList! {
                    tmp.append(k.toMap())
                }
                map["OperateRuleItemList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateRuleItemList") {
                self.operateRuleItemList = dict["OperateRuleItemList"] as! [StopConfigRulesResponseBody.OperateRuleResult.OperateRuleItemList]
            }
        }
    }
    public var operateRuleResult: StopConfigRulesResponseBody.OperateRuleResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateRuleResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateRuleResult != nil {
            map["OperateRuleResult"] = self.operateRuleResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateRuleResult") {
            var model = StopConfigRulesResponseBody.OperateRuleResult()
            model.fromMap(dict["OperateRuleResult"] as! [String: Any])
            self.operateRuleResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopConfigRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopConfigRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
