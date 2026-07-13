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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CheckRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloseBdrcServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProtectionPolicyRequest : Tea.TeaModel {
    public class SubProtectionPolicies : Tea.TeaModel {
        public var config: String?

        public var subProtectionPolicyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.subProtectionPolicyType != nil {
                map["SubProtectionPolicyType"] = self.subProtectionPolicyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["SubProtectionPolicyType"] as? String {
                self.subProtectionPolicyType = value
            }
        }
    }
    public var boundResourceCategoryIds: [String]?

    public var clientToken: String?

    public var protectionPolicyName: String?

    public var protectionPolicyRegionId: String?

    public var subProtectionPolicies: [CreateProtectionPolicyRequest.SubProtectionPolicies]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundResourceCategoryIds != nil {
            map["BoundResourceCategoryIds"] = self.boundResourceCategoryIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.protectionPolicyName != nil {
            map["ProtectionPolicyName"] = self.protectionPolicyName!
        }
        if self.protectionPolicyRegionId != nil {
            map["ProtectionPolicyRegionId"] = self.protectionPolicyRegionId!
        }
        if self.subProtectionPolicies != nil {
            var tmp : [Any] = []
            for k in self.subProtectionPolicies! {
                tmp.append(k.toMap())
            }
            map["SubProtectionPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BoundResourceCategoryIds"] as? [String] {
            self.boundResourceCategoryIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ProtectionPolicyName"] as? String {
            self.protectionPolicyName = value
        }
        if let value = dict["ProtectionPolicyRegionId"] as? String {
            self.protectionPolicyRegionId = value
        }
        if let value = dict["SubProtectionPolicies"] as? [Any?] {
            var tmp : [CreateProtectionPolicyRequest.SubProtectionPolicies] = []
            for v in value {
                if v != nil {
                    var model = CreateProtectionPolicyRequest.SubProtectionPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subProtectionPolicies = tmp
        }
    }
}

public class CreateProtectionPolicyShrinkRequest : Tea.TeaModel {
    public var boundResourceCategoryIdsShrink: String?

    public var clientToken: String?

    public var protectionPolicyName: String?

    public var protectionPolicyRegionId: String?

    public var subProtectionPoliciesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundResourceCategoryIdsShrink != nil {
            map["BoundResourceCategoryIds"] = self.boundResourceCategoryIdsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.protectionPolicyName != nil {
            map["ProtectionPolicyName"] = self.protectionPolicyName!
        }
        if self.protectionPolicyRegionId != nil {
            map["ProtectionPolicyRegionId"] = self.protectionPolicyRegionId!
        }
        if self.subProtectionPoliciesShrink != nil {
            map["SubProtectionPolicies"] = self.subProtectionPoliciesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BoundResourceCategoryIds"] as? String {
            self.boundResourceCategoryIdsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ProtectionPolicyName"] as? String {
            self.protectionPolicyName = value
        }
        if let value = dict["ProtectionPolicyRegionId"] as? String {
            self.protectionPolicyRegionId = value
        }
        if let value = dict["SubProtectionPolicies"] as? String {
            self.subProtectionPoliciesShrink = value
        }
    }
}

public class CreateProtectionPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var protectionPolicyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.protectionPolicyId != nil {
                map["ProtectionPolicyId"] = self.protectionPolicyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProtectionPolicyId"] as? String {
                self.protectionPolicyId = value
            }
        }
    }
    public var data: CreateProtectionPolicyResponseBody.Data?

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
            var model = CreateProtectionPolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateProtectionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProtectionPolicyResponseBody?

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
            var model = CreateProtectionPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceCategoryRequest : Tea.TeaModel {
    public var resourceCategoryName: String?

    public var resourceMatcher: String?

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
        if self.resourceCategoryName != nil {
            map["ResourceCategoryName"] = self.resourceCategoryName!
        }
        if self.resourceMatcher != nil {
            map["ResourceMatcher"] = self.resourceMatcher!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCategoryName"] as? String {
            self.resourceCategoryName = value
        }
        if let value = dict["ResourceMatcher"] as? String {
            self.resourceMatcher = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class CreateResourceCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resourceCategoryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceCategoryId != nil {
                map["ResourceCategoryId"] = self.resourceCategoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceCategoryId"] as? String {
                self.resourceCategoryId = value
            }
        }
    }
    public var data: CreateResourceCategoryResponseBody.Data?

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
            var model = CreateResourceCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateResourceCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceCategoryResponseBody?

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
            var model = CreateResourceCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProtectionPolicyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteProtectionPolicyResponseBody : Tea.TeaModel {
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

public class DeleteProtectionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProtectionPolicyResponseBody?

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
            var model = DeleteProtectionPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceCategoryRequest : Tea.TeaModel {
    public var resourceCategoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
    }
}

public class DeleteResourceCategoryResponseBody : Tea.TeaModel {
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

public class DeleteResourceCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceCategoryResponseBody?

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
            var model = DeleteResourceCategoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

            public var resourceOwnerId: Int64?

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
                if self.resourceOwnerId != nil {
                    map["ResourceOwnerId"] = self.resourceOwnerId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckStatus"] as? String {
                    self.checkStatus = value
                }
                if let value = dict["CheckTime"] as? Int64 {
                    self.checkTime = value
                }
                if let value = dict["Detail"] as? String {
                    self.detail = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceOwnerId"] as? Int64 {
                    self.resourceOwnerId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleTemplate"] as? String {
                    self.ruleTemplate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeCheckDetailsResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCheckDetailsResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCheckDetailsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCheckDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProductDataRedundancyTypeStatRequest : Tea.TeaModel {
    public var productType: String?

    public var resourceCategoryId: String?

    public var resourceOwnerIds: [Int64]?

    public override init() {
        super.init()
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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIds != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? [Int64] {
            self.resourceOwnerIds = value
        }
    }
}

public class DescribeProductDataRedundancyTypeStatShrinkRequest : Tea.TeaModel {
    public var productType: String?

    public var resourceCategoryId: String?

    public var resourceOwnerIdsShrink: String?

    public override init() {
        super.init()
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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIdsShrink != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? String {
            self.resourceOwnerIdsShrink = value
        }
    }
}

public class DescribeProductDataRedundancyTypeStatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var dataRedundancyType: String?

            public var resourceCount: Int64?

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
                if self.resourceCount != nil {
                    map["ResourceCount"] = self.resourceCount!
                }
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataRedundancyType"] as? String {
                    self.dataRedundancyType = value
                }
                if let value = dict["ResourceCount"] as? Int64 {
                    self.resourceCount = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
            }
        }
        public var content: [DescribeProductDataRedundancyTypeStatResponseBody.Data.Content]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeProductDataRedundancyTypeStatResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeProductDataRedundancyTypeStatResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
        }
    }
    public var data: DescribeProductDataRedundancyTypeStatResponseBody.Data?

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
            var model = DescribeProductDataRedundancyTypeStatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProductDataRedundancyTypeStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProductDataRedundancyTypeStatResponseBody?

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
            var model = DescribeProductDataRedundancyTypeStatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProductsRequest : Tea.TeaModel {
    public var productType: String?

    public var resourceCategoryId: String?

    public var resourceOwnerIds: [Int64]?

    public var resourceRegionId: String?

    public override init() {
        super.init()
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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIds != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIds!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? [Int64] {
            self.resourceOwnerIds = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
    }
}

public class DescribeProductsShrinkRequest : Tea.TeaModel {
    public var productType: String?

    public var resourceCategoryId: String?

    public var resourceOwnerIdsShrink: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIdsShrink != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIdsShrink!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? String {
            self.resourceOwnerIdsShrink = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["From"] as? Int32 {
                            self.from = value
                        }
                        if let value = dict["To"] as? Int32 {
                            self.to = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Count"] as? Int64 {
                        self.count = value
                    }
                    if let value = dict["Range"] as? [String: Any?] {
                        var model = DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution.Range()
                        model.fromMap(value)
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

            public var waitForCheckResourceCount: Int64?

            public override init() {
                super.init()
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
                if self.waitForCheckResourceCount != nil {
                    map["WaitForCheckResourceCount"] = self.waitForCheckResourceCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckFailedCount"] as? Int64 {
                    self.checkFailedCount = value
                }
                if let value = dict["CheckFailedResourceCount"] as? Int64 {
                    self.checkFailedResourceCount = value
                }
                if let value = dict["DisableCheckResourceCount"] as? Int64 {
                    self.disableCheckResourceCount = value
                }
                if let value = dict["EnableCheck"] as? Bool {
                    self.enableCheck = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ProtectionScore"] as? Int32 {
                    self.protectionScore = value
                }
                if let value = dict["ProtectionScoreDistribution"] as? [Any?] {
                    var tmp : [DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeProductsResponseBody.Data.Content.ProtectionScoreDistribution()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.protectionScoreDistribution = tmp
                }
                if let value = dict["ProtectionScoreUpdatedTime"] as? Int64 {
                    self.protectionScoreUpdatedTime = value
                }
                if let value = dict["RiskCount"] as? Int64 {
                    self.riskCount = value
                }
                if let value = dict["RiskyResourceCount"] as? Int64 {
                    self.riskyResourceCount = value
                }
                if let value = dict["TotalResourceCount"] as? Int64 {
                    self.totalResourceCount = value
                }
                if let value = dict["WaitForCheckResourceCount"] as? Int64 {
                    self.waitForCheckResourceCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeProductsResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeProductsResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeProductsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResourcesRequest : Tea.TeaModel {
    public var dataRedundancyType: String?

    public var failedRuleTemplate: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceArn: String?

    public var resourceCategoryId: String?

    public var resourceId: String?

    public var resourceOwnerIds: [Int64]?

    public var resourceRegionId: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerIds != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIds!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataRedundancyType"] as? String {
            self.dataRedundancyType = value
        }
        if let value = dict["FailedRuleTemplate"] as? String {
            self.failedRuleTemplate = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerIds"] as? [Int64] {
            self.resourceOwnerIds = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["StorageClass"] as? String {
            self.storageClass = value
        }
    }
}

public class DescribeResourcesShrinkRequest : Tea.TeaModel {
    public var dataRedundancyType: String?

    public var failedRuleTemplate: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceArn: String?

    public var resourceCategoryId: String?

    public var resourceId: String?

    public var resourceOwnerIdsShrink: String?

    public var resourceRegionId: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerIdsShrink != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIdsShrink!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataRedundancyType"] as? String {
            self.dataRedundancyType = value
        }
        if let value = dict["FailedRuleTemplate"] as? String {
            self.failedRuleTemplate = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerIds"] as? String {
            self.resourceOwnerIdsShrink = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["StorageClass"] as? String {
            self.storageClass = value
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

            public var resourceOwnerId: Int64?

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
                if self.resourceOwnerId != nil {
                    map["ResourceOwnerId"] = self.resourceOwnerId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArchiveDataSize"] as? Int64 {
                    self.archiveDataSize = value
                }
                if let value = dict["CheckFailedCount"] as? Int64 {
                    self.checkFailedCount = value
                }
                if let value = dict["ColdArchiveDataSize"] as? Int64 {
                    self.coldArchiveDataSize = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DataRedundancyType"] as? String {
                    self.dataRedundancyType = value
                }
                if let value = dict["EnableCheck"] as? Bool {
                    self.enableCheck = value
                }
                if let value = dict["IaDataSize"] as? Int64 {
                    self.iaDataSize = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ProtectionScore"] as? Int32 {
                    self.protectionScore = value
                }
                if let value = dict["ProtectionScoreUpdatedTime"] as? Int64 {
                    self.protectionScoreUpdatedTime = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceOwnerId"] as? Int64 {
                    self.resourceOwnerId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["RiskCount"] as? Int64 {
                    self.riskCount = value
                }
                if let value = dict["StandardDataSize"] as? Int64 {
                    self.standardDataSize = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
                if let value = dict["TotalDataSize"] as? Int64 {
                    self.totalDataSize = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeResourcesResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourcesResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeResourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRulesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceCategoryId: String?

    public var resourceOwnerIds: [Int64]?

    public var resourceRegionId: String?

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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIds != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIds!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? [Int64] {
            self.resourceOwnerIds = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeRulesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceCategoryId: String?

    public var resourceOwnerIdsShrink: String?

    public var resourceRegionId: String?

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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIdsShrink != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIdsShrink!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? String {
            self.resourceOwnerIdsShrink = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckFailedResourceCount"] as? Int64 {
                    self.checkFailedResourceCount = value
                }
                if let value = dict["CheckStatus"] as? String {
                    self.checkStatus = value
                }
                if let value = dict["CheckTime"] as? Int64 {
                    self.checkTime = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["RiskyResourceCount"] as? Int64 {
                    self.riskyResourceCount = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleTemplate"] as? String {
                    self.ruleTemplate = value
                }
                if let value = dict["TotalResourceCount"] as? Int64 {
                    self.totalResourceCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeRulesResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRulesResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRulesResponseBody()
            model.fromMap(value)
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

        public var taskResult: String?

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
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompleteTime"] as? Int64 {
                self.completeTime = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["TaskDescription"] as? String {
                self.taskDescription = value
            }
            if let value = dict["TaskDetail"] as? String {
                self.taskDetail = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskPriority"] as? String {
                self.taskPriority = value
            }
            if let value = dict["TaskResult"] as? String {
                self.taskResult = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

            public var taskResult: String?

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
                if self.taskResult != nil {
                    map["TaskResult"] = self.taskResult!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CompleteTime"] as? Int64 {
                    self.completeTime = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["ExecutionId"] as? String {
                    self.executionId = value
                }
                if let value = dict["ExpireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["TaskDescription"] as? String {
                    self.taskDescription = value
                }
                if let value = dict["TaskDetail"] as? String {
                    self.taskDetail = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TaskPriority"] as? String {
                    self.taskPriority = value
                }
                if let value = dict["TaskResult"] as? String {
                    self.taskResult = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeTasksResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTasksResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeTasksResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTopRiskyResourcesRequest : Tea.TeaModel {
    public var resourceCategoryId: String?

    public var resourceOwnerIds: [Int64]?

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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIds != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? [Int64] {
            self.resourceOwnerIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeTopRiskyResourcesShrinkRequest : Tea.TeaModel {
    public var resourceCategoryId: String?

    public var resourceOwnerIdsShrink: String?

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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceOwnerIdsShrink != nil {
            map["ResourceOwnerIds"] = self.resourceOwnerIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceOwnerIds"] as? String {
            self.resourceOwnerIdsShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

            public var resourceOwnerId: Int64?

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
                if self.resourceOwnerId != nil {
                    map["ResourceOwnerId"] = self.resourceOwnerId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArchiveDataSize"] as? Int64 {
                    self.archiveDataSize = value
                }
                if let value = dict["CheckFailedCount"] as? Int64 {
                    self.checkFailedCount = value
                }
                if let value = dict["ColdArchiveDataSize"] as? Int64 {
                    self.coldArchiveDataSize = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DataRedundancyType"] as? String {
                    self.dataRedundancyType = value
                }
                if let value = dict["EnableCheck"] as? Bool {
                    self.enableCheck = value
                }
                if let value = dict["IaDataSize"] as? Int64 {
                    self.iaDataSize = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ProtectionScore"] as? Int32 {
                    self.protectionScore = value
                }
                if let value = dict["ProtectionScoreUpdatedTime"] as? Int64 {
                    self.protectionScoreUpdatedTime = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceOwnerId"] as? Int64 {
                    self.resourceOwnerId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["RiskCount"] as? Int64 {
                    self.riskCount = value
                }
                if let value = dict["StandardDataSize"] as? Int64 {
                    self.standardDataSize = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
                if let value = dict["TotalDataSize"] as? Int64 {
                    self.totalDataSize = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeTopRiskyResourcesResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTopRiskyResourcesResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeTopRiskyResourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTopRiskyResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableCheckProductResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableCheckResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableCheckProductResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableCheckResourceResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OpenTime"] as? Int64 {
                self.openTime = value
            }
            if let value = dict["ProtectionScoreUpdatedTime"] as? Int64 {
                self.protectionScoreUpdatedTime = value
            }
            if let value = dict["ServiceInitializeStatus"] as? String {
                self.serviceInitializeStatus = value
            }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetBdrcServiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetBdrcServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMessageRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var messageContent: String?

        public var messageId: String?

        public var messageLevel: String?

        public var messageName: String?

        public var messageSourceId: String?

        public var messageSourceRegionId: String?

        public var messageSourceType: String?

        public var messageTime: Int64?

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
            if self.messageContent != nil {
                map["MessageContent"] = self.messageContent!
            }
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            if self.messageLevel != nil {
                map["MessageLevel"] = self.messageLevel!
            }
            if self.messageName != nil {
                map["MessageName"] = self.messageName!
            }
            if self.messageSourceId != nil {
                map["MessageSourceId"] = self.messageSourceId!
            }
            if self.messageSourceRegionId != nil {
                map["MessageSourceRegionId"] = self.messageSourceRegionId!
            }
            if self.messageSourceType != nil {
                map["MessageSourceType"] = self.messageSourceType!
            }
            if self.messageTime != nil {
                map["MessageTime"] = self.messageTime!
            }
            if self.messageType != nil {
                map["MessageType"] = self.messageType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MessageContent"] as? String {
                self.messageContent = value
            }
            if let value = dict["MessageId"] as? String {
                self.messageId = value
            }
            if let value = dict["MessageLevel"] as? String {
                self.messageLevel = value
            }
            if let value = dict["MessageName"] as? String {
                self.messageName = value
            }
            if let value = dict["MessageSourceId"] as? String {
                self.messageSourceId = value
            }
            if let value = dict["MessageSourceRegionId"] as? String {
                self.messageSourceRegionId = value
            }
            if let value = dict["MessageSourceType"] as? String {
                self.messageSourceType = value
            }
            if let value = dict["MessageTime"] as? Int64 {
                self.messageTime = value
            }
            if let value = dict["MessageType"] as? String {
                self.messageType = value
            }
        }
    }
    public var data: GetMessageResponseBody.Data?

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
            var model = GetMessageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessageResponseBody?

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
            var model = GetMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProtectionPolicyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetProtectionPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SubProtectionPolicies : Tea.TeaModel {
            public var config: String?

            public var subProtectionPolicyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["Config"] = self.config!
                }
                if self.subProtectionPolicyType != nil {
                    map["SubProtectionPolicyType"] = self.subProtectionPolicyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Config"] as? String {
                    self.config = value
                }
                if let value = dict["SubProtectionPolicyType"] as? String {
                    self.subProtectionPolicyType = value
                }
            }
        }
        public var boundResourceCategoryIds: [String]?

        public var latestApplyTime: Int64?

        public var latestTaskId: String?

        public var protectionPolicyId: String?

        public var protectionPolicyName: String?

        public var protectionPolicyRegionId: String?

        public var subProtectionPolicies: [GetProtectionPolicyResponseBody.Data.SubProtectionPolicies]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.boundResourceCategoryIds != nil {
                map["BoundResourceCategoryIds"] = self.boundResourceCategoryIds!
            }
            if self.latestApplyTime != nil {
                map["LatestApplyTime"] = self.latestApplyTime!
            }
            if self.latestTaskId != nil {
                map["LatestTaskId"] = self.latestTaskId!
            }
            if self.protectionPolicyId != nil {
                map["ProtectionPolicyId"] = self.protectionPolicyId!
            }
            if self.protectionPolicyName != nil {
                map["ProtectionPolicyName"] = self.protectionPolicyName!
            }
            if self.protectionPolicyRegionId != nil {
                map["ProtectionPolicyRegionId"] = self.protectionPolicyRegionId!
            }
            if self.subProtectionPolicies != nil {
                var tmp : [Any] = []
                for k in self.subProtectionPolicies! {
                    tmp.append(k.toMap())
                }
                map["SubProtectionPolicies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BoundResourceCategoryIds"] as? [String] {
                self.boundResourceCategoryIds = value
            }
            if let value = dict["LatestApplyTime"] as? Int64 {
                self.latestApplyTime = value
            }
            if let value = dict["LatestTaskId"] as? String {
                self.latestTaskId = value
            }
            if let value = dict["ProtectionPolicyId"] as? String {
                self.protectionPolicyId = value
            }
            if let value = dict["ProtectionPolicyName"] as? String {
                self.protectionPolicyName = value
            }
            if let value = dict["ProtectionPolicyRegionId"] as? String {
                self.protectionPolicyRegionId = value
            }
            if let value = dict["SubProtectionPolicies"] as? [Any?] {
                var tmp : [GetProtectionPolicyResponseBody.Data.SubProtectionPolicies] = []
                for v in value {
                    if v != nil {
                        var model = GetProtectionPolicyResponseBody.Data.SubProtectionPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subProtectionPolicies = tmp
            }
        }
    }
    public var data: GetProtectionPolicyResponseBody.Data?

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
            var model = GetProtectionPolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetProtectionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProtectionPolicyResponseBody?

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
            var model = GetProtectionPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceCategoryRequest : Tea.TeaModel {
    public var resourceCategoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
    }
}

public class GetResourceCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResourceCount : Tea.TeaModel {
            public var count: Int64?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var productType: String?

        public var resourceCategoryId: String?

        public var resourceCategoryName: String?

        public var resourceCategoryType: String?

        public var resourceCount: [GetResourceCategoryResponseBody.Data.ResourceCount]?

        public var resourceMatcher: String?

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
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.resourceCategoryId != nil {
                map["ResourceCategoryId"] = self.resourceCategoryId!
            }
            if self.resourceCategoryName != nil {
                map["ResourceCategoryName"] = self.resourceCategoryName!
            }
            if self.resourceCategoryType != nil {
                map["ResourceCategoryType"] = self.resourceCategoryType!
            }
            if self.resourceCount != nil {
                var tmp : [Any] = []
                for k in self.resourceCount! {
                    tmp.append(k.toMap())
                }
                map["ResourceCount"] = tmp
            }
            if self.resourceMatcher != nil {
                map["ResourceMatcher"] = self.resourceMatcher!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["ResourceCategoryId"] as? String {
                self.resourceCategoryId = value
            }
            if let value = dict["ResourceCategoryName"] as? String {
                self.resourceCategoryName = value
            }
            if let value = dict["ResourceCategoryType"] as? String {
                self.resourceCategoryType = value
            }
            if let value = dict["ResourceCount"] as? [Any?] {
                var tmp : [GetResourceCategoryResponseBody.Data.ResourceCount] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceCategoryResponseBody.Data.ResourceCount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceCount = tmp
            }
            if let value = dict["ResourceMatcher"] as? String {
                self.resourceMatcher = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var data: GetResourceCategoryResponseBody.Data?

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
            var model = GetResourceCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetResourceCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceCategoryResponseBody?

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
            var model = GetResourceCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMessagesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var messageLevel: String?

    public var messageTimeEarlierThan: Int64?

    public var messageTimeLaterThan: Int64?

    public var messageType: String?

    public var nextToken: String?

    public override init() {
        super.init()
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
        if self.messageLevel != nil {
            map["MessageLevel"] = self.messageLevel!
        }
        if self.messageTimeEarlierThan != nil {
            map["MessageTimeEarlierThan"] = self.messageTimeEarlierThan!
        }
        if self.messageTimeLaterThan != nil {
            map["MessageTimeLaterThan"] = self.messageTimeLaterThan!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MessageLevel"] as? String {
            self.messageLevel = value
        }
        if let value = dict["MessageTimeEarlierThan"] as? Int64 {
            self.messageTimeEarlierThan = value
        }
        if let value = dict["MessageTimeLaterThan"] as? Int64 {
            self.messageTimeLaterThan = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListMessagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var messageId: String?

            public var messageLevel: String?

            public var messageName: String?

            public var messageSourceId: String?

            public var messageSourceRegionId: String?

            public var messageSourceType: String?

            public var messageTime: Int64?

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
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.messageLevel != nil {
                    map["MessageLevel"] = self.messageLevel!
                }
                if self.messageName != nil {
                    map["MessageName"] = self.messageName!
                }
                if self.messageSourceId != nil {
                    map["MessageSourceId"] = self.messageSourceId!
                }
                if self.messageSourceRegionId != nil {
                    map["MessageSourceRegionId"] = self.messageSourceRegionId!
                }
                if self.messageSourceType != nil {
                    map["MessageSourceType"] = self.messageSourceType!
                }
                if self.messageTime != nil {
                    map["MessageTime"] = self.messageTime!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MessageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["MessageLevel"] as? String {
                    self.messageLevel = value
                }
                if let value = dict["MessageName"] as? String {
                    self.messageName = value
                }
                if let value = dict["MessageSourceId"] as? String {
                    self.messageSourceId = value
                }
                if let value = dict["MessageSourceRegionId"] as? String {
                    self.messageSourceRegionId = value
                }
                if let value = dict["MessageSourceType"] as? String {
                    self.messageSourceType = value
                }
                if let value = dict["MessageTime"] as? Int64 {
                    self.messageTime = value
                }
                if let value = dict["MessageType"] as? String {
                    self.messageType = value
                }
            }
        }
        public var content: [ListMessagesResponseBody.Data.Content]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [ListMessagesResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = ListMessagesResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: ListMessagesResponseBody.Data?

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
            var model = ListMessagesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessagesResponseBody?

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
            var model = ListMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProtectionPoliciesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var protectionPolicyId: String?

    public var protectionPolicyRegionId: String?

    public override init() {
        super.init()
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
        if self.protectionPolicyId != nil {
            map["ProtectionPolicyId"] = self.protectionPolicyId!
        }
        if self.protectionPolicyRegionId != nil {
            map["ProtectionPolicyRegionId"] = self.protectionPolicyRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProtectionPolicyId"] as? String {
            self.protectionPolicyId = value
        }
        if let value = dict["ProtectionPolicyRegionId"] as? String {
            self.protectionPolicyRegionId = value
        }
    }
}

public class ListProtectionPoliciesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class LatestApplySummary : Tea.TeaModel {
                public class ApplyStatusCount : Tea.TeaModel {
                    public var applyStatus: String?

                    public var count: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.applyStatus != nil {
                            map["ApplyStatus"] = self.applyStatus!
                        }
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ApplyStatus"] as? String {
                            self.applyStatus = value
                        }
                        if let value = dict["Count"] as? Int64 {
                            self.count = value
                        }
                    }
                }
                public class ResourceCount : Tea.TeaModel {
                    public var count: Int64?

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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.resourceType != nil {
                            map["ResourceType"] = self.resourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Count"] as? Int64 {
                            self.count = value
                        }
                        if let value = dict["ResourceType"] as? String {
                            self.resourceType = value
                        }
                    }
                }
                public var applyStatusCount: [ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary.ApplyStatusCount]?

                public var completeTime: Int64?

                public var resourceCount: [ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary.ResourceCount]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applyStatusCount != nil {
                        var tmp : [Any] = []
                        for k in self.applyStatusCount! {
                            tmp.append(k.toMap())
                        }
                        map["ApplyStatusCount"] = tmp
                    }
                    if self.completeTime != nil {
                        map["CompleteTime"] = self.completeTime!
                    }
                    if self.resourceCount != nil {
                        var tmp : [Any] = []
                        for k in self.resourceCount! {
                            tmp.append(k.toMap())
                        }
                        map["ResourceCount"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApplyStatusCount"] as? [Any?] {
                        var tmp : [ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary.ApplyStatusCount] = []
                        for v in value {
                            if v != nil {
                                var model = ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary.ApplyStatusCount()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.applyStatusCount = tmp
                    }
                    if let value = dict["CompleteTime"] as? Int64 {
                        self.completeTime = value
                    }
                    if let value = dict["ResourceCount"] as? [Any?] {
                        var tmp : [ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary.ResourceCount] = []
                        for v in value {
                            if v != nil {
                                var model = ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary.ResourceCount()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.resourceCount = tmp
                    }
                }
            }
            public class SubProtectionPolicies : Tea.TeaModel {
                public var config: String?

                public var subProtectionPolicyType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.config != nil {
                        map["Config"] = self.config!
                    }
                    if self.subProtectionPolicyType != nil {
                        map["SubProtectionPolicyType"] = self.subProtectionPolicyType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Config"] as? String {
                        self.config = value
                    }
                    if let value = dict["SubProtectionPolicyType"] as? String {
                        self.subProtectionPolicyType = value
                    }
                }
            }
            public var boundResourceCategoryIds: [String]?

            public var latestApplySummary: ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary?

            public var latestApplyTime: Int64?

            public var latestTaskId: String?

            public var protectionPolicyId: String?

            public var protectionPolicyName: String?

            public var protectionPolicyRegionId: String?

            public var subProtectionPolicies: [ListProtectionPoliciesResponseBody.Data.Content.SubProtectionPolicies]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.latestApplySummary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.boundResourceCategoryIds != nil {
                    map["BoundResourceCategoryIds"] = self.boundResourceCategoryIds!
                }
                if self.latestApplySummary != nil {
                    map["LatestApplySummary"] = self.latestApplySummary?.toMap()
                }
                if self.latestApplyTime != nil {
                    map["LatestApplyTime"] = self.latestApplyTime!
                }
                if self.latestTaskId != nil {
                    map["LatestTaskId"] = self.latestTaskId!
                }
                if self.protectionPolicyId != nil {
                    map["ProtectionPolicyId"] = self.protectionPolicyId!
                }
                if self.protectionPolicyName != nil {
                    map["ProtectionPolicyName"] = self.protectionPolicyName!
                }
                if self.protectionPolicyRegionId != nil {
                    map["ProtectionPolicyRegionId"] = self.protectionPolicyRegionId!
                }
                if self.subProtectionPolicies != nil {
                    var tmp : [Any] = []
                    for k in self.subProtectionPolicies! {
                        tmp.append(k.toMap())
                    }
                    map["SubProtectionPolicies"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BoundResourceCategoryIds"] as? [String] {
                    self.boundResourceCategoryIds = value
                }
                if let value = dict["LatestApplySummary"] as? [String: Any?] {
                    var model = ListProtectionPoliciesResponseBody.Data.Content.LatestApplySummary()
                    model.fromMap(value)
                    self.latestApplySummary = model
                }
                if let value = dict["LatestApplyTime"] as? Int64 {
                    self.latestApplyTime = value
                }
                if let value = dict["LatestTaskId"] as? String {
                    self.latestTaskId = value
                }
                if let value = dict["ProtectionPolicyId"] as? String {
                    self.protectionPolicyId = value
                }
                if let value = dict["ProtectionPolicyName"] as? String {
                    self.protectionPolicyName = value
                }
                if let value = dict["ProtectionPolicyRegionId"] as? String {
                    self.protectionPolicyRegionId = value
                }
                if let value = dict["SubProtectionPolicies"] as? [Any?] {
                    var tmp : [ListProtectionPoliciesResponseBody.Data.Content.SubProtectionPolicies] = []
                    for v in value {
                        if v != nil {
                            var model = ListProtectionPoliciesResponseBody.Data.Content.SubProtectionPolicies()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subProtectionPolicies = tmp
                }
            }
        }
        public var content: [ListProtectionPoliciesResponseBody.Data.Content]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [ListProtectionPoliciesResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = ListProtectionPoliciesResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: ListProtectionPoliciesResponseBody.Data?

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
            var model = ListProtectionPoliciesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListProtectionPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProtectionPoliciesResponseBody?

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
            var model = ListProtectionPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProtectionPolicyApplicationsRequest : Tea.TeaModel {
    public var applyStatus: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceType: String?

    public var subProtectionPolicyType: String?

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
        if self.applyStatus != nil {
            map["ApplyStatus"] = self.applyStatus!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.subProtectionPolicyType != nil {
            map["SubProtectionPolicyType"] = self.subProtectionPolicyType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplyStatus"] as? String {
            self.applyStatus = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SubProtectionPolicyType"] as? String {
            self.subProtectionPolicyType = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListProtectionPolicyApplicationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var applyDetail: String?

            public var applyStatus: String?

            public var applyTime: Int64?

            public var productType: String?

            public var protectionPolicyId: String?

            public var resourceArn: String?

            public var resourceId: String?

            public var resourceOwnerId: Int64?

            public var resourceType: String?

            public var subProtectionPolicyType: String?

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
                if self.applyDetail != nil {
                    map["ApplyDetail"] = self.applyDetail!
                }
                if self.applyStatus != nil {
                    map["ApplyStatus"] = self.applyStatus!
                }
                if self.applyTime != nil {
                    map["ApplyTime"] = self.applyTime!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.protectionPolicyId != nil {
                    map["ProtectionPolicyId"] = self.protectionPolicyId!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
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
                if self.subProtectionPolicyType != nil {
                    map["SubProtectionPolicyType"] = self.subProtectionPolicyType!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplyDetail"] as? String {
                    self.applyDetail = value
                }
                if let value = dict["ApplyStatus"] as? String {
                    self.applyStatus = value
                }
                if let value = dict["ApplyTime"] as? Int64 {
                    self.applyTime = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ProtectionPolicyId"] as? String {
                    self.protectionPolicyId = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceOwnerId"] as? Int64 {
                    self.resourceOwnerId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["SubProtectionPolicyType"] as? String {
                    self.subProtectionPolicyType = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var content: [ListProtectionPolicyApplicationsResponseBody.Data.Content]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [ListProtectionPolicyApplicationsResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = ListProtectionPolicyApplicationsResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: ListProtectionPolicyApplicationsResponseBody.Data?

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
            var model = ListProtectionPolicyApplicationsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListProtectionPolicyApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProtectionPolicyApplicationsResponseBody?

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
            var model = ListProtectionPolicyApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceCategoriesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceCategoryId: String?

    public override init() {
        super.init()
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
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
    }
}

public class ListResourceCategoriesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class ResourceCount : Tea.TeaModel {
                public var count: Int64?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.resourceType != nil {
                        map["ResourceType"] = self.resourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Count"] as? Int64 {
                        self.count = value
                    }
                    if let value = dict["ResourceType"] as? String {
                        self.resourceType = value
                    }
                }
            }
            public var productType: String?

            public var resourceCategoryId: String?

            public var resourceCategoryName: String?

            public var resourceCategoryType: String?

            public var resourceCount: [ListResourceCategoriesResponseBody.Data.Content.ResourceCount]?

            public var resourceMatcher: String?

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
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.resourceCategoryId != nil {
                    map["ResourceCategoryId"] = self.resourceCategoryId!
                }
                if self.resourceCategoryName != nil {
                    map["ResourceCategoryName"] = self.resourceCategoryName!
                }
                if self.resourceCategoryType != nil {
                    map["ResourceCategoryType"] = self.resourceCategoryType!
                }
                if self.resourceCount != nil {
                    var tmp : [Any] = []
                    for k in self.resourceCount! {
                        tmp.append(k.toMap())
                    }
                    map["ResourceCount"] = tmp
                }
                if self.resourceMatcher != nil {
                    map["ResourceMatcher"] = self.resourceMatcher!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["ResourceCategoryId"] as? String {
                    self.resourceCategoryId = value
                }
                if let value = dict["ResourceCategoryName"] as? String {
                    self.resourceCategoryName = value
                }
                if let value = dict["ResourceCategoryType"] as? String {
                    self.resourceCategoryType = value
                }
                if let value = dict["ResourceCount"] as? [Any?] {
                    var tmp : [ListResourceCategoriesResponseBody.Data.Content.ResourceCount] = []
                    for v in value {
                        if v != nil {
                            var model = ListResourceCategoriesResponseBody.Data.Content.ResourceCount()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceCount = tmp
                }
                if let value = dict["ResourceMatcher"] as? String {
                    self.resourceMatcher = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var content: [ListResourceCategoriesResponseBody.Data.Content]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [ListResourceCategoriesResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceCategoriesResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: ListResourceCategoriesResponseBody.Data?

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
            var model = ListResourceCategoriesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListResourceCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceCategoriesResponseBody?

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
            var model = ListResourceCategoriesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OpenBdrcServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProtectionPolicyRequest : Tea.TeaModel {
    public class SubProtectionPolicies : Tea.TeaModel {
        public var config: String?

        public var subProtectionPolicyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.subProtectionPolicyType != nil {
                map["SubProtectionPolicyType"] = self.subProtectionPolicyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["SubProtectionPolicyType"] as? String {
                self.subProtectionPolicyType = value
            }
        }
    }
    public var boundResourceCategoryIds: [String]?

    public var clientToken: String?

    public var protectionPolicyName: String?

    public var subProtectionPolicies: [UpdateProtectionPolicyRequest.SubProtectionPolicies]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundResourceCategoryIds != nil {
            map["BoundResourceCategoryIds"] = self.boundResourceCategoryIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.protectionPolicyName != nil {
            map["ProtectionPolicyName"] = self.protectionPolicyName!
        }
        if self.subProtectionPolicies != nil {
            var tmp : [Any] = []
            for k in self.subProtectionPolicies! {
                tmp.append(k.toMap())
            }
            map["SubProtectionPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BoundResourceCategoryIds"] as? [String] {
            self.boundResourceCategoryIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ProtectionPolicyName"] as? String {
            self.protectionPolicyName = value
        }
        if let value = dict["SubProtectionPolicies"] as? [Any?] {
            var tmp : [UpdateProtectionPolicyRequest.SubProtectionPolicies] = []
            for v in value {
                if v != nil {
                    var model = UpdateProtectionPolicyRequest.SubProtectionPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subProtectionPolicies = tmp
        }
    }
}

public class UpdateProtectionPolicyShrinkRequest : Tea.TeaModel {
    public var boundResourceCategoryIdsShrink: String?

    public var clientToken: String?

    public var protectionPolicyName: String?

    public var subProtectionPoliciesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundResourceCategoryIdsShrink != nil {
            map["BoundResourceCategoryIds"] = self.boundResourceCategoryIdsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.protectionPolicyName != nil {
            map["ProtectionPolicyName"] = self.protectionPolicyName!
        }
        if self.subProtectionPoliciesShrink != nil {
            map["SubProtectionPolicies"] = self.subProtectionPoliciesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BoundResourceCategoryIds"] as? String {
            self.boundResourceCategoryIdsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ProtectionPolicyName"] as? String {
            self.protectionPolicyName = value
        }
        if let value = dict["SubProtectionPolicies"] as? String {
            self.subProtectionPoliciesShrink = value
        }
    }
}

public class UpdateProtectionPolicyResponseBody : Tea.TeaModel {
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

public class UpdateProtectionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProtectionPolicyResponseBody?

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
            var model = UpdateProtectionPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceCategoryRequest : Tea.TeaModel {
    public var resourceCategoryId: String?

    public var resourceCategoryName: String?

    public var resourceMatcher: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceCategoryId != nil {
            map["ResourceCategoryId"] = self.resourceCategoryId!
        }
        if self.resourceCategoryName != nil {
            map["ResourceCategoryName"] = self.resourceCategoryName!
        }
        if self.resourceMatcher != nil {
            map["ResourceMatcher"] = self.resourceMatcher!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCategoryId"] as? String {
            self.resourceCategoryId = value
        }
        if let value = dict["ResourceCategoryName"] as? String {
            self.resourceCategoryName = value
        }
        if let value = dict["ResourceMatcher"] as? String {
            self.resourceMatcher = value
        }
    }
}

public class UpdateResourceCategoryResponseBody : Tea.TeaModel {
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

public class UpdateResourceCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceCategoryResponseBody?

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
            var model = UpdateResourceCategoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateResourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
