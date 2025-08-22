import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataModuleMapListSpnTypeMapListValue : Tea.TeaModel {
    public class FilterModules : Tea.TeaModel {
        public var moduleId: Int64?

        public var moduleCode: String?

        public var moduleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModuleId"] as? Int64 {
                self.moduleId = value
            }
            if let value = dict["ModuleCode"] as? String {
                self.moduleCode = value
            }
            if let value = dict["ModuleName"] as? String {
                self.moduleName = value
            }
        }
    }
    public class ShowModules : Tea.TeaModel {
        public var moduleId: Int64?

        public var moduleCode: String?

        public var moduleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModuleId"] as? Int64 {
                self.moduleId = value
            }
            if let value = dict["ModuleCode"] as? String {
                self.moduleCode = value
            }
            if let value = dict["ModuleName"] as? String {
                self.moduleName = value
            }
        }
    }
    public var filterModules: [DataModuleMapListSpnTypeMapListValue.FilterModules]?

    public var showModules: [DataModuleMapListSpnTypeMapListValue.ShowModules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterModules != nil {
            var tmp : [Any] = []
            for k in self.filterModules! {
                tmp.append(k.toMap())
            }
            map["FilterModules"] = tmp
        }
        if self.showModules != nil {
            var tmp : [Any] = []
            for k in self.showModules! {
                tmp.append(k.toMap())
            }
            map["ShowModules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterModules"] as? [Any?] {
            var tmp : [DataModuleMapListSpnTypeMapListValue.FilterModules] = []
            for v in value {
                if v != nil {
                    var model = DataModuleMapListSpnTypeMapListValue.FilterModules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filterModules = tmp
        }
        if let value = dict["ShowModules"] as? [Any?] {
            var tmp : [DataModuleMapListSpnTypeMapListValue.ShowModules] = []
            for v in value {
                if v != nil {
                    var model = DataModuleMapListSpnTypeMapListValue.ShowModules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.showModules = tmp
        }
    }
}

public class DataStepPriceMapValue : Tea.TeaModel {
    public var rightClose: Bool?

    public var min: String?

    public var max: String?

    public var currency: String?

    public var leftClose: Bool?

    public var stepPriceValue: String?

    public var priceValueType: String?

    public var priceValue: String?

    public var deductCycleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rightClose != nil {
            map["RightClose"] = self.rightClose!
        }
        if self.min != nil {
            map["Min"] = self.min!
        }
        if self.max != nil {
            map["Max"] = self.max!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.leftClose != nil {
            map["LeftClose"] = self.leftClose!
        }
        if self.stepPriceValue != nil {
            map["StepPriceValue"] = self.stepPriceValue!
        }
        if self.priceValueType != nil {
            map["PriceValueType"] = self.priceValueType!
        }
        if self.priceValue != nil {
            map["PriceValue"] = self.priceValue!
        }
        if self.deductCycleType != nil {
            map["DeductCycleType"] = self.deductCycleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RightClose"] as? Bool {
            self.rightClose = value
        }
        if let value = dict["Min"] as? String {
            self.min = value
        }
        if let value = dict["Max"] as? String {
            self.max = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["LeftClose"] as? Bool {
            self.leftClose = value
        }
        if let value = dict["StepPriceValue"] as? String {
            self.stepPriceValue = value
        }
        if let value = dict["PriceValueType"] as? String {
            self.priceValueType = value
        }
        if let value = dict["PriceValue"] as? String {
            self.priceValue = value
        }
        if let value = dict["DeductCycleType"] as? String {
            self.deductCycleType = value
        }
    }
}

public class AddCouponDeductTagRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var couponId: String?

    public var ecIdAccountIds: [AddCouponDeductTagRequest.EcIdAccountIds]?

    public var nbid: String?

    public var tags: [AddCouponDeductTagRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? String {
            self.couponId = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [AddCouponDeductTagRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = AddCouponDeductTagRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [AddCouponDeductTagRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = AddCouponDeductTagRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class AddCouponDeductTagShrinkRequest : Tea.TeaModel {
    public var couponId: String?

    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? String {
            self.couponId = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class AddCouponDeductTagResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddCouponDeductTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCouponDeductTagResponseBody?

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
            var model = AddCouponDeductTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllocateCostCenterResourceRequest : Tea.TeaModel {
    public class ResourceInstanceList : Tea.TeaModel {
        public var apportionCode: String?

        public var apportionName: String?

        public var commodityCode: String?

        public var commodityName: String?

        public var instanceId: String?

        public var pipCode: String?

        public var relatedResources: String?

        public var resourceGroup: String?

        public var resourceId: String?

        public var resourceNick: String?

        public var resourceSource: String?

        public var resourceStatus: String?

        public var resourceTag: String?

        public var resourceType: String?

        public var resourceUserId: Int64?

        public var resourceUserName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apportionCode != nil {
                map["ApportionCode"] = self.apportionCode!
            }
            if self.apportionName != nil {
                map["ApportionName"] = self.apportionName!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.pipCode != nil {
                map["PipCode"] = self.pipCode!
            }
            if self.relatedResources != nil {
                map["RelatedResources"] = self.relatedResources!
            }
            if self.resourceGroup != nil {
                map["ResourceGroup"] = self.resourceGroup!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceNick != nil {
                map["ResourceNick"] = self.resourceNick!
            }
            if self.resourceSource != nil {
                map["ResourceSource"] = self.resourceSource!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceTag != nil {
                map["ResourceTag"] = self.resourceTag!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceUserId != nil {
                map["ResourceUserId"] = self.resourceUserId!
            }
            if self.resourceUserName != nil {
                map["ResourceUserName"] = self.resourceUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApportionCode"] as? String {
                self.apportionCode = value
            }
            if let value = dict["ApportionName"] as? String {
                self.apportionName = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PipCode"] as? String {
                self.pipCode = value
            }
            if let value = dict["RelatedResources"] as? String {
                self.relatedResources = value
            }
            if let value = dict["ResourceGroup"] as? String {
                self.resourceGroup = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceNick"] as? String {
                self.resourceNick = value
            }
            if let value = dict["ResourceSource"] as? String {
                self.resourceSource = value
            }
            if let value = dict["ResourceStatus"] as? String {
                self.resourceStatus = value
            }
            if let value = dict["ResourceTag"] as? String {
                self.resourceTag = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["ResourceUserId"] as? Int64 {
                self.resourceUserId = value
            }
            if let value = dict["ResourceUserName"] as? String {
                self.resourceUserName = value
            }
        }
    }
    public var fromCostCenterId: Int64?

    public var fromOwnerAccountId: Int64?

    public var nbid: String?

    public var resourceInstanceList: [AllocateCostCenterResourceRequest.ResourceInstanceList]?

    public var toCostCenterId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromCostCenterId != nil {
            map["FromCostCenterId"] = self.fromCostCenterId!
        }
        if self.fromOwnerAccountId != nil {
            map["FromOwnerAccountId"] = self.fromOwnerAccountId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.resourceInstanceList != nil {
            var tmp : [Any] = []
            for k in self.resourceInstanceList! {
                tmp.append(k.toMap())
            }
            map["ResourceInstanceList"] = tmp
        }
        if self.toCostCenterId != nil {
            map["ToCostCenterId"] = self.toCostCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FromCostCenterId"] as? Int64 {
            self.fromCostCenterId = value
        }
        if let value = dict["FromOwnerAccountId"] as? Int64 {
            self.fromOwnerAccountId = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["ResourceInstanceList"] as? [Any?] {
            var tmp : [AllocateCostCenterResourceRequest.ResourceInstanceList] = []
            for v in value {
                if v != nil {
                    var model = AllocateCostCenterResourceRequest.ResourceInstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceInstanceList = tmp
        }
        if let value = dict["ToCostCenterId"] as? Int64 {
            self.toCostCenterId = value
        }
    }
}

public class AllocateCostCenterResourceShrinkRequest : Tea.TeaModel {
    public var fromCostCenterId: Int64?

    public var fromOwnerAccountId: Int64?

    public var nbid: String?

    public var resourceInstanceListShrink: String?

    public var toCostCenterId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromCostCenterId != nil {
            map["FromCostCenterId"] = self.fromCostCenterId!
        }
        if self.fromOwnerAccountId != nil {
            map["FromOwnerAccountId"] = self.fromOwnerAccountId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.resourceInstanceListShrink != nil {
            map["ResourceInstanceList"] = self.resourceInstanceListShrink!
        }
        if self.toCostCenterId != nil {
            map["ToCostCenterId"] = self.toCostCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FromCostCenterId"] as? Int64 {
            self.fromCostCenterId = value
        }
        if let value = dict["FromOwnerAccountId"] as? Int64 {
            self.fromOwnerAccountId = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["ResourceInstanceList"] as? String {
            self.resourceInstanceListShrink = value
        }
        if let value = dict["ToCostCenterId"] as? Int64 {
            self.toCostCenterId = value
        }
    }
}

public class AllocateCostCenterResourceResponseBody : Tea.TeaModel {
    public var costCenterId: Int64?

    public var isSuccess: Bool?

    public var metadata: Any?

    public var ownerAccountId: Int64?

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
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AllocateCostCenterResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateCostCenterResourceResponseBody?

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
            var model = AllocateCostCenterResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelFundAccountLowAvailableAmountAlarmRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
    }
}

public class CancelFundAccountLowAvailableAmountAlarmResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelFundAccountLowAvailableAmountAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelFundAccountLowAvailableAmountAlarmResponseBody?

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
            var model = CancelFundAccountLowAvailableAmountAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCostCenterRequest : Tea.TeaModel {
    public class CostCenterEntityList : Tea.TeaModel {
        public var costCenterName: String?

        public var ownerAccountId: Int64?

        public var parentCostCenterId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costCenterName != nil {
                map["CostCenterName"] = self.costCenterName!
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            if self.parentCostCenterId != nil {
                map["ParentCostCenterId"] = self.parentCostCenterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CostCenterName"] as? String {
                self.costCenterName = value
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
            if let value = dict["ParentCostCenterId"] as? Int64 {
                self.parentCostCenterId = value
            }
        }
    }
    public var costCenterEntityList: [CreateCostCenterRequest.CostCenterEntityList]?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterEntityList != nil {
            var tmp : [Any] = []
            for k in self.costCenterEntityList! {
                tmp.append(k.toMap())
            }
            map["CostCenterEntityList"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterEntityList"] as? [Any?] {
            var tmp : [CreateCostCenterRequest.CostCenterEntityList] = []
            for v in value {
                if v != nil {
                    var model = CreateCostCenterRequest.CostCenterEntityList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.costCenterEntityList = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class CreateCostCenterShrinkRequest : Tea.TeaModel {
    public var costCenterEntityListShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterEntityListShrink != nil {
            map["CostCenterEntityList"] = self.costCenterEntityListShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterEntityList"] as? String {
            self.costCenterEntityListShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class CreateCostCenterResponseBody : Tea.TeaModel {
    public class CostCenterDtoList : Tea.TeaModel {
        public var costCenterId: Int64?

        public var costCenterName: String?

        public var ownerAccountId: Int64?

        public var parentCostCenterId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costCenterId != nil {
                map["CostCenterId"] = self.costCenterId!
            }
            if self.costCenterName != nil {
                map["CostCenterName"] = self.costCenterName!
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            if self.parentCostCenterId != nil {
                map["ParentCostCenterId"] = self.parentCostCenterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CostCenterId"] as? Int64 {
                self.costCenterId = value
            }
            if let value = dict["CostCenterName"] as? String {
                self.costCenterName = value
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
            if let value = dict["ParentCostCenterId"] as? Int64 {
                self.parentCostCenterId = value
            }
        }
    }
    public var costCenterDtoList: [CreateCostCenterResponseBody.CostCenterDtoList]?

    public var metadata: Any?

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
        if self.costCenterDtoList != nil {
            var tmp : [Any] = []
            for k in self.costCenterDtoList! {
                tmp.append(k.toMap())
            }
            map["CostCenterDtoList"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterDtoList"] as? [Any?] {
            var tmp : [CreateCostCenterResponseBody.CostCenterDtoList] = []
            for v in value {
                if v != nil {
                    var model = CreateCostCenterResponseBody.CostCenterDtoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.costCenterDtoList = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCostCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCostCenterResponseBody?

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
            var model = CreateCostCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCostCenterRuleRequest : Tea.TeaModel {
    public class FilterExpression : Tea.TeaModel {
        public class FilterValues : Tea.TeaModel {
            public var code: String?

            public var codeName: String?

            public var selectType: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.codeName != nil {
                    map["CodeName"] = self.codeName!
                }
                if self.selectType != nil {
                    map["SelectType"] = self.selectType!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["CodeName"] as? String {
                    self.codeName = value
                }
                if let value = dict["SelectType"] as? String {
                    self.selectType = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var expressionType: String?

        public var filterValues: CreateCostCenterRuleRequest.FilterExpression.FilterValues?

        public var operand: Any?

        public var operands: [Any]?

        public var operatorType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filterValues?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expressionType != nil {
                map["ExpressionType"] = self.expressionType!
            }
            if self.filterValues != nil {
                map["FilterValues"] = self.filterValues?.toMap()
            }
            if self.operand != nil {
                map["Operand"] = self.operand!
            }
            if self.operands != nil {
                map["Operands"] = self.operands!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpressionType"] as? String {
                self.expressionType = value
            }
            if let value = dict["FilterValues"] as? [String: Any?] {
                var model = CreateCostCenterRuleRequest.FilterExpression.FilterValues()
                model.fromMap(value)
                self.filterValues = model
            }
            if let value = dict["Operand"] as? Any {
                self.operand = value
            }
            if let value = dict["Operands"] as? [Any] {
                self.operands = value
            }
            if let value = dict["OperatorType"] as? String {
                self.operatorType = value
            }
        }
    }
    public var costCenterId: Int64?

    public var filterExpression: CreateCostCenterRuleRequest.FilterExpression?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterExpression?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpression != nil {
            map["FilterExpression"] = self.filterExpression?.toMap()
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? [String: Any?] {
            var model = CreateCostCenterRuleRequest.FilterExpression()
            model.fromMap(value)
            self.filterExpression = model
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class CreateCostCenterRuleShrinkRequest : Tea.TeaModel {
    public var costCenterId: Int64?

    public var filterExpressionShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpressionShrink != nil {
            map["FilterExpression"] = self.filterExpressionShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? String {
            self.filterExpressionShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class CreateCostCenterRuleResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCostCenterRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCostCenterRuleResponseBody?

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
            var model = CreateCostCenterRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFundAccountPayRelationRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var ecIdAccountIds: [CreateFundAccountPayRelationRequest.EcIdAccountIds]?

    public var fundAccountId: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [CreateFundAccountPayRelationRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = CreateFundAccountPayRelationRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["FundAccountId"] as? String {
            self.fundAccountId = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class CreateFundAccountPayRelationShrinkRequest : Tea.TeaModel {
    public var ecIdAccountIdsShrink: String?

    public var fundAccountId: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["FundAccountId"] as? String {
            self.fundAccountId = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class CreateFundAccountPayRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var fundAccountId: String?

        public var resultCode: String?

        public var resultMessage: String?

        public override init() {
            super.init()
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
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.resultMessage != nil {
                map["ResultMessage"] = self.resultMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["FundAccountId"] as? String {
                self.fundAccountId = value
            }
            if let value = dict["ResultCode"] as? String {
                self.resultCode = value
            }
            if let value = dict["ResultMessage"] as? String {
                self.resultMessage = value
            }
        }
    }
    public var data: [CreateFundAccountPayRelationResponseBody.Data]?

    public var metadata: Any?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [CreateFundAccountPayRelationResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = CreateFundAccountPayRelationResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFundAccountPayRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFundAccountPayRelationResponseBody?

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
            var model = CreateFundAccountPayRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFundAccountTransferRequest : Tea.TeaModel {
    public var amount: String?

    public var currency: String?

    public var financeType: String?

    public var fromFundAccountId: Int64?

    public var remark: String?

    public var toFundAccountId: Int64?

    public var transferType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.financeType != nil {
            map["FinanceType"] = self.financeType!
        }
        if self.fromFundAccountId != nil {
            map["FromFundAccountId"] = self.fromFundAccountId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.toFundAccountId != nil {
            map["ToFundAccountId"] = self.toFundAccountId!
        }
        if self.transferType != nil {
            map["TransferType"] = self.transferType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? String {
            self.amount = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["FinanceType"] as? String {
            self.financeType = value
        }
        if let value = dict["FromFundAccountId"] as? Int64 {
            self.fromFundAccountId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ToFundAccountId"] as? Int64 {
            self.toFundAccountId = value
        }
        if let value = dict["TransferType"] as? String {
            self.transferType = value
        }
    }
}

public class CreateFundAccountTransferResponseBody : Tea.TeaModel {
    public var metadata: Any?

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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFundAccountTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFundAccountTransferResponseBody?

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
            var model = CreateFundAccountTransferResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInvoiceRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var amount: String?

    public var ecIdAccountIds: [CreateInvoiceRequest.EcIdAccountIds]?

    public var invoiceCandidateIds: [String]?

    public var invoiceMode: Int32?

    public var invoiceRemark: String?

    public var invoiceTitleId: String?

    public var invoiceType: Int32?

    public var nbid: String?

    public var recipientEmails: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.invoiceCandidateIds != nil {
            map["InvoiceCandidateIds"] = self.invoiceCandidateIds!
        }
        if self.invoiceMode != nil {
            map["InvoiceMode"] = self.invoiceMode!
        }
        if self.invoiceRemark != nil {
            map["InvoiceRemark"] = self.invoiceRemark!
        }
        if self.invoiceTitleId != nil {
            map["InvoiceTitleId"] = self.invoiceTitleId!
        }
        if self.invoiceType != nil {
            map["InvoiceType"] = self.invoiceType!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.recipientEmails != nil {
            map["RecipientEmails"] = self.recipientEmails!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? String {
            self.amount = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [CreateInvoiceRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = CreateInvoiceRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["InvoiceCandidateIds"] as? [String] {
            self.invoiceCandidateIds = value
        }
        if let value = dict["InvoiceMode"] as? Int32 {
            self.invoiceMode = value
        }
        if let value = dict["InvoiceRemark"] as? String {
            self.invoiceRemark = value
        }
        if let value = dict["InvoiceTitleId"] as? String {
            self.invoiceTitleId = value
        }
        if let value = dict["InvoiceType"] as? Int32 {
            self.invoiceType = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["RecipientEmails"] as? [String] {
            self.recipientEmails = value
        }
    }
}

public class CreateInvoiceShrinkRequest : Tea.TeaModel {
    public var amount: String?

    public var ecIdAccountIdsShrink: String?

    public var invoiceCandidateIdsShrink: String?

    public var invoiceMode: Int32?

    public var invoiceRemark: String?

    public var invoiceTitleId: String?

    public var invoiceType: Int32?

    public var nbid: String?

    public var recipientEmailsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.invoiceCandidateIdsShrink != nil {
            map["InvoiceCandidateIds"] = self.invoiceCandidateIdsShrink!
        }
        if self.invoiceMode != nil {
            map["InvoiceMode"] = self.invoiceMode!
        }
        if self.invoiceRemark != nil {
            map["InvoiceRemark"] = self.invoiceRemark!
        }
        if self.invoiceTitleId != nil {
            map["InvoiceTitleId"] = self.invoiceTitleId!
        }
        if self.invoiceType != nil {
            map["InvoiceType"] = self.invoiceType!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.recipientEmailsShrink != nil {
            map["RecipientEmails"] = self.recipientEmailsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? String {
            self.amount = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["InvoiceCandidateIds"] as? String {
            self.invoiceCandidateIdsShrink = value
        }
        if let value = dict["InvoiceMode"] as? Int32 {
            self.invoiceMode = value
        }
        if let value = dict["InvoiceRemark"] as? String {
            self.invoiceRemark = value
        }
        if let value = dict["InvoiceTitleId"] as? String {
            self.invoiceTitleId = value
        }
        if let value = dict["InvoiceType"] as? Int32 {
            self.invoiceType = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["RecipientEmails"] as? String {
            self.recipientEmailsShrink = value
        }
    }
}

public class CreateInvoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: Int64?

        public var amount: String?

        public var errorCode: String?

        public var invoiceIssuer: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.invoiceIssuer != nil {
                map["InvoiceIssuer"] = self.invoiceIssuer!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? Int64 {
                self.accountId = value
            }
            if let value = dict["Amount"] as? String {
                self.amount = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["InvoiceIssuer"] as? String {
                self.invoiceIssuer = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var data: [CreateInvoiceResponseBody.Data]?

    public var metadata: Any?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [CreateInvoiceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = CreateInvoiceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInvoiceResponseBody?

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
            var model = CreateInvoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateReportDefinitionRequest : Tea.TeaModel {
    public var beginBillingCycle: String?

    public var includeMembers: String?

    public var mcProject: String?

    public var mcTableName: String?

    public var nbid: String?

    public var notSendOnNoData: String?

    public var ossBucketName: String?

    public var ossBucketOwnerAccountId: Int64?

    public var ossBucketPath: String?

    public var reportSourceType: String?

    public var reportType: String?

    public var sendWithAttach: String?

    public var splitFileOnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginBillingCycle != nil {
            map["BeginBillingCycle"] = self.beginBillingCycle!
        }
        if self.includeMembers != nil {
            map["IncludeMembers"] = self.includeMembers!
        }
        if self.mcProject != nil {
            map["McProject"] = self.mcProject!
        }
        if self.mcTableName != nil {
            map["McTableName"] = self.mcTableName!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.notSendOnNoData != nil {
            map["NotSendOnNoData"] = self.notSendOnNoData!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossBucketOwnerAccountId != nil {
            map["OssBucketOwnerAccountId"] = self.ossBucketOwnerAccountId!
        }
        if self.ossBucketPath != nil {
            map["OssBucketPath"] = self.ossBucketPath!
        }
        if self.reportSourceType != nil {
            map["ReportSourceType"] = self.reportSourceType!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        if self.sendWithAttach != nil {
            map["SendWithAttach"] = self.sendWithAttach!
        }
        if self.splitFileOnUserId != nil {
            map["SplitFileOnUserId"] = self.splitFileOnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginBillingCycle"] as? String {
            self.beginBillingCycle = value
        }
        if let value = dict["IncludeMembers"] as? String {
            self.includeMembers = value
        }
        if let value = dict["McProject"] as? String {
            self.mcProject = value
        }
        if let value = dict["McTableName"] as? String {
            self.mcTableName = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["NotSendOnNoData"] as? String {
            self.notSendOnNoData = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssBucketOwnerAccountId"] as? Int64 {
            self.ossBucketOwnerAccountId = value
        }
        if let value = dict["OssBucketPath"] as? String {
            self.ossBucketPath = value
        }
        if let value = dict["ReportSourceType"] as? String {
            self.reportSourceType = value
        }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
        if let value = dict["SendWithAttach"] as? String {
            self.sendWithAttach = value
        }
        if let value = dict["SplitFileOnUserId"] as? String {
            self.splitFileOnUserId = value
        }
    }
}

public class CreateReportDefinitionResponseBody : Tea.TeaModel {
    public var beginBillingCycle: String?

    public var metadata: Any?

    public var ossBucketName: String?

    public var ossBucketOwnerAccountId: Int64?

    public var ossBucketPath: String?

    public var reportSourceName: String?

    public var reportSourceType: String?

    public var reportTaskId: Int64?

    public var reportType: String?

    public var requestId: String?

    public var subscribeCreateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginBillingCycle != nil {
            map["BeginBillingCycle"] = self.beginBillingCycle!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossBucketOwnerAccountId != nil {
            map["OssBucketOwnerAccountId"] = self.ossBucketOwnerAccountId!
        }
        if self.ossBucketPath != nil {
            map["OssBucketPath"] = self.ossBucketPath!
        }
        if self.reportSourceName != nil {
            map["ReportSourceName"] = self.reportSourceName!
        }
        if self.reportSourceType != nil {
            map["ReportSourceType"] = self.reportSourceType!
        }
        if self.reportTaskId != nil {
            map["ReportTaskId"] = self.reportTaskId!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subscribeCreateTime != nil {
            map["SubscribeCreateTime"] = self.subscribeCreateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginBillingCycle"] as? String {
            self.beginBillingCycle = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssBucketOwnerAccountId"] as? Int64 {
            self.ossBucketOwnerAccountId = value
        }
        if let value = dict["OssBucketPath"] as? String {
            self.ossBucketPath = value
        }
        if let value = dict["ReportSourceName"] as? String {
            self.reportSourceName = value
        }
        if let value = dict["ReportSourceType"] as? String {
            self.reportSourceType = value
        }
        if let value = dict["ReportTaskId"] as? Int64 {
            self.reportTaskId = value
        }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubscribeCreateTime"] as? String {
            self.subscribeCreateTime = value
        }
    }
}

public class CreateReportDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateReportDefinitionResponseBody?

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
            var model = CreateReportDefinitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCostCenterRequest : Tea.TeaModel {
    public var costCenterId: Int64?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
    }
}

public class DeleteCostCenterResponseBody : Tea.TeaModel {
    public var costCenterId: Int64?

    public var isSuccess: Bool?

    public var metadata: Any?

    public var ownerAccountId: Int64?

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
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCostCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCostCenterResponseBody?

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
            var model = DeleteCostCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCostCenterRuleRequest : Tea.TeaModel {
    public class FilterExpression : Tea.TeaModel {
        public class FilterValues : Tea.TeaModel {
            public var code: String?

            public var codeName: String?

            public var selectType: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.codeName != nil {
                    map["CodeName"] = self.codeName!
                }
                if self.selectType != nil {
                    map["SelectType"] = self.selectType!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["CodeName"] as? String {
                    self.codeName = value
                }
                if let value = dict["SelectType"] as? String {
                    self.selectType = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var expressionType: String?

        public var filterValues: DeleteCostCenterRuleRequest.FilterExpression.FilterValues?

        public var operand: Any?

        public var operands: [Any]?

        public var operatorType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filterValues?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expressionType != nil {
                map["ExpressionType"] = self.expressionType!
            }
            if self.filterValues != nil {
                map["FilterValues"] = self.filterValues?.toMap()
            }
            if self.operand != nil {
                map["Operand"] = self.operand!
            }
            if self.operands != nil {
                map["Operands"] = self.operands!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpressionType"] as? String {
                self.expressionType = value
            }
            if let value = dict["FilterValues"] as? [String: Any?] {
                var model = DeleteCostCenterRuleRequest.FilterExpression.FilterValues()
                model.fromMap(value)
                self.filterValues = model
            }
            if let value = dict["Operand"] as? Any {
                self.operand = value
            }
            if let value = dict["Operands"] as? [Any] {
                self.operands = value
            }
            if let value = dict["OperatorType"] as? String {
                self.operatorType = value
            }
        }
    }
    public var costCenterId: Int64?

    public var filterExpression: DeleteCostCenterRuleRequest.FilterExpression?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterExpression?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpression != nil {
            map["FilterExpression"] = self.filterExpression?.toMap()
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? [String: Any?] {
            var model = DeleteCostCenterRuleRequest.FilterExpression()
            model.fromMap(value)
            self.filterExpression = model
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class DeleteCostCenterRuleShrinkRequest : Tea.TeaModel {
    public var costCenterId: Int64?

    public var filterExpressionShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpressionShrink != nil {
            map["FilterExpression"] = self.filterExpressionShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? String {
            self.filterExpressionShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class DeleteCostCenterRuleResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCostCenterRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCostCenterRuleResponseBody?

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
            var model = DeleteCostCenterRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCouponDeductTagRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var couponId: String?

    public var ecIdAccountIds: [DeleteCouponDeductTagRequest.EcIdAccountIds]?

    public var nbid: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? String {
            self.couponId = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [DeleteCouponDeductTagRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = DeleteCouponDeductTagRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["TagKeys"] as? [String] {
            self.tagKeys = value
        }
    }
}

public class DeleteCouponDeductTagShrinkRequest : Tea.TeaModel {
    public var couponId: String?

    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var tagKeysShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.tagKeysShrink != nil {
            map["TagKeys"] = self.tagKeysShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? String {
            self.couponId = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["TagKeys"] as? String {
            self.tagKeysShrink = value
        }
    }
}

public class DeleteCouponDeductTagResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCouponDeductTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCouponDeductTagResponseBody?

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
            var model = DeleteCouponDeductTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteReportDefinitionRequest : Tea.TeaModel {
    public var nbid: String?

    public var reportTaskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.reportTaskId != nil {
            map["ReportTaskId"] = self.reportTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["ReportTaskId"] as? Int64 {
            self.reportTaskId = value
        }
    }
}

public class DeleteReportDefinitionResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteReportDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteReportDefinitionResponseBody?

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
            var model = DeleteReportDefinitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCouponRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var couponId: Int64?

    public var couponNo: String?

    public var couponType: String?

    public var currentPage: Int32?

    public var ecIdAccountIds: [DescribeCouponRequest.EcIdAccountIds]?

    public var effectiveEndTime: Int64?

    public var effectiveStartTime: Int64?

    public var expireEndDate: Int64?

    public var expireStartDate: Int64?

    public var nbid: String?

    public var pageSize: Int32?

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
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.couponType != nil {
            map["CouponType"] = self.couponType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.effectiveEndTime != nil {
            map["EffectiveEndTime"] = self.effectiveEndTime!
        }
        if self.effectiveStartTime != nil {
            map["EffectiveStartTime"] = self.effectiveStartTime!
        }
        if self.expireEndDate != nil {
            map["ExpireEndDate"] = self.expireEndDate!
        }
        if self.expireStartDate != nil {
            map["ExpireStartDate"] = self.expireStartDate!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? Int64 {
            self.couponId = value
        }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["CouponType"] as? String {
            self.couponType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [DescribeCouponRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = DescribeCouponRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["EffectiveEndTime"] as? Int64 {
            self.effectiveEndTime = value
        }
        if let value = dict["EffectiveStartTime"] as? Int64 {
            self.effectiveStartTime = value
        }
        if let value = dict["ExpireEndDate"] as? Int64 {
            self.expireEndDate = value
        }
        if let value = dict["ExpireStartDate"] as? Int64 {
            self.expireStartDate = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeCouponShrinkRequest : Tea.TeaModel {
    public var couponId: Int64?

    public var couponNo: String?

    public var couponType: String?

    public var currentPage: Int32?

    public var ecIdAccountIdsShrink: String?

    public var effectiveEndTime: Int64?

    public var effectiveStartTime: Int64?

    public var expireEndDate: Int64?

    public var expireStartDate: Int64?

    public var nbid: String?

    public var pageSize: Int32?

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
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.couponType != nil {
            map["CouponType"] = self.couponType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.effectiveEndTime != nil {
            map["EffectiveEndTime"] = self.effectiveEndTime!
        }
        if self.effectiveStartTime != nil {
            map["EffectiveStartTime"] = self.effectiveStartTime!
        }
        if self.expireEndDate != nil {
            map["ExpireEndDate"] = self.expireEndDate!
        }
        if self.expireStartDate != nil {
            map["ExpireStartDate"] = self.expireStartDate!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? Int64 {
            self.couponId = value
        }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["CouponType"] as? String {
            self.couponType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["EffectiveEndTime"] as? Int64 {
            self.effectiveEndTime = value
        }
        if let value = dict["EffectiveStartTime"] as? Int64 {
            self.effectiveStartTime = value
        }
        if let value = dict["ExpireEndDate"] as? Int64 {
            self.expireEndDate = value
        }
        if let value = dict["ExpireStartDate"] as? Int64 {
            self.expireStartDate = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeCouponResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ShareUidList : Tea.TeaModel {
            public var uid: String?

            public var userNick: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                if self.userNick != nil {
                    map["UserNick"] = self.userNick!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Uid"] as? String {
                    self.uid = value
                }
                if let value = dict["UserNick"] as? String {
                    self.userNick = value
                }
            }
        }
        public var amount: String?

        public var certainAmount: String?

        public var couponId: Int64?

        public var couponNo: String?

        public var couponType: String?

        public var couponTypeName: String?

        public var currency: String?

        public var endTime: String?

        public var firstBuy: Bool?

        public var gmtCreate: String?

        public var itemNames: [String]?

        public var moneyLimit: String?

        public var orderTimeRule: String?

        public var remainAmount: String?

        public var remark: String?

        public var shareUidList: [DescribeCouponResponseBody.Data.ShareUidList]?

        public var showSetDeductTagButton: Bool?

        public var site: String?

        public var siteName: String?

        public var startTime: String?

        public var status: String?

        public var suitAccount: String?

        public var suitItemType: String?

        public var universalType: String?

        public var yhOrderTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.certainAmount != nil {
                map["CertainAmount"] = self.certainAmount!
            }
            if self.couponId != nil {
                map["CouponId"] = self.couponId!
            }
            if self.couponNo != nil {
                map["CouponNo"] = self.couponNo!
            }
            if self.couponType != nil {
                map["CouponType"] = self.couponType!
            }
            if self.couponTypeName != nil {
                map["CouponTypeName"] = self.couponTypeName!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.firstBuy != nil {
                map["FirstBuy"] = self.firstBuy!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.itemNames != nil {
                map["ItemNames"] = self.itemNames!
            }
            if self.moneyLimit != nil {
                map["MoneyLimit"] = self.moneyLimit!
            }
            if self.orderTimeRule != nil {
                map["OrderTimeRule"] = self.orderTimeRule!
            }
            if self.remainAmount != nil {
                map["RemainAmount"] = self.remainAmount!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.shareUidList != nil {
                var tmp : [Any] = []
                for k in self.shareUidList! {
                    tmp.append(k.toMap())
                }
                map["ShareUidList"] = tmp
            }
            if self.showSetDeductTagButton != nil {
                map["ShowSetDeductTagButton"] = self.showSetDeductTagButton!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.suitAccount != nil {
                map["SuitAccount"] = self.suitAccount!
            }
            if self.suitItemType != nil {
                map["SuitItemType"] = self.suitItemType!
            }
            if self.universalType != nil {
                map["UniversalType"] = self.universalType!
            }
            if self.yhOrderTypes != nil {
                map["YhOrderTypes"] = self.yhOrderTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? String {
                self.amount = value
            }
            if let value = dict["CertainAmount"] as? String {
                self.certainAmount = value
            }
            if let value = dict["CouponId"] as? Int64 {
                self.couponId = value
            }
            if let value = dict["CouponNo"] as? String {
                self.couponNo = value
            }
            if let value = dict["CouponType"] as? String {
                self.couponType = value
            }
            if let value = dict["CouponTypeName"] as? String {
                self.couponTypeName = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FirstBuy"] as? Bool {
                self.firstBuy = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["ItemNames"] as? [String] {
                self.itemNames = value
            }
            if let value = dict["MoneyLimit"] as? String {
                self.moneyLimit = value
            }
            if let value = dict["OrderTimeRule"] as? String {
                self.orderTimeRule = value
            }
            if let value = dict["RemainAmount"] as? String {
                self.remainAmount = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["ShareUidList"] as? [Any?] {
                var tmp : [DescribeCouponResponseBody.Data.ShareUidList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCouponResponseBody.Data.ShareUidList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.shareUidList = tmp
            }
            if let value = dict["ShowSetDeductTagButton"] as? Bool {
                self.showSetDeductTagButton = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
            if let value = dict["SiteName"] as? String {
                self.siteName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SuitAccount"] as? String {
                self.suitAccount = value
            }
            if let value = dict["SuitItemType"] as? String {
                self.suitItemType = value
            }
            if let value = dict["UniversalType"] as? String {
                self.universalType = value
            }
            if let value = dict["YhOrderTypes"] as? [String] {
                self.yhOrderTypes = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [DescribeCouponResponseBody.Data]?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeCouponResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeCouponResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCouponResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCouponResponseBody?

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
            var model = DescribeCouponResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCouponItemListRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var couponId: Int64?

    public var currentPage: Int32?

    public var ecIdAccountIds: [DescribeCouponItemListRequest.EcIdAccountIds]?

    public var name: String?

    public var nbid: String?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? Int64 {
            self.couponId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [DescribeCouponItemListRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = DescribeCouponItemListRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeCouponItemListShrinkRequest : Tea.TeaModel {
    public var couponId: Int64?

    public var currentPage: Int32?

    public var ecIdAccountIdsShrink: String?

    public var name: String?

    public var nbid: String?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? Int64 {
            self.couponId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeCouponItemListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var name: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [DescribeCouponItemListResponseBody.Data]?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeCouponItemListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeCouponItemListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCouponItemListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCouponItemListResponseBody?

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
            var model = DescribeCouponItemListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserSpnSummaryInfoRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var ecIdAccountIds: [DescribeUserSpnSummaryInfoRequest.EcIdAccountIds]?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [DescribeUserSpnSummaryInfoRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserSpnSummaryInfoRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class DescribeUserSpnSummaryInfoShrinkRequest : Tea.TeaModel {
    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class DescribeUserSpnSummaryInfoResponseBody : Tea.TeaModel {
    public class RegionList : Tea.TeaModel {
        public var regionCode: String?

        public var regionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionCode != nil {
                map["RegionCode"] = self.regionCode!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionCode"] as? String {
                self.regionCode = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public class SpnCodeAndTypeList : Tea.TeaModel {
        public var productCode: String?

        public var spnCommodityCode: String?

        public var spnType: String?

        public var spnTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.spnCommodityCode != nil {
                map["SpnCommodityCode"] = self.spnCommodityCode!
            }
            if self.spnType != nil {
                map["SpnType"] = self.spnType!
            }
            if self.spnTypeName != nil {
                map["SpnTypeName"] = self.spnTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["SpnCommodityCode"] as? String {
                self.spnCommodityCode = value
            }
            if let value = dict["SpnType"] as? String {
                self.spnType = value
            }
            if let value = dict["SpnTypeName"] as? String {
                self.spnTypeName = value
            }
        }
    }
    public var instanceFamilyList: [String]?

    public var regionList: [DescribeUserSpnSummaryInfoResponseBody.RegionList]?

    public var requestId: String?

    public var spnCodeAndTypeList: [DescribeUserSpnSummaryInfoResponseBody.SpnCodeAndTypeList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceFamilyList != nil {
            map["InstanceFamilyList"] = self.instanceFamilyList!
        }
        if self.regionList != nil {
            var tmp : [Any] = []
            for k in self.regionList! {
                tmp.append(k.toMap())
            }
            map["RegionList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spnCodeAndTypeList != nil {
            var tmp : [Any] = []
            for k in self.spnCodeAndTypeList! {
                tmp.append(k.toMap())
            }
            map["SpnCodeAndTypeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceFamilyList"] as? [String] {
            self.instanceFamilyList = value
        }
        if let value = dict["RegionList"] as? [Any?] {
            var tmp : [DescribeUserSpnSummaryInfoResponseBody.RegionList] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserSpnSummaryInfoResponseBody.RegionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpnCodeAndTypeList"] as? [Any?] {
            var tmp : [DescribeUserSpnSummaryInfoResponseBody.SpnCodeAndTypeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserSpnSummaryInfoResponseBody.SpnCodeAndTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.spnCodeAndTypeList = tmp
        }
    }
}

public class DescribeUserSpnSummaryInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserSpnSummaryInfoResponseBody?

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
            var model = DescribeUserSpnSummaryInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountAvailableAmountRequest : Tea.TeaModel {
    public var fundAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FundAccountId"] as? String {
            self.fundAccountId = value
        }
    }
}

public class GetFundAccountAvailableAmountResponseBody : Tea.TeaModel {
    public class ExtendLedgerList : Tea.TeaModel {
        public var currency: String?

        public var ledgerName: String?

        public var originalAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.ledgerName != nil {
                map["LedgerName"] = self.ledgerName!
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["LedgerName"] as? String {
                self.ledgerName = value
            }
            if let value = dict["OriginalAmount"] as? String {
                self.originalAmount = value
            }
        }
    }
    public class OriginalCashAmountList : Tea.TeaModel {
        public var amount: String?

        public var currency: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? String {
                self.amount = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
        }
    }
    public var availableAmount: String?

    public var availableCreditAmount: String?

    public var bankAcceptanceAmount: String?

    public var cashAmount: String?

    public var creditAmount: String?

    public var creditRefundAmount: String?

    public var creditUser: Bool?

    public var currency: String?

    public var currentMonthUnclearedAmount: String?

    public var extendLedgerList: [GetFundAccountAvailableAmountResponseBody.ExtendLedgerList]?

    public var fundAccountId: String?

    public var fundAccountOwnerAccountId: String?

    public var fundAccountStatus: String?

    public var fundAccountType: String?

    public var historyMonthUnclearedAmount: String?

    public var metadata: Any?

    public var negativeBillAmount: String?

    public var originalCashAmountList: [GetFundAccountAvailableAmountResponseBody.OriginalCashAmountList]?

    public var quotaAmount: String?

    public var quotaConsumedAmount: String?

    public var requestId: String?

    public var unclearedAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAmount != nil {
            map["AvailableAmount"] = self.availableAmount!
        }
        if self.availableCreditAmount != nil {
            map["AvailableCreditAmount"] = self.availableCreditAmount!
        }
        if self.bankAcceptanceAmount != nil {
            map["BankAcceptanceAmount"] = self.bankAcceptanceAmount!
        }
        if self.cashAmount != nil {
            map["CashAmount"] = self.cashAmount!
        }
        if self.creditAmount != nil {
            map["CreditAmount"] = self.creditAmount!
        }
        if self.creditRefundAmount != nil {
            map["CreditRefundAmount"] = self.creditRefundAmount!
        }
        if self.creditUser != nil {
            map["CreditUser"] = self.creditUser!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.currentMonthUnclearedAmount != nil {
            map["CurrentMonthUnclearedAmount"] = self.currentMonthUnclearedAmount!
        }
        if self.extendLedgerList != nil {
            var tmp : [Any] = []
            for k in self.extendLedgerList! {
                tmp.append(k.toMap())
            }
            map["ExtendLedgerList"] = tmp
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.fundAccountOwnerAccountId != nil {
            map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
        }
        if self.fundAccountStatus != nil {
            map["FundAccountStatus"] = self.fundAccountStatus!
        }
        if self.fundAccountType != nil {
            map["FundAccountType"] = self.fundAccountType!
        }
        if self.historyMonthUnclearedAmount != nil {
            map["HistoryMonthUnclearedAmount"] = self.historyMonthUnclearedAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.negativeBillAmount != nil {
            map["NegativeBillAmount"] = self.negativeBillAmount!
        }
        if self.originalCashAmountList != nil {
            var tmp : [Any] = []
            for k in self.originalCashAmountList! {
                tmp.append(k.toMap())
            }
            map["OriginalCashAmountList"] = tmp
        }
        if self.quotaAmount != nil {
            map["QuotaAmount"] = self.quotaAmount!
        }
        if self.quotaConsumedAmount != nil {
            map["QuotaConsumedAmount"] = self.quotaConsumedAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.unclearedAmount != nil {
            map["UnclearedAmount"] = self.unclearedAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableAmount"] as? String {
            self.availableAmount = value
        }
        if let value = dict["AvailableCreditAmount"] as? String {
            self.availableCreditAmount = value
        }
        if let value = dict["BankAcceptanceAmount"] as? String {
            self.bankAcceptanceAmount = value
        }
        if let value = dict["CashAmount"] as? String {
            self.cashAmount = value
        }
        if let value = dict["CreditAmount"] as? String {
            self.creditAmount = value
        }
        if let value = dict["CreditRefundAmount"] as? String {
            self.creditRefundAmount = value
        }
        if let value = dict["CreditUser"] as? Bool {
            self.creditUser = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["CurrentMonthUnclearedAmount"] as? String {
            self.currentMonthUnclearedAmount = value
        }
        if let value = dict["ExtendLedgerList"] as? [Any?] {
            var tmp : [GetFundAccountAvailableAmountResponseBody.ExtendLedgerList] = []
            for v in value {
                if v != nil {
                    var model = GetFundAccountAvailableAmountResponseBody.ExtendLedgerList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.extendLedgerList = tmp
        }
        if let value = dict["FundAccountId"] as? String {
            self.fundAccountId = value
        }
        if let value = dict["FundAccountOwnerAccountId"] as? String {
            self.fundAccountOwnerAccountId = value
        }
        if let value = dict["FundAccountStatus"] as? String {
            self.fundAccountStatus = value
        }
        if let value = dict["FundAccountType"] as? String {
            self.fundAccountType = value
        }
        if let value = dict["HistoryMonthUnclearedAmount"] as? String {
            self.historyMonthUnclearedAmount = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["NegativeBillAmount"] as? String {
            self.negativeBillAmount = value
        }
        if let value = dict["OriginalCashAmountList"] as? [Any?] {
            var tmp : [GetFundAccountAvailableAmountResponseBody.OriginalCashAmountList] = []
            for v in value {
                if v != nil {
                    var model = GetFundAccountAvailableAmountResponseBody.OriginalCashAmountList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.originalCashAmountList = tmp
        }
        if let value = dict["QuotaAmount"] as? String {
            self.quotaAmount = value
        }
        if let value = dict["QuotaConsumedAmount"] as? String {
            self.quotaConsumedAmount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UnclearedAmount"] as? String {
            self.unclearedAmount = value
        }
    }
}

public class GetFundAccountAvailableAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountAvailableAmountResponseBody?

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
            var model = GetFundAccountAvailableAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountCanAllocateCreditAmountRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
    }
}

public class GetFundAccountCanAllocateCreditAmountResponseBody : Tea.TeaModel {
    public var ecid: String?

    public var ecidAllocatedCreditAmount: String?

    public var ecidCreditAmount: String?

    public var fundAccountEcid: String?

    public var fundAccountId: Int64?

    public var fundAccountName: String?

    public var fundAccountOwnerAccountId: Int64?

    public var maxCanAllocateCreditAmount: String?

    public var metadata: Any?

    public var minCanAllocateCreditAmount: String?

    public var nbid: String?

    public var requestId: String?

    public var site: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecid != nil {
            map["Ecid"] = self.ecid!
        }
        if self.ecidAllocatedCreditAmount != nil {
            map["EcidAllocatedCreditAmount"] = self.ecidAllocatedCreditAmount!
        }
        if self.ecidCreditAmount != nil {
            map["EcidCreditAmount"] = self.ecidCreditAmount!
        }
        if self.fundAccountEcid != nil {
            map["FundAccountEcid"] = self.fundAccountEcid!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.fundAccountName != nil {
            map["FundAccountName"] = self.fundAccountName!
        }
        if self.fundAccountOwnerAccountId != nil {
            map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
        }
        if self.maxCanAllocateCreditAmount != nil {
            map["MaxCanAllocateCreditAmount"] = self.maxCanAllocateCreditAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.minCanAllocateCreditAmount != nil {
            map["MinCanAllocateCreditAmount"] = self.minCanAllocateCreditAmount!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.site != nil {
            map["Site"] = self.site!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ecid"] as? String {
            self.ecid = value
        }
        if let value = dict["EcidAllocatedCreditAmount"] as? String {
            self.ecidAllocatedCreditAmount = value
        }
        if let value = dict["EcidCreditAmount"] as? String {
            self.ecidCreditAmount = value
        }
        if let value = dict["FundAccountEcid"] as? String {
            self.fundAccountEcid = value
        }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
        if let value = dict["FundAccountName"] as? String {
            self.fundAccountName = value
        }
        if let value = dict["FundAccountOwnerAccountId"] as? Int64 {
            self.fundAccountOwnerAccountId = value
        }
        if let value = dict["MaxCanAllocateCreditAmount"] as? String {
            self.maxCanAllocateCreditAmount = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["MinCanAllocateCreditAmount"] as? String {
            self.minCanAllocateCreditAmount = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Site"] as? String {
            self.site = value
        }
    }
}

public class GetFundAccountCanAllocateCreditAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanAllocateCreditAmountResponseBody?

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
            var model = GetFundAccountCanAllocateCreditAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountCanRecycleAmountRequest : Tea.TeaModel {
    public var currency: String?

    public var recycleFromFundAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.recycleFromFundAccountId != nil {
            map["RecycleFromFundAccountId"] = self.recycleFromFundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["RecycleFromFundAccountId"] as? String {
            self.recycleFromFundAccountId = value
        }
    }
}

public class GetFundAccountCanRecycleAmountResponseBody : Tea.TeaModel {
    public class RecycleToFundAccountList : Tea.TeaModel {
        public var fundAccountId: String?

        public var fundAccountName: String?

        public var fundAccountOwnerAccountId: String?

        public var maxRecyclableAmount: String?

        public var originalTransferRemainAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountName != nil {
                map["FundAccountName"] = self.fundAccountName!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.maxRecyclableAmount != nil {
                map["MaxRecyclableAmount"] = self.maxRecyclableAmount!
            }
            if self.originalTransferRemainAmount != nil {
                map["OriginalTransferRemainAmount"] = self.originalTransferRemainAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FundAccountId"] as? String {
                self.fundAccountId = value
            }
            if let value = dict["FundAccountName"] as? String {
                self.fundAccountName = value
            }
            if let value = dict["FundAccountOwnerAccountId"] as? String {
                self.fundAccountOwnerAccountId = value
            }
            if let value = dict["MaxRecyclableAmount"] as? String {
                self.maxRecyclableAmount = value
            }
            if let value = dict["OriginalTransferRemainAmount"] as? String {
                self.originalTransferRemainAmount = value
            }
        }
    }
    public var availableAmount: String?

    public var currency: String?

    public var metadata: Any?

    public var recycleFromFundAccountId: String?

    public var recycleToFundAccountList: [GetFundAccountCanRecycleAmountResponseBody.RecycleToFundAccountList]?

    public var requestId: String?

    public var transferAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAmount != nil {
            map["AvailableAmount"] = self.availableAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.recycleFromFundAccountId != nil {
            map["RecycleFromFundAccountId"] = self.recycleFromFundAccountId!
        }
        if self.recycleToFundAccountList != nil {
            var tmp : [Any] = []
            for k in self.recycleToFundAccountList! {
                tmp.append(k.toMap())
            }
            map["RecycleToFundAccountList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transferAmount != nil {
            map["TransferAmount"] = self.transferAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableAmount"] as? String {
            self.availableAmount = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RecycleFromFundAccountId"] as? String {
            self.recycleFromFundAccountId = value
        }
        if let value = dict["RecycleToFundAccountList"] as? [Any?] {
            var tmp : [GetFundAccountCanRecycleAmountResponseBody.RecycleToFundAccountList] = []
            for v in value {
                if v != nil {
                    var model = GetFundAccountCanRecycleAmountResponseBody.RecycleToFundAccountList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.recycleToFundAccountList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TransferAmount"] as? String {
            self.transferAmount = value
        }
    }
}

public class GetFundAccountCanRecycleAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanRecycleAmountResponseBody?

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
            var model = GetFundAccountCanRecycleAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountCanTransferAmountRequest : Tea.TeaModel {
    public var currency: String?

    public var fundAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["FundAccountId"] as? String {
            self.fundAccountId = value
        }
    }
}

public class GetFundAccountCanTransferAmountResponseBody : Tea.TeaModel {
    public var availableAmount: String?

    public var cashAmount: String?

    public var currency: String?

    public var fundAccountEcid: String?

    public var fundAccountId: Int64?

    public var fundAccountName: String?

    public var fundAccountOwnerAccountId: Int64?

    public var maxTransferableAmount: String?

    public var metadata: Any?

    public var nbid: String?

    public var requestId: String?

    public var site: String?

    public var transferAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAmount != nil {
            map["AvailableAmount"] = self.availableAmount!
        }
        if self.cashAmount != nil {
            map["CashAmount"] = self.cashAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.fundAccountEcid != nil {
            map["FundAccountEcid"] = self.fundAccountEcid!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.fundAccountName != nil {
            map["FundAccountName"] = self.fundAccountName!
        }
        if self.fundAccountOwnerAccountId != nil {
            map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
        }
        if self.maxTransferableAmount != nil {
            map["MaxTransferableAmount"] = self.maxTransferableAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.site != nil {
            map["Site"] = self.site!
        }
        if self.transferAmount != nil {
            map["TransferAmount"] = self.transferAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableAmount"] as? String {
            self.availableAmount = value
        }
        if let value = dict["CashAmount"] as? String {
            self.cashAmount = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["FundAccountEcid"] as? String {
            self.fundAccountEcid = value
        }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
        if let value = dict["FundAccountName"] as? String {
            self.fundAccountName = value
        }
        if let value = dict["FundAccountOwnerAccountId"] as? Int64 {
            self.fundAccountOwnerAccountId = value
        }
        if let value = dict["MaxTransferableAmount"] as? String {
            self.maxTransferableAmount = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Site"] as? String {
            self.site = value
        }
        if let value = dict["TransferAmount"] as? String {
            self.transferAmount = value
        }
    }
}

public class GetFundAccountCanTransferAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanTransferAmountResponseBody?

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
            var model = GetFundAccountCanTransferAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountCanWithdrawAmountRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
    }
}

public class GetFundAccountCanWithdrawAmountResponseBody : Tea.TeaModel {
    public var canOriginalWithdrawAmount: String?

    public var canWithdrawAmount: String?

    public var cannotOriginalWithdrawAmount: String?

    public var cashAmount: String?

    public var creditMemoAmount: String?

    public var currentMonthUnclearedAmount: String?

    public var historyMonthUnclearedAmount: String?

    public var metadata: Any?

    public var payAsYouGoReversedAmount: String?

    public var requestId: String?

    public var transferAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canOriginalWithdrawAmount != nil {
            map["CanOriginalWithdrawAmount"] = self.canOriginalWithdrawAmount!
        }
        if self.canWithdrawAmount != nil {
            map["CanWithdrawAmount"] = self.canWithdrawAmount!
        }
        if self.cannotOriginalWithdrawAmount != nil {
            map["CannotOriginalWithdrawAmount"] = self.cannotOriginalWithdrawAmount!
        }
        if self.cashAmount != nil {
            map["CashAmount"] = self.cashAmount!
        }
        if self.creditMemoAmount != nil {
            map["CreditMemoAmount"] = self.creditMemoAmount!
        }
        if self.currentMonthUnclearedAmount != nil {
            map["CurrentMonthUnclearedAmount"] = self.currentMonthUnclearedAmount!
        }
        if self.historyMonthUnclearedAmount != nil {
            map["HistoryMonthUnclearedAmount"] = self.historyMonthUnclearedAmount!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.payAsYouGoReversedAmount != nil {
            map["PayAsYouGoReversedAmount"] = self.payAsYouGoReversedAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.transferAmount != nil {
            map["TransferAmount"] = self.transferAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanOriginalWithdrawAmount"] as? String {
            self.canOriginalWithdrawAmount = value
        }
        if let value = dict["CanWithdrawAmount"] as? String {
            self.canWithdrawAmount = value
        }
        if let value = dict["CannotOriginalWithdrawAmount"] as? String {
            self.cannotOriginalWithdrawAmount = value
        }
        if let value = dict["CashAmount"] as? String {
            self.cashAmount = value
        }
        if let value = dict["CreditMemoAmount"] as? String {
            self.creditMemoAmount = value
        }
        if let value = dict["CurrentMonthUnclearedAmount"] as? String {
            self.currentMonthUnclearedAmount = value
        }
        if let value = dict["HistoryMonthUnclearedAmount"] as? String {
            self.historyMonthUnclearedAmount = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["PayAsYouGoReversedAmount"] as? String {
            self.payAsYouGoReversedAmount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TransferAmount"] as? String {
            self.transferAmount = value
        }
    }
}

public class GetFundAccountCanWithdrawAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountCanWithdrawAmountResponseBody?

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
            var model = GetFundAccountCanWithdrawAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountLowAvailableAmountAlarmRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
    }
}

public class GetFundAccountLowAvailableAmountAlarmResponseBody : Tea.TeaModel {
    public var alarmEnabled: Bool?

    public var metadata: Any?

    public var requestId: String?

    public var thresholdAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmEnabled != nil {
            map["AlarmEnabled"] = self.alarmEnabled!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.thresholdAmount != nil {
            map["ThresholdAmount"] = self.thresholdAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmEnabled"] as? Bool {
            self.alarmEnabled = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ThresholdAmount"] as? String {
            self.thresholdAmount = value
        }
    }
}

public class GetFundAccountLowAvailableAmountAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountLowAvailableAmountAlarmResponseBody?

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
            var model = GetFundAccountLowAvailableAmountAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFundAccountTransactionDetailsRequest : Tea.TeaModel {
    public var billNumber: String?

    public var channelTransactionNumber: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var fundAccountId: Int64?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var transactionChannelList: [String]?

    public var transactionDirection: String?

    public var transactionNumber: Int64?

    public var transactionType: String?

    public var transactionTypeList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billNumber != nil {
            map["BillNumber"] = self.billNumber!
        }
        if self.channelTransactionNumber != nil {
            map["ChannelTransactionNumber"] = self.channelTransactionNumber!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.transactionChannelList != nil {
            map["TransactionChannelList"] = self.transactionChannelList!
        }
        if self.transactionDirection != nil {
            map["TransactionDirection"] = self.transactionDirection!
        }
        if self.transactionNumber != nil {
            map["TransactionNumber"] = self.transactionNumber!
        }
        if self.transactionType != nil {
            map["TransactionType"] = self.transactionType!
        }
        if self.transactionTypeList != nil {
            map["TransactionTypeList"] = self.transactionTypeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillNumber"] as? String {
            self.billNumber = value
        }
        if let value = dict["ChannelTransactionNumber"] as? String {
            self.channelTransactionNumber = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TransactionChannelList"] as? [String] {
            self.transactionChannelList = value
        }
        if let value = dict["TransactionDirection"] as? String {
            self.transactionDirection = value
        }
        if let value = dict["TransactionNumber"] as? Int64 {
            self.transactionNumber = value
        }
        if let value = dict["TransactionType"] as? String {
            self.transactionType = value
        }
        if let value = dict["TransactionTypeList"] as? [String] {
            self.transactionTypeList = value
        }
    }
}

public class GetFundAccountTransactionDetailsShrinkRequest : Tea.TeaModel {
    public var billNumber: String?

    public var channelTransactionNumber: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var fundAccountId: Int64?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var transactionChannelListShrink: String?

    public var transactionDirection: String?

    public var transactionNumber: Int64?

    public var transactionType: String?

    public var transactionTypeListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billNumber != nil {
            map["BillNumber"] = self.billNumber!
        }
        if self.channelTransactionNumber != nil {
            map["ChannelTransactionNumber"] = self.channelTransactionNumber!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.transactionChannelListShrink != nil {
            map["TransactionChannelList"] = self.transactionChannelListShrink!
        }
        if self.transactionDirection != nil {
            map["TransactionDirection"] = self.transactionDirection!
        }
        if self.transactionNumber != nil {
            map["TransactionNumber"] = self.transactionNumber!
        }
        if self.transactionType != nil {
            map["TransactionType"] = self.transactionType!
        }
        if self.transactionTypeListShrink != nil {
            map["TransactionTypeList"] = self.transactionTypeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillNumber"] as? String {
            self.billNumber = value
        }
        if let value = dict["ChannelTransactionNumber"] as? String {
            self.channelTransactionNumber = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TransactionChannelList"] as? String {
            self.transactionChannelListShrink = value
        }
        if let value = dict["TransactionDirection"] as? String {
            self.transactionDirection = value
        }
        if let value = dict["TransactionNumber"] as? Int64 {
            self.transactionNumber = value
        }
        if let value = dict["TransactionType"] as? String {
            self.transactionType = value
        }
        if let value = dict["TransactionTypeList"] as? String {
            self.transactionTypeListShrink = value
        }
    }
}

public class GetFundAccountTransactionDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var balance: String?

        public var billNumber: String?

        public var channelTransactionNumber: String?

        public var currency: String?

        public var fundAccountEcid: String?

        public var fundAccountId: Int64?

        public var fundAccountName: String?

        public var fundAccountOwnerAccountId: Int64?

        public var fundType: String?

        public var nbid: String?

        public var remark: String?

        public var site: String?

        public var transactionAccount: String?

        public var transactionAmount: String?

        public var transactionChannel: String?

        public var transactionDirection: String?

        public var transactionNumber: Int64?

        public var transactionTime: String?

        public var transactionType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.balance != nil {
                map["Balance"] = self.balance!
            }
            if self.billNumber != nil {
                map["BillNumber"] = self.billNumber!
            }
            if self.channelTransactionNumber != nil {
                map["ChannelTransactionNumber"] = self.channelTransactionNumber!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.fundAccountEcid != nil {
                map["FundAccountEcid"] = self.fundAccountEcid!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountName != nil {
                map["FundAccountName"] = self.fundAccountName!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.fundType != nil {
                map["FundType"] = self.fundType!
            }
            if self.nbid != nil {
                map["Nbid"] = self.nbid!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.transactionAccount != nil {
                map["TransactionAccount"] = self.transactionAccount!
            }
            if self.transactionAmount != nil {
                map["TransactionAmount"] = self.transactionAmount!
            }
            if self.transactionChannel != nil {
                map["TransactionChannel"] = self.transactionChannel!
            }
            if self.transactionDirection != nil {
                map["TransactionDirection"] = self.transactionDirection!
            }
            if self.transactionNumber != nil {
                map["TransactionNumber"] = self.transactionNumber!
            }
            if self.transactionTime != nil {
                map["TransactionTime"] = self.transactionTime!
            }
            if self.transactionType != nil {
                map["TransactionType"] = self.transactionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Balance"] as? String {
                self.balance = value
            }
            if let value = dict["BillNumber"] as? String {
                self.billNumber = value
            }
            if let value = dict["ChannelTransactionNumber"] as? String {
                self.channelTransactionNumber = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["FundAccountEcid"] as? String {
                self.fundAccountEcid = value
            }
            if let value = dict["FundAccountId"] as? Int64 {
                self.fundAccountId = value
            }
            if let value = dict["FundAccountName"] as? String {
                self.fundAccountName = value
            }
            if let value = dict["FundAccountOwnerAccountId"] as? Int64 {
                self.fundAccountOwnerAccountId = value
            }
            if let value = dict["FundType"] as? String {
                self.fundType = value
            }
            if let value = dict["Nbid"] as? String {
                self.nbid = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
            if let value = dict["TransactionAccount"] as? String {
                self.transactionAccount = value
            }
            if let value = dict["TransactionAmount"] as? String {
                self.transactionAmount = value
            }
            if let value = dict["TransactionChannel"] as? String {
                self.transactionChannel = value
            }
            if let value = dict["TransactionDirection"] as? String {
                self.transactionDirection = value
            }
            if let value = dict["TransactionNumber"] as? Int64 {
                self.transactionNumber = value
            }
            if let value = dict["TransactionTime"] as? String {
                self.transactionTime = value
            }
            if let value = dict["TransactionType"] as? String {
                self.transactionType = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [GetFundAccountTransactionDetailsResponseBody.Data]?

    public var metadata: Any?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetFundAccountTransactionDetailsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetFundAccountTransactionDetailsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetFundAccountTransactionDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFundAccountTransactionDetailsResponseBody?

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
            var model = GetFundAccountTransactionDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOrderDetailRequest : Tea.TeaModel {
    public var memberUid: Int64?

    public var orderId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
    }
}

public class GetOrderDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public class Order : Tea.TeaModel {
                public class BillModuleConfig : Tea.TeaModel {
                    public class BillModuleConfig : Tea.TeaModel {
                        public class BillModuleProperties : Tea.TeaModel {
                            public class BillModuleProperties : Tea.TeaModel {
                                public var attrApiCode: String?

                                public var moduleApiCode: String?

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
                                    if self.attrApiCode != nil {
                                        map["AttrApiCode"] = self.attrApiCode!
                                    }
                                    if self.moduleApiCode != nil {
                                        map["ModuleApiCode"] = self.moduleApiCode!
                                    }
                                    if self.value != nil {
                                        map["Value"] = self.value!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["AttrApiCode"] as? String {
                                        self.attrApiCode = value
                                    }
                                    if let value = dict["ModuleApiCode"] as? String {
                                        self.moduleApiCode = value
                                    }
                                    if let value = dict["Value"] as? String {
                                        self.value = value
                                    }
                                }
                            }
                            public var billModuleProperties: [GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig.BillModuleProperties.BillModuleProperties]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.billModuleProperties != nil {
                                    var tmp : [Any] = []
                                    for k in self.billModuleProperties! {
                                        tmp.append(k.toMap())
                                    }
                                    map["billModuleProperties"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["billModuleProperties"] as? [Any?] {
                                    var tmp : [GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig.BillModuleProperties.BillModuleProperties] = []
                                    for v in value {
                                        if v != nil {
                                            var model = GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig.BillModuleProperties.BillModuleProperties()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.billModuleProperties = tmp
                                }
                            }
                        }
                        public var apiCode: String?

                        public var billModuleProperties: GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig.BillModuleProperties?

                        public var code: String?

                        public var name: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.billModuleProperties?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.apiCode != nil {
                                map["ApiCode"] = self.apiCode!
                            }
                            if self.billModuleProperties != nil {
                                map["BillModuleProperties"] = self.billModuleProperties?.toMap()
                            }
                            if self.code != nil {
                                map["Code"] = self.code!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ApiCode"] as? String {
                                self.apiCode = value
                            }
                            if let value = dict["BillModuleProperties"] as? [String: Any?] {
                                var model = GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig.BillModuleProperties()
                                model.fromMap(value)
                                self.billModuleProperties = model
                            }
                            if let value = dict["Code"] as? String {
                                self.code = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var billModuleConfig: [GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.billModuleConfig != nil {
                            var tmp : [Any] = []
                            for k in self.billModuleConfig! {
                                tmp.append(k.toMap())
                            }
                            map["billModuleConfig"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["billModuleConfig"] as? [Any?] {
                            var tmp : [GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig] = []
                            for v in value {
                                if v != nil {
                                    var model = GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig.BillModuleConfig()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.billModuleConfig = tmp
                        }
                    }
                }
                public class OriginalModuleConfig : Tea.TeaModel {
                    public class OriginalModuleConfig : Tea.TeaModel {
                        public class ModuleProperties : Tea.TeaModel {
                            public class ModuleProperties : Tea.TeaModel {
                                public var code: String?

                                public var name: String?

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
                                    if self.code != nil {
                                        map["Code"] = self.code!
                                    }
                                    if self.name != nil {
                                        map["Name"] = self.name!
                                    }
                                    if self.value != nil {
                                        map["Value"] = self.value!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Code"] as? String {
                                        self.code = value
                                    }
                                    if let value = dict["Name"] as? String {
                                        self.name = value
                                    }
                                    if let value = dict["Value"] as? String {
                                        self.value = value
                                    }
                                }
                            }
                            public var moduleProperties: [GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig.ModuleProperties.ModuleProperties]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.moduleProperties != nil {
                                    var tmp : [Any] = []
                                    for k in self.moduleProperties! {
                                        tmp.append(k.toMap())
                                    }
                                    map["moduleProperties"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["moduleProperties"] as? [Any?] {
                                    var tmp : [GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig.ModuleProperties.ModuleProperties] = []
                                    for v in value {
                                        if v != nil {
                                            var model = GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig.ModuleProperties.ModuleProperties()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.moduleProperties = tmp
                                }
                            }
                        }
                        public var code: String?

                        public var moduleProperties: GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig.ModuleProperties?

                        public var name: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.moduleProperties?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.code != nil {
                                map["Code"] = self.code!
                            }
                            if self.moduleProperties != nil {
                                map["ModuleProperties"] = self.moduleProperties?.toMap()
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Code"] as? String {
                                self.code = value
                            }
                            if let value = dict["ModuleProperties"] as? [String: Any?] {
                                var model = GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig.ModuleProperties()
                                model.fromMap(value)
                                self.moduleProperties = model
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var originalModuleConfig: [GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.originalModuleConfig != nil {
                            var tmp : [Any] = []
                            for k in self.originalModuleConfig! {
                                tmp.append(k.toMap())
                            }
                            map["originalModuleConfig"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["originalModuleConfig"] as? [Any?] {
                            var tmp : [GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig] = []
                            for v in value {
                                if v != nil {
                                    var model = GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig.OriginalModuleConfig()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.originalModuleConfig = tmp
                        }
                    }
                }
                public var afterTaxAmount: String?

                public var billModuleConfig: GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig?

                public var commodityCode: String?

                public var config: String?

                public var createTime: String?

                public var currency: String?

                public var extendInfos: [String: String]?

                public var instanceIds: String?

                public var operator_: String?

                public var orderId: String?

                public var orderSubType: String?

                public var orderType: String?

                public var originalConfig: String?

                public var originalModuleConfig: GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig?

                public var paymentCurrency: String?

                public var paymentStatus: String?

                public var paymentTime: String?

                public var pretaxAmount: String?

                public var pretaxAmountLocal: String?

                public var pretaxGrossAmount: String?

                public var productCode: String?

                public var productType: String?

                public var quantity: String?

                public var region: String?

                public var relatedOrderId: String?

                public var subOrderId: String?

                public var subscriptionType: String?

                public var tax: String?

                public var usageEndTime: String?

                public var usageStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.billModuleConfig?.validate()
                    try self.originalModuleConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.billModuleConfig != nil {
                        map["BillModuleConfig"] = self.billModuleConfig?.toMap()
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.config != nil {
                        map["Config"] = self.config!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.extendInfos != nil {
                        map["ExtendInfos"] = self.extendInfos!
                    }
                    if self.instanceIds != nil {
                        map["InstanceIds"] = self.instanceIds!
                    }
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderSubType != nil {
                        map["OrderSubType"] = self.orderSubType!
                    }
                    if self.orderType != nil {
                        map["OrderType"] = self.orderType!
                    }
                    if self.originalConfig != nil {
                        map["OriginalConfig"] = self.originalConfig!
                    }
                    if self.originalModuleConfig != nil {
                        map["OriginalModuleConfig"] = self.originalModuleConfig?.toMap()
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentStatus != nil {
                        map["PaymentStatus"] = self.paymentStatus!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.relatedOrderId != nil {
                        map["RelatedOrderId"] = self.relatedOrderId!
                    }
                    if self.subOrderId != nil {
                        map["SubOrderId"] = self.subOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    if self.usageEndTime != nil {
                        map["UsageEndTime"] = self.usageEndTime!
                    }
                    if self.usageStartTime != nil {
                        map["UsageStartTime"] = self.usageStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AfterTaxAmount"] as? String {
                        self.afterTaxAmount = value
                    }
                    if let value = dict["BillModuleConfig"] as? [String: Any?] {
                        var model = GetOrderDetailResponseBody.Data.OrderList.Order.BillModuleConfig()
                        model.fromMap(value)
                        self.billModuleConfig = model
                    }
                    if let value = dict["CommodityCode"] as? String {
                        self.commodityCode = value
                    }
                    if let value = dict["Config"] as? String {
                        self.config = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Currency"] as? String {
                        self.currency = value
                    }
                    if let value = dict["ExtendInfos"] as? [String: String] {
                        self.extendInfos = value
                    }
                    if let value = dict["InstanceIds"] as? String {
                        self.instanceIds = value
                    }
                    if let value = dict["Operator"] as? String {
                        self.operator_ = value
                    }
                    if let value = dict["OrderId"] as? String {
                        self.orderId = value
                    }
                    if let value = dict["OrderSubType"] as? String {
                        self.orderSubType = value
                    }
                    if let value = dict["OrderType"] as? String {
                        self.orderType = value
                    }
                    if let value = dict["OriginalConfig"] as? String {
                        self.originalConfig = value
                    }
                    if let value = dict["OriginalModuleConfig"] as? [String: Any?] {
                        var model = GetOrderDetailResponseBody.Data.OrderList.Order.OriginalModuleConfig()
                        model.fromMap(value)
                        self.originalModuleConfig = model
                    }
                    if let value = dict["PaymentCurrency"] as? String {
                        self.paymentCurrency = value
                    }
                    if let value = dict["PaymentStatus"] as? String {
                        self.paymentStatus = value
                    }
                    if let value = dict["PaymentTime"] as? String {
                        self.paymentTime = value
                    }
                    if let value = dict["PretaxAmount"] as? String {
                        self.pretaxAmount = value
                    }
                    if let value = dict["PretaxAmountLocal"] as? String {
                        self.pretaxAmountLocal = value
                    }
                    if let value = dict["PretaxGrossAmount"] as? String {
                        self.pretaxGrossAmount = value
                    }
                    if let value = dict["ProductCode"] as? String {
                        self.productCode = value
                    }
                    if let value = dict["ProductType"] as? String {
                        self.productType = value
                    }
                    if let value = dict["Quantity"] as? String {
                        self.quantity = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["RelatedOrderId"] as? String {
                        self.relatedOrderId = value
                    }
                    if let value = dict["SubOrderId"] as? String {
                        self.subOrderId = value
                    }
                    if let value = dict["SubscriptionType"] as? String {
                        self.subscriptionType = value
                    }
                    if let value = dict["Tax"] as? String {
                        self.tax = value
                    }
                    if let value = dict["UsageEndTime"] as? String {
                        self.usageEndTime = value
                    }
                    if let value = dict["UsageStartTime"] as? String {
                        self.usageStartTime = value
                    }
                }
            }
            public var order: [GetOrderDetailResponseBody.Data.OrderList.Order]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.order != nil {
                    var tmp : [Any] = []
                    for k in self.order! {
                        tmp.append(k.toMap())
                    }
                    map["Order"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Order"] as? [Any?] {
                    var tmp : [GetOrderDetailResponseBody.Data.OrderList.Order] = []
                    for v in value {
                        if v != nil {
                            var model = GetOrderDetailResponseBody.Data.OrderList.Order()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.order = tmp
                }
            }
        }
        public var hostName: String?

        public var orderList: GetOrderDetailResponseBody.Data.OrderList?

        public var pageNum: Int32?

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
            try self.orderList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.orderList != nil {
                map["OrderList"] = self.orderList?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["OrderList"] as? [String: Any?] {
                var model = GetOrderDetailResponseBody.Data.OrderList()
                model.fromMap(value)
                self.orderList = model
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: GetOrderDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetOrderDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOrderDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrderDetailResponseBody?

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
            var model = GetOrderDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOrdersRequest : Tea.TeaModel {
    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var memberUid: Int64?

    public var orderType: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var paymentStatus: String?

    public var productCode: String?

    public var productType: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentStatus != nil {
            map["PaymentStatus"] = self.paymentStatus!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["CreateTimeStart"] as? String {
            self.createTimeStart = value
        }
        if let value = dict["MemberUid"] as? Int64 {
            self.memberUid = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentStatus"] as? String {
            self.paymentStatus = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SubscriptionType"] as? String {
            self.subscriptionType = value
        }
    }
}

public class GetOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public class Order : Tea.TeaModel {
                public var afterTaxAmount: String?

                public var commodityCode: String?

                public var createTime: String?

                public var currency: String?

                public var orderId: String?

                public var orderType: String?

                public var paymentCurrency: String?

                public var paymentStatus: String?

                public var paymentTime: String?

                public var pretaxAmount: String?

                public var pretaxAmountLocal: String?

                public var pretaxGrossAmount: String?

                public var productCode: String?

                public var productType: String?

                public var relatedOrderId: String?

                public var subscriptionType: String?

                public var tax: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.afterTaxAmount != nil {
                        map["AfterTaxAmount"] = self.afterTaxAmount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.currency != nil {
                        map["Currency"] = self.currency!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderType != nil {
                        map["OrderType"] = self.orderType!
                    }
                    if self.paymentCurrency != nil {
                        map["PaymentCurrency"] = self.paymentCurrency!
                    }
                    if self.paymentStatus != nil {
                        map["PaymentStatus"] = self.paymentStatus!
                    }
                    if self.paymentTime != nil {
                        map["PaymentTime"] = self.paymentTime!
                    }
                    if self.pretaxAmount != nil {
                        map["PretaxAmount"] = self.pretaxAmount!
                    }
                    if self.pretaxAmountLocal != nil {
                        map["PretaxAmountLocal"] = self.pretaxAmountLocal!
                    }
                    if self.pretaxGrossAmount != nil {
                        map["PretaxGrossAmount"] = self.pretaxGrossAmount!
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    if self.relatedOrderId != nil {
                        map["RelatedOrderId"] = self.relatedOrderId!
                    }
                    if self.subscriptionType != nil {
                        map["SubscriptionType"] = self.subscriptionType!
                    }
                    if self.tax != nil {
                        map["Tax"] = self.tax!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AfterTaxAmount"] as? String {
                        self.afterTaxAmount = value
                    }
                    if let value = dict["CommodityCode"] as? String {
                        self.commodityCode = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Currency"] as? String {
                        self.currency = value
                    }
                    if let value = dict["OrderId"] as? String {
                        self.orderId = value
                    }
                    if let value = dict["OrderType"] as? String {
                        self.orderType = value
                    }
                    if let value = dict["PaymentCurrency"] as? String {
                        self.paymentCurrency = value
                    }
                    if let value = dict["PaymentStatus"] as? String {
                        self.paymentStatus = value
                    }
                    if let value = dict["PaymentTime"] as? String {
                        self.paymentTime = value
                    }
                    if let value = dict["PretaxAmount"] as? String {
                        self.pretaxAmount = value
                    }
                    if let value = dict["PretaxAmountLocal"] as? String {
                        self.pretaxAmountLocal = value
                    }
                    if let value = dict["PretaxGrossAmount"] as? String {
                        self.pretaxGrossAmount = value
                    }
                    if let value = dict["ProductCode"] as? String {
                        self.productCode = value
                    }
                    if let value = dict["ProductType"] as? String {
                        self.productType = value
                    }
                    if let value = dict["RelatedOrderId"] as? String {
                        self.relatedOrderId = value
                    }
                    if let value = dict["SubscriptionType"] as? String {
                        self.subscriptionType = value
                    }
                    if let value = dict["Tax"] as? String {
                        self.tax = value
                    }
                }
            }
            public var order: [GetOrdersResponseBody.Data.OrderList.Order]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.order != nil {
                    var tmp : [Any] = []
                    for k in self.order! {
                        tmp.append(k.toMap())
                    }
                    map["Order"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Order"] as? [Any?] {
                    var tmp : [GetOrdersResponseBody.Data.OrderList.Order] = []
                    for v in value {
                        if v != nil {
                            var model = GetOrdersResponseBody.Data.OrderList.Order()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.order = tmp
                }
            }
        }
        public var hostName: String?

        public var orderList: GetOrdersResponseBody.Data.OrderList?

        public var pageNum: Int32?

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
            try self.orderList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.orderList != nil {
                map["OrderList"] = self.orderList?.toMap()
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["OrderList"] as? [String: Any?] {
                var model = GetOrdersResponseBody.Data.OrderList()
                model.fromMap(value)
                self.orderList = model
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: GetOrdersResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetOrdersResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrdersResponseBody?

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
            var model = GetOrdersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSavingPlanDeductableCommodityRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var ecIdAccountIds: [GetSavingPlanDeductableCommodityRequest.EcIdAccountIds]?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [GetSavingPlanDeductableCommodityRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = GetSavingPlanDeductableCommodityRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class GetSavingPlanDeductableCommodityShrinkRequest : Tea.TeaModel {
    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class GetSavingPlanDeductableCommodityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CycleList : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class FilterModules : Tea.TeaModel {
            public var moduleCode: String?

            public var moduleId: Int64?

            public var moduleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleCode != nil {
                    map["ModuleCode"] = self.moduleCode!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModuleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["ModuleId"] as? Int64 {
                    self.moduleId = value
                }
                if let value = dict["ModuleName"] as? String {
                    self.moduleName = value
                }
            }
        }
        public class ModuleMapList : Tea.TeaModel {
            public class FilterModules : Tea.TeaModel {
                public var moduleCode: String?

                public var moduleId: Int64?

                public var moduleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.moduleCode != nil {
                        map["ModuleCode"] = self.moduleCode!
                    }
                    if self.moduleId != nil {
                        map["ModuleId"] = self.moduleId!
                    }
                    if self.moduleName != nil {
                        map["ModuleName"] = self.moduleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ModuleCode"] as? String {
                        self.moduleCode = value
                    }
                    if let value = dict["ModuleId"] as? Int64 {
                        self.moduleId = value
                    }
                    if let value = dict["ModuleName"] as? String {
                        self.moduleName = value
                    }
                }
            }
            public class ShowModules : Tea.TeaModel {
                public var moduleCode: String?

                public var moduleId: Int64?

                public var moduleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.moduleCode != nil {
                        map["ModuleCode"] = self.moduleCode!
                    }
                    if self.moduleId != nil {
                        map["ModuleId"] = self.moduleId!
                    }
                    if self.moduleName != nil {
                        map["ModuleName"] = self.moduleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ModuleCode"] as? String {
                        self.moduleCode = value
                    }
                    if let value = dict["ModuleId"] as? Int64 {
                        self.moduleId = value
                    }
                    if let value = dict["ModuleName"] as? String {
                        self.moduleName = value
                    }
                }
            }
            public class SpnTypeNameList : Tea.TeaModel {
                public var code: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public var filterModules: [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.FilterModules]?

            public var moduleCode: String?

            public var moduleId: Int64?

            public var moduleName: String?

            public var showModules: [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.ShowModules]?

            public var spnTypeList: [String]?

            public var spnTypeMapList: [[String: DataModuleMapListSpnTypeMapListValue]]?

            public var spnTypeNameList: [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.SpnTypeNameList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.filterModules != nil {
                    var tmp : [Any] = []
                    for k in self.filterModules! {
                        tmp.append(k.toMap())
                    }
                    map["FilterModules"] = tmp
                }
                if self.moduleCode != nil {
                    map["ModuleCode"] = self.moduleCode!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.showModules != nil {
                    var tmp : [Any] = []
                    for k in self.showModules! {
                        tmp.append(k.toMap())
                    }
                    map["ShowModules"] = tmp
                }
                if self.spnTypeList != nil {
                    map["SpnTypeList"] = self.spnTypeList!
                }
                if self.spnTypeMapList != nil {
                    var tmp : [Any] = []
                    for k in self.spnTypeMapList! {
                        var d1 : [String: Any] = [:]
                        for (k1 ,v1) in k! {
                        }
                        tmp.append(d1)
                    }
                    map["SpnTypeMapList"] = tmp
                }
                if self.spnTypeNameList != nil {
                    var tmp : [Any] = []
                    for k in self.spnTypeNameList! {
                        tmp.append(k.toMap())
                    }
                    map["SpnTypeNameList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FilterModules"] as? [Any?] {
                    var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.FilterModules] = []
                    for v in value {
                        if v != nil {
                            var model = GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.FilterModules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.filterModules = tmp
                }
                if let value = dict["ModuleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["ModuleId"] as? Int64 {
                    self.moduleId = value
                }
                if let value = dict["ModuleName"] as? String {
                    self.moduleName = value
                }
                if let value = dict["ShowModules"] as? [Any?] {
                    var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.ShowModules] = []
                    for v in value {
                        if v != nil {
                            var model = GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.ShowModules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.showModules = tmp
                }
                if let value = dict["SpnTypeList"] as? [String] {
                    self.spnTypeList = value
                }
                if let value = dict["SpnTypeMapList"] as? [Any?] {
                    var tmp : [[String: DataModuleMapListSpnTypeMapListValue]] = []
                    for v in value {
                        if v != nil {
                            d1 : [String: DataModuleMapListSpnTypeMapListValue] = {}
                            for (k1, v1) in v {
                                if v1 != nil {
                                    var model = DataModuleMapListSpnTypeMapListValue()
                                    model.fromMap(v1 as? [String: Any?])
                                    d1[k1] = model
                                }
                            }
                            tmp.append(d1)
                        }
                    }
                    self.spnTypeMapList = tmp
                }
                if let value = dict["SpnTypeNameList"] as? [Any?] {
                    var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.SpnTypeNameList] = []
                    for v in value {
                        if v != nil {
                            var model = GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList.SpnTypeNameList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.spnTypeNameList = tmp
                }
            }
        }
        public class PayModeList : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class PricingModules : Tea.TeaModel {
            public var moduleCode: String?

            public var moduleId: Int64?

            public var moduleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleCode != nil {
                    map["ModuleCode"] = self.moduleCode!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModuleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["ModuleId"] as? Int64 {
                    self.moduleId = value
                }
                if let value = dict["ModuleName"] as? String {
                    self.moduleName = value
                }
            }
        }
        public var activityId: Int64?

        public var commodityCode: String?

        public var commodityId: Int64?

        public var commodityName: String?

        public var cycleList: [GetSavingPlanDeductableCommodityResponseBody.Data.CycleList]?

        public var filterModules: [GetSavingPlanDeductableCommodityResponseBody.Data.FilterModules]?

        public var itemCode: String?

        public var itemId: Int64?

        public var itemName: String?

        public var moduleMapList: [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList]?

        public var payModeList: [GetSavingPlanDeductableCommodityResponseBody.Data.PayModeList]?

        public var pricingModules: [GetSavingPlanDeductableCommodityResponseBody.Data.PricingModules]?

        public var spnCommodityCode: String?

        public var spnCommodityName: String?

        public var spnDiscountConfigType: String?

        public var stepPriceMap: [String: [DataStepPriceMapValue]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityId != nil {
                map["ActivityId"] = self.activityId!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityId != nil {
                map["CommodityId"] = self.commodityId!
            }
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.cycleList != nil {
                var tmp : [Any] = []
                for k in self.cycleList! {
                    tmp.append(k.toMap())
                }
                map["CycleList"] = tmp
            }
            if self.filterModules != nil {
                var tmp : [Any] = []
                for k in self.filterModules! {
                    tmp.append(k.toMap())
                }
                map["FilterModules"] = tmp
            }
            if self.itemCode != nil {
                map["ItemCode"] = self.itemCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemName != nil {
                map["ItemName"] = self.itemName!
            }
            if self.moduleMapList != nil {
                var tmp : [Any] = []
                for k in self.moduleMapList! {
                    tmp.append(k.toMap())
                }
                map["ModuleMapList"] = tmp
            }
            if self.payModeList != nil {
                var tmp : [Any] = []
                for k in self.payModeList! {
                    tmp.append(k.toMap())
                }
                map["PayModeList"] = tmp
            }
            if self.pricingModules != nil {
                var tmp : [Any] = []
                for k in self.pricingModules! {
                    tmp.append(k.toMap())
                }
                map["PricingModules"] = tmp
            }
            if self.spnCommodityCode != nil {
                map["SpnCommodityCode"] = self.spnCommodityCode!
            }
            if self.spnCommodityName != nil {
                map["SpnCommodityName"] = self.spnCommodityName!
            }
            if self.spnDiscountConfigType != nil {
                map["SpnDiscountConfigType"] = self.spnDiscountConfigType!
            }
            if self.stepPriceMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.stepPriceMap! {
                    var l1 : [Any] = []
                    for k1 in v {
                        l1.append(k1.toMap())
                    }
                    tmp[k] = l1
                }
                map["StepPriceMap"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityId"] as? Int64 {
                self.activityId = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityId"] as? Int64 {
                self.commodityId = value
            }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["CycleList"] as? [Any?] {
                var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.CycleList] = []
                for v in value {
                    if v != nil {
                        var model = GetSavingPlanDeductableCommodityResponseBody.Data.CycleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cycleList = tmp
            }
            if let value = dict["FilterModules"] as? [Any?] {
                var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.FilterModules] = []
                for v in value {
                    if v != nil {
                        var model = GetSavingPlanDeductableCommodityResponseBody.Data.FilterModules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.filterModules = tmp
            }
            if let value = dict["ItemCode"] as? String {
                self.itemCode = value
            }
            if let value = dict["ItemId"] as? Int64 {
                self.itemId = value
            }
            if let value = dict["ItemName"] as? String {
                self.itemName = value
            }
            if let value = dict["ModuleMapList"] as? [Any?] {
                var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList] = []
                for v in value {
                    if v != nil {
                        var model = GetSavingPlanDeductableCommodityResponseBody.Data.ModuleMapList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.moduleMapList = tmp
            }
            if let value = dict["PayModeList"] as? [Any?] {
                var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.PayModeList] = []
                for v in value {
                    if v != nil {
                        var model = GetSavingPlanDeductableCommodityResponseBody.Data.PayModeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.payModeList = tmp
            }
            if let value = dict["PricingModules"] as? [Any?] {
                var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data.PricingModules] = []
                for v in value {
                    if v != nil {
                        var model = GetSavingPlanDeductableCommodityResponseBody.Data.PricingModules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pricingModules = tmp
            }
            if let value = dict["SpnCommodityCode"] as? String {
                self.spnCommodityCode = value
            }
            if let value = dict["SpnCommodityName"] as? String {
                self.spnCommodityName = value
            }
            if let value = dict["SpnDiscountConfigType"] as? String {
                self.spnDiscountConfigType = value
            }
            if let value = dict["StepPriceMap"] as? [String: Any?] {
                var tmp : [String: [DataStepPriceMapValue]] = [:]
                for (k, v) in value {
                    var l1 : [DataStepPriceMapValue] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = DataStepPriceMapValue()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp[k] = l1
                }
                self.stepPriceMap = tmp
            }
        }
    }
    public var data: [GetSavingPlanDeductableCommodityResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetSavingPlanDeductableCommodityResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSavingPlanDeductableCommodityResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSavingPlanDeductableCommodityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSavingPlanDeductableCommodityResponseBody?

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
            var model = GetSavingPlanDeductableCommodityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSavingPlanShareAccountsRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var currentPage: Int32?

    public var ecIdAccountIds: [GetSavingPlanShareAccountsRequest.EcIdAccountIds]?

    public var nbid: String?

    public var pageSize: Int32?

    public var spnInstanceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [GetSavingPlanShareAccountsRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = GetSavingPlanShareAccountsRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SpnInstanceCode"] as? String {
            self.spnInstanceCode = value
        }
    }
}

public class GetSavingPlanShareAccountsShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var pageSize: Int32?

    public var spnInstanceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SpnInstanceCode"] as? String {
            self.spnInstanceCode = value
        }
    }
}

public class GetSavingPlanShareAccountsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ShareTimeList : Tea.TeaModel {
            public var shareEndTime: String?

            public var shareStartTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.shareEndTime != nil {
                    map["ShareEndTime"] = self.shareEndTime!
                }
                if self.shareStartTime != nil {
                    map["ShareStartTime"] = self.shareStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ShareEndTime"] as? String {
                    self.shareEndTime = value
                }
                if let value = dict["ShareStartTime"] as? String {
                    self.shareStartTime = value
                }
            }
        }
        public var accountId: String?

        public var aliUid: Int64?

        public var shareTimeList: [GetSavingPlanShareAccountsResponseBody.Data.ShareTimeList]?

        public override init() {
            super.init()
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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.shareTimeList != nil {
                var tmp : [Any] = []
                for k in self.shareTimeList! {
                    tmp.append(k.toMap())
                }
                map["ShareTimeList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["ShareTimeList"] as? [Any?] {
                var tmp : [GetSavingPlanShareAccountsResponseBody.Data.ShareTimeList] = []
                for v in value {
                    if v != nil {
                        var model = GetSavingPlanShareAccountsResponseBody.Data.ShareTimeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.shareTimeList = tmp
            }
        }
    }
    public var data: [GetSavingPlanShareAccountsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetSavingPlanShareAccountsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSavingPlanShareAccountsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSavingPlanShareAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSavingPlanShareAccountsResponseBody?

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
            var model = GetSavingPlanShareAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSavingPlanUserDeductRuleRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var currentPage: Int32?

    public var ecIdAccountIds: [GetSavingPlanUserDeductRuleRequest.EcIdAccountIds]?

    public var nbid: String?

    public var pageSize: Int32?

    public var spnInstanceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [GetSavingPlanUserDeductRuleRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = GetSavingPlanUserDeductRuleRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SpnInstanceCode"] as? String {
            self.spnInstanceCode = value
        }
    }
}

public class GetSavingPlanUserDeductRuleShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var pageSize: Int32?

    public var spnInstanceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SpnInstanceCode"] as? String {
            self.spnInstanceCode = value
        }
    }
}

public class GetSavingPlanUserDeductRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityName: String?

        public var moduleCode: String?

        public var moduleName: String?

        public var skipDeduct: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            if self.skipDeduct != nil {
                map["SkipDeduct"] = self.skipDeduct!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["ModuleCode"] as? String {
                self.moduleCode = value
            }
            if let value = dict["ModuleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["SkipDeduct"] as? Bool {
                self.skipDeduct = value
            }
        }
    }
    public var data: [GetSavingPlanUserDeductRuleResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetSavingPlanUserDeductRuleResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSavingPlanUserDeductRuleResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSavingPlanUserDeductRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSavingPlanUserDeductRuleResponseBody?

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
            var model = GetSavingPlanUserDeductRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCouponDeductTagRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var couponId: String?

    public var ecIdAccountIds: [ListCouponDeductTagRequest.EcIdAccountIds]?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? String {
            self.couponId = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [ListCouponDeductTagRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = ListCouponDeductTagRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class ListCouponDeductTagShrinkRequest : Tea.TeaModel {
    public var couponId: String?

    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? String {
            self.couponId = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class ListCouponDeductTagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var data: [ListCouponDeductTagResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCouponDeductTagResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCouponDeductTagResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCouponDeductTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCouponDeductTagResponseBody?

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
            var model = ListCouponDeductTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFundAccountRequest : Tea.TeaModel {
    public var nbid: String?

    public var queryOnlyInUse: Bool?

    public var queryOnlyManage: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.queryOnlyInUse != nil {
            map["QueryOnlyInUse"] = self.queryOnlyInUse!
        }
        if self.queryOnlyManage != nil {
            map["QueryOnlyManage"] = self.queryOnlyManage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["QueryOnlyInUse"] as? Bool {
            self.queryOnlyInUse = value
        }
        if let value = dict["QueryOnlyManage"] as? Bool {
            self.queryOnlyManage = value
        }
    }
}

public class ListFundAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createDate: String?

        public var fundAccountAdminAccountId: String?

        public var fundAccountAdminAccountName: String?

        public var fundAccountId: String?

        public var fundAccountName: String?

        public var fundAccountOwnerAccountId: String?

        public var fundAccountStatus: String?

        public var fundAccountType: String?

        public var nbid: String?

        public var permissions: [String]?

        public var site: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.fundAccountAdminAccountId != nil {
                map["FundAccountAdminAccountId"] = self.fundAccountAdminAccountId!
            }
            if self.fundAccountAdminAccountName != nil {
                map["FundAccountAdminAccountName"] = self.fundAccountAdminAccountName!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountName != nil {
                map["FundAccountName"] = self.fundAccountName!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.fundAccountStatus != nil {
                map["FundAccountStatus"] = self.fundAccountStatus!
            }
            if self.fundAccountType != nil {
                map["FundAccountType"] = self.fundAccountType!
            }
            if self.nbid != nil {
                map["Nbid"] = self.nbid!
            }
            if self.permissions != nil {
                map["Permissions"] = self.permissions!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["FundAccountAdminAccountId"] as? String {
                self.fundAccountAdminAccountId = value
            }
            if let value = dict["FundAccountAdminAccountName"] as? String {
                self.fundAccountAdminAccountName = value
            }
            if let value = dict["FundAccountId"] as? String {
                self.fundAccountId = value
            }
            if let value = dict["FundAccountName"] as? String {
                self.fundAccountName = value
            }
            if let value = dict["FundAccountOwnerAccountId"] as? String {
                self.fundAccountOwnerAccountId = value
            }
            if let value = dict["FundAccountStatus"] as? String {
                self.fundAccountStatus = value
            }
            if let value = dict["FundAccountType"] as? String {
                self.fundAccountType = value
            }
            if let value = dict["Nbid"] as? String {
                self.nbid = value
            }
            if let value = dict["Permissions"] as? [String] {
                self.permissions = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
        }
    }
    public var data: [ListFundAccountResponseBody.Data]?

    public var metadata: Any?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListFundAccountResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListFundAccountResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFundAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFundAccountResponseBody?

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
            var model = ListFundAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFundAccountPayRelationRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var fundAccountId: String?

    public var nbid: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FundAccountId"] as? String {
            self.fundAccountId = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListFundAccountPayRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var ecid: String?

        public var effectiveTime: String?

        public var fundAccountId: String?

        public var fundAccountOwnerAccountId: String?

        public var ineffectiveTime: String?

        public var nbid: String?

        public var operatorName: String?

        public var operatorNo: String?

        public var operatorType: String?

        public var relationType: String?

        public var site: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.ecid != nil {
                map["Ecid"] = self.ecid!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.fundAccountId != nil {
                map["FundAccountId"] = self.fundAccountId!
            }
            if self.fundAccountOwnerAccountId != nil {
                map["FundAccountOwnerAccountId"] = self.fundAccountOwnerAccountId!
            }
            if self.ineffectiveTime != nil {
                map["IneffectiveTime"] = self.ineffectiveTime!
            }
            if self.nbid != nil {
                map["Nbid"] = self.nbid!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.operatorNo != nil {
                map["OperatorNo"] = self.operatorNo!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.relationType != nil {
                map["RelationType"] = self.relationType!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["Ecid"] as? String {
                self.ecid = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["FundAccountId"] as? String {
                self.fundAccountId = value
            }
            if let value = dict["FundAccountOwnerAccountId"] as? String {
                self.fundAccountOwnerAccountId = value
            }
            if let value = dict["IneffectiveTime"] as? String {
                self.ineffectiveTime = value
            }
            if let value = dict["Nbid"] as? String {
                self.nbid = value
            }
            if let value = dict["OperatorName"] as? String {
                self.operatorName = value
            }
            if let value = dict["OperatorNo"] as? String {
                self.operatorNo = value
            }
            if let value = dict["OperatorType"] as? String {
                self.operatorType = value
            }
            if let value = dict["RelationType"] as? String {
                self.relationType = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [ListFundAccountPayRelationResponseBody.Data]?

    public var metadata: Any?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListFundAccountPayRelationResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListFundAccountPayRelationResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListFundAccountPayRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFundAccountPayRelationResponseBody?

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
            var model = ListFundAccountPayRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInvoiceCandidateRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var billingCycles: [Int32]?

    public var businessIds: [String]?

    public var currentPage: Int32?

    public var ecIdAccountIds: [ListInvoiceCandidateRequest.EcIdAccountIds]?

    public var endTime: String?

    public var invoiceIssuers: [String]?

    public var nbid: String?

    public var pageSize: Int32?

    public var startTime: String?

    public var status: [Int32]?

    public var types: [Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCycles != nil {
            map["BillingCycles"] = self.billingCycles!
        }
        if self.businessIds != nil {
            map["BusinessIds"] = self.businessIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.invoiceIssuers != nil {
            map["InvoiceIssuers"] = self.invoiceIssuers!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingCycles"] as? [Int32] {
            self.billingCycles = value
        }
        if let value = dict["BusinessIds"] as? [String] {
            self.businessIds = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [ListInvoiceCandidateRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = ListInvoiceCandidateRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InvoiceIssuers"] as? [String] {
            self.invoiceIssuers = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? [Int32] {
            self.status = value
        }
        if let value = dict["Types"] as? [Int32] {
            self.types = value
        }
    }
}

public class ListInvoiceCandidateShrinkRequest : Tea.TeaModel {
    public var billingCyclesShrink: String?

    public var businessIdsShrink: String?

    public var currentPage: Int32?

    public var ecIdAccountIdsShrink: String?

    public var endTime: String?

    public var invoiceIssuersShrink: String?

    public var nbid: String?

    public var pageSize: Int32?

    public var startTime: String?

    public var statusShrink: String?

    public var typesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCyclesShrink != nil {
            map["BillingCycles"] = self.billingCyclesShrink!
        }
        if self.businessIdsShrink != nil {
            map["BusinessIds"] = self.businessIdsShrink!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.invoiceIssuersShrink != nil {
            map["InvoiceIssuers"] = self.invoiceIssuersShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statusShrink != nil {
            map["Status"] = self.statusShrink!
        }
        if self.typesShrink != nil {
            map["Types"] = self.typesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingCycles"] as? String {
            self.billingCyclesShrink = value
        }
        if let value = dict["BusinessIds"] as? String {
            self.businessIdsShrink = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InvoiceIssuers"] as? String {
            self.invoiceIssuersShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.statusShrink = value
        }
        if let value = dict["Types"] as? String {
            self.typesShrink = value
        }
    }
}

public class ListInvoiceCandidateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var acceptedOffsetAmount: String?

        public var accountId: Int64?

        public var accountName: String?

        public var billingCycle: Int32?

        public var businessId: String?

        public var businessTime: String?

        public var commodityCode: String?

        public var commodityName: String?

        public var createTime: String?

        public var id: String?

        public var invoiceIssuer: String?

        public var invoiceableAmount: String?

        public var invoicedAmount: String?

        public var offsetAmount: String?

        public var productCode: String?

        public var productName: String?

        public var resourceOwnerAccountId: Int64?

        public var resourceOwnerAccountName: String?

        public var status: Int32?

        public var totalAmount: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedOffsetAmount != nil {
                map["AcceptedOffsetAmount"] = self.acceptedOffsetAmount!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessTime != nil {
                map["BusinessTime"] = self.businessTime!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.invoiceIssuer != nil {
                map["InvoiceIssuer"] = self.invoiceIssuer!
            }
            if self.invoiceableAmount != nil {
                map["InvoiceableAmount"] = self.invoiceableAmount!
            }
            if self.invoicedAmount != nil {
                map["InvoicedAmount"] = self.invoicedAmount!
            }
            if self.offsetAmount != nil {
                map["OffsetAmount"] = self.offsetAmount!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.resourceOwnerAccountId != nil {
                map["ResourceOwnerAccountId"] = self.resourceOwnerAccountId!
            }
            if self.resourceOwnerAccountName != nil {
                map["ResourceOwnerAccountName"] = self.resourceOwnerAccountName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalAmount != nil {
                map["TotalAmount"] = self.totalAmount!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AcceptedOffsetAmount"] as? String {
                self.acceptedOffsetAmount = value
            }
            if let value = dict["AccountId"] as? Int64 {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["BillingCycle"] as? Int32 {
                self.billingCycle = value
            }
            if let value = dict["BusinessId"] as? String {
                self.businessId = value
            }
            if let value = dict["BusinessTime"] as? String {
                self.businessTime = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InvoiceIssuer"] as? String {
                self.invoiceIssuer = value
            }
            if let value = dict["InvoiceableAmount"] as? String {
                self.invoiceableAmount = value
            }
            if let value = dict["InvoicedAmount"] as? String {
                self.invoicedAmount = value
            }
            if let value = dict["OffsetAmount"] as? String {
                self.offsetAmount = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ResourceOwnerAccountId"] as? Int64 {
                self.resourceOwnerAccountId = value
            }
            if let value = dict["ResourceOwnerAccountName"] as? String {
                self.resourceOwnerAccountName = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TotalAmount"] as? String {
                self.totalAmount = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [ListInvoiceCandidateResponseBody.Data]?

    public var metadata: Any?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListInvoiceCandidateResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInvoiceCandidateResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInvoiceCandidateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInvoiceCandidateResponseBody?

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
            var model = ListInvoiceCandidateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInvoiceTitleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountBankName: String?

        public var accountId: Int64?

        public var bankAccountNumber: String?

        public var createTime: String?

        public var id: String?

        public var invoiceTitle: String?

        public var registeredAddress: String?

        public var registeredLandline: String?

        public var unifiedSocialCreditCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountBankName != nil {
                map["AccountBankName"] = self.accountBankName!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.bankAccountNumber != nil {
                map["BankAccountNumber"] = self.bankAccountNumber!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.invoiceTitle != nil {
                map["InvoiceTitle"] = self.invoiceTitle!
            }
            if self.registeredAddress != nil {
                map["RegisteredAddress"] = self.registeredAddress!
            }
            if self.registeredLandline != nil {
                map["RegisteredLandline"] = self.registeredLandline!
            }
            if self.unifiedSocialCreditCode != nil {
                map["UnifiedSocialCreditCode"] = self.unifiedSocialCreditCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountBankName"] as? String {
                self.accountBankName = value
            }
            if let value = dict["AccountId"] as? Int64 {
                self.accountId = value
            }
            if let value = dict["BankAccountNumber"] as? String {
                self.bankAccountNumber = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InvoiceTitle"] as? String {
                self.invoiceTitle = value
            }
            if let value = dict["RegisteredAddress"] as? String {
                self.registeredAddress = value
            }
            if let value = dict["RegisteredLandline"] as? String {
                self.registeredLandline = value
            }
            if let value = dict["UnifiedSocialCreditCode"] as? String {
                self.unifiedSocialCreditCode = value
            }
        }
    }
    public var data: [ListInvoiceTitleResponseBody.Data]?

    public var metadata: Any?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListInvoiceTitleResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInvoiceTitleResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInvoiceTitleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInvoiceTitleResponseBody?

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
            var model = ListInvoiceTitleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListReportDefinitionsRequest : Tea.TeaModel {
    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class ListReportDefinitionsResponseBody : Tea.TeaModel {
    public class ReportDefinitions : Tea.TeaModel {
        public var beginBillingCycle: String?

        public var ossBucketName: String?

        public var ossBucketOwnerAccountId: Int64?

        public var ossBucketPath: String?

        public var reportSourceName: String?

        public var reportSourceType: String?

        public var reportTaskId: Int64?

        public var reportType: String?

        public var subscribeCreateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginBillingCycle != nil {
                map["BeginBillingCycle"] = self.beginBillingCycle!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossBucketOwnerAccountId != nil {
                map["OssBucketOwnerAccountId"] = self.ossBucketOwnerAccountId!
            }
            if self.ossBucketPath != nil {
                map["OssBucketPath"] = self.ossBucketPath!
            }
            if self.reportSourceName != nil {
                map["ReportSourceName"] = self.reportSourceName!
            }
            if self.reportSourceType != nil {
                map["ReportSourceType"] = self.reportSourceType!
            }
            if self.reportTaskId != nil {
                map["ReportTaskId"] = self.reportTaskId!
            }
            if self.reportType != nil {
                map["ReportType"] = self.reportType!
            }
            if self.subscribeCreateTime != nil {
                map["SubscribeCreateTime"] = self.subscribeCreateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginBillingCycle"] as? String {
                self.beginBillingCycle = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssBucketOwnerAccountId"] as? Int64 {
                self.ossBucketOwnerAccountId = value
            }
            if let value = dict["OssBucketPath"] as? String {
                self.ossBucketPath = value
            }
            if let value = dict["ReportSourceName"] as? String {
                self.reportSourceName = value
            }
            if let value = dict["ReportSourceType"] as? String {
                self.reportSourceType = value
            }
            if let value = dict["ReportTaskId"] as? Int64 {
                self.reportTaskId = value
            }
            if let value = dict["ReportType"] as? String {
                self.reportType = value
            }
            if let value = dict["SubscribeCreateTime"] as? String {
                self.subscribeCreateTime = value
            }
        }
    }
    public var metadata: Any?

    public var reportDefinitions: [ListReportDefinitionsResponseBody.ReportDefinitions]?

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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.reportDefinitions != nil {
            var tmp : [Any] = []
            for k in self.reportDefinitions! {
                tmp.append(k.toMap())
            }
            map["ReportDefinitions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["ReportDefinitions"] as? [Any?] {
            var tmp : [ListReportDefinitionsResponseBody.ReportDefinitions] = []
            for v in value {
                if v != nil {
                    var model = ListReportDefinitionsResponseBody.ReportDefinitions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reportDefinitions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListReportDefinitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReportDefinitionsResponseBody?

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
            var model = ListReportDefinitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCostCenterRequest : Tea.TeaModel {
    public class CostCenterEntityList : Tea.TeaModel {
        public var costCenterId: Int64?

        public var costCenterName: String?

        public var ownerAccountId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costCenterId != nil {
                map["CostCenterId"] = self.costCenterId!
            }
            if self.costCenterName != nil {
                map["CostCenterName"] = self.costCenterName!
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CostCenterId"] as? Int64 {
                self.costCenterId = value
            }
            if let value = dict["CostCenterName"] as? String {
                self.costCenterName = value
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
        }
    }
    public var costCenterEntityList: [ModifyCostCenterRequest.CostCenterEntityList]?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterEntityList != nil {
            var tmp : [Any] = []
            for k in self.costCenterEntityList! {
                tmp.append(k.toMap())
            }
            map["CostCenterEntityList"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterEntityList"] as? [Any?] {
            var tmp : [ModifyCostCenterRequest.CostCenterEntityList] = []
            for v in value {
                if v != nil {
                    var model = ModifyCostCenterRequest.CostCenterEntityList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.costCenterEntityList = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class ModifyCostCenterShrinkRequest : Tea.TeaModel {
    public var costCenterEntityListShrink: String?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterEntityListShrink != nil {
            map["CostCenterEntityList"] = self.costCenterEntityListShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterEntityList"] as? String {
            self.costCenterEntityListShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class ModifyCostCenterResponseBody : Tea.TeaModel {
    public class CostCenterOperateDto : Tea.TeaModel {
        public var costCenterId: Int64?

        public var isSuccess: Bool?

        public var ownerAccountId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costCenterId != nil {
                map["CostCenterId"] = self.costCenterId!
            }
            if self.isSuccess != nil {
                map["IsSuccess"] = self.isSuccess!
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CostCenterId"] as? Int64 {
                self.costCenterId = value
            }
            if let value = dict["IsSuccess"] as? Bool {
                self.isSuccess = value
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
        }
    }
    public var costCenterOperateDto: [ModifyCostCenterResponseBody.CostCenterOperateDto]?

    public var metadata: Any?

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
        if self.costCenterOperateDto != nil {
            var tmp : [Any] = []
            for k in self.costCenterOperateDto! {
                tmp.append(k.toMap())
            }
            map["CostCenterOperateDto"] = tmp
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterOperateDto"] as? [Any?] {
            var tmp : [ModifyCostCenterResponseBody.CostCenterOperateDto] = []
            for v in value {
                if v != nil {
                    var model = ModifyCostCenterResponseBody.CostCenterOperateDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.costCenterOperateDto = tmp
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyCostCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCostCenterResponseBody?

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
            var model = ModifyCostCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCostCenterRuleRequest : Tea.TeaModel {
    public class FilterExpression : Tea.TeaModel {
        public class FilterValues : Tea.TeaModel {
            public var code: String?

            public var codeName: String?

            public var selectType: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.codeName != nil {
                    map["CodeName"] = self.codeName!
                }
                if self.selectType != nil {
                    map["SelectType"] = self.selectType!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["CodeName"] as? String {
                    self.codeName = value
                }
                if let value = dict["SelectType"] as? String {
                    self.selectType = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var expressionType: String?

        public var filterValues: ModifyCostCenterRuleRequest.FilterExpression.FilterValues?

        public var operand: Any?

        public var operands: [Any]?

        public var operatorType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filterValues?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expressionType != nil {
                map["ExpressionType"] = self.expressionType!
            }
            if self.filterValues != nil {
                map["FilterValues"] = self.filterValues?.toMap()
            }
            if self.operand != nil {
                map["Operand"] = self.operand!
            }
            if self.operands != nil {
                map["Operands"] = self.operands!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpressionType"] as? String {
                self.expressionType = value
            }
            if let value = dict["FilterValues"] as? [String: Any?] {
                var model = ModifyCostCenterRuleRequest.FilterExpression.FilterValues()
                model.fromMap(value)
                self.filterValues = model
            }
            if let value = dict["Operand"] as? Any {
                self.operand = value
            }
            if let value = dict["Operands"] as? [Any] {
                self.operands = value
            }
            if let value = dict["OperatorType"] as? String {
                self.operatorType = value
            }
        }
    }
    public var costCenterId: Int64?

    public var filterExpression: ModifyCostCenterRuleRequest.FilterExpression?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterExpression?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpression != nil {
            map["FilterExpression"] = self.filterExpression?.toMap()
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? [String: Any?] {
            var model = ModifyCostCenterRuleRequest.FilterExpression()
            model.fromMap(value)
            self.filterExpression = model
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
    }
}

public class ModifyCostCenterRuleShrinkRequest : Tea.TeaModel {
    public var costCenterId: Int64?

    public var filterExpressionShrink: String?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpressionShrink != nil {
            map["FilterExpression"] = self.filterExpressionShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? String {
            self.filterExpressionShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
    }
}

public class ModifyCostCenterRuleResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyCostCenterRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCostCenterRuleResponseBody?

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
            var model = ModifyCostCenterRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCostCenterRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var currentPage: Int32?

    public var ecIdAccountIds: [QueryCostCenterRequest.EcIdAccountIds]?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public var pageSize: Int32?

    public var parentCostCenterId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentCostCenterId != nil {
            map["ParentCostCenterId"] = self.parentCostCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [QueryCostCenterRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentCostCenterId"] as? Int64 {
            self.parentCostCenterId = value
        }
    }
}

public class QueryCostCenterShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public var pageSize: Int32?

    public var parentCostCenterId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentCostCenterId != nil {
            map["ParentCostCenterId"] = self.parentCostCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentCostCenterId"] as? Int64 {
            self.parentCostCenterId = value
        }
    }
}

public class QueryCostCenterResponseBody : Tea.TeaModel {
    public class CostCenterDtoList : Tea.TeaModel {
        public var costCenterCode: String?

        public var costCenterId: Int64?

        public var costCenterName: String?

        public var level: Int32?

        public var ownerAccountId: Int64?

        public var parentCostCenterId: Int64?

        public var prevCostCenterId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costCenterCode != nil {
                map["CostCenterCode"] = self.costCenterCode!
            }
            if self.costCenterId != nil {
                map["CostCenterId"] = self.costCenterId!
            }
            if self.costCenterName != nil {
                map["CostCenterName"] = self.costCenterName!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            if self.parentCostCenterId != nil {
                map["ParentCostCenterId"] = self.parentCostCenterId!
            }
            if self.prevCostCenterId != nil {
                map["PrevCostCenterId"] = self.prevCostCenterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CostCenterCode"] as? String {
                self.costCenterCode = value
            }
            if let value = dict["CostCenterId"] as? Int64 {
                self.costCenterId = value
            }
            if let value = dict["CostCenterName"] as? String {
                self.costCenterName = value
            }
            if let value = dict["Level"] as? Int32 {
                self.level = value
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
            if let value = dict["ParentCostCenterId"] as? Int64 {
                self.parentCostCenterId = value
            }
            if let value = dict["PrevCostCenterId"] as? Int64 {
                self.prevCostCenterId = value
            }
        }
    }
    public var costCenterDtoList: [QueryCostCenterResponseBody.CostCenterDtoList]?

    public var currentPage: Int32?

    public var metadata: Any?

    public var pageSize: Int32?

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
        if self.costCenterDtoList != nil {
            var tmp : [Any] = []
            for k in self.costCenterDtoList! {
                tmp.append(k.toMap())
            }
            map["CostCenterDtoList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
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
        if let value = dict["CostCenterDtoList"] as? [Any?] {
            var tmp : [QueryCostCenterResponseBody.CostCenterDtoList] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterResponseBody.CostCenterDtoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.costCenterDtoList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class QueryCostCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCostCenterResponseBody?

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
            var model = QueryCostCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCostCenterResourceRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var costCenterId: Int64?

    public var ecIdAccountIds: [QueryCostCenterResourceRequest.EcIdAccountIds]?

    public var maxResults: Int32?

    public var nbid: String?

    public var nextToken: String?

    public var ownerAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [QueryCostCenterResourceRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterResourceRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
    }
}

public class QueryCostCenterResourceResponseBody : Tea.TeaModel {
    public class CostCenterResourceDtoList : Tea.TeaModel {
        public var apportionItemCode: String?

        public var apportionItemName: String?

        public var commodityCode: String?

        public var commodityName: String?

        public var costCenterCode: String?

        public var costCenterCreateTime: String?

        public var costCenterId: Int64?

        public var costCenterName: String?

        public var costCenterUpdateTime: String?

        public var instanceId: String?

        public var ownerAccountId: Int64?

        public var ownerAccountName: String?

        public var parentCostCenterId: Int64?

        public var pipCode: String?

        public var pipName: String?

        public var resourceGroup: String?

        public var resourceId: String?

        public var resourceNick: String?

        public var resourceSource: String?

        public var resourceTag: String?

        public var resourceType: String?

        public var resourceUpdateTime: String?

        public var resourceUserId: Int64?

        public var resourceUserName: String?

        public var rootCostCenterId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apportionItemCode != nil {
                map["ApportionItemCode"] = self.apportionItemCode!
            }
            if self.apportionItemName != nil {
                map["ApportionItemName"] = self.apportionItemName!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.costCenterCode != nil {
                map["CostCenterCode"] = self.costCenterCode!
            }
            if self.costCenterCreateTime != nil {
                map["CostCenterCreateTime"] = self.costCenterCreateTime!
            }
            if self.costCenterId != nil {
                map["CostCenterId"] = self.costCenterId!
            }
            if self.costCenterName != nil {
                map["CostCenterName"] = self.costCenterName!
            }
            if self.costCenterUpdateTime != nil {
                map["CostCenterUpdateTime"] = self.costCenterUpdateTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            if self.ownerAccountName != nil {
                map["OwnerAccountName"] = self.ownerAccountName!
            }
            if self.parentCostCenterId != nil {
                map["ParentCostCenterId"] = self.parentCostCenterId!
            }
            if self.pipCode != nil {
                map["PipCode"] = self.pipCode!
            }
            if self.pipName != nil {
                map["PipName"] = self.pipName!
            }
            if self.resourceGroup != nil {
                map["ResourceGroup"] = self.resourceGroup!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceNick != nil {
                map["ResourceNick"] = self.resourceNick!
            }
            if self.resourceSource != nil {
                map["ResourceSource"] = self.resourceSource!
            }
            if self.resourceTag != nil {
                map["ResourceTag"] = self.resourceTag!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceUpdateTime != nil {
                map["ResourceUpdateTime"] = self.resourceUpdateTime!
            }
            if self.resourceUserId != nil {
                map["ResourceUserId"] = self.resourceUserId!
            }
            if self.resourceUserName != nil {
                map["ResourceUserName"] = self.resourceUserName!
            }
            if self.rootCostCenterId != nil {
                map["RootCostCenterId"] = self.rootCostCenterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApportionItemCode"] as? String {
                self.apportionItemCode = value
            }
            if let value = dict["ApportionItemName"] as? String {
                self.apportionItemName = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["CostCenterCode"] as? String {
                self.costCenterCode = value
            }
            if let value = dict["CostCenterCreateTime"] as? String {
                self.costCenterCreateTime = value
            }
            if let value = dict["CostCenterId"] as? Int64 {
                self.costCenterId = value
            }
            if let value = dict["CostCenterName"] as? String {
                self.costCenterName = value
            }
            if let value = dict["CostCenterUpdateTime"] as? String {
                self.costCenterUpdateTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
            if let value = dict["OwnerAccountName"] as? String {
                self.ownerAccountName = value
            }
            if let value = dict["ParentCostCenterId"] as? Int64 {
                self.parentCostCenterId = value
            }
            if let value = dict["PipCode"] as? String {
                self.pipCode = value
            }
            if let value = dict["PipName"] as? String {
                self.pipName = value
            }
            if let value = dict["ResourceGroup"] as? String {
                self.resourceGroup = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceNick"] as? String {
                self.resourceNick = value
            }
            if let value = dict["ResourceSource"] as? String {
                self.resourceSource = value
            }
            if let value = dict["ResourceTag"] as? String {
                self.resourceTag = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["ResourceUpdateTime"] as? String {
                self.resourceUpdateTime = value
            }
            if let value = dict["ResourceUserId"] as? Int64 {
                self.resourceUserId = value
            }
            if let value = dict["ResourceUserName"] as? String {
                self.resourceUserName = value
            }
            if let value = dict["RootCostCenterId"] as? Int64 {
                self.rootCostCenterId = value
            }
        }
    }
    public var costCenterResourceDtoList: [QueryCostCenterResourceResponseBody.CostCenterResourceDtoList]?

    public var maxResults: Int32?

    public var metadata: Any?

    public var nextToken: String?

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
        if self.costCenterResourceDtoList != nil {
            var tmp : [Any] = []
            for k in self.costCenterResourceDtoList! {
                tmp.append(k.toMap())
            }
            map["CostCenterResourceDtoList"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["CostCenterResourceDtoList"] as? [Any?] {
            var tmp : [QueryCostCenterResourceResponseBody.CostCenterResourceDtoList] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterResourceResponseBody.CostCenterResourceDtoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.costCenterResourceDtoList = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class QueryCostCenterResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCostCenterResourceResponseBody?

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
            var model = QueryCostCenterResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCostCenterRuleRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var costCenterId: Int64?

    public var ecIdAccountIds: [QueryCostCenterRuleRequest.EcIdAccountIds]?

    public var nbid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [QueryCostCenterRuleRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterRuleRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
    }
}

public class QueryCostCenterRuleResponseBody : Tea.TeaModel {
    public class FilterExpression : Tea.TeaModel {
        public class FilterValues : Tea.TeaModel {
            public var code: String?

            public var codeName: String?

            public var selectType: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.codeName != nil {
                    map["CodeName"] = self.codeName!
                }
                if self.selectType != nil {
                    map["SelectType"] = self.selectType!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["CodeName"] as? String {
                    self.codeName = value
                }
                if let value = dict["SelectType"] as? String {
                    self.selectType = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var expressionType: String?

        public var filterValues: QueryCostCenterRuleResponseBody.FilterExpression.FilterValues?

        public var operand: Any?

        public var operands: [Any]?

        public var operatorType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filterValues?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expressionType != nil {
                map["ExpressionType"] = self.expressionType!
            }
            if self.filterValues != nil {
                map["FilterValues"] = self.filterValues?.toMap()
            }
            if self.operand != nil {
                map["Operand"] = self.operand!
            }
            if self.operands != nil {
                map["Operands"] = self.operands!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpressionType"] as? String {
                self.expressionType = value
            }
            if let value = dict["FilterValues"] as? [String: Any?] {
                var model = QueryCostCenterRuleResponseBody.FilterExpression.FilterValues()
                model.fromMap(value)
                self.filterValues = model
            }
            if let value = dict["Operand"] as? Any {
                self.operand = value
            }
            if let value = dict["Operands"] as? [Any] {
                self.operands = value
            }
            if let value = dict["OperatorType"] as? String {
                self.operatorType = value
            }
        }
    }
    public var costCenterId: Int64?

    public var filterExpression: QueryCostCenterRuleResponseBody.FilterExpression?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var isDeleted: Int32?

    public var metadata: Any?

    public var ownerAccountId: Int64?

    public var requestId: String?

    public var rootCostCenterId: Int64?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterExpression?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCenterId != nil {
            map["CostCenterId"] = self.costCenterId!
        }
        if self.filterExpression != nil {
            map["FilterExpression"] = self.filterExpression?.toMap()
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.isDeleted != nil {
            map["IsDeleted"] = self.isDeleted!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootCostCenterId != nil {
            map["RootCostCenterId"] = self.rootCostCenterId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostCenterId"] as? Int64 {
            self.costCenterId = value
        }
        if let value = dict["FilterExpression"] as? [String: Any?] {
            var model = QueryCostCenterRuleResponseBody.FilterExpression()
            model.fromMap(value)
            self.filterExpression = model
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["IsDeleted"] as? Int32 {
            self.isDeleted = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootCostCenterId"] as? Int64 {
            self.rootCostCenterId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class QueryCostCenterRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCostCenterRuleResponseBody?

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
            var model = QueryCostCenterRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCostCenterShareRuleRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public var ecIdAccountIds: [QueryCostCenterShareRuleRequest.EcIdAccountIds]?

    public var maxResults: Int32?

    public var nbid: String?

    public var nextToken: String?

    public var ownerAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [QueryCostCenterShareRuleRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterShareRuleRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
    }
}

public class QueryCostCenterShareRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FromCostCenterShareRuleDetails : Tea.TeaModel {
            public var costCenterCode: String?

            public var costCenterId: Int64?

            public var costCenterName: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var ownerAccountId: Int64?

            public var parentCostCenterId: Int64?

            public var prevCostCenterId: Int64?

            public var rootCostCenterId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.costCenterCode != nil {
                    map["CostCenterCode"] = self.costCenterCode!
                }
                if self.costCenterId != nil {
                    map["CostCenterId"] = self.costCenterId!
                }
                if self.costCenterName != nil {
                    map["CostCenterName"] = self.costCenterName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ownerAccountId != nil {
                    map["OwnerAccountId"] = self.ownerAccountId!
                }
                if self.parentCostCenterId != nil {
                    map["ParentCostCenterId"] = self.parentCostCenterId!
                }
                if self.prevCostCenterId != nil {
                    map["PrevCostCenterId"] = self.prevCostCenterId!
                }
                if self.rootCostCenterId != nil {
                    map["RootCostCenterId"] = self.rootCostCenterId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CostCenterCode"] as? String {
                    self.costCenterCode = value
                }
                if let value = dict["CostCenterId"] as? Int64 {
                    self.costCenterId = value
                }
                if let value = dict["CostCenterName"] as? String {
                    self.costCenterName = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["OwnerAccountId"] as? Int64 {
                    self.ownerAccountId = value
                }
                if let value = dict["ParentCostCenterId"] as? Int64 {
                    self.parentCostCenterId = value
                }
                if let value = dict["PrevCostCenterId"] as? Int64 {
                    self.prevCostCenterId = value
                }
                if let value = dict["RootCostCenterId"] as? Int64 {
                    self.rootCostCenterId = value
                }
            }
        }
        public class ToCostCenterShareRuleDetails : Tea.TeaModel {
            public var costCenterCode: String?

            public var costCenterId: Int64?

            public var costCenterName: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var ownerAccountId: Int64?

            public var parentCostCenterId: Int64?

            public var prevCostCenterId: Int64?

            public var rootCostCenterId: Int64?

            public var shareRatio: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.costCenterCode != nil {
                    map["CostCenterCode"] = self.costCenterCode!
                }
                if self.costCenterId != nil {
                    map["CostCenterId"] = self.costCenterId!
                }
                if self.costCenterName != nil {
                    map["CostCenterName"] = self.costCenterName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ownerAccountId != nil {
                    map["OwnerAccountId"] = self.ownerAccountId!
                }
                if self.parentCostCenterId != nil {
                    map["ParentCostCenterId"] = self.parentCostCenterId!
                }
                if self.prevCostCenterId != nil {
                    map["PrevCostCenterId"] = self.prevCostCenterId!
                }
                if self.rootCostCenterId != nil {
                    map["RootCostCenterId"] = self.rootCostCenterId!
                }
                if self.shareRatio != nil {
                    map["ShareRatio"] = self.shareRatio!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CostCenterCode"] as? String {
                    self.costCenterCode = value
                }
                if let value = dict["CostCenterId"] as? Int64 {
                    self.costCenterId = value
                }
                if let value = dict["CostCenterName"] as? String {
                    self.costCenterName = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["OwnerAccountId"] as? Int64 {
                    self.ownerAccountId = value
                }
                if let value = dict["ParentCostCenterId"] as? Int64 {
                    self.parentCostCenterId = value
                }
                if let value = dict["PrevCostCenterId"] as? Int64 {
                    self.prevCostCenterId = value
                }
                if let value = dict["RootCostCenterId"] as? Int64 {
                    self.rootCostCenterId = value
                }
                if let value = dict["ShareRatio"] as? Double {
                    self.shareRatio = value
                }
            }
        }
        public var fromCostCenterShareRuleDetails: [QueryCostCenterShareRuleResponseBody.Data.FromCostCenterShareRuleDetails]?

        public var ownerAccountId: Int64?

        public var shareRuleId: Int64?

        public var shareRuleName: String?

        public var shareRuleType: String?

        public var toCostCenterShareRuleDetails: [QueryCostCenterShareRuleResponseBody.Data.ToCostCenterShareRuleDetails]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromCostCenterShareRuleDetails != nil {
                var tmp : [Any] = []
                for k in self.fromCostCenterShareRuleDetails! {
                    tmp.append(k.toMap())
                }
                map["FromCostCenterShareRuleDetails"] = tmp
            }
            if self.ownerAccountId != nil {
                map["OwnerAccountId"] = self.ownerAccountId!
            }
            if self.shareRuleId != nil {
                map["ShareRuleId"] = self.shareRuleId!
            }
            if self.shareRuleName != nil {
                map["ShareRuleName"] = self.shareRuleName!
            }
            if self.shareRuleType != nil {
                map["ShareRuleType"] = self.shareRuleType!
            }
            if self.toCostCenterShareRuleDetails != nil {
                var tmp : [Any] = []
                for k in self.toCostCenterShareRuleDetails! {
                    tmp.append(k.toMap())
                }
                map["ToCostCenterShareRuleDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FromCostCenterShareRuleDetails"] as? [Any?] {
                var tmp : [QueryCostCenterShareRuleResponseBody.Data.FromCostCenterShareRuleDetails] = []
                for v in value {
                    if v != nil {
                        var model = QueryCostCenterShareRuleResponseBody.Data.FromCostCenterShareRuleDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fromCostCenterShareRuleDetails = tmp
            }
            if let value = dict["OwnerAccountId"] as? Int64 {
                self.ownerAccountId = value
            }
            if let value = dict["ShareRuleId"] as? Int64 {
                self.shareRuleId = value
            }
            if let value = dict["ShareRuleName"] as? String {
                self.shareRuleName = value
            }
            if let value = dict["ShareRuleType"] as? String {
                self.shareRuleType = value
            }
            if let value = dict["ToCostCenterShareRuleDetails"] as? [Any?] {
                var tmp : [QueryCostCenterShareRuleResponseBody.Data.ToCostCenterShareRuleDetails] = []
                for v in value {
                    if v != nil {
                        var model = QueryCostCenterShareRuleResponseBody.Data.ToCostCenterShareRuleDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.toCostCenterShareRuleDetails = tmp
            }
        }
    }
    public var data: [QueryCostCenterShareRuleResponseBody.Data]?

    public var maxResults: Int32?

    public var metadata: Any?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryCostCenterShareRuleResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryCostCenterShareRuleResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class QueryCostCenterShareRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCostCenterShareRuleResponseBody?

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
            var model = QueryCostCenterShareRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveCostCenterShareRuleRequest : Tea.TeaModel {
    public class CreateShareRuleList : Tea.TeaModel {
        public var fromCostCenterList: [Int64]?

        public var shareRatioList: [Double]?

        public var shareRuleName: String?

        public var shareType: String?

        public var toCostCenterList: [Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromCostCenterList != nil {
                map["FromCostCenterList"] = self.fromCostCenterList!
            }
            if self.shareRatioList != nil {
                map["ShareRatioList"] = self.shareRatioList!
            }
            if self.shareRuleName != nil {
                map["ShareRuleName"] = self.shareRuleName!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.toCostCenterList != nil {
                map["ToCostCenterList"] = self.toCostCenterList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FromCostCenterList"] as? [Int64] {
                self.fromCostCenterList = value
            }
            if let value = dict["ShareRatioList"] as? [Double] {
                self.shareRatioList = value
            }
            if let value = dict["ShareRuleName"] as? String {
                self.shareRuleName = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["ToCostCenterList"] as? [Int64] {
                self.toCostCenterList = value
            }
        }
    }
    public class ModifyShareRuleList : Tea.TeaModel {
        public var fromCostCenterList: [Int64]?

        public var shareRatioList: [Double]?

        public var shareRuleId: Int64?

        public var shareRuleName: String?

        public var shareType: String?

        public var toCostCenterList: [Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromCostCenterList != nil {
                map["FromCostCenterList"] = self.fromCostCenterList!
            }
            if self.shareRatioList != nil {
                map["ShareRatioList"] = self.shareRatioList!
            }
            if self.shareRuleId != nil {
                map["ShareRuleId"] = self.shareRuleId!
            }
            if self.shareRuleName != nil {
                map["ShareRuleName"] = self.shareRuleName!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.toCostCenterList != nil {
                map["ToCostCenterList"] = self.toCostCenterList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FromCostCenterList"] as? [Int64] {
                self.fromCostCenterList = value
            }
            if let value = dict["ShareRatioList"] as? [Double] {
                self.shareRatioList = value
            }
            if let value = dict["ShareRuleId"] as? Int64 {
                self.shareRuleId = value
            }
            if let value = dict["ShareRuleName"] as? String {
                self.shareRuleName = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["ToCostCenterList"] as? [Int64] {
                self.toCostCenterList = value
            }
        }
    }
    public var createShareRuleList: [SaveCostCenterShareRuleRequest.CreateShareRuleList]?

    public var modifyShareRuleList: [SaveCostCenterShareRuleRequest.ModifyShareRuleList]?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public var removeShareRuleList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createShareRuleList != nil {
            var tmp : [Any] = []
            for k in self.createShareRuleList! {
                tmp.append(k.toMap())
            }
            map["CreateShareRuleList"] = tmp
        }
        if self.modifyShareRuleList != nil {
            var tmp : [Any] = []
            for k in self.modifyShareRuleList! {
                tmp.append(k.toMap())
            }
            map["ModifyShareRuleList"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.removeShareRuleList != nil {
            map["RemoveShareRuleList"] = self.removeShareRuleList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateShareRuleList"] as? [Any?] {
            var tmp : [SaveCostCenterShareRuleRequest.CreateShareRuleList] = []
            for v in value {
                if v != nil {
                    var model = SaveCostCenterShareRuleRequest.CreateShareRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.createShareRuleList = tmp
        }
        if let value = dict["ModifyShareRuleList"] as? [Any?] {
            var tmp : [SaveCostCenterShareRuleRequest.ModifyShareRuleList] = []
            for v in value {
                if v != nil {
                    var model = SaveCostCenterShareRuleRequest.ModifyShareRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modifyShareRuleList = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["RemoveShareRuleList"] as? [Int64] {
            self.removeShareRuleList = value
        }
    }
}

public class SaveCostCenterShareRuleShrinkRequest : Tea.TeaModel {
    public var createShareRuleListShrink: String?

    public var modifyShareRuleListShrink: String?

    public var nbid: String?

    public var ownerAccountId: Int64?

    public var removeShareRuleListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createShareRuleListShrink != nil {
            map["CreateShareRuleList"] = self.createShareRuleListShrink!
        }
        if self.modifyShareRuleListShrink != nil {
            map["ModifyShareRuleList"] = self.modifyShareRuleListShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.ownerAccountId != nil {
            map["OwnerAccountId"] = self.ownerAccountId!
        }
        if self.removeShareRuleListShrink != nil {
            map["RemoveShareRuleList"] = self.removeShareRuleListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateShareRuleList"] as? String {
            self.createShareRuleListShrink = value
        }
        if let value = dict["ModifyShareRuleList"] as? String {
            self.modifyShareRuleListShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["OwnerAccountId"] as? Int64 {
            self.ownerAccountId = value
        }
        if let value = dict["RemoveShareRuleList"] as? String {
            self.removeShareRuleListShrink = value
        }
    }
}

public class SaveCostCenterShareRuleResponseBody : Tea.TeaModel {
    public var metadata: Any?

    public var requestId: String?

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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SaveCostCenterShareRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveCostCenterShareRuleResponseBody?

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
            var model = SaveCostCenterShareRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetFundAccountCreditAmountRequest : Tea.TeaModel {
    public var creditAmount: String?

    public var currency: String?

    public var fundAccountId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creditAmount != nil {
            map["CreditAmount"] = self.creditAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreditAmount"] as? String {
            self.creditAmount = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
    }
}

public class SetFundAccountCreditAmountResponseBody : Tea.TeaModel {
    public var metadata: Any?

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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetFundAccountCreditAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFundAccountCreditAmountResponseBody?

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
            var model = SetFundAccountCreditAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetFundAccountLowAvailableAmountAlarmRequest : Tea.TeaModel {
    public var fundAccountId: Int64?

    public var thresholdAmount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fundAccountId != nil {
            map["FundAccountId"] = self.fundAccountId!
        }
        if self.thresholdAmount != nil {
            map["ThresholdAmount"] = self.thresholdAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FundAccountId"] as? Int64 {
            self.fundAccountId = value
        }
        if let value = dict["ThresholdAmount"] as? String {
            self.thresholdAmount = value
        }
    }
}

public class SetFundAccountLowAvailableAmountAlarmResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var metadata: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetFundAccountLowAvailableAmountAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFundAccountLowAvailableAmountAlarmResponseBody?

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
            var model = SetFundAccountLowAvailableAmountAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetSavingPlanUserDeductRuleRequest : Tea.TeaModel {
    public class EcIdAccountIds : Tea.TeaModel {
        public var accountIds: [Int64]?

        public var ecId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [Int64] {
                self.accountIds = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
        }
    }
    public class UserDeductRules : Tea.TeaModel {
        public var commodityCode: String?

        public var moduleCode: String?

        public var skipDeduct: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.skipDeduct != nil {
                map["SkipDeduct"] = self.skipDeduct!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ModuleCode"] as? String {
                self.moduleCode = value
            }
            if let value = dict["SkipDeduct"] as? Bool {
                self.skipDeduct = value
            }
        }
    }
    public var ecIdAccountIds: [SetSavingPlanUserDeductRuleRequest.EcIdAccountIds]?

    public var nbid: String?

    public var spnInstanceCode: String?

    public var userDeductRules: [SetSavingPlanUserDeductRuleRequest.UserDeductRules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIds != nil {
            var tmp : [Any] = []
            for k in self.ecIdAccountIds! {
                tmp.append(k.toMap())
            }
            map["EcIdAccountIds"] = tmp
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        if self.userDeductRules != nil {
            var tmp : [Any] = []
            for k in self.userDeductRules! {
                tmp.append(k.toMap())
            }
            map["UserDeductRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? [Any?] {
            var tmp : [SetSavingPlanUserDeductRuleRequest.EcIdAccountIds] = []
            for v in value {
                if v != nil {
                    var model = SetSavingPlanUserDeductRuleRequest.EcIdAccountIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecIdAccountIds = tmp
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["SpnInstanceCode"] as? String {
            self.spnInstanceCode = value
        }
        if let value = dict["UserDeductRules"] as? [Any?] {
            var tmp : [SetSavingPlanUserDeductRuleRequest.UserDeductRules] = []
            for v in value {
                if v != nil {
                    var model = SetSavingPlanUserDeductRuleRequest.UserDeductRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userDeductRules = tmp
        }
    }
}

public class SetSavingPlanUserDeductRuleShrinkRequest : Tea.TeaModel {
    public var ecIdAccountIdsShrink: String?

    public var nbid: String?

    public var spnInstanceCode: String?

    public var userDeductRulesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecIdAccountIdsShrink != nil {
            map["EcIdAccountIds"] = self.ecIdAccountIdsShrink!
        }
        if self.nbid != nil {
            map["Nbid"] = self.nbid!
        }
        if self.spnInstanceCode != nil {
            map["SpnInstanceCode"] = self.spnInstanceCode!
        }
        if self.userDeductRulesShrink != nil {
            map["UserDeductRules"] = self.userDeductRulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcIdAccountIds"] as? String {
            self.ecIdAccountIdsShrink = value
        }
        if let value = dict["Nbid"] as? String {
            self.nbid = value
        }
        if let value = dict["SpnInstanceCode"] as? String {
            self.spnInstanceCode = value
        }
        if let value = dict["UserDeductRules"] as? String {
            self.userDeductRulesShrink = value
        }
    }
}

public class SetSavingPlanUserDeductRuleResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetSavingPlanUserDeductRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSavingPlanUserDeductRuleResponseBody?

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
            var model = SetSavingPlanUserDeductRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
