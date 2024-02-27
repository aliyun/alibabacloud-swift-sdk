import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApproveProvisionedProductPlanRequest : Tea.TeaModel {
    public var approvalAction: String?

    public var comment: String?

    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalAction != nil {
            map["ApprovalAction"] = self.approvalAction!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalAction") && dict["ApprovalAction"] != nil {
            self.approvalAction = dict["ApprovalAction"] as! String
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
    }
}

public class ApproveProvisionedProductPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ApproveProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveProvisionedProductPlanResponseBody?

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
            var model = ApproveProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociatePrincipalWithPortfolioRequest : Tea.TeaModel {
    public var portfolioId: String?

    public var principalId: String?

    public var principalType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("PrincipalId") && dict["PrincipalId"] != nil {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
            self.principalType = dict["PrincipalType"] as! String
        }
    }
}

public class AssociatePrincipalWithPortfolioResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AssociatePrincipalWithPortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociatePrincipalWithPortfolioResponseBody?

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
            var model = AssociatePrincipalWithPortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateProductWithPortfolioRequest : Tea.TeaModel {
    public var portfolioId: String?

    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class AssociateProductWithPortfolioResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AssociateProductWithPortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateProductWithPortfolioResponseBody?

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
            var model = AssociateProductWithPortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateTagOptionWithResourceRequest : Tea.TeaModel {
    public var resourceId: String?

    public var tagOptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.tagOptionId != nil {
            map["TagOptionId"] = self.tagOptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
            self.tagOptionId = dict["TagOptionId"] as! String
        }
    }
}

public class AssociateTagOptionWithResourceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AssociateTagOptionWithResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateTagOptionWithResourceResponseBody?

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
            var model = AssociateTagOptionWithResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelProvisionedProductPlanRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
    }
}

public class CancelProvisionedProductPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelProvisionedProductPlanResponseBody?

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
            var model = CancelProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyProductRequest : Tea.TeaModel {
    public var sourceProductArn: String?

    public var targetProductName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceProductArn != nil {
            map["SourceProductArn"] = self.sourceProductArn!
        }
        if self.targetProductName != nil {
            map["TargetProductName"] = self.targetProductName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SourceProductArn") && dict["SourceProductArn"] != nil {
            self.sourceProductArn = dict["SourceProductArn"] as! String
        }
        if dict.keys.contains("TargetProductName") && dict["TargetProductName"] != nil {
            self.targetProductName = dict["TargetProductName"] as! String
        }
    }
}

