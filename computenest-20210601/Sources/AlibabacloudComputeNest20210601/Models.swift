import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ContinueDeployServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class ContinueDeployServiceInstanceResponseBody : Tea.TeaModel {
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
            var model = ContinueDeployServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceInstanceRequest : Tea.TeaModel {
    public class OperationMetadata : Tea.TeaModel {
        public var endTime: String?

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
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("StartTime") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var contactGroup: String?

    public var enableInstanceOps: Bool?

    public var operationMetadata: CreateServiceInstanceRequest.OperationMetadata?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceVersion: String?

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
        try self.operationMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contactGroup != nil {
            map["ContactGroup"] = self.contactGroup!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContactGroup") {
            self.contactGroup = dict["ContactGroup"] as! String
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("OperationMetadata") {
            var model = CreateServiceInstanceRequest.OperationMetadata()
            model.fromMap(dict["OperationMetadata"] as! [String: Any])
            self.operationMetadata = model
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateServiceInstanceRequest.Tag]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
        }
    }
}

public class CreateServiceInstanceShrinkRequest : Tea.TeaModel {
    public class OperationMetadata : Tea.TeaModel {
        public var endTime: String?

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
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("StartTime") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var contactGroup: String?

    public var enableInstanceOps: Bool?

    public var operationMetadata: CreateServiceInstanceShrinkRequest.OperationMetadata?

    public var parametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceVersion: String?

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
        try self.operationMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contactGroup != nil {
            map["ContactGroup"] = self.contactGroup!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContactGroup") {
            self.contactGroup = dict["ContactGroup"] as! String
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("OperationMetadata") {
            var model = CreateServiceInstanceShrinkRequest.OperationMetadata()
            model.fromMap(dict["OperationMetadata"] as! [String: Any])
            self.operationMetadata = model
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateServiceInstanceShrinkRequest.Tag]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
        }
    }
}

public class CreateServiceInstanceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
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
        if dict.keys.contains("RequestId") {
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
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceInstanceRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class GetServiceInstanceResponseBody : Tea.TeaModel {
    public class NetworkConfig : Tea.TeaModel {
        public class PrivateVpcConnections : Tea.TeaModel {
            public var endpointId: String?

            public var privateZoneId: String?

            public override init() {
                super.init()
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
                if self.privateZoneId != nil {
                    map["PrivateZoneId"] = self.privateZoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("PrivateZoneId") {
                    self.privateZoneId = dict["PrivateZoneId"] as! String
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
                if dict.keys.contains("EndpointId") {
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
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("PrivateVpcConnections") {
                self.privateVpcConnections = dict["PrivateVpcConnections"] as! [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections]
            }
            if dict.keys.contains("PrivateZoneId") {
                self.privateZoneId = dict["PrivateZoneId"] as! String
            }
            if dict.keys.contains("ReversePrivateVpcConnections") {
                self.reversePrivateVpcConnections = dict["ReversePrivateVpcConnections"] as! [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections]
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
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("Locale") {
                    self.locale = dict["Locale"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ShortDescription") {
                    self.shortDescription = dict["ShortDescription"] as! String
                }
            }
        }
        public var deployMetadata: String?

        public var deployType: String?

        public var publishTime: String?

        public var serviceId: String?

        public var serviceInfos: [GetServiceInstanceResponseBody.Service.ServiceInfos]?

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
            if dict.keys.contains("DeployMetadata") {
                self.deployMetadata = dict["DeployMetadata"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceInfos") {
                self.serviceInfos = dict["ServiceInfos"] as! [GetServiceInstanceResponseBody.Service.ServiceInfos]
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierUrl") {
                self.supplierUrl = dict["SupplierUrl"] as! String
            }
            if dict.keys.contains("UpgradableServiceVersions") {
                self.upgradableServiceVersions = dict["UpgradableServiceVersions"] as! [String]
            }
            if dict.keys.contains("UpgradeMetadata") {
                self.upgradeMetadata = dict["UpgradeMetadata"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionName") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var createTime: String?

    public var enableInstanceOps: Bool?

    public var endTime: String?

    public var isOperated: Bool?

    public var licenseEndTime: String?

    public var networkConfig: GetServiceInstanceResponseBody.NetworkConfig?

    public var operatedServiceInstanceId: String?

    public var operationEndTime: String?

    public var operationStartTime: String?

    public var outputs: String?

    public var parameters: String?

    public var payType: String?

    public var progress: Int64?

    public var requestId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
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
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsOperated") {
            self.isOperated = dict["IsOperated"] as! Bool
        }
        if dict.keys.contains("LicenseEndTime") {
            self.licenseEndTime = dict["LicenseEndTime"] as! String
        }
        if dict.keys.contains("NetworkConfig") {
            var model = GetServiceInstanceResponseBody.NetworkConfig()
            model.fromMap(dict["NetworkConfig"] as! [String: Any])
            self.networkConfig = model
        }
        if dict.keys.contains("OperatedServiceInstanceId") {
            self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
        }
        if dict.keys.contains("OperationEndTime") {
            self.operationEndTime = dict["OperationEndTime"] as! String
        }
        if dict.keys.contains("OperationStartTime") {
            self.operationStartTime = dict["OperationStartTime"] as! String
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Service") {
            var model = GetServiceInstanceResponseBody.Service()
            model.fromMap(dict["Service"] as! [String: Any])
            self.service = model
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusDetail") {
            self.statusDetail = dict["StatusDetail"] as! String
        }
        if dict.keys.contains("SupplierUid") {
            self.supplierUid = dict["SupplierUid"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [GetServiceInstanceResponseBody.Tags]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UserId") {
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
            var model = GetServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceInstanceLogsRequest : Tea.TeaModel {
    public var maxResults: String?

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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
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

        public var serviceInstanceId: String?

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
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
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
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var maxResults: String?

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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstancesLogs") {
            self.serviceInstancesLogs = dict["ServiceInstancesLogs"] as! [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs]
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var expireTimeEnd: String?

    public var expireTimeStart: String?

    public var maxResults: String?

    public var nextToken: String?

    public var payType: String?

    public var resourceARN: [String]?

    public var serviceInstanceId: String?

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
        if self.resourceARN != nil {
            map["ResourceARN"] = self.resourceARN!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if dict.keys.contains("ExpireTimeEnd") {
            self.expireTimeEnd = dict["ExpireTimeEnd"] as! String
        }
        if dict.keys.contains("ExpireTimeStart") {
            self.expireTimeStart = dict["ExpireTimeStart"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("ResourceARN") {
            self.resourceARN = dict["ResourceARN"] as! [String]
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListServiceInstanceResourcesRequest.Tag]
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RenewStatus") {
                self.renewStatus = dict["RenewStatus"] as! String
            }
            if dict.keys.contains("RenewalPeriod") {
                self.renewalPeriod = dict["RenewalPeriod"] as! Int32
            }
            if dict.keys.contains("RenewalPeriodUnit") {
                self.renewalPeriodUnit = dict["RenewalPeriodUnit"] as! String
            }
            if dict.keys.contains("ResourceARN") {
                self.resourceARN = dict["ResourceARN"] as! String
            }
        }
    }
    public var maxResults: String?

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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [ListServiceInstanceResourcesResponseBody.Resources]
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var filter: [ListServiceInstancesRequest.Filter]?

    public var maxResults: String?

    public var nextToken: String?

    public var regionId: String?

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
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! [ListServiceInstancesRequest.Filter]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListServiceInstancesRequest.Tag]
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
                    if dict.keys.contains("Image") {
                        self.image = dict["Image"] as! String
                    }
                    if dict.keys.contains("Locale") {
                        self.locale = dict["Locale"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ShortDescription") {
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
                if dict.keys.contains("DeployType") {
                    self.deployType = dict["DeployType"] as! String
                }
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("ServiceId") {
                    self.serviceId = dict["ServiceId"] as! String
                }
                if dict.keys.contains("ServiceInfos") {
                    self.serviceInfos = dict["ServiceInfos"] as! [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos]
                }
                if dict.keys.contains("ServiceType") {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SupplierName") {
                    self.supplierName = dict["SupplierName"] as! String
                }
                if dict.keys.contains("SupplierUrl") {
                    self.supplierUrl = dict["SupplierUrl"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionName") {
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var createTime: String?

        public var enableInstanceOps: Bool?

        public var endTime: String?

        public var operatedServiceInstanceId: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var outputs: String?

        public var parameters: String?

        public var payType: String?

        public var progress: Int64?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableInstanceOps != nil {
                map["EnableInstanceOps"] = self.enableInstanceOps!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EnableInstanceOps") {
                self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("OperatedServiceInstanceId") {
                self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
            }
            if dict.keys.contains("OperationEndTime") {
                self.operationEndTime = dict["OperationEndTime"] as! String
            }
            if dict.keys.contains("OperationStartTime") {
                self.operationStartTime = dict["OperationStartTime"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("Service") {
                var model = ListServiceInstancesResponseBody.ServiceInstances.Service()
                model.fromMap(dict["Service"] as! [String: Any])
                self.service = model
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusDetail") {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListServiceInstancesResponseBody.ServiceInstances.Tags]
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var maxResults: String?

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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstances") {
            self.serviceInstances = dict["ServiceInstances"] as! [ListServiceInstancesResponseBody.ServiceInstances]
        }
        if dict.keys.contains("TotalCount") {
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
            var model = ListServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
