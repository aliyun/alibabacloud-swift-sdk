import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContinueDeployServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var option: [String]?

    public var parameters: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Option") && dict["Option"] != nil {
            self.option = dict["Option"] as! [String]
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class ContinueDeployServiceInstanceResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public var parametersAllowedToBeModified: [String]?

        public var parametersConditionallyAllowedToBeModified: [String]?

        public var parametersNotAllowedToBeModified: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parametersAllowedToBeModified != nil {
                map["ParametersAllowedToBeModified"] = self.parametersAllowedToBeModified!
            }
            if self.parametersConditionallyAllowedToBeModified != nil {
                map["ParametersConditionallyAllowedToBeModified"] = self.parametersConditionallyAllowedToBeModified!
            }
            if self.parametersNotAllowedToBeModified != nil {
                map["ParametersNotAllowedToBeModified"] = self.parametersNotAllowedToBeModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParametersAllowedToBeModified") && dict["ParametersAllowedToBeModified"] != nil {
                self.parametersAllowedToBeModified = dict["ParametersAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyAllowedToBeModified") && dict["ParametersConditionallyAllowedToBeModified"] != nil {
                self.parametersConditionallyAllowedToBeModified = dict["ParametersConditionallyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersNotAllowedToBeModified") && dict["ParametersNotAllowedToBeModified"] != nil {
                self.parametersNotAllowedToBeModified = dict["ParametersNotAllowedToBeModified"] as! [String]
            }
        }
    }
    public var dryRunResult: ContinueDeployServiceInstanceResponseBody.DryRunResult?

    public var requestId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRunResult") && dict["DryRunResult"] != nil {
            var model = ContinueDeployServiceInstanceResponseBody.DryRunResult()
            model.fromMap(dict["DryRunResult"] as! [String: Any])
            self.dryRunResult = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class ContinueDeployServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueDeployServiceInstanceResponseBody?

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
            var model = ContinueDeployServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceInstanceRequest : Tea.TeaModel {
    public class BusinessInfo : Tea.TeaModel {
        public var orderParams: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderParams != nil {
                map["OrderParams"] = self.orderParams!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderParams") && dict["OrderParams"] != nil {
                self.orderParams = dict["OrderParams"] as! [String: String]
            }
        }
    }
    public class Commodity : Tea.TeaModel {
        public var payPeriod: Int64?

        public var payPeriodUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payPeriod != nil {
                map["PayPeriod"] = self.payPeriod!
            }
            if self.payPeriodUnit != nil {
                map["PayPeriodUnit"] = self.payPeriodUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PayPeriod") && dict["PayPeriod"] != nil {
                self.payPeriod = dict["PayPeriod"] as! Int64
            }
            if dict.keys.contains("PayPeriodUnit") && dict["PayPeriodUnit"] != nil {
                self.payPeriodUnit = dict["PayPeriodUnit"] as! String
            }
        }
    }
    public class OperationMetadata : Tea.TeaModel {
        public var endTime: String?

        public var extraInfo: String?

        public var resources: String?

        public var serviceInstanceId: String?

        public var startTime: String?

        public override init() {
            super.init()
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
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
                self.extraInfo = dict["ExtraInfo"] as! String
            }
            if dict.keys.contains("Resources") && dict["Resources"] != nil {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public class Tag : Tea.TeaModel {
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
    public var businessInfo: CreateServiceInstanceRequest.BusinessInfo?

    public var clientToken: String?

    public var commodity: CreateServiceInstanceRequest.Commodity?

    public var contactGroup: String?

    public var dryRun: Bool?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var name: String?

    public var operationMetadata: CreateServiceInstanceRequest.OperationMetadata?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var specificationCode: String?

    public var specificationName: String?

    public var tag: [CreateServiceInstanceRequest.Tag]?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.businessInfo?.validate()
        try self.commodity?.validate()
        try self.operationMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessInfo != nil {
            map["BusinessInfo"] = self.businessInfo?.toMap()
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.contactGroup != nil {
            map["ContactGroup"] = self.contactGroup!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata?.toMap()
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationCode != nil {
            map["SpecificationCode"] = self.specificationCode!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessInfo") && dict["BusinessInfo"] != nil {
            var model = CreateServiceInstanceRequest.BusinessInfo()
            model.fromMap(dict["BusinessInfo"] as! [String: Any])
            self.businessInfo = model
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") && dict["Commodity"] != nil {
            var model = CreateServiceInstanceRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("ContactGroup") && dict["ContactGroup"] != nil {
            self.contactGroup = dict["ContactGroup"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnableInstanceOps") && dict["EnableInstanceOps"] != nil {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") && dict["EnableUserPrometheus"] != nil {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationMetadata") && dict["OperationMetadata"] != nil {
            var model = CreateServiceInstanceRequest.OperationMetadata()
            model.fromMap(dict["OperationMetadata"] as! [String: Any])
            self.operationMetadata = model
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") && dict["ServiceVersion"] != nil {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationCode") && dict["SpecificationCode"] != nil {
            self.specificationCode = dict["SpecificationCode"] as! String
        }
        if dict.keys.contains("SpecificationName") && dict["SpecificationName"] != nil {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateServiceInstanceRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceInstanceRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") && dict["TrialType"] != nil {
            self.trialType = dict["TrialType"] as! String
        }
    }
}

public class CreateServiceInstanceShrinkRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var payPeriod: Int64?

        public var payPeriodUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payPeriod != nil {
                map["PayPeriod"] = self.payPeriod!
            }
            if self.payPeriodUnit != nil {
                map["PayPeriodUnit"] = self.payPeriodUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PayPeriod") && dict["PayPeriod"] != nil {
                self.payPeriod = dict["PayPeriod"] as! Int64
            }
            if dict.keys.contains("PayPeriodUnit") && dict["PayPeriodUnit"] != nil {
                self.payPeriodUnit = dict["PayPeriodUnit"] as! String
            }
        }
    }
    public class OperationMetadata : Tea.TeaModel {
        public var endTime: String?

        public var extraInfo: String?

        public var resources: String?

        public var serviceInstanceId: String?

        public var startTime: String?

        public override init() {
            super.init()
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
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
                self.extraInfo = dict["ExtraInfo"] as! String
            }
            if dict.keys.contains("Resources") && dict["Resources"] != nil {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public class Tag : Tea.TeaModel {
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
    public var businessInfoShrink: String?

    public var clientToken: String?

    public var commodity: CreateServiceInstanceShrinkRequest.Commodity?

    public var contactGroup: String?

    public var dryRun: Bool?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var name: String?

    public var operationMetadata: CreateServiceInstanceShrinkRequest.OperationMetadata?

    public var parametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var specificationCode: String?

    public var specificationName: String?

    public var tag: [CreateServiceInstanceShrinkRequest.Tag]?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
        try self.operationMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessInfoShrink != nil {
            map["BusinessInfo"] = self.businessInfoShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.contactGroup != nil {
            map["ContactGroup"] = self.contactGroup!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata?.toMap()
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationCode != nil {
            map["SpecificationCode"] = self.specificationCode!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessInfo") && dict["BusinessInfo"] != nil {
            self.businessInfoShrink = dict["BusinessInfo"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") && dict["Commodity"] != nil {
            var model = CreateServiceInstanceShrinkRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("ContactGroup") && dict["ContactGroup"] != nil {
            self.contactGroup = dict["ContactGroup"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnableInstanceOps") && dict["EnableInstanceOps"] != nil {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") && dict["EnableUserPrometheus"] != nil {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationMetadata") && dict["OperationMetadata"] != nil {
            var model = CreateServiceInstanceShrinkRequest.OperationMetadata()
            model.fromMap(dict["OperationMetadata"] as! [String: Any])
            self.operationMetadata = model
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") && dict["ServiceVersion"] != nil {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationCode") && dict["SpecificationCode"] != nil {
            self.specificationCode = dict["SpecificationCode"] as! String
        }
        if dict.keys.contains("SpecificationName") && dict["SpecificationName"] != nil {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateServiceInstanceShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceInstanceShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") && dict["TrialType"] != nil {
            self.trialType = dict["TrialType"] as! String
        }
    }
}

public class CreateServiceInstanceResponseBody : Tea.TeaModel {
    public var marketInstanceId: String?

    public var requestId: String?

    public var serviceInstanceId: String?

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
        if self.marketInstanceId != nil {
            map["MarketInstanceId"] = self.marketInstanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MarketInstanceId") && dict["MarketInstanceId"] != nil {
            self.marketInstanceId = dict["MarketInstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class CreateServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceInstanceResponseBody?

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
            var model = CreateServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServiceInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: [String]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! [String]
        }
    }
}

public class DeleteServiceInstancesResponseBody : Tea.TeaModel {
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

public class DeleteServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceInstancesResponseBody?

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
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceInstanceRequest : Tea.TeaModel {
    public var marketInstanceId: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marketInstanceId != nil {
            map["MarketInstanceId"] = self.marketInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MarketInstanceId") && dict["MarketInstanceId"] != nil {
            self.marketInstanceId = dict["MarketInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class GetServiceInstanceResponseBody : Tea.TeaModel {
    public class NetworkConfig : Tea.TeaModel {
        public class PrivateVpcConnections : Tea.TeaModel {
            public class ConnectionConfigs : Tea.TeaModel {
                public var connectBandwidth: Int32?

                public var domainName: String?

                public var endpointIps: [String]?

                public var ingressEndpointStatus: String?

                public var networkServiceStatus: String?

                public var regionId: String?

                public var securityGroups: [String]?

                public var vSwitches: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connectBandwidth != nil {
                        map["ConnectBandwidth"] = self.connectBandwidth!
                    }
                    if self.domainName != nil {
                        map["DomainName"] = self.domainName!
                    }
                    if self.endpointIps != nil {
                        map["EndpointIps"] = self.endpointIps!
                    }
                    if self.ingressEndpointStatus != nil {
                        map["IngressEndpointStatus"] = self.ingressEndpointStatus!
                    }
                    if self.networkServiceStatus != nil {
                        map["NetworkServiceStatus"] = self.networkServiceStatus!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.securityGroups != nil {
                        map["SecurityGroups"] = self.securityGroups!
                    }
                    if self.vSwitches != nil {
                        map["VSwitches"] = self.vSwitches!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectBandwidth") && dict["ConnectBandwidth"] != nil {
                        self.connectBandwidth = dict["ConnectBandwidth"] as! Int32
                    }
                    if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                        self.domainName = dict["DomainName"] as! String
                    }
                    if dict.keys.contains("EndpointIps") && dict["EndpointIps"] != nil {
                        self.endpointIps = dict["EndpointIps"] as! [String]
                    }
                    if dict.keys.contains("IngressEndpointStatus") && dict["IngressEndpointStatus"] != nil {
                        self.ingressEndpointStatus = dict["IngressEndpointStatus"] as! String
                    }
                    if dict.keys.contains("NetworkServiceStatus") && dict["NetworkServiceStatus"] != nil {
                        self.networkServiceStatus = dict["NetworkServiceStatus"] as! String
                    }
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("SecurityGroups") && dict["SecurityGroups"] != nil {
                        self.securityGroups = dict["SecurityGroups"] as! [String]
                    }
                    if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                        self.vpcId = dict["VpcId"] as! String
                    }
                }
            }
            public var connectionConfigs: [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs]?

            public var endpointId: String?

            public var privateZoneId: String?

            public var privateZoneName: String?

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
                if self.connectionConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.connectionConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["ConnectionConfigs"] = tmp
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.privateZoneId != nil {
                    map["PrivateZoneId"] = self.privateZoneId!
                }
                if self.privateZoneName != nil {
                    map["PrivateZoneName"] = self.privateZoneName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionConfigs") && dict["ConnectionConfigs"] != nil {
                    var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs] = []
                    for v in dict["ConnectionConfigs"] as! [Any] {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.connectionConfigs = tmp
                }
                if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("PrivateZoneId") && dict["PrivateZoneId"] != nil {
                    self.privateZoneId = dict["PrivateZoneId"] as! String
                }
                if dict.keys.contains("PrivateZoneName") && dict["PrivateZoneName"] != nil {
                    self.privateZoneName = dict["PrivateZoneName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public class ReversePrivateVpcConnections : Tea.TeaModel {
            public var endpointId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                    self.endpointId = dict["EndpointId"] as! String
                }
            }
        }
        public var endpointId: String?

        public var privateVpcConnections: [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections]?

        public var privateZoneId: String?

        public var reversePrivateVpcConnections: [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.privateVpcConnections != nil {
                var tmp : [Any] = []
                for k in self.privateVpcConnections! {
                    tmp.append(k.toMap())
                }
                map["PrivateVpcConnections"] = tmp
            }
            if self.privateZoneId != nil {
                map["PrivateZoneId"] = self.privateZoneId!
            }
            if self.reversePrivateVpcConnections != nil {
                var tmp : [Any] = []
                for k in self.reversePrivateVpcConnections! {
                    tmp.append(k.toMap())
                }
                map["ReversePrivateVpcConnections"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("PrivateVpcConnections") && dict["PrivateVpcConnections"] != nil {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections] = []
                for v in dict["PrivateVpcConnections"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.privateVpcConnections = tmp
            }
            if dict.keys.contains("PrivateZoneId") && dict["PrivateZoneId"] != nil {
                self.privateZoneId = dict["PrivateZoneId"] as! String
            }
            if dict.keys.contains("ReversePrivateVpcConnections") && dict["ReversePrivateVpcConnections"] != nil {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections] = []
                for v in dict["ReversePrivateVpcConnections"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.reversePrivateVpcConnections = tmp
            }
        }
    }
    public class Service : Tea.TeaModel {
        public class ServiceInfos : Tea.TeaModel {
            public var image: String?

            public var locale: String?

            public var name: String?

            public var shortDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.locale != nil {
                    map["Locale"] = self.locale!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Image") && dict["Image"] != nil {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("Locale") && dict["Locale"] != nil {
                    self.locale = dict["Locale"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
                    self.shortDescription = dict["ShortDescription"] as! String
                }
            }
        }
        public var deployMetadata: String?

        public var deployType: String?

        public var publishTime: String?

        public var serviceDocUrl: String?

        public var serviceId: String?

        public var serviceInfos: [GetServiceInstanceResponseBody.Service.ServiceInfos]?

        public var serviceProductUrl: String?

        public var serviceType: String?

        public var status: String?

        public var supplierName: String?

        public var supplierUrl: String?

        public var upgradableServiceVersions: [String]?

        public var upgradeMetadata: String?

        public var version: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployMetadata != nil {
                map["DeployMetadata"] = self.deployMetadata!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.serviceDocUrl != nil {
                map["ServiceDocUrl"] = self.serviceDocUrl!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceInfos != nil {
                var tmp : [Any] = []
                for k in self.serviceInfos! {
                    tmp.append(k.toMap())
                }
                map["ServiceInfos"] = tmp
            }
            if self.serviceProductUrl != nil {
                map["ServiceProductUrl"] = self.serviceProductUrl!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            if self.upgradableServiceVersions != nil {
                map["UpgradableServiceVersions"] = self.upgradableServiceVersions!
            }
            if self.upgradeMetadata != nil {
                map["UpgradeMetadata"] = self.upgradeMetadata!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployMetadata") && dict["DeployMetadata"] != nil {
                self.deployMetadata = dict["DeployMetadata"] as! String
            }
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("PublishTime") && dict["PublishTime"] != nil {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("ServiceDocUrl") && dict["ServiceDocUrl"] != nil {
                self.serviceDocUrl = dict["ServiceDocUrl"] as! String
            }
            if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceInfos") && dict["ServiceInfos"] != nil {
                var tmp : [GetServiceInstanceResponseBody.Service.ServiceInfos] = []
                for v in dict["ServiceInfos"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.Service.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceInfos = tmp
            }
            if dict.keys.contains("ServiceProductUrl") && dict["ServiceProductUrl"] != nil {
                self.serviceProductUrl = dict["ServiceProductUrl"] as! String
            }
            if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") && dict["SupplierName"] != nil {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierUrl") && dict["SupplierUrl"] != nil {
                self.supplierUrl = dict["SupplierUrl"] as! String
            }
            if dict.keys.contains("UpgradableServiceVersions") && dict["UpgradableServiceVersions"] != nil {
                self.upgradableServiceVersions = dict["UpgradableServiceVersions"] as! [String]
            }
            if dict.keys.contains("UpgradeMetadata") && dict["UpgradeMetadata"] != nil {
                self.upgradeMetadata = dict["UpgradeMetadata"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
                self.versionName = dict["VersionName"] as! String
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
    public var bizStatus: String?

    public var components: String?

    public var createTime: String?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var endTime: String?

    public var isOperated: Bool?

    public var licenseEndTime: String?

    public var marketInstanceId: String?

    public var name: String?

    public var networkConfig: GetServiceInstanceResponseBody.NetworkConfig?

    public var operatedServiceInstanceId: String?

    public var operationEndTime: String?

    public var operationStartTime: String?

    public var outputs: String?

    public var parameters: String?

    public var payType: String?

    public var predefinedParameterName: String?

    public var progress: Int64?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var service: GetServiceInstanceResponseBody.Service?

    public var serviceInstanceId: String?

    public var serviceType: String?

    public var source: String?

    public var status: String?

    public var statusDetail: String?

    public var supplierUid: Int64?

    public var tags: [GetServiceInstanceResponseBody.Tags]?

    public var templateName: String?

    public var updateTime: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfig?.validate()
        try self.service?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizStatus != nil {
            map["BizStatus"] = self.bizStatus!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isOperated != nil {
            map["IsOperated"] = self.isOperated!
        }
        if self.licenseEndTime != nil {
            map["LicenseEndTime"] = self.licenseEndTime!
        }
        if self.marketInstanceId != nil {
            map["MarketInstanceId"] = self.marketInstanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkConfig != nil {
            map["NetworkConfig"] = self.networkConfig?.toMap()
        }
        if self.operatedServiceInstanceId != nil {
            map["OperatedServiceInstanceId"] = self.operatedServiceInstanceId!
        }
        if self.operationEndTime != nil {
            map["OperationEndTime"] = self.operationEndTime!
        }
        if self.operationStartTime != nil {
            map["OperationStartTime"] = self.operationStartTime!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.predefinedParameterName != nil {
            map["PredefinedParameterName"] = self.predefinedParameterName!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.service != nil {
            map["Service"] = self.service?.toMap()
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supplierUid != nil {
            map["SupplierUid"] = self.supplierUid!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
            self.bizStatus = dict["BizStatus"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EnableInstanceOps") && dict["EnableInstanceOps"] != nil {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") && dict["EnableUserPrometheus"] != nil {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsOperated") && dict["IsOperated"] != nil {
            self.isOperated = dict["IsOperated"] as! Bool
        }
        if dict.keys.contains("LicenseEndTime") && dict["LicenseEndTime"] != nil {
            self.licenseEndTime = dict["LicenseEndTime"] as! String
        }
        if dict.keys.contains("MarketInstanceId") && dict["MarketInstanceId"] != nil {
            self.marketInstanceId = dict["MarketInstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetworkConfig") && dict["NetworkConfig"] != nil {
            var model = GetServiceInstanceResponseBody.NetworkConfig()
            model.fromMap(dict["NetworkConfig"] as! [String: Any])
            self.networkConfig = model
        }
        if dict.keys.contains("OperatedServiceInstanceId") && dict["OperatedServiceInstanceId"] != nil {
            self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
        }
        if dict.keys.contains("OperationEndTime") && dict["OperationEndTime"] != nil {
            self.operationEndTime = dict["OperationEndTime"] as! String
        }
        if dict.keys.contains("OperationStartTime") && dict["OperationStartTime"] != nil {
            self.operationStartTime = dict["OperationStartTime"] as! String
        }
        if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PredefinedParameterName") && dict["PredefinedParameterName"] != nil {
            self.predefinedParameterName = dict["PredefinedParameterName"] as! String
        }
        if dict.keys.contains("Progress") && dict["Progress"] != nil {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Service") && dict["Service"] != nil {
            var model = GetServiceInstanceResponseBody.Service()
            model.fromMap(dict["Service"] as! [String: Any])
            self.service = model
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusDetail") && dict["StatusDetail"] != nil {
            self.statusDetail = dict["StatusDetail"] as! String
        }
        if dict.keys.contains("SupplierUid") && dict["SupplierUid"] != nil {
            self.supplierUid = dict["SupplierUid"] as! Int64
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [GetServiceInstanceResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetServiceInstanceResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class GetServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceInstanceResponseBody?

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
            var model = GetServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceTemplateParameterConstraintsRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var deployRegionId: String?

    public var enablePrivateVpcConnection: Bool?

    public var parameters: [GetServiceTemplateParameterConstraintsRequest.Parameters]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
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
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.enablePrivateVpcConnection != nil {
            map["EnablePrivateVpcConnection"] = self.enablePrivateVpcConnection!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeployRegionId") && dict["DeployRegionId"] != nil {
            self.deployRegionId = dict["DeployRegionId"] as! String
        }
        if dict.keys.contains("EnablePrivateVpcConnection") && dict["EnablePrivateVpcConnection"] != nil {
            self.enablePrivateVpcConnection = dict["EnablePrivateVpcConnection"] as! Bool
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [GetServiceTemplateParameterConstraintsRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetServiceTemplateParameterConstraintsRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") && dict["ServiceVersion"] != nil {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") && dict["SpecificationName"] != nil {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") && dict["TrialType"] != nil {
            self.trialType = dict["TrialType"] as! String
        }
    }
}

public class GetServiceTemplateParameterConstraintsResponseBody : Tea.TeaModel {
    public class ParameterConstraints : Tea.TeaModel {
        public class OriginalConstraints : Tea.TeaModel {
            public var allowedValues: [String]?

            public var propertyName: String?

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
                if self.allowedValues != nil {
                    map["AllowedValues"] = self.allowedValues!
                }
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
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
                if dict.keys.contains("AllowedValues") && dict["AllowedValues"] != nil {
                    self.allowedValues = dict["AllowedValues"] as! [String]
                }
                if dict.keys.contains("PropertyName") && dict["PropertyName"] != nil {
                    self.propertyName = dict["PropertyName"] as! String
                }
                if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var allowedValues: [String]?

        public var associationParameterNames: [String]?

        public var behavior: String?

        public var behaviorReason: String?

        public var originalConstraints: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints]?

        public var parameterKey: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedValues != nil {
                map["AllowedValues"] = self.allowedValues!
            }
            if self.associationParameterNames != nil {
                map["AssociationParameterNames"] = self.associationParameterNames!
            }
            if self.behavior != nil {
                map["Behavior"] = self.behavior!
            }
            if self.behaviorReason != nil {
                map["BehaviorReason"] = self.behaviorReason!
            }
            if self.originalConstraints != nil {
                var tmp : [Any] = []
                for k in self.originalConstraints! {
                    tmp.append(k.toMap())
                }
                map["OriginalConstraints"] = tmp
            }
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedValues") && dict["AllowedValues"] != nil {
                self.allowedValues = dict["AllowedValues"] as! [String]
            }
            if dict.keys.contains("AssociationParameterNames") && dict["AssociationParameterNames"] != nil {
                self.associationParameterNames = dict["AssociationParameterNames"] as! [String]
            }
            if dict.keys.contains("Behavior") && dict["Behavior"] != nil {
                self.behavior = dict["Behavior"] as! String
            }
            if dict.keys.contains("BehaviorReason") && dict["BehaviorReason"] != nil {
                self.behaviorReason = dict["BehaviorReason"] as! String
            }
            if dict.keys.contains("OriginalConstraints") && dict["OriginalConstraints"] != nil {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in dict["OriginalConstraints"] as! [Any] {
                    var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.originalConstraints = tmp
            }
            if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var familyConstraints: [String]?

    public var parameterConstraints: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints]?

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
        if self.familyConstraints != nil {
            map["FamilyConstraints"] = self.familyConstraints!
        }
        if self.parameterConstraints != nil {
            var tmp : [Any] = []
            for k in self.parameterConstraints! {
                tmp.append(k.toMap())
            }
            map["ParameterConstraints"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FamilyConstraints") && dict["FamilyConstraints"] != nil {
            self.familyConstraints = dict["FamilyConstraints"] as! [String]
        }
        if dict.keys.contains("ParameterConstraints") && dict["ParameterConstraints"] != nil {
            var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in dict["ParameterConstraints"] as! [Any] {
                var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterConstraints = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetServiceTemplateParameterConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceTemplateParameterConstraintsResponseBody?

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
            var model = GetServiceTemplateParameterConstraintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceInstanceLogsRequest : Tea.TeaModel {
    public var logSource: String?

    public var logstore: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logstore != nil {
            map["Logstore"] = self.logstore!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("Logstore") && dict["Logstore"] != nil {
            self.logstore = dict["Logstore"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class ListServiceInstanceLogsResponseBody : Tea.TeaModel {
    public class ServiceInstancesLogs : Tea.TeaModel {
        public var content: String?

        public var logType: String?

        public var resourceId: String?

        public var resourceType: String?

        public var source: String?

        public var status: String?

        public var timestamp: String?

        public override init() {
            super.init()
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
                map["Content"] = self.content!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("LogType") && dict["LogType"] != nil {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceInstancesLogs: [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstancesLogs != nil {
            var tmp : [Any] = []
            for k in self.serviceInstancesLogs! {
                tmp.append(k.toMap())
            }
            map["ServiceInstancesLogs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstancesLogs") && dict["ServiceInstancesLogs"] != nil {
            var tmp : [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs] = []
            for v in dict["ServiceInstancesLogs"] as! [Any] {
                var model = ListServiceInstanceLogsResponseBody.ServiceInstancesLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInstancesLogs = tmp
        }
    }
}

public class ListServiceInstanceLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceLogsResponseBody?

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
            var model = ListServiceInstanceLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceInstanceResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var expireTimeEnd: String?

    public var expireTimeStart: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var payType: String?

    public var regionId: String?

    public var resourceARN: [String]?

    public var serviceInstanceId: String?

    public var serviceInstanceResourceType: String?

    public var tag: [ListServiceInstanceResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireTimeEnd != nil {
            map["ExpireTimeEnd"] = self.expireTimeEnd!
        }
        if self.expireTimeStart != nil {
            map["ExpireTimeStart"] = self.expireTimeStart!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceARN != nil {
            map["ResourceARN"] = self.resourceARN!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceInstanceResourceType != nil {
            map["ServiceInstanceResourceType"] = self.serviceInstanceResourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTimeEnd") && dict["ExpireTimeEnd"] != nil {
            self.expireTimeEnd = dict["ExpireTimeEnd"] as! String
        }
        if dict.keys.contains("ExpireTimeStart") && dict["ExpireTimeStart"] != nil {
            self.expireTimeStart = dict["ExpireTimeStart"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceARN") && dict["ResourceARN"] != nil {
            self.resourceARN = dict["ResourceARN"] as! [String]
        }
        if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceResourceType") && dict["ServiceInstanceResourceType"] != nil {
            self.serviceInstanceResourceType = dict["ServiceInstanceResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListServiceInstanceResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServiceInstanceResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListServiceInstanceResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var payType: String?

        public var productCode: String?

        public var productType: String?

        public var renewStatus: String?

        public var renewalPeriod: Int32?

        public var renewalPeriodUnit: String?

        public var resourceARN: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.renewStatus != nil {
                map["RenewStatus"] = self.renewStatus!
            }
            if self.renewalPeriod != nil {
                map["RenewalPeriod"] = self.renewalPeriod!
            }
            if self.renewalPeriodUnit != nil {
                map["RenewalPeriodUnit"] = self.renewalPeriodUnit!
            }
            if self.resourceARN != nil {
                map["ResourceARN"] = self.resourceARN!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RenewStatus") && dict["RenewStatus"] != nil {
                self.renewStatus = dict["RenewStatus"] as! String
            }
            if dict.keys.contains("RenewalPeriod") && dict["RenewalPeriod"] != nil {
                self.renewalPeriod = dict["RenewalPeriod"] as! Int32
            }
            if dict.keys.contains("RenewalPeriodUnit") && dict["RenewalPeriodUnit"] != nil {
                self.renewalPeriodUnit = dict["RenewalPeriodUnit"] as! String
            }
            if dict.keys.contains("ResourceARN") && dict["ResourceARN"] != nil {
                self.resourceARN = dict["ResourceARN"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [ListServiceInstanceResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [ListServiceInstanceResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListServiceInstanceResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class ListServiceInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceResourcesResponseBody?

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
            var model = ListServiceInstanceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceInstancesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public class Tag : Tea.TeaModel {
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
    public var filter: [ListServiceInstancesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListServiceInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [ListServiceInstancesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServiceInstancesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListServiceInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServiceInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListServiceInstancesResponseBody : Tea.TeaModel {
    public class ServiceInstances : Tea.TeaModel {
        public class Service : Tea.TeaModel {
            public class ServiceInfos : Tea.TeaModel {
                public var image: String?

                public var locale: String?

                public var name: String?

                public var shortDescription: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.image != nil {
                        map["Image"] = self.image!
                    }
                    if self.locale != nil {
                        map["Locale"] = self.locale!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.shortDescription != nil {
                        map["ShortDescription"] = self.shortDescription!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Image") && dict["Image"] != nil {
                        self.image = dict["Image"] as! String
                    }
                    if dict.keys.contains("Locale") && dict["Locale"] != nil {
                        self.locale = dict["Locale"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
                        self.shortDescription = dict["ShortDescription"] as! String
                    }
                }
            }
            public var deployType: String?

            public var publishTime: String?

            public var serviceId: String?

            public var serviceInfos: [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos]?

            public var serviceType: String?

            public var status: String?

            public var supplierName: String?

            public var supplierUrl: String?

            public var version: String?

            public var versionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deployType != nil {
                    map["DeployType"] = self.deployType!
                }
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                if self.serviceId != nil {
                    map["ServiceId"] = self.serviceId!
                }
                if self.serviceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.serviceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ServiceInfos"] = tmp
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.supplierName != nil {
                    map["SupplierName"] = self.supplierName!
                }
                if self.supplierUrl != nil {
                    map["SupplierUrl"] = self.supplierUrl!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                    self.deployType = dict["DeployType"] as! String
                }
                if dict.keys.contains("PublishTime") && dict["PublishTime"] != nil {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                    self.serviceId = dict["ServiceId"] as! String
                }
                if dict.keys.contains("ServiceInfos") && dict["ServiceInfos"] != nil {
                    var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos] = []
                    for v in dict["ServiceInfos"] as! [Any] {
                        var model = ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceInfos = tmp
                }
                if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SupplierName") && dict["SupplierName"] != nil {
                    self.supplierName = dict["SupplierName"] as! String
                }
                if dict.keys.contains("SupplierUrl") && dict["SupplierUrl"] != nil {
                    self.supplierUrl = dict["SupplierUrl"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
                    self.versionName = dict["VersionName"] as! String
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
        public var bizStatus: String?

        public var createTime: String?

        public var enableInstanceOps: Bool?

        public var endTime: String?

        public var marketInstanceId: String?

        public var name: String?

        public var operatedServiceInstanceId: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var outputs: String?

        public var parameters: String?

        public var payType: String?

        public var progress: Int64?

        public var resourceGroupId: String?

        public var resources: String?

        public var service: ListServiceInstancesResponseBody.ServiceInstances.Service?

        public var serviceInstanceId: String?

        public var serviceType: String?

        public var source: String?

        public var status: String?

        public var statusDetail: String?

        public var tags: [ListServiceInstancesResponseBody.ServiceInstances.Tags]?

        public var templateName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.service?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizStatus != nil {
                map["BizStatus"] = self.bizStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableInstanceOps != nil {
                map["EnableInstanceOps"] = self.enableInstanceOps!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.marketInstanceId != nil {
                map["MarketInstanceId"] = self.marketInstanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatedServiceInstanceId != nil {
                map["OperatedServiceInstanceId"] = self.operatedServiceInstanceId!
            }
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.operationStartTime != nil {
                map["OperationStartTime"] = self.operationStartTime!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.service != nil {
                map["Service"] = self.service?.toMap()
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
                self.bizStatus = dict["BizStatus"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EnableInstanceOps") && dict["EnableInstanceOps"] != nil {
                self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("MarketInstanceId") && dict["MarketInstanceId"] != nil {
                self.marketInstanceId = dict["MarketInstanceId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatedServiceInstanceId") && dict["OperatedServiceInstanceId"] != nil {
                self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
            }
            if dict.keys.contains("OperationEndTime") && dict["OperationEndTime"] != nil {
                self.operationEndTime = dict["OperationEndTime"] as! String
            }
            if dict.keys.contains("OperationStartTime") && dict["OperationStartTime"] != nil {
                self.operationStartTime = dict["OperationStartTime"] as! String
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Resources") && dict["Resources"] != nil {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("Service") && dict["Service"] != nil {
                var model = ListServiceInstancesResponseBody.ServiceInstances.Service()
                model.fromMap(dict["Service"] as! [String: Any])
                self.service = model
            }
            if dict.keys.contains("ServiceInstanceId") && dict["ServiceInstanceId"] != nil {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusDetail") && dict["StatusDetail"] != nil {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListServiceInstancesResponseBody.ServiceInstances.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceInstances: [ListServiceInstancesResponseBody.ServiceInstances]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstances != nil {
            var tmp : [Any] = []
            for k in self.serviceInstances! {
                tmp.append(k.toMap())
            }
            map["ServiceInstances"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstances") && dict["ServiceInstances"] != nil {
            var tmp : [ListServiceInstancesResponseBody.ServiceInstances] = []
            for v in dict["ServiceInstances"] as! [Any] {
                var model = ListServiceInstancesResponseBody.ServiceInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInstances = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstancesResponseBody?

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
            var model = ListServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
