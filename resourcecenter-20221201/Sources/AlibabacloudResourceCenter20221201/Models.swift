import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DisableMultiAccountResourceCenterResponseBody : Tea.TeaModel {
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

public class DisableMultiAccountResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableMultiAccountResourceCenterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DisableMultiAccountResourceCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableResourceCenterResponseBody : Tea.TeaModel {
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

public class DisableResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableResourceCenterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DisableResourceCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableMultiAccountResourceCenterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class EnableMultiAccountResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableMultiAccountResourceCenterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableMultiAccountResourceCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableResourceCenterResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class EnableResourceCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableResourceCenterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableResourceCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMultiAccountResourceCenterServiceStatusResponseBody : Tea.TeaModel {
    public var initialStatus: String?

    public var requestId: String?

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
        if self.initialStatus != nil {
            map["InitialStatus"] = self.initialStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InitialStatus") && dict["InitialStatus"] != nil {
            self.initialStatus = dict["InitialStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
    }
}

public class GetMultiAccountResourceCenterServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountResourceCenterServiceStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMultiAccountResourceCenterServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMultiAccountResourceConfigurationRequest : Tea.TeaModel {
    public var accountId: String?

    public var resourceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetMultiAccountResourceConfigurationResponseBody : Tea.TeaModel {
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
    public var accountId: String?

    public var configuration: [String: Any]?

    public var createTime: String?

    public var ipAddresses: [String]?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var tags: [GetMultiAccountResourceConfigurationResponseBody.Tags]?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.configuration != nil {
            map["Configuration"] = self.configuration!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.ipAddresses != nil {
            map["IpAddresses"] = self.ipAddresses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("Configuration") && dict["Configuration"] != nil {
            self.configuration = dict["Configuration"] as! [String: Any]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("IpAddresses") && dict["IpAddresses"] != nil {
            self.ipAddresses = dict["IpAddresses"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [GetMultiAccountResourceConfigurationResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetMultiAccountResourceConfigurationResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class GetMultiAccountResourceConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiAccountResourceConfigurationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMultiAccountResourceConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceCenterServiceStatusResponseBody : Tea.TeaModel {
    public var initialStatus: String?

    public var requestId: String?

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
        if self.initialStatus != nil {
            map["InitialStatus"] = self.initialStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InitialStatus") && dict["InitialStatus"] != nil {
            self.initialStatus = dict["InitialStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
    }
}

public class GetResourceCenterServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceCenterServiceStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetResourceCenterServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceConfigurationRequest : Tea.TeaModel {
    public var resourceId: String?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetResourceConfigurationResponseBody : Tea.TeaModel {
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
    public var accountId: String?

    public var configuration: [String: Any]?

    public var createTime: String?

    public var ipAddresses: [String]?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var tags: [GetResourceConfigurationResponseBody.Tags]?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.configuration != nil {
            map["Configuration"] = self.configuration!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.ipAddresses != nil {
            map["IpAddresses"] = self.ipAddresses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("Configuration") && dict["Configuration"] != nil {
            self.configuration = dict["Configuration"] as! [String: Any]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("IpAddresses") && dict["IpAddresses"] != nil {
            self.ipAddresses = dict["IpAddresses"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [GetResourceConfigurationResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetResourceConfigurationResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class GetResourceConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceConfigurationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetResourceConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMultiAccountResourceGroupsRequest : Tea.TeaModel {
    public var accountId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupIds: [String]?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupIds") && dict["ResourceGroupIds"] != nil {
            self.resourceGroupIds = dict["ResourceGroupIds"] as! [String]
        }
    }
}

public class ListMultiAccountResourceGroupsResponseBody : Tea.TeaModel {
    public class ResourceGroups : Tea.TeaModel {
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

        public var name: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceGroups: [ListMultiAccountResourceGroupsResponseBody.ResourceGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroups != nil {
            var tmp : [Any] = []
            for k in self.resourceGroups! {
                tmp.append(k.toMap())
            }
            map["ResourceGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroups") && dict["ResourceGroups"] != nil {
            var tmp : [ListMultiAccountResourceGroupsResponseBody.ResourceGroups] = []
            for v in dict["ResourceGroups"] as! [Any] {
                var model = ListMultiAccountResourceGroupsResponseBody.ResourceGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceGroups = tmp
        }
    }
}

public class ListMultiAccountResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountResourceGroupsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListMultiAccountResourceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMultiAccountTagKeysRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public var tagKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! String
        }
    }
}

public class ListMultiAccountTagKeysResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagKeys") && dict["TagKeys"] != nil {
            self.tagKeys = dict["TagKeys"] as! [String]
        }
    }
}

public class ListMultiAccountTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountTagKeysResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListMultiAccountTagKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMultiAccountTagValuesRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public var tagKey: String?

    public var tagValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        if self.tagValue != nil {
            map["TagValue"] = self.tagValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! String
        }
        if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
            self.tagValue = dict["TagValue"] as! String
        }
    }
}

public class ListMultiAccountTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagValues") && dict["TagValues"] != nil {
            self.tagValues = dict["TagValues"] as! [String]
        }
    }
}

public class ListMultiAccountTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiAccountTagValuesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListMultiAccountTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceTypesRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var query: [String]?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListResourceTypesResponseBody : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public class CodeMapping : Tea.TeaModel {
            public var resourceGroup: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceGroup != nil {
                    map["ResourceGroup"] = self.resourceGroup!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceGroup") && dict["ResourceGroup"] != nil {
                    self.resourceGroup = dict["ResourceGroup"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    self.tag = dict["Tag"] as! String
                }
            }
        }
        public var codeMapping: ListResourceTypesResponseBody.ResourceTypes.CodeMapping?

        public var filterKeys: [String]?

        public var productName: String?

        public var resourceType: String?

        public var resourceTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.codeMapping?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeMapping != nil {
                map["CodeMapping"] = self.codeMapping?.toMap()
            }
            if self.filterKeys != nil {
                map["FilterKeys"] = self.filterKeys!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceTypeName != nil {
                map["ResourceTypeName"] = self.resourceTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeMapping") && dict["CodeMapping"] != nil {
                var model = ListResourceTypesResponseBody.ResourceTypes.CodeMapping()
                model.fromMap(dict["CodeMapping"] as! [String: Any])
                self.codeMapping = model
            }
            if dict.keys.contains("FilterKeys") && dict["FilterKeys"] != nil {
                self.filterKeys = dict["FilterKeys"] as! [String]
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ResourceTypeName") && dict["ResourceTypeName"] != nil {
                self.resourceTypeName = dict["ResourceTypeName"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceTypes: [ListResourceTypesResponseBody.ResourceTypes]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["ResourceTypes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceTypes") && dict["ResourceTypes"] != nil {
            var tmp : [ListResourceTypesResponseBody.ResourceTypes] = []
            for v in dict["ResourceTypes"] as! [Any] {
                var model = ListResourceTypesResponseBody.ResourceTypes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceTypes = tmp
        }
    }
}

public class ListResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListResourceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tagKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagKeys") && dict["TagKeys"] != nil {
            self.tagKeys = dict["TagKeys"] as! [String]
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagValuesRequest : Tea.TeaModel {
    public var matchType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tagKey: String?

    public var tagValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        if self.tagValue != nil {
            map["TagValue"] = self.tagValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! String
        }
        if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
            self.tagValue = dict["TagValue"] as! String
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagValues") && dict["TagValues"] != nil {
            self.tagValues = dict["TagValues"] as! [String]
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchMultiAccountResourcesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public class SortCriterion : Tea.TeaModel {
        public var key: String?

        public var order: String?

        public override init() {
            super.init()
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
            if self.order != nil {
                map["Order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Order") && dict["Order"] != nil {
                self.order = dict["Order"] as! String
            }
        }
    }
    public var filter: [SearchMultiAccountResourcesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var scope: String?

    public var sortCriterion: SearchMultiAccountResourcesRequest.SortCriterion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sortCriterion?.validate()
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
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.sortCriterion != nil {
            map["SortCriterion"] = self.sortCriterion?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [SearchMultiAccountResourcesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = SearchMultiAccountResourcesRequest.Filter()
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
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("SortCriterion") && dict["SortCriterion"] != nil {
            var model = SearchMultiAccountResourcesRequest.SortCriterion()
            model.fromMap(dict["SortCriterion"] as! [String: Any])
            self.sortCriterion = model
        }
    }
}

public class SearchMultiAccountResourcesResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public class Resources : Tea.TeaModel {
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
        public var accountId: String?

        public var createTime: String?

        public var ipAddresses: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var tags: [SearchMultiAccountResourcesResponseBody.Resources.Tags]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.ipAddresses != nil {
                map["IpAddresses"] = self.ipAddresses!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
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
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IpAddresses") && dict["IpAddresses"] != nil {
                self.ipAddresses = dict["IpAddresses"] as! [String]
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [SearchMultiAccountResourcesResponseBody.Resources.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = SearchMultiAccountResourcesResponseBody.Resources.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var filters: [SearchMultiAccountResourcesResponseBody.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [SearchMultiAccountResourcesResponseBody.Resources]?

    public var scope: String?

    public override init() {
        super.init()
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
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [SearchMultiAccountResourcesResponseBody.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = SearchMultiAccountResourcesResponseBody.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
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
            var tmp : [SearchMultiAccountResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = SearchMultiAccountResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
    }
}

public class SearchMultiAccountResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchMultiAccountResourcesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchMultiAccountResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchResourcesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
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
            if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public class SortCriterion : Tea.TeaModel {
        public var key: String?

        public var order: String?

        public override init() {
            super.init()
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
            if self.order != nil {
                map["Order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Order") && dict["Order"] != nil {
                self.order = dict["Order"] as! String
            }
        }
    }
    public var filter: [SearchResourcesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var sortCriterion: SearchResourcesRequest.SortCriterion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sortCriterion?.validate()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sortCriterion != nil {
            map["SortCriterion"] = self.sortCriterion?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [SearchResourcesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = SearchResourcesRequest.Filter()
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
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SortCriterion") && dict["SortCriterion"] != nil {
            var model = SearchResourcesRequest.SortCriterion()
            model.fromMap(dict["SortCriterion"] as! [String: Any])
            self.sortCriterion = model
        }
    }
}

public class SearchResourcesResponseBody : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var matchType: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public class Resources : Tea.TeaModel {
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
        public var accountId: String?

        public var createTime: String?

        public var ipAddresses: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var tags: [SearchResourcesResponseBody.Resources.Tags]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.ipAddresses != nil {
                map["IpAddresses"] = self.ipAddresses!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
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
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IpAddresses") && dict["IpAddresses"] != nil {
                self.ipAddresses = dict["IpAddresses"] as! [String]
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [SearchResourcesResponseBody.Resources.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = SearchResourcesResponseBody.Resources.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var filters: [SearchResourcesResponseBody.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [SearchResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [SearchResourcesResponseBody.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = SearchResourcesResponseBody.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
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
            var tmp : [SearchResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = SearchResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class SearchResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchResourcesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