public class CopyProductResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CopyProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyProductResponseBody?

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
            var model = CopyProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConstraintRequest : Tea.TeaModel {
    public var config: String?

    public var constraintType: String?

    public var description_: String?

    public var portfolioId: String?

    public var productId: String?

    public override init() {
        super.init()
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
        if self.constraintType != nil {
            map["ConstraintType"] = self.constraintType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("ConstraintType") && dict["ConstraintType"] != nil {
            self.constraintType = dict["ConstraintType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class CreateConstraintResponseBody : Tea.TeaModel {
    public var constraintId: String?

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
        if self.constraintId != nil {
            map["ConstraintId"] = self.constraintId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConstraintId") && dict["ConstraintId"] != nil {
            self.constraintId = dict["ConstraintId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateConstraintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConstraintResponseBody?

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
            var model = CreateConstraintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePortfolioRequest : Tea.TeaModel {
    public var description_: String?

    public var portfolioName: String?

    public var providerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.portfolioName != nil {
            map["PortfolioName"] = self.portfolioName!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PortfolioName") && dict["PortfolioName"] != nil {
            self.portfolioName = dict["PortfolioName"] as! String
        }
        if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
            self.providerName = dict["ProviderName"] as! String
        }
    }
}

public class CreatePortfolioResponseBody : Tea.TeaModel {
    public var portfolioId: String?

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
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePortfolioResponseBody?

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
            var model = CreatePortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductRequest : Tea.TeaModel {
    public class ProductVersionParameters : Tea.TeaModel {
        public var active: Bool?

        public var description_: String?

        public var guidance: String?

        public var productVersionName: String?

        public var templateType: String?

        public var templateUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.guidance != nil {
                map["Guidance"] = self.guidance!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.templateUrl != nil {
                map["TemplateUrl"] = self.templateUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Guidance") && dict["Guidance"] != nil {
                self.guidance = dict["Guidance"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
                self.templateUrl = dict["TemplateUrl"] as! String
            }
        }
    }
    public var description_: String?

    public var productName: String?

    public var productType: String?

    public var productVersionParameters: CreateProductRequest.ProductVersionParameters?

    public var providerName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productVersionParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.productVersionParameters != nil {
            map["ProductVersionParameters"] = self.productVersionParameters?.toMap()
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ProductVersionParameters") && dict["ProductVersionParameters"] != nil {
            var model = CreateProductRequest.ProductVersionParameters()
            model.fromMap(dict["ProductVersionParameters"] as! [String: Any])
            self.productVersionParameters = model
        }
        if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
            self.providerName = dict["ProviderName"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateProductShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var productName: String?

    public var productType: String?

    public var productVersionParametersShrink: String?

    public var providerName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.productVersionParametersShrink != nil {
            map["ProductVersionParameters"] = self.productVersionParametersShrink!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ProductVersionParameters") && dict["ProductVersionParameters"] != nil {
            self.productVersionParametersShrink = dict["ProductVersionParameters"] as! String
        }
        if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
            self.providerName = dict["ProviderName"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateProductResponseBody : Tea.TeaModel {
    public var productId: String?

    public var productVersionId: String?

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
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductResponseBody?

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
            var model = CreateProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductVersionRequest : Tea.TeaModel {
    public var active: Bool?

    public var description_: String?

    public var guidance: String?

    public var productId: String?

    public var productVersionName: String?

    public var templateType: String?

    public var templateUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.guidance != nil {
            map["Guidance"] = self.guidance!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionName != nil {
            map["ProductVersionName"] = self.productVersionName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.templateUrl != nil {
            map["TemplateUrl"] = self.templateUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") && dict["Active"] != nil {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Guidance") && dict["Guidance"] != nil {
            self.guidance = dict["Guidance"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
            self.productVersionName = dict["ProductVersionName"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
        if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
            self.templateUrl = dict["TemplateUrl"] as! String
        }
    }
}

public class CreateProductVersionResponseBody : Tea.TeaModel {
    public var productVersionId: String?

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
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductVersionResponseBody?

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
            var model = CreateProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProvisionedProductPlanRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                self.parameterValue = dict["ParameterValue"] as! String
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var description_: String?

    public var operationType: String?

    public var parameters: [CreateProvisionedProductPlanRequest.Parameters]?

    public var planName: String?

    public var planType: String?

    public var portfolioId: String?

    public var productId: String?

    public var productVersionId: String?

    public var provisionedProductName: String?

    public var stackRegionId: String?

    public var tags: [CreateProvisionedProductPlanRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.planType != nil {
            map["PlanType"] = self.planType!
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.provisionedProductName != nil {
            map["ProvisionedProductName"] = self.provisionedProductName!
        }
        if self.stackRegionId != nil {
            map["StackRegionId"] = self.stackRegionId!
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [CreateProvisionedProductPlanRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = CreateProvisionedProductPlanRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("PlanType") && dict["PlanType"] != nil {
            self.planType = dict["PlanType"] as! String
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
            self.provisionedProductName = dict["ProvisionedProductName"] as! String
        }
        if dict.keys.contains("StackRegionId") && dict["StackRegionId"] != nil {
            self.stackRegionId = dict["StackRegionId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [CreateProvisionedProductPlanRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateProvisionedProductPlanRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class CreateProvisionedProductPlanResponseBody : Tea.TeaModel {
    public var planId: String?

    public var provisionedProductId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProvisionedProductPlanResponseBody?

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
            var model = CreateProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTagOptionRequest : Tea.TeaModel {
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
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateTagOptionResponseBody : Tea.TeaModel {
    public class TagOptionDetail : Tea.TeaModel {
        public var active: Bool?

        public var key: String?

        public var owner: String?

        public var tagOptionId: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.tagOptionId != nil {
                map["TagOptionId"] = self.tagOptionId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
                self.tagOptionId = dict["TagOptionId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var requestId: String?

    public var tagOptionDetail: CreateTagOptionResponseBody.TagOptionDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagOptionDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagOptionDetail != nil {
            map["TagOptionDetail"] = self.tagOptionDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagOptionDetail") && dict["TagOptionDetail"] != nil {
            var model = CreateTagOptionResponseBody.TagOptionDetail()
            model.fromMap(dict["TagOptionDetail"] as! [String: Any])
            self.tagOptionDetail = model
        }
    }
}

public class CreateTagOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTagOptionResponseBody?

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
            var model = CreateTagOptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public class TerraformVariables : Tea.TeaModel {
        public var description_: String?

        public var variableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("VariableName") && dict["VariableName"] != nil {
                self.variableName = dict["VariableName"] as! String
            }
        }
    }
    public var templateBody: String?

    public var templateType: String?

    public var terraformVariables: [CreateTemplateRequest.TerraformVariables]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.terraformVariables != nil {
            var tmp : [Any] = []
            for k in self.terraformVariables! {
                tmp.append(k.toMap())
            }
            map["TerraformVariables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateBody") && dict["TemplateBody"] != nil {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
        if dict.keys.contains("TerraformVariables") && dict["TerraformVariables"] != nil {
            var tmp : [CreateTemplateRequest.TerraformVariables] = []
            for v in dict["TerraformVariables"] as! [Any] {
                var model = CreateTemplateRequest.TerraformVariables()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.terraformVariables = tmp
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateUrl: String?

    public override init() {
        super.init()
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
        if self.templateUrl != nil {
            map["TemplateUrl"] = self.templateUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
            self.templateUrl = dict["TemplateUrl"] as! String
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

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
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConstraintRequest : Tea.TeaModel {
    public var constraintId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.constraintId != nil {
            map["ConstraintId"] = self.constraintId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConstraintId") && dict["ConstraintId"] != nil {
            self.constraintId = dict["ConstraintId"] as! String
        }
    }
}

public class DeleteConstraintResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteConstraintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConstraintResponseBody?

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
            var model = DeleteConstraintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePortfolioRequest : Tea.TeaModel {
    public var portfolioId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
    }
}

public class DeletePortfolioResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePortfolioResponseBody?

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
            var model = DeletePortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class DeleteProductResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductResponseBody?

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
            var model = DeleteProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductVersionRequest : Tea.TeaModel {
    public var productVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
    }
}

public class DeleteProductVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductVersionResponseBody?

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
            var model = DeleteProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProvisionedProductPlanRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
    }
}

public class DeleteProvisionedProductPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProvisionedProductPlanResponseBody?

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
            var model = DeleteProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTagOptionRequest : Tea.TeaModel {
    public var tagOptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagOptionId != nil {
            map["TagOptionId"] = self.tagOptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
            self.tagOptionId = dict["TagOptionId"] as! String
        }
    }
}

public class DeleteTagOptionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTagOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTagOptionResponseBody?

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
            var model = DeleteTagOptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisAssociateTagOptionFromResourceRequest : Tea.TeaModel {
    public var resourceId: String?

    public var tagOptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.tagOptionId != nil {
            map["TagOptionId"] = self.tagOptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
            self.tagOptionId = dict["TagOptionId"] as! String
        }
    }
}

public class DisAssociateTagOptionFromResourceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisAssociateTagOptionFromResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisAssociateTagOptionFromResourceResponseBody?

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
            var model = DisAssociateTagOptionFromResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociatePrincipalFromPortfolioRequest : Tea.TeaModel {
    public var portfolioId: String?

    public var principalId: String?

    public var principalType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("PrincipalId") && dict["PrincipalId"] != nil {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
            self.principalType = dict["PrincipalType"] as! String
        }
    }
}

public class DisassociatePrincipalFromPortfolioResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisassociatePrincipalFromPortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociatePrincipalFromPortfolioResponseBody?

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
            var model = DisassociatePrincipalFromPortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociateProductFromPortfolioRequest : Tea.TeaModel {
    public var portfolioId: String?

    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class DisassociateProductFromPortfolioResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisassociateProductFromPortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateProductFromPortfolioResponseBody?

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
            var model = DisassociateProductFromPortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteProvisionedProductPlanRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
    }
}

public class ExecuteProvisionedProductPlanResponseBody : Tea.TeaModel {
    public var planId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExecuteProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteProvisionedProductPlanResponseBody?

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
            var model = ExecuteProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConstraintRequest : Tea.TeaModel {
    public var constraintId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.constraintId != nil {
            map["ConstraintId"] = self.constraintId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConstraintId") && dict["ConstraintId"] != nil {
            self.constraintId = dict["ConstraintId"] as! String
        }
    }
}

public class GetConstraintResponseBody : Tea.TeaModel {
    public class ConstraintDetail : Tea.TeaModel {
        public var config: String?

        public var constraintId: String?

        public var constraintType: String?

        public var createTime: String?

        public var description_: String?

        public var portfolioId: String?

        public var productId: String?

        public var productName: String?

        public override init() {
            super.init()
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
            if self.constraintId != nil {
                map["ConstraintId"] = self.constraintId!
            }
            if self.constraintType != nil {
                map["ConstraintType"] = self.constraintType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("ConstraintId") && dict["ConstraintId"] != nil {
                self.constraintId = dict["ConstraintId"] as! String
            }
            if dict.keys.contains("ConstraintType") && dict["ConstraintType"] != nil {
                self.constraintType = dict["ConstraintType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
        }
    }
    public var constraintDetail: GetConstraintResponseBody.ConstraintDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constraintDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.constraintDetail != nil {
            map["ConstraintDetail"] = self.constraintDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConstraintDetail") && dict["ConstraintDetail"] != nil {
            var model = GetConstraintResponseBody.ConstraintDetail()
            model.fromMap(dict["ConstraintDetail"] as! [String: Any])
            self.constraintDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConstraintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConstraintResponseBody?

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
            var model = GetConstraintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPortfolioRequest : Tea.TeaModel {
    public var portfolioId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
    }
}

public class GetPortfolioResponseBody : Tea.TeaModel {
    public class PortfolioDetail : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var portfolioArn: String?

        public var portfolioId: String?

        public var portfolioName: String?

        public var providerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.portfolioArn != nil {
                map["PortfolioArn"] = self.portfolioArn!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.portfolioName != nil {
                map["PortfolioName"] = self.portfolioName!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("PortfolioArn") && dict["PortfolioArn"] != nil {
                self.portfolioArn = dict["PortfolioArn"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("PortfolioName") && dict["PortfolioName"] != nil {
                self.portfolioName = dict["PortfolioName"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
        }
    }
    public class TagOptions : Tea.TeaModel {
        public var active: Bool?

        public var key: String?

        public var owner: String?

        public var tagOptionId: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.tagOptionId != nil {
                map["TagOptionId"] = self.tagOptionId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
                self.tagOptionId = dict["TagOptionId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var portfolioDetail: GetPortfolioResponseBody.PortfolioDetail?

    public var requestId: String?

    public var tagOptions: [GetPortfolioResponseBody.TagOptions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.portfolioDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioDetail != nil {
            map["PortfolioDetail"] = self.portfolioDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagOptions != nil {
            var tmp : [Any] = []
            for k in self.tagOptions! {
                tmp.append(k.toMap())
            }
            map["TagOptions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioDetail") && dict["PortfolioDetail"] != nil {
            var model = GetPortfolioResponseBody.PortfolioDetail()
            model.fromMap(dict["PortfolioDetail"] as! [String: Any])
            self.portfolioDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagOptions") && dict["TagOptions"] != nil {
            var tmp : [GetPortfolioResponseBody.TagOptions] = []
            for v in dict["TagOptions"] as! [Any] {
                var model = GetPortfolioResponseBody.TagOptions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagOptions = tmp
        }
    }
}

public class GetPortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPortfolioResponseBody?

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
            var model = GetPortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductAsAdminRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class GetProductAsAdminResponseBody : Tea.TeaModel {
    public class ProductDetail : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var productArn: String?

        public var productId: String?

        public var productName: String?

        public var productType: String?

        public var providerName: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.productArn != nil {
                map["ProductArn"] = self.productArn!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ProductArn") && dict["ProductArn"] != nil {
                self.productArn = dict["ProductArn"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public class TagOptions : Tea.TeaModel {
        public var active: Bool?

        public var key: String?

        public var owner: String?

        public var tagOptionId: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.tagOptionId != nil {
                map["TagOptionId"] = self.tagOptionId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
                self.tagOptionId = dict["TagOptionId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var productDetail: GetProductAsAdminResponseBody.ProductDetail?

    public var requestId: String?

    public var tagOptions: [GetProductAsAdminResponseBody.TagOptions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productDetail != nil {
            map["ProductDetail"] = self.productDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagOptions != nil {
            var tmp : [Any] = []
            for k in self.tagOptions! {
                tmp.append(k.toMap())
            }
            map["TagOptions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductDetail") && dict["ProductDetail"] != nil {
            var model = GetProductAsAdminResponseBody.ProductDetail()
            model.fromMap(dict["ProductDetail"] as! [String: Any])
            self.productDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagOptions") && dict["TagOptions"] != nil {
            var tmp : [GetProductAsAdminResponseBody.TagOptions] = []
            for v in dict["TagOptions"] as! [Any] {
                var model = GetProductAsAdminResponseBody.TagOptions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagOptions = tmp
        }
    }
}

public class GetProductAsAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductAsAdminResponseBody?

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
            var model = GetProductAsAdminResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductAsEndUserRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class GetProductAsEndUserResponseBody : Tea.TeaModel {
    public class ProductSummary : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var hasDefaultLaunchOption: Bool?

        public var productArn: String?

        public var productId: String?

        public var productName: String?

        public var productType: String?

        public var providerName: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasDefaultLaunchOption != nil {
                map["HasDefaultLaunchOption"] = self.hasDefaultLaunchOption!
            }
            if self.productArn != nil {
                map["ProductArn"] = self.productArn!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HasDefaultLaunchOption") && dict["HasDefaultLaunchOption"] != nil {
                self.hasDefaultLaunchOption = dict["HasDefaultLaunchOption"] as! Bool
            }
            if dict.keys.contains("ProductArn") && dict["ProductArn"] != nil {
                self.productArn = dict["ProductArn"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var productSummary: GetProductAsEndUserResponseBody.ProductSummary?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productSummary != nil {
            map["ProductSummary"] = self.productSummary?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductSummary") && dict["ProductSummary"] != nil {
            var model = GetProductAsEndUserResponseBody.ProductSummary()
            model.fromMap(dict["ProductSummary"] as! [String: Any])
            self.productSummary = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetProductAsEndUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductAsEndUserResponseBody?

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
            var model = GetProductAsEndUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductVersionRequest : Tea.TeaModel {
    public var productVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
    }
}

public class GetProductVersionResponseBody : Tea.TeaModel {
    public class ProductVersionDetail : Tea.TeaModel {
        public var active: Bool?

        public var createTime: String?

        public var description_: String?

        public var guidance: String?

        public var productId: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var templateType: String?

        public var templateUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.guidance != nil {
                map["Guidance"] = self.guidance!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.templateUrl != nil {
                map["TemplateUrl"] = self.templateUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Guidance") && dict["Guidance"] != nil {
                self.guidance = dict["Guidance"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
                self.templateUrl = dict["TemplateUrl"] as! String
            }
        }
    }
    public var productVersionDetail: GetProductVersionResponseBody.ProductVersionDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productVersionDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productVersionDetail != nil {
            map["ProductVersionDetail"] = self.productVersionDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductVersionDetail") && dict["ProductVersionDetail"] != nil {
            var model = GetProductVersionResponseBody.ProductVersionDetail()
            model.fromMap(dict["ProductVersionDetail"] as! [String: Any])
            self.productVersionDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductVersionResponseBody?

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
            var model = GetProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProvisionedProductRequest : Tea.TeaModel {
    public var provisionedProductId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
    }
}

public class GetProvisionedProductResponseBody : Tea.TeaModel {
    public class ProvisionedProductDetail : Tea.TeaModel {
        public var createTime: String?

        public var lastProvisioningTaskId: String?

        public var lastSuccessfulProvisioningTaskId: String?

        public var lastTaskId: String?

        public var ownerPrincipalId: String?

        public var ownerPrincipalType: String?

        public var portfolioId: String?

        public var productId: String?

        public var productName: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var provisionedProductArn: String?

        public var provisionedProductId: String?

        public var provisionedProductName: String?

        public var provisionedProductType: String?

        public var stackId: String?

        public var stackRegionId: String?

        public var status: String?

        public var statusMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.lastProvisioningTaskId != nil {
                map["LastProvisioningTaskId"] = self.lastProvisioningTaskId!
            }
            if self.lastSuccessfulProvisioningTaskId != nil {
                map["LastSuccessfulProvisioningTaskId"] = self.lastSuccessfulProvisioningTaskId!
            }
            if self.lastTaskId != nil {
                map["LastTaskId"] = self.lastTaskId!
            }
            if self.ownerPrincipalId != nil {
                map["OwnerPrincipalId"] = self.ownerPrincipalId!
            }
            if self.ownerPrincipalType != nil {
                map["OwnerPrincipalType"] = self.ownerPrincipalType!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.provisionedProductArn != nil {
                map["ProvisionedProductArn"] = self.provisionedProductArn!
            }
            if self.provisionedProductId != nil {
                map["ProvisionedProductId"] = self.provisionedProductId!
            }
            if self.provisionedProductName != nil {
                map["ProvisionedProductName"] = self.provisionedProductName!
            }
            if self.provisionedProductType != nil {
                map["ProvisionedProductType"] = self.provisionedProductType!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackRegionId != nil {
                map["StackRegionId"] = self.stackRegionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("LastProvisioningTaskId") && dict["LastProvisioningTaskId"] != nil {
                self.lastProvisioningTaskId = dict["LastProvisioningTaskId"] as! String
            }
            if dict.keys.contains("LastSuccessfulProvisioningTaskId") && dict["LastSuccessfulProvisioningTaskId"] != nil {
                self.lastSuccessfulProvisioningTaskId = dict["LastSuccessfulProvisioningTaskId"] as! String
            }
            if dict.keys.contains("LastTaskId") && dict["LastTaskId"] != nil {
                self.lastTaskId = dict["LastTaskId"] as! String
            }
            if dict.keys.contains("OwnerPrincipalId") && dict["OwnerPrincipalId"] != nil {
                self.ownerPrincipalId = dict["OwnerPrincipalId"] as! String
            }
            if dict.keys.contains("OwnerPrincipalType") && dict["OwnerPrincipalType"] != nil {
                self.ownerPrincipalType = dict["OwnerPrincipalType"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("ProvisionedProductArn") && dict["ProvisionedProductArn"] != nil {
                self.provisionedProductArn = dict["ProvisionedProductArn"] as! String
            }
            if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
                self.provisionedProductId = dict["ProvisionedProductId"] as! String
            }
            if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
                self.provisionedProductName = dict["ProvisionedProductName"] as! String
            }
            if dict.keys.contains("ProvisionedProductType") && dict["ProvisionedProductType"] != nil {
                self.provisionedProductType = dict["ProvisionedProductType"] as! String
            }
            if dict.keys.contains("StackId") && dict["StackId"] != nil {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackRegionId") && dict["StackRegionId"] != nil {
                self.stackRegionId = dict["StackRegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
        }
    }
    public var provisionedProductDetail: GetProvisionedProductResponseBody.ProvisionedProductDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.provisionedProductDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.provisionedProductDetail != nil {
            map["ProvisionedProductDetail"] = self.provisionedProductDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProvisionedProductDetail") && dict["ProvisionedProductDetail"] != nil {
            var model = GetProvisionedProductResponseBody.ProvisionedProductDetail()
            model.fromMap(dict["ProvisionedProductDetail"] as! [String: Any])
            self.provisionedProductDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetProvisionedProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProvisionedProductResponseBody?

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
            var model = GetProvisionedProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProvisionedProductPlanRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
    }
}

public class GetProvisionedProductPlanResponseBody : Tea.TeaModel {
    public class PlanDetail : Tea.TeaModel {
        public class ApprovalDetail : Tea.TeaModel {
            public class OperationRecords : Tea.TeaModel {
                public class Operator_ : Tea.TeaModel {
                    public var principalId: String?

                    public var principalName: String?

                    public var principalType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.principalId != nil {
                            map["PrincipalId"] = self.principalId!
                        }
                        if self.principalName != nil {
                            map["PrincipalName"] = self.principalName!
                        }
                        if self.principalType != nil {
                            map["PrincipalType"] = self.principalType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PrincipalId") && dict["PrincipalId"] != nil {
                            self.principalId = dict["PrincipalId"] as! String
                        }
                        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                            self.principalName = dict["PrincipalName"] as! String
                        }
                        if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
                            self.principalType = dict["PrincipalType"] as! String
                        }
                    }
                }
                public var approvalAction: String?

                public var comment: String?

                public var createTime: String?

                public var operator_: GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.OperationRecords.Operator_?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.operator_?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.approvalAction != nil {
                        map["ApprovalAction"] = self.approvalAction!
                    }
                    if self.comment != nil {
                        map["Comment"] = self.comment!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApprovalAction") && dict["ApprovalAction"] != nil {
                        self.approvalAction = dict["ApprovalAction"] as! String
                    }
                    if dict.keys.contains("Comment") && dict["Comment"] != nil {
                        self.comment = dict["Comment"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Operator") && dict["Operator"] != nil {
                        var model = GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.OperationRecords.Operator_()
                        model.fromMap(dict["Operator"] as! [String: Any])
                        self.operator_ = model
                    }
                }
            }
            public class TodoTaskActivities : Tea.TeaModel {
                public class Tasks : Tea.TeaModel {
                    public class Operator_ : Tea.TeaModel {
                        public var principalName: String?

                        public var principalType: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.principalName != nil {
                                map["PrincipalName"] = self.principalName!
                            }
                            if self.principalType != nil {
                                map["PrincipalType"] = self.principalType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                                self.principalName = dict["PrincipalName"] as! String
                            }
                            if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
                                self.principalType = dict["PrincipalType"] as! String
                            }
                        }
                    }
                    public var operator_: GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities.Tasks.Operator_?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.operator_?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Operator") && dict["Operator"] != nil {
                            var model = GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities.Tasks.Operator_()
                            model.fromMap(dict["Operator"] as! [String: Any])
                            self.operator_ = model
                        }
                    }
                }
                public var activityName: String?

                public var tasks: [GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities.Tasks]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.activityName != nil {
                        map["ActivityName"] = self.activityName!
                    }
                    if self.tasks != nil {
                        var tmp : [Any] = []
                        for k in self.tasks! {
                            tmp.append(k.toMap())
                        }
                        map["Tasks"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ActivityName") && dict["ActivityName"] != nil {
                        self.activityName = dict["ActivityName"] as! String
                    }
                    if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
                        var tmp : [GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities.Tasks] = []
                        for v in dict["Tasks"] as! [Any] {
                            var model = GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities.Tasks()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tasks = tmp
                    }
                }
            }
            public var operationRecords: [GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.OperationRecords]?

            public var todoTaskActivities: [GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operationRecords != nil {
                    var tmp : [Any] = []
                    for k in self.operationRecords! {
                        tmp.append(k.toMap())
                    }
                    map["OperationRecords"] = tmp
                }
                if self.todoTaskActivities != nil {
                    var tmp : [Any] = []
                    for k in self.todoTaskActivities! {
                        tmp.append(k.toMap())
                    }
                    map["TodoTaskActivities"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OperationRecords") && dict["OperationRecords"] != nil {
                    var tmp : [GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.OperationRecords] = []
                    for v in dict["OperationRecords"] as! [Any] {
                        var model = GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.OperationRecords()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.operationRecords = tmp
                }
                if dict.keys.contains("TodoTaskActivities") && dict["TodoTaskActivities"] != nil {
                    var tmp : [GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities] = []
                    for v in dict["TodoTaskActivities"] as! [Any] {
                        var model = GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail.TodoTaskActivities()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.todoTaskActivities = tmp
                }
            }
        }
        public class AssignedApprovers : Tea.TeaModel {
            public var principalName: String?

            public var principalType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.principalName != nil {
                    map["PrincipalName"] = self.principalName!
                }
                if self.principalType != nil {
                    map["PrincipalType"] = self.principalType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                    self.principalName = dict["PrincipalName"] as! String
                }
                if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
                    self.principalType = dict["PrincipalType"] as! String
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                    self.parameterValue = dict["ParameterValue"] as! String
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
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var approvalDetail: GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail?

        public var assignedApprovers: [GetProvisionedProductPlanResponseBody.PlanDetail.AssignedApprovers]?

        public var createTime: String?

        public var description_: String?

        public var operationType: String?

        public var ownerPrincipalId: String?

        public var ownerPrincipalName: String?

        public var ownerPrincipalType: String?

        public var parameters: [GetProvisionedProductPlanResponseBody.PlanDetail.Parameters]?

        public var planId: String?

        public var planName: String?

        public var planType: String?

        public var portfolioId: String?

        public var productId: String?

        public var productVersionId: String?

        public var provisionedProductId: String?

        public var provisionedProductName: String?

        public var stackId: String?

        public var stackRegionId: String?

        public var status: String?

        public var statusMessage: String?

        public var tags: [GetProvisionedProductPlanResponseBody.PlanDetail.Tags]?

        public var uid: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approvalDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalDetail != nil {
                map["ApprovalDetail"] = self.approvalDetail?.toMap()
            }
            if self.assignedApprovers != nil {
                var tmp : [Any] = []
                for k in self.assignedApprovers! {
                    tmp.append(k.toMap())
                }
                map["AssignedApprovers"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ownerPrincipalId != nil {
                map["OwnerPrincipalId"] = self.ownerPrincipalId!
            }
            if self.ownerPrincipalName != nil {
                map["OwnerPrincipalName"] = self.ownerPrincipalName!
            }
            if self.ownerPrincipalType != nil {
                map["OwnerPrincipalType"] = self.ownerPrincipalType!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.provisionedProductId != nil {
                map["ProvisionedProductId"] = self.provisionedProductId!
            }
            if self.provisionedProductName != nil {
                map["ProvisionedProductName"] = self.provisionedProductName!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackRegionId != nil {
                map["StackRegionId"] = self.stackRegionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalDetail") && dict["ApprovalDetail"] != nil {
                var model = GetProvisionedProductPlanResponseBody.PlanDetail.ApprovalDetail()
                model.fromMap(dict["ApprovalDetail"] as! [String: Any])
                self.approvalDetail = model
            }
            if dict.keys.contains("AssignedApprovers") && dict["AssignedApprovers"] != nil {
                var tmp : [GetProvisionedProductPlanResponseBody.PlanDetail.AssignedApprovers] = []
                for v in dict["AssignedApprovers"] as! [Any] {
                    var model = GetProvisionedProductPlanResponseBody.PlanDetail.AssignedApprovers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.assignedApprovers = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("OwnerPrincipalId") && dict["OwnerPrincipalId"] != nil {
                self.ownerPrincipalId = dict["OwnerPrincipalId"] as! String
            }
            if dict.keys.contains("OwnerPrincipalName") && dict["OwnerPrincipalName"] != nil {
                self.ownerPrincipalName = dict["OwnerPrincipalName"] as! String
            }
            if dict.keys.contains("OwnerPrincipalType") && dict["OwnerPrincipalType"] != nil {
                self.ownerPrincipalType = dict["OwnerPrincipalType"] as! String
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                var tmp : [GetProvisionedProductPlanResponseBody.PlanDetail.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = GetProvisionedProductPlanResponseBody.PlanDetail.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("PlanType") && dict["PlanType"] != nil {
                self.planType = dict["PlanType"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
                self.provisionedProductId = dict["ProvisionedProductId"] as! String
            }
            if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
                self.provisionedProductName = dict["ProvisionedProductName"] as! String
            }
            if dict.keys.contains("StackId") && dict["StackId"] != nil {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackRegionId") && dict["StackRegionId"] != nil {
                self.stackRegionId = dict["StackRegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [GetProvisionedProductPlanResponseBody.PlanDetail.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetProvisionedProductPlanResponseBody.PlanDetail.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public class ProductDetail : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var productArn: String?

        public var productId: String?

        public var productName: String?

        public var productType: String?

        public var providerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.productArn != nil {
                map["ProductArn"] = self.productArn!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ProductArn") && dict["ProductArn"] != nil {
                self.productArn = dict["ProductArn"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
        }
    }
    public class ProductVersionDetail : Tea.TeaModel {
        public var active: Bool?

        public var createTime: String?

        public var description_: String?

        public var guidance: String?

        public var productId: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var templateType: String?

        public var templateUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.guidance != nil {
                map["Guidance"] = self.guidance!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.templateUrl != nil {
                map["TemplateUrl"] = self.templateUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Guidance") && dict["Guidance"] != nil {
                self.guidance = dict["Guidance"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
                self.templateUrl = dict["TemplateUrl"] as! String
            }
        }
    }
    public class ResourceChanges : Tea.TeaModel {
        public var action: String?

        public var logicalResourceId: String?

        public var physicalResourceId: String?

        public var replacement: String?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.physicalResourceId != nil {
                map["PhysicalResourceId"] = self.physicalResourceId!
            }
            if self.replacement != nil {
                map["Replacement"] = self.replacement!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") && dict["Action"] != nil {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("LogicalResourceId") && dict["LogicalResourceId"] != nil {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("PhysicalResourceId") && dict["PhysicalResourceId"] != nil {
                self.physicalResourceId = dict["PhysicalResourceId"] as! String
            }
            if dict.keys.contains("Replacement") && dict["Replacement"] != nil {
                self.replacement = dict["Replacement"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var planDetail: GetProvisionedProductPlanResponseBody.PlanDetail?

    public var productDetail: GetProvisionedProductPlanResponseBody.ProductDetail?

    public var productVersionDetail: GetProvisionedProductPlanResponseBody.ProductVersionDetail?

    public var requestId: String?

    public var resourceChanges: [GetProvisionedProductPlanResponseBody.ResourceChanges]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.planDetail?.validate()
        try self.productDetail?.validate()
        try self.productVersionDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planDetail != nil {
            map["PlanDetail"] = self.planDetail?.toMap()
        }
        if self.productDetail != nil {
            map["ProductDetail"] = self.productDetail?.toMap()
        }
        if self.productVersionDetail != nil {
            map["ProductVersionDetail"] = self.productVersionDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceChanges != nil {
            var tmp : [Any] = []
            for k in self.resourceChanges! {
                tmp.append(k.toMap())
            }
            map["ResourceChanges"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanDetail") && dict["PlanDetail"] != nil {
            var model = GetProvisionedProductPlanResponseBody.PlanDetail()
            model.fromMap(dict["PlanDetail"] as! [String: Any])
            self.planDetail = model
        }
        if dict.keys.contains("ProductDetail") && dict["ProductDetail"] != nil {
            var model = GetProvisionedProductPlanResponseBody.ProductDetail()
            model.fromMap(dict["ProductDetail"] as! [String: Any])
            self.productDetail = model
        }
        if dict.keys.contains("ProductVersionDetail") && dict["ProductVersionDetail"] != nil {
            var model = GetProvisionedProductPlanResponseBody.ProductVersionDetail()
            model.fromMap(dict["ProductVersionDetail"] as! [String: Any])
            self.productVersionDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceChanges") && dict["ResourceChanges"] != nil {
            var tmp : [GetProvisionedProductPlanResponseBody.ResourceChanges] = []
            for v in dict["ResourceChanges"] as! [Any] {
                var model = GetProvisionedProductPlanResponseBody.ResourceChanges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceChanges = tmp
        }
    }
}

public class GetProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProvisionedProductPlanResponseBody?

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
            var model = GetProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTagOptionRequest : Tea.TeaModel {
    public var tagOptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagOptionId != nil {
            map["TagOptionId"] = self.tagOptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
            self.tagOptionId = dict["TagOptionId"] as! String
        }
    }
}

public class GetTagOptionResponseBody : Tea.TeaModel {
    public class TagOptionDetail : Tea.TeaModel {
        public var active: Bool?

        public var key: String?

        public var owner: String?

        public var tagOptionId: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.tagOptionId != nil {
                map["TagOptionId"] = self.tagOptionId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
                self.tagOptionId = dict["TagOptionId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var requestId: String?

    public var tagOptionDetail: GetTagOptionResponseBody.TagOptionDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagOptionDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagOptionDetail != nil {
            map["TagOptionDetail"] = self.tagOptionDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagOptionDetail") && dict["TagOptionDetail"] != nil {
            var model = GetTagOptionResponseBody.TagOptionDetail()
            model.fromMap(dict["TagOptionDetail"] as! [String: Any])
            self.tagOptionDetail = model
        }
    }
}

public class GetTagOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTagOptionResponseBody?

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
            var model = GetTagOptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskRequest : Tea.TeaModel {
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
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class TaskDetail : Tea.TeaModel {
        public class Log : Tea.TeaModel {
            public class TerraformLogs : Tea.TeaModel {
                public var command: String?

                public var content: String?

                public var stream: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.stream != nil {
                        map["Stream"] = self.stream!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") && dict["Command"] != nil {
                        self.command = dict["Command"] as! String
                    }
                    if dict.keys.contains("Content") && dict["Content"] != nil {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Stream") && dict["Stream"] != nil {
                        self.stream = dict["Stream"] as! String
                    }
                }
            }
            public var terraformLogs: [GetTaskResponseBody.TaskDetail.Log.TerraformLogs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.terraformLogs != nil {
                    var tmp : [Any] = []
                    for k in self.terraformLogs! {
                        tmp.append(k.toMap())
                    }
                    map["TerraformLogs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TerraformLogs") && dict["TerraformLogs"] != nil {
                    var tmp : [GetTaskResponseBody.TaskDetail.Log.TerraformLogs] = []
                    for v in dict["TerraformLogs"] as! [Any] {
                        var model = GetTaskResponseBody.TaskDetail.Log.TerraformLogs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.terraformLogs = tmp
                }
            }
        }
        public class Outputs : Tea.TeaModel {
            public var description_: String?

            public var outputKey: String?

            public var outputValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.outputKey != nil {
                    map["OutputKey"] = self.outputKey!
                }
                if self.outputValue != nil {
                    map["OutputValue"] = self.outputValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("OutputKey") && dict["OutputKey"] != nil {
                    self.outputKey = dict["OutputKey"] as! String
                }
                if dict.keys.contains("OutputValue") && dict["OutputValue"] != nil {
                    self.outputValue = dict["OutputValue"] as! String
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public class TaskTags : Tea.TeaModel {
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
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var createTime: String?

        public var log: GetTaskResponseBody.TaskDetail.Log?

        public var outputs: [GetTaskResponseBody.TaskDetail.Outputs]?

        public var parameters: [GetTaskResponseBody.TaskDetail.Parameters]?

        public var portfolioId: String?

        public var productId: String?

        public var productName: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var provisionedProductId: String?

        public var provisionedProductName: String?

        public var status: String?

        public var statusMessage: String?

        public var taskId: String?

        public var taskTags: [GetTaskResponseBody.TaskDetail.TaskTags]?

        public var taskType: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.log?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.log != nil {
                map["Log"] = self.log?.toMap()
            }
            if self.outputs != nil {
                var tmp : [Any] = []
                for k in self.outputs! {
                    tmp.append(k.toMap())
                }
                map["Outputs"] = tmp
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.provisionedProductId != nil {
                map["ProvisionedProductId"] = self.provisionedProductId!
            }
            if self.provisionedProductName != nil {
                map["ProvisionedProductName"] = self.provisionedProductName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskTags != nil {
                var tmp : [Any] = []
                for k in self.taskTags! {
                    tmp.append(k.toMap())
                }
                map["TaskTags"] = tmp
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Log") && dict["Log"] != nil {
                var model = GetTaskResponseBody.TaskDetail.Log()
                model.fromMap(dict["Log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                var tmp : [GetTaskResponseBody.TaskDetail.Outputs] = []
                for v in dict["Outputs"] as! [Any] {
                    var model = GetTaskResponseBody.TaskDetail.Outputs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outputs = tmp
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                var tmp : [GetTaskResponseBody.TaskDetail.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = GetTaskResponseBody.TaskDetail.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
                self.provisionedProductId = dict["ProvisionedProductId"] as! String
            }
            if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
                self.provisionedProductName = dict["ProvisionedProductName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskTags") && dict["TaskTags"] != nil {
                var tmp : [GetTaskResponseBody.TaskDetail.TaskTags] = []
                for v in dict["TaskTags"] as! [Any] {
                    var model = GetTaskResponseBody.TaskDetail.TaskTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskTags = tmp
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var taskDetail: GetTaskResponseBody.TaskDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskDetail != nil {
            map["TaskDetail"] = self.taskDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskDetail") && dict["TaskDetail"] != nil {
            var model = GetTaskResponseBody.TaskDetail()
            model.fromMap(dict["TaskDetail"] as! [String: Any])
            self.taskDetail = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var productId: String?

    public var productVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateBody: String?

    public override init() {
        super.init()
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
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateBody") && dict["TemplateBody"] != nil {
            self.templateBody = dict["TemplateBody"] as! String
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

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
            var model = GetTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LaunchProductRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                self.parameterValue = dict["ParameterValue"] as! String
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var parameters: [LaunchProductRequest.Parameters]?

    public var portfolioId: String?

    public var productId: String?

    public var productVersionId: String?

    public var provisionedProductName: String?

    public var stackRegionId: String?

    public var tags: [LaunchProductRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.provisionedProductName != nil {
            map["ProvisionedProductName"] = self.provisionedProductName!
        }
        if self.stackRegionId != nil {
            map["StackRegionId"] = self.stackRegionId!
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
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [LaunchProductRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = LaunchProductRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
            self.provisionedProductName = dict["ProvisionedProductName"] as! String
        }
        if dict.keys.contains("StackRegionId") && dict["StackRegionId"] != nil {
            self.stackRegionId = dict["StackRegionId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [LaunchProductRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = LaunchProductRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class LaunchProductResponseBody : Tea.TeaModel {
    public var provisionedProductId: String?

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
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LaunchProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LaunchProductResponseBody?

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
            var model = LaunchProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLaunchOptionsRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class ListLaunchOptionsResponseBody : Tea.TeaModel {
    public class LaunchOptionSummaries : Tea.TeaModel {
        public class ConstraintSummaries : Tea.TeaModel {
            public var constraintType: String?

            public var description_: String?

            public var operationTypes: [String]?

            public var stackRegions: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constraintType != nil {
                    map["ConstraintType"] = self.constraintType!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.operationTypes != nil {
                    map["OperationTypes"] = self.operationTypes!
                }
                if self.stackRegions != nil {
                    map["StackRegions"] = self.stackRegions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstraintType") && dict["ConstraintType"] != nil {
                    self.constraintType = dict["ConstraintType"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("OperationTypes") && dict["OperationTypes"] != nil {
                    self.operationTypes = dict["OperationTypes"] as! [String]
                }
                if dict.keys.contains("StackRegions") && dict["StackRegions"] != nil {
                    self.stackRegions = dict["StackRegions"] as! [String]
                }
            }
        }
        public var constraintSummaries: [ListLaunchOptionsResponseBody.LaunchOptionSummaries.ConstraintSummaries]?

        public var portfolioId: String?

        public var portfolioName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraintSummaries != nil {
                var tmp : [Any] = []
                for k in self.constraintSummaries! {
                    tmp.append(k.toMap())
                }
                map["ConstraintSummaries"] = tmp
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.portfolioName != nil {
                map["PortfolioName"] = self.portfolioName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstraintSummaries") && dict["ConstraintSummaries"] != nil {
                var tmp : [ListLaunchOptionsResponseBody.LaunchOptionSummaries.ConstraintSummaries] = []
                for v in dict["ConstraintSummaries"] as! [Any] {
                    var model = ListLaunchOptionsResponseBody.LaunchOptionSummaries.ConstraintSummaries()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constraintSummaries = tmp
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("PortfolioName") && dict["PortfolioName"] != nil {
                self.portfolioName = dict["PortfolioName"] as! String
            }
        }
    }
    public var launchOptionSummaries: [ListLaunchOptionsResponseBody.LaunchOptionSummaries]?

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
        if self.launchOptionSummaries != nil {
            var tmp : [Any] = []
            for k in self.launchOptionSummaries! {
                tmp.append(k.toMap())
            }
            map["LaunchOptionSummaries"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LaunchOptionSummaries") && dict["LaunchOptionSummaries"] != nil {
            var tmp : [ListLaunchOptionsResponseBody.LaunchOptionSummaries] = []
            for v in dict["LaunchOptionSummaries"] as! [Any] {
                var model = ListLaunchOptionsResponseBody.LaunchOptionSummaries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.launchOptionSummaries = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListLaunchOptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLaunchOptionsResponseBody?

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
            var model = ListLaunchOptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPortfoliosRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var filters: [ListPortfoliosRequest.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productId: String?

    public var scope: String?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [ListPortfoliosRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListPortfoliosRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListPortfoliosResponseBody : Tea.TeaModel {
    public class PortfolioDetails : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var portfolioArn: String?

        public var portfolioId: String?

        public var portfolioName: String?

        public var providerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.portfolioArn != nil {
                map["PortfolioArn"] = self.portfolioArn!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.portfolioName != nil {
                map["PortfolioName"] = self.portfolioName!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("PortfolioArn") && dict["PortfolioArn"] != nil {
                self.portfolioArn = dict["PortfolioArn"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("PortfolioName") && dict["PortfolioName"] != nil {
                self.portfolioName = dict["PortfolioName"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var portfolioDetails: [ListPortfoliosResponseBody.PortfolioDetails]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.portfolioDetails != nil {
            var tmp : [Any] = []
            for k in self.portfolioDetails! {
                tmp.append(k.toMap())
            }
            map["PortfolioDetails"] = tmp
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PortfolioDetails") && dict["PortfolioDetails"] != nil {
            var tmp : [ListPortfoliosResponseBody.PortfolioDetails] = []
            for v in dict["PortfolioDetails"] as! [Any] {
                var model = ListPortfoliosResponseBody.PortfolioDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.portfolioDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPortfoliosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPortfoliosResponseBody?

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
            var model = ListPortfoliosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrincipalsRequest : Tea.TeaModel {
    public var portfolioId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
    }
}

public class ListPrincipalsResponseBody : Tea.TeaModel {
    public class Principals : Tea.TeaModel {
        public var principalId: String?

        public var principalType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrincipalId") && dict["PrincipalId"] != nil {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
                self.principalType = dict["PrincipalType"] as! String
            }
        }
    }
    public var principals: [ListPrincipalsResponseBody.Principals]?

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
        if self.principals != nil {
            var tmp : [Any] = []
            for k in self.principals! {
                tmp.append(k.toMap())
            }
            map["Principals"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Principals") && dict["Principals"] != nil {
            var tmp : [ListPrincipalsResponseBody.Principals] = []
            for v in dict["Principals"] as! [Any] {
                var model = ListPrincipalsResponseBody.Principals()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.principals = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrincipalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrincipalsResponseBody?

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
            var model = ListPrincipalsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductVersionsRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class ListProductVersionsResponseBody : Tea.TeaModel {
    public class ProductVersionDetails : Tea.TeaModel {
        public var active: Bool?

        public var createTime: String?

        public var description_: String?

        public var guidance: String?

        public var productId: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var templateType: String?

        public var templateUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.guidance != nil {
                map["Guidance"] = self.guidance!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.templateUrl != nil {
                map["TemplateUrl"] = self.templateUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Guidance") && dict["Guidance"] != nil {
                self.guidance = dict["Guidance"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
                self.templateUrl = dict["TemplateUrl"] as! String
            }
        }
    }
    public var productVersionDetails: [ListProductVersionsResponseBody.ProductVersionDetails]?

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
        if self.productVersionDetails != nil {
            var tmp : [Any] = []
            for k in self.productVersionDetails! {
                tmp.append(k.toMap())
            }
            map["ProductVersionDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductVersionDetails") && dict["ProductVersionDetails"] != nil {
            var tmp : [ListProductVersionsResponseBody.ProductVersionDetails] = []
            for v in dict["ProductVersionDetails"] as! [Any] {
                var model = ListProductVersionsResponseBody.ProductVersionDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productVersionDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProductVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductVersionsResponseBody?

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
            var model = ListProductVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsAsAdminRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var filters: [ListProductsAsAdminRequest.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var portfolioId: String?

    public var scope: String?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [ListProductsAsAdminRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListProductsAsAdminRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListProductsAsAdminResponseBody : Tea.TeaModel {
    public class ProductDetails : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var productArn: String?

        public var productId: String?

        public var productName: String?

        public var productType: String?

        public var providerName: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.productArn != nil {
                map["ProductArn"] = self.productArn!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ProductArn") && dict["ProductArn"] != nil {
                self.productArn = dict["ProductArn"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productDetails: [ListProductsAsAdminResponseBody.ProductDetails]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productDetails != nil {
            var tmp : [Any] = []
            for k in self.productDetails! {
                tmp.append(k.toMap())
            }
            map["ProductDetails"] = tmp
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductDetails") && dict["ProductDetails"] != nil {
            var tmp : [ListProductsAsAdminResponseBody.ProductDetails] = []
            for v in dict["ProductDetails"] as! [Any] {
                var model = ListProductsAsAdminResponseBody.ProductDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListProductsAsAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsAsAdminResponseBody?

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
            var model = ListProductsAsAdminResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsAsEndUserRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var filters: [ListProductsAsEndUserRequest.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [ListProductsAsEndUserRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListProductsAsEndUserRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListProductsAsEndUserResponseBody : Tea.TeaModel {
    public class ProductSummaries : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var hasDefaultLaunchOption: Bool?

        public var productArn: String?

        public var productId: String?

        public var productName: String?

        public var productType: String?

        public var providerName: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasDefaultLaunchOption != nil {
                map["HasDefaultLaunchOption"] = self.hasDefaultLaunchOption!
            }
            if self.productArn != nil {
                map["ProductArn"] = self.productArn!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HasDefaultLaunchOption") && dict["HasDefaultLaunchOption"] != nil {
                self.hasDefaultLaunchOption = dict["HasDefaultLaunchOption"] as! Bool
            }
            if dict.keys.contains("ProductArn") && dict["ProductArn"] != nil {
                self.productArn = dict["ProductArn"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productSummaries: [ListProductsAsEndUserResponseBody.ProductSummaries]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productSummaries != nil {
            var tmp : [Any] = []
            for k in self.productSummaries! {
                tmp.append(k.toMap())
            }
            map["ProductSummaries"] = tmp
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductSummaries") && dict["ProductSummaries"] != nil {
            var tmp : [ListProductsAsEndUserResponseBody.ProductSummaries] = []
            for v in dict["ProductSummaries"] as! [Any] {
                var model = ListProductsAsEndUserResponseBody.ProductSummaries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productSummaries = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListProductsAsEndUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsAsEndUserResponseBody?

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
            var model = ListProductsAsEndUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProvisionedProductPlanApproversRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accessLevelFilter: String?

    public var approvalFilter: String?

    public var filters: [ListProvisionedProductPlanApproversRequest.Filters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLevelFilter != nil {
            map["AccessLevelFilter"] = self.accessLevelFilter!
        }
        if self.approvalFilter != nil {
            map["ApprovalFilter"] = self.approvalFilter!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLevelFilter") && dict["AccessLevelFilter"] != nil {
            self.accessLevelFilter = dict["AccessLevelFilter"] as! String
        }
        if dict.keys.contains("ApprovalFilter") && dict["ApprovalFilter"] != nil {
            self.approvalFilter = dict["ApprovalFilter"] as! String
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [ListProvisionedProductPlanApproversRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListProvisionedProductPlanApproversRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
    }
}

public class ListProvisionedProductPlanApproversResponseBody : Tea.TeaModel {
    public class Approvers : Tea.TeaModel {
        public var principalName: String?

        public var principalType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
                self.principalType = dict["PrincipalType"] as! String
            }
        }
    }
    public var approvers: [ListProvisionedProductPlanApproversResponseBody.Approvers]?

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
        if self.approvers != nil {
            var tmp : [Any] = []
            for k in self.approvers! {
                tmp.append(k.toMap())
            }
            map["Approvers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Approvers") && dict["Approvers"] != nil {
            var tmp : [ListProvisionedProductPlanApproversResponseBody.Approvers] = []
            for v in dict["Approvers"] as! [Any] {
                var model = ListProvisionedProductPlanApproversResponseBody.Approvers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.approvers = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProvisionedProductPlanApproversResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProvisionedProductPlanApproversResponseBody?

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
            var model = ListProvisionedProductPlanApproversResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProvisionedProductPlansRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accessLevelFilter: String?

    public var approvalFilter: String?

    public var filters: [ListProvisionedProductPlansRequest.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provisionedProductId: String?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLevelFilter != nil {
            map["AccessLevelFilter"] = self.accessLevelFilter!
        }
        if self.approvalFilter != nil {
            map["ApprovalFilter"] = self.approvalFilter!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLevelFilter") && dict["AccessLevelFilter"] != nil {
            self.accessLevelFilter = dict["AccessLevelFilter"] as! String
        }
        if dict.keys.contains("ApprovalFilter") && dict["ApprovalFilter"] != nil {
            self.approvalFilter = dict["ApprovalFilter"] as! String
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [ListProvisionedProductPlansRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListProvisionedProductPlansRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListProvisionedProductPlansResponseBody : Tea.TeaModel {
    public class PlanDetails : Tea.TeaModel {
        public class AssignedApprovers : Tea.TeaModel {
            public var principalName: String?

            public var principalType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.principalName != nil {
                    map["PrincipalName"] = self.principalName!
                }
                if self.principalType != nil {
                    map["PrincipalType"] = self.principalType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                    self.principalName = dict["PrincipalName"] as! String
                }
                if dict.keys.contains("PrincipalType") && dict["PrincipalType"] != nil {
                    self.principalType = dict["PrincipalType"] as! String
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                    self.parameterValue = dict["ParameterValue"] as! String
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
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var assignedApprovers: [ListProvisionedProductPlansResponseBody.PlanDetails.AssignedApprovers]?

        public var createTime: String?

        public var description_: String?

        public var operationType: String?

        public var ownerPrincipalId: String?

        public var ownerPrincipalName: String?

        public var ownerPrincipalType: String?

        public var parameters: [ListProvisionedProductPlansResponseBody.PlanDetails.Parameters]?

        public var planId: String?

        public var planName: String?

        public var planType: String?

        public var portfolioId: String?

        public var productId: String?

        public var productName: String?

        public var productVersionId: String?

        public var provisionedProductId: String?

        public var provisionedProductName: String?

        public var stackId: String?

        public var stackRegionId: String?

        public var status: String?

        public var statusMessage: String?

        public var tags: [ListProvisionedProductPlansResponseBody.PlanDetails.Tags]?

        public var uid: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedApprovers != nil {
                var tmp : [Any] = []
                for k in self.assignedApprovers! {
                    tmp.append(k.toMap())
                }
                map["AssignedApprovers"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ownerPrincipalId != nil {
                map["OwnerPrincipalId"] = self.ownerPrincipalId!
            }
            if self.ownerPrincipalName != nil {
                map["OwnerPrincipalName"] = self.ownerPrincipalName!
            }
            if self.ownerPrincipalType != nil {
                map["OwnerPrincipalType"] = self.ownerPrincipalType!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.provisionedProductId != nil {
                map["ProvisionedProductId"] = self.provisionedProductId!
            }
            if self.provisionedProductName != nil {
                map["ProvisionedProductName"] = self.provisionedProductName!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackRegionId != nil {
                map["StackRegionId"] = self.stackRegionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssignedApprovers") && dict["AssignedApprovers"] != nil {
                var tmp : [ListProvisionedProductPlansResponseBody.PlanDetails.AssignedApprovers] = []
                for v in dict["AssignedApprovers"] as! [Any] {
                    var model = ListProvisionedProductPlansResponseBody.PlanDetails.AssignedApprovers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.assignedApprovers = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("OwnerPrincipalId") && dict["OwnerPrincipalId"] != nil {
                self.ownerPrincipalId = dict["OwnerPrincipalId"] as! String
            }
            if dict.keys.contains("OwnerPrincipalName") && dict["OwnerPrincipalName"] != nil {
                self.ownerPrincipalName = dict["OwnerPrincipalName"] as! String
            }
            if dict.keys.contains("OwnerPrincipalType") && dict["OwnerPrincipalType"] != nil {
                self.ownerPrincipalType = dict["OwnerPrincipalType"] as! String
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                var tmp : [ListProvisionedProductPlansResponseBody.PlanDetails.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = ListProvisionedProductPlansResponseBody.PlanDetails.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("PlanType") && dict["PlanType"] != nil {
                self.planType = dict["PlanType"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
                self.provisionedProductId = dict["ProvisionedProductId"] as! String
            }
            if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
                self.provisionedProductName = dict["ProvisionedProductName"] as! String
            }
            if dict.keys.contains("StackId") && dict["StackId"] != nil {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackRegionId") && dict["StackRegionId"] != nil {
                self.stackRegionId = dict["StackRegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListProvisionedProductPlansResponseBody.PlanDetails.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListProvisionedProductPlansResponseBody.PlanDetails.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planDetails: [ListProvisionedProductPlansResponseBody.PlanDetails]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.planDetails != nil {
            var tmp : [Any] = []
            for k in self.planDetails! {
                tmp.append(k.toMap())
            }
            map["PlanDetails"] = tmp
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlanDetails") && dict["PlanDetails"] != nil {
            var tmp : [ListProvisionedProductPlansResponseBody.PlanDetails] = []
            for v in dict["PlanDetails"] as! [Any] {
                var model = ListProvisionedProductPlansResponseBody.PlanDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.planDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListProvisionedProductPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProvisionedProductPlansResponseBody?

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
            var model = ListProvisionedProductPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProvisionedProductsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accessLevelFilter: String?

    public var filters: [ListProvisionedProductsRequest.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLevelFilter != nil {
            map["AccessLevelFilter"] = self.accessLevelFilter!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLevelFilter") && dict["AccessLevelFilter"] != nil {
            self.accessLevelFilter = dict["AccessLevelFilter"] as! String
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [ListProvisionedProductsRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListProvisionedProductsRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListProvisionedProductsResponseBody : Tea.TeaModel {
    public class ProvisionedProductDetails : Tea.TeaModel {
        public var createTime: String?

        public var lastProvisioningTaskId: String?

        public var lastSuccessfulProvisioningTaskId: String?

        public var lastTaskId: String?

        public var ownerPrincipalId: String?

        public var ownerPrincipalType: String?

        public var portfolioId: String?

        public var productId: String?

        public var productName: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var provisionedProductArn: String?

        public var provisionedProductId: String?

        public var provisionedProductName: String?

        public var provisionedProductType: String?

        public var stackId: String?

        public var stackRegionId: String?

        public var status: String?

        public var statusMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.lastProvisioningTaskId != nil {
                map["LastProvisioningTaskId"] = self.lastProvisioningTaskId!
            }
            if self.lastSuccessfulProvisioningTaskId != nil {
                map["LastSuccessfulProvisioningTaskId"] = self.lastSuccessfulProvisioningTaskId!
            }
            if self.lastTaskId != nil {
                map["LastTaskId"] = self.lastTaskId!
            }
            if self.ownerPrincipalId != nil {
                map["OwnerPrincipalId"] = self.ownerPrincipalId!
            }
            if self.ownerPrincipalType != nil {
                map["OwnerPrincipalType"] = self.ownerPrincipalType!
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.provisionedProductArn != nil {
                map["ProvisionedProductArn"] = self.provisionedProductArn!
            }
            if self.provisionedProductId != nil {
                map["ProvisionedProductId"] = self.provisionedProductId!
            }
            if self.provisionedProductName != nil {
                map["ProvisionedProductName"] = self.provisionedProductName!
            }
            if self.provisionedProductType != nil {
                map["ProvisionedProductType"] = self.provisionedProductType!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackRegionId != nil {
                map["StackRegionId"] = self.stackRegionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("LastProvisioningTaskId") && dict["LastProvisioningTaskId"] != nil {
                self.lastProvisioningTaskId = dict["LastProvisioningTaskId"] as! String
            }
            if dict.keys.contains("LastSuccessfulProvisioningTaskId") && dict["LastSuccessfulProvisioningTaskId"] != nil {
                self.lastSuccessfulProvisioningTaskId = dict["LastSuccessfulProvisioningTaskId"] as! String
            }
            if dict.keys.contains("LastTaskId") && dict["LastTaskId"] != nil {
                self.lastTaskId = dict["LastTaskId"] as! String
            }
            if dict.keys.contains("OwnerPrincipalId") && dict["OwnerPrincipalId"] != nil {
                self.ownerPrincipalId = dict["OwnerPrincipalId"] as! String
            }
            if dict.keys.contains("OwnerPrincipalType") && dict["OwnerPrincipalType"] != nil {
                self.ownerPrincipalType = dict["OwnerPrincipalType"] as! String
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("ProvisionedProductArn") && dict["ProvisionedProductArn"] != nil {
                self.provisionedProductArn = dict["ProvisionedProductArn"] as! String
            }
            if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
                self.provisionedProductId = dict["ProvisionedProductId"] as! String
            }
            if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
                self.provisionedProductName = dict["ProvisionedProductName"] as! String
            }
            if dict.keys.contains("ProvisionedProductType") && dict["ProvisionedProductType"] != nil {
                self.provisionedProductType = dict["ProvisionedProductType"] as! String
            }
            if dict.keys.contains("StackId") && dict["StackId"] != nil {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackRegionId") && dict["StackRegionId"] != nil {
                self.stackRegionId = dict["StackRegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provisionedProductDetails: [ListProvisionedProductsResponseBody.ProvisionedProductDetails]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.provisionedProductDetails != nil {
            var tmp : [Any] = []
            for k in self.provisionedProductDetails! {
                tmp.append(k.toMap())
            }
            map["ProvisionedProductDetails"] = tmp
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProvisionedProductDetails") && dict["ProvisionedProductDetails"] != nil {
            var tmp : [ListProvisionedProductsResponseBody.ProvisionedProductDetails] = []
            for v in dict["ProvisionedProductDetails"] as! [Any] {
                var model = ListProvisionedProductsResponseBody.ProvisionedProductDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.provisionedProductDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListProvisionedProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProvisionedProductsResponseBody?

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
            var model = ListProvisionedProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [ListRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesForTagOptionRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceType: String?

    public var tagOptionId: String?

    public override init() {
        super.init()
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagOptionId != nil {
            map["TagOptionId"] = self.tagOptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
            self.tagOptionId = dict["TagOptionId"] as! String
        }
    }
}

public class ListResourcesForTagOptionResponseBody : Tea.TeaModel {
    public class ResourceDetails : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var resourceArn: String?

        public var resourceId: String?

        public var resourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
                self.resourceArn = dict["ResourceArn"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resourceDetails: [ListResourcesForTagOptionResponseBody.ResourceDetails]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceDetails != nil {
            var tmp : [Any] = []
            for k in self.resourceDetails! {
                tmp.append(k.toMap())
            }
            map["ResourceDetails"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceDetails") && dict["ResourceDetails"] != nil {
            var tmp : [ListResourcesForTagOptionResponseBody.ResourceDetails] = []
            for v in dict["ResourceDetails"] as! [Any] {
                var model = ListResourcesForTagOptionResponseBody.ResourceDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceDetails = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListResourcesForTagOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesForTagOptionResponseBody?

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
            var model = ListResourcesForTagOptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagOptionsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var active: Bool?

        public var fullTextSearch: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.fullTextSearch != nil {
                map["FullTextSearch"] = self.fullTextSearch!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("FullTextSearch") && dict["FullTextSearch"] != nil {
                self.fullTextSearch = dict["FullTextSearch"] as! String
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var filters: ListTagOptionsRequest.Filters?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            map["Filters"] = self.filters?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var model = ListTagOptionsRequest.Filters()
            model.fromMap(dict["Filters"] as! [String: Any])
            self.filters = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListTagOptionsShrinkRequest : Tea.TeaModel {
    public var filtersShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filtersShrink != nil {
            map["Filters"] = self.filtersShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            self.filtersShrink = dict["Filters"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListTagOptionsResponseBody : Tea.TeaModel {
    public class TagOptionDetails : Tea.TeaModel {
        public var active: Bool?

        public var key: String?

        public var owner: String?

        public var tagOptionId: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.tagOptionId != nil {
                map["TagOptionId"] = self.tagOptionId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
                self.tagOptionId = dict["TagOptionId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagOptionDetails: [ListTagOptionsResponseBody.TagOptionDetails]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagOptionDetails != nil {
            var tmp : [Any] = []
            for k in self.tagOptionDetails! {
                tmp.append(k.toMap())
            }
            map["TagOptionDetails"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagOptionDetails") && dict["TagOptionDetails"] != nil {
            var tmp : [ListTagOptionsResponseBody.TagOptionDetails] = []
            for v in dict["TagOptionDetails"] as! [Any] {
                var model = ListTagOptionsResponseBody.TagOptionDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagOptionDetails = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTagOptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagOptionsResponseBody?

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
            var model = ListTagOptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provisionedProductId: String?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
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
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class TaskDetails : Tea.TeaModel {
        public class Log : Tea.TeaModel {
            public class TerraformLogs : Tea.TeaModel {
                public var command: String?

                public var content: String?

                public var stream: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.stream != nil {
                        map["Stream"] = self.stream!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") && dict["Command"] != nil {
                        self.command = dict["Command"] as! String
                    }
                    if dict.keys.contains("Content") && dict["Content"] != nil {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Stream") && dict["Stream"] != nil {
                        self.stream = dict["Stream"] as! String
                    }
                }
            }
            public var terraformLogs: [ListTasksResponseBody.TaskDetails.Log.TerraformLogs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.terraformLogs != nil {
                    var tmp : [Any] = []
                    for k in self.terraformLogs! {
                        tmp.append(k.toMap())
                    }
                    map["TerraformLogs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TerraformLogs") && dict["TerraformLogs"] != nil {
                    var tmp : [ListTasksResponseBody.TaskDetails.Log.TerraformLogs] = []
                    for v in dict["TerraformLogs"] as! [Any] {
                        var model = ListTasksResponseBody.TaskDetails.Log.TerraformLogs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.terraformLogs = tmp
                }
            }
        }
        public class Outputs : Tea.TeaModel {
            public var description_: String?

            public var outputKey: String?

            public var outputValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.outputKey != nil {
                    map["OutputKey"] = self.outputKey!
                }
                if self.outputValue != nil {
                    map["OutputValue"] = self.outputValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("OutputKey") && dict["OutputKey"] != nil {
                    self.outputKey = dict["OutputKey"] as! String
                }
                if dict.keys.contains("OutputValue") && dict["OutputValue"] != nil {
                    self.outputValue = dict["OutputValue"] as! String
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public var createTime: String?

        public var log: ListTasksResponseBody.TaskDetails.Log?

        public var outputs: [ListTasksResponseBody.TaskDetails.Outputs]?

        public var parameters: [ListTasksResponseBody.TaskDetails.Parameters]?

        public var portfolioId: String?

        public var productId: String?

        public var productName: String?

        public var productVersionId: String?

        public var productVersionName: String?

        public var provisionedProductId: String?

        public var provisionedProductName: String?

        public var status: String?

        public var statusMessage: String?

        public var taskId: String?

        public var taskType: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.log?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.log != nil {
                map["Log"] = self.log?.toMap()
            }
            if self.outputs != nil {
                var tmp : [Any] = []
                for k in self.outputs! {
                    tmp.append(k.toMap())
                }
                map["Outputs"] = tmp
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.portfolioId != nil {
                map["PortfolioId"] = self.portfolioId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productVersionId != nil {
                map["ProductVersionId"] = self.productVersionId!
            }
            if self.productVersionName != nil {
                map["ProductVersionName"] = self.productVersionName!
            }
            if self.provisionedProductId != nil {
                map["ProvisionedProductId"] = self.provisionedProductId!
            }
            if self.provisionedProductName != nil {
                map["ProvisionedProductName"] = self.provisionedProductName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Log") && dict["Log"] != nil {
                var model = ListTasksResponseBody.TaskDetails.Log()
                model.fromMap(dict["Log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                var tmp : [ListTasksResponseBody.TaskDetails.Outputs] = []
                for v in dict["Outputs"] as! [Any] {
                    var model = ListTasksResponseBody.TaskDetails.Outputs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outputs = tmp
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                var tmp : [ListTasksResponseBody.TaskDetails.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = ListTasksResponseBody.TaskDetails.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
                self.portfolioId = dict["PortfolioId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
                self.productVersionId = dict["ProductVersionId"] as! String
            }
            if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
                self.productVersionName = dict["ProductVersionName"] as! String
            }
            if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
                self.provisionedProductId = dict["ProvisionedProductId"] as! String
            }
            if dict.keys.contains("ProvisionedProductName") && dict["ProvisionedProductName"] != nil {
                self.provisionedProductName = dict["ProvisionedProductName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var taskDetails: [ListTasksResponseBody.TaskDetails]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskDetails != nil {
            var tmp : [Any] = []
            for k in self.taskDetails! {
                tmp.append(k.toMap())
            }
            map["TaskDetails"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskDetails") && dict["TaskDetails"] != nil {
            var tmp : [ListTasksResponseBody.TaskDetails] = []
            for v in dict["TaskDetails"] as! [Any] {
                var model = ListTasksResponseBody.TaskDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskDetails = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

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
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TerminateProvisionedProductRequest : Tea.TeaModel {
    public var provisionedProductId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
    }
}

public class TerminateProvisionedProductResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TerminateProvisionedProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminateProvisionedProductResponseBody?

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
            var model = TerminateProvisionedProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConstraintRequest : Tea.TeaModel {
    public var config: String?

    public var constraintId: String?

    public var description_: String?

    public override init() {
        super.init()
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
        if self.constraintId != nil {
            map["ConstraintId"] = self.constraintId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("ConstraintId") && dict["ConstraintId"] != nil {
            self.constraintId = dict["ConstraintId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class UpdateConstraintResponseBody : Tea.TeaModel {
    public var constraintId: String?

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
        if self.constraintId != nil {
            map["ConstraintId"] = self.constraintId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConstraintId") && dict["ConstraintId"] != nil {
            self.constraintId = dict["ConstraintId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateConstraintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConstraintResponseBody?

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
            var model = UpdateConstraintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePortfolioRequest : Tea.TeaModel {
    public var description_: String?

    public var portfolioId: String?

    public var portfolioName: String?

    public var providerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.portfolioName != nil {
            map["PortfolioName"] = self.portfolioName!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("PortfolioName") && dict["PortfolioName"] != nil {
            self.portfolioName = dict["PortfolioName"] as! String
        }
        if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
            self.providerName = dict["ProviderName"] as! String
        }
    }
}

public class UpdatePortfolioResponseBody : Tea.TeaModel {
    public var portfolioId: String?

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
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePortfolioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePortfolioResponseBody?

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
            var model = UpdatePortfolioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductRequest : Tea.TeaModel {
    public var description_: String?

    public var productId: String?

    public var productName: String?

    public var providerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProviderName") && dict["ProviderName"] != nil {
            self.providerName = dict["ProviderName"] as! String
        }
    }
}

public class UpdateProductResponseBody : Tea.TeaModel {
    public var productId: String?

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
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductResponseBody?

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
            var model = UpdateProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductVersionRequest : Tea.TeaModel {
    public var active: Bool?

    public var description_: String?

    public var guidance: String?

    public var productVersionId: String?

    public var productVersionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.guidance != nil {
            map["Guidance"] = self.guidance!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.productVersionName != nil {
            map["ProductVersionName"] = self.productVersionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") && dict["Active"] != nil {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Guidance") && dict["Guidance"] != nil {
            self.guidance = dict["Guidance"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("ProductVersionName") && dict["ProductVersionName"] != nil {
            self.productVersionName = dict["ProductVersionName"] as! String
        }
    }
}

public class UpdateProductVersionResponseBody : Tea.TeaModel {
    public var productVersionId: String?

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
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductVersionResponseBody?

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
            var model = UpdateProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProvisionedProductRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                self.parameterValue = dict["ParameterValue"] as! String
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var parameters: [UpdateProvisionedProductRequest.Parameters]?

    public var portfolioId: String?

    public var productId: String?

    public var productVersionId: String?

    public var provisionedProductId: String?

    public var tags: [UpdateProvisionedProductRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
        }
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
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
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [UpdateProvisionedProductRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = UpdateProvisionedProductRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [UpdateProvisionedProductRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = UpdateProvisionedProductRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class UpdateProvisionedProductResponseBody : Tea.TeaModel {
    public var provisionedProductId: String?

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
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProvisionedProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProvisionedProductResponseBody?

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
            var model = UpdateProvisionedProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProvisionedProductPlanRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                self.parameterValue = dict["ParameterValue"] as! String
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var description_: String?

    public var parameters: [UpdateProvisionedProductPlanRequest.Parameters]?

    public var planId: String?

    public var portfolioId: String?

    public var productId: String?

    public var productVersionId: String?

    public var tags: [UpdateProvisionedProductPlanRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.portfolioId != nil {
            map["PortfolioId"] = self.portfolioId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersionId != nil {
            map["ProductVersionId"] = self.productVersionId!
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [UpdateProvisionedProductPlanRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = UpdateProvisionedProductPlanRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PortfolioId") && dict["PortfolioId"] != nil {
            self.portfolioId = dict["PortfolioId"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("ProductVersionId") && dict["ProductVersionId"] != nil {
            self.productVersionId = dict["ProductVersionId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [UpdateProvisionedProductPlanRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = UpdateProvisionedProductPlanRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class UpdateProvisionedProductPlanResponseBody : Tea.TeaModel {
    public var planId: String?

    public var provisionedProductId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.provisionedProductId != nil {
            map["ProvisionedProductId"] = self.provisionedProductId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ProvisionedProductId") && dict["ProvisionedProductId"] != nil {
            self.provisionedProductId = dict["ProvisionedProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProvisionedProductPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProvisionedProductPlanResponseBody?

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
            var model = UpdateProvisionedProductPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTagOptionRequest : Tea.TeaModel {
    public var active: Bool?

    public var tagOptionId: String?

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
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.tagOptionId != nil {
            map["TagOptionId"] = self.tagOptionId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") && dict["Active"] != nil {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
            self.tagOptionId = dict["TagOptionId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class UpdateTagOptionResponseBody : Tea.TeaModel {
    public class TagOptionDetail : Tea.TeaModel {
        public var active: Bool?

        public var key: String?

        public var owner: String?

        public var tagOptionId: String?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.tagOptionId != nil {
                map["TagOptionId"] = self.tagOptionId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") && dict["Active"] != nil {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("TagOptionId") && dict["TagOptionId"] != nil {
                self.tagOptionId = dict["TagOptionId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var requestId: String?

    public var tagOptionDetail: UpdateTagOptionResponseBody.TagOptionDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagOptionDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagOptionDetail != nil {
            map["TagOptionDetail"] = self.tagOptionDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagOptionDetail") && dict["TagOptionDetail"] != nil {
            var model = UpdateTagOptionResponseBody.TagOptionDetail()
            model.fromMap(dict["TagOptionDetail"] as! [String: Any])
            self.tagOptionDetail = model
        }
    }
}

public class UpdateTagOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTagOptionResponseBody?

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
            var model = UpdateTagOptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
