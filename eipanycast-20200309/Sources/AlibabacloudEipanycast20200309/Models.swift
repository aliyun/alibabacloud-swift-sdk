import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllocateAnycastEipAddressRequest : Tea.TeaModel {
    public var bandwidth: String?

    public var clientToken: String?

    public var description_: String?

    public var instanceChargeType: String?

    public var internetChargeType: String?

    public var name: String?

    public var resourceGroupId: String?

    public var serviceLocation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceLocation != nil {
            map["ServiceLocation"] = self.serviceLocation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InternetChargeType") && dict["InternetChargeType"] != nil {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceLocation") && dict["ServiceLocation"] != nil {
            self.serviceLocation = dict["ServiceLocation"] as! String
        }
    }
}

public class AllocateAnycastEipAddressResponseBody : Tea.TeaModel {
    public var anycastId: String?

    public var orderId: String?

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
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AllocateAnycastEipAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateAnycastEipAddressResponseBody?

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
            var model = AllocateAnycastEipAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateAnycastEipAddressRequest : Tea.TeaModel {
    public class PopLocations : Tea.TeaModel {
        public var popLocation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.popLocation != nil {
                map["PopLocation"] = self.popLocation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PopLocation") && dict["PopLocation"] != nil {
                self.popLocation = dict["PopLocation"] as! String
            }
        }
    }
    public var anycastId: String?

    public var associationMode: String?

    public var bindInstanceId: String?

    public var bindInstanceRegionId: String?

    public var bindInstanceType: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var popLocations: [AssociateAnycastEipAddressRequest.PopLocations]?

    public var privateIpAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.associationMode != nil {
            map["AssociationMode"] = self.associationMode!
        }
        if self.bindInstanceId != nil {
            map["BindInstanceId"] = self.bindInstanceId!
        }
        if self.bindInstanceRegionId != nil {
            map["BindInstanceRegionId"] = self.bindInstanceRegionId!
        }
        if self.bindInstanceType != nil {
            map["BindInstanceType"] = self.bindInstanceType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.popLocations != nil {
            var tmp : [Any] = []
            for k in self.popLocations! {
                tmp.append(k.toMap())
            }
            map["PopLocations"] = tmp
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("AssociationMode") && dict["AssociationMode"] != nil {
            self.associationMode = dict["AssociationMode"] as! String
        }
        if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
            self.bindInstanceId = dict["BindInstanceId"] as! String
        }
        if dict.keys.contains("BindInstanceRegionId") && dict["BindInstanceRegionId"] != nil {
            self.bindInstanceRegionId = dict["BindInstanceRegionId"] as! String
        }
        if dict.keys.contains("BindInstanceType") && dict["BindInstanceType"] != nil {
            self.bindInstanceType = dict["BindInstanceType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("PopLocations") && dict["PopLocations"] != nil {
            var tmp : [AssociateAnycastEipAddressRequest.PopLocations] = []
            for v in dict["PopLocations"] as! [Any] {
                var model = AssociateAnycastEipAddressRequest.PopLocations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.popLocations = tmp
        }
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
    }
}

public class AssociateAnycastEipAddressResponseBody : Tea.TeaModel {
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

public class AssociateAnycastEipAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateAnycastEipAddressResponseBody?

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
            var model = AssociateAnycastEipAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAnycastEipAddressRequest : Tea.TeaModel {
    public var anycastId: String?

    public var bindInstanceId: String?

    public var ip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.bindInstanceId != nil {
            map["BindInstanceId"] = self.bindInstanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
            self.bindInstanceId = dict["BindInstanceId"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
    }
}

public class DescribeAnycastEipAddressResponseBody : Tea.TeaModel {
    public class AnycastEipBindInfoList : Tea.TeaModel {
        public class PopLocations : Tea.TeaModel {
            public var popLocation: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.popLocation != nil {
                    map["PopLocation"] = self.popLocation!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PopLocation") && dict["PopLocation"] != nil {
                    self.popLocation = dict["PopLocation"] as! String
                }
            }
        }
        public var associationMode: String?

        public var bindInstanceId: String?

        public var bindInstanceRegionId: String?

        public var bindInstanceType: String?

        public var bindTime: String?

        public var popLocations: [DescribeAnycastEipAddressResponseBody.AnycastEipBindInfoList.PopLocations]?

        public var privateIpAddress: String?

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
            if self.associationMode != nil {
                map["AssociationMode"] = self.associationMode!
            }
            if self.bindInstanceId != nil {
                map["BindInstanceId"] = self.bindInstanceId!
            }
            if self.bindInstanceRegionId != nil {
                map["BindInstanceRegionId"] = self.bindInstanceRegionId!
            }
            if self.bindInstanceType != nil {
                map["BindInstanceType"] = self.bindInstanceType!
            }
            if self.bindTime != nil {
                map["BindTime"] = self.bindTime!
            }
            if self.popLocations != nil {
                var tmp : [Any] = []
                for k in self.popLocations! {
                    tmp.append(k.toMap())
                }
                map["PopLocations"] = tmp
            }
            if self.privateIpAddress != nil {
                map["PrivateIpAddress"] = self.privateIpAddress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationMode") && dict["AssociationMode"] != nil {
                self.associationMode = dict["AssociationMode"] as! String
            }
            if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
                self.bindInstanceId = dict["BindInstanceId"] as! String
            }
            if dict.keys.contains("BindInstanceRegionId") && dict["BindInstanceRegionId"] != nil {
                self.bindInstanceRegionId = dict["BindInstanceRegionId"] as! String
            }
            if dict.keys.contains("BindInstanceType") && dict["BindInstanceType"] != nil {
                self.bindInstanceType = dict["BindInstanceType"] as! String
            }
            if dict.keys.contains("BindTime") && dict["BindTime"] != nil {
                self.bindTime = dict["BindTime"] as! String
            }
            if dict.keys.contains("PopLocations") && dict["PopLocations"] != nil {
                var tmp : [DescribeAnycastEipAddressResponseBody.AnycastEipBindInfoList.PopLocations] = []
                for v in dict["PopLocations"] as! [Any] {
                    var model = DescribeAnycastEipAddressResponseBody.AnycastEipBindInfoList.PopLocations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.popLocations = tmp
            }
            if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
                self.privateIpAddress = dict["PrivateIpAddress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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
    public var aliUid: Int64?

    public var anycastEipBindInfoList: [DescribeAnycastEipAddressResponseBody.AnycastEipBindInfoList]?

    public var anycastId: String?

    public var bandwidth: Int32?

    public var bid: String?

    public var businessStatus: String?

    public var createTime: String?

    public var description_: String?

    public var instanceChargeType: String?

    public var internetChargeType: String?

    public var ipAddress: String?

    public var name: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceLocation: String?

    public var status: String?

    public var tags: [DescribeAnycastEipAddressResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.anycastEipBindInfoList != nil {
            var tmp : [Any] = []
            for k in self.anycastEipBindInfoList! {
                tmp.append(k.toMap())
            }
            map["AnycastEipBindInfoList"] = tmp
        }
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.businessStatus != nil {
            map["BusinessStatus"] = self.businessStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceLocation != nil {
            map["ServiceLocation"] = self.serviceLocation!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AnycastEipBindInfoList") && dict["AnycastEipBindInfoList"] != nil {
            var tmp : [DescribeAnycastEipAddressResponseBody.AnycastEipBindInfoList] = []
            for v in dict["AnycastEipBindInfoList"] as! [Any] {
                var model = DescribeAnycastEipAddressResponseBody.AnycastEipBindInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.anycastEipBindInfoList = tmp
        }
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("BusinessStatus") && dict["BusinessStatus"] != nil {
            self.businessStatus = dict["BusinessStatus"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InternetChargeType") && dict["InternetChargeType"] != nil {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
            self.ipAddress = dict["IpAddress"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceLocation") && dict["ServiceLocation"] != nil {
            self.serviceLocation = dict["ServiceLocation"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [DescribeAnycastEipAddressResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = DescribeAnycastEipAddressResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class DescribeAnycastEipAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAnycastEipAddressResponseBody?

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
            var model = DescribeAnycastEipAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAnycastPopLocationsRequest : Tea.TeaModel {
    public var serviceLocation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceLocation != nil {
            map["ServiceLocation"] = self.serviceLocation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceLocation") && dict["ServiceLocation"] != nil {
            self.serviceLocation = dict["ServiceLocation"] as! String
        }
    }
}

public class DescribeAnycastPopLocationsResponseBody : Tea.TeaModel {
    public class AnycastPopLocationList : Tea.TeaModel {
        public var regionId: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
        }
    }
    public var anycastPopLocationList: [DescribeAnycastPopLocationsResponseBody.AnycastPopLocationList]?

    public var count: String?

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
        if self.anycastPopLocationList != nil {
            var tmp : [Any] = []
            for k in self.anycastPopLocationList! {
                tmp.append(k.toMap())
            }
            map["AnycastPopLocationList"] = tmp
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastPopLocationList") && dict["AnycastPopLocationList"] != nil {
            var tmp : [DescribeAnycastPopLocationsResponseBody.AnycastPopLocationList] = []
            for v in dict["AnycastPopLocationList"] as! [Any] {
                var model = DescribeAnycastPopLocationsResponseBody.AnycastPopLocationList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.anycastPopLocationList = tmp
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAnycastPopLocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAnycastPopLocationsResponseBody?

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
            var model = DescribeAnycastPopLocationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAnycastServerRegionsRequest : Tea.TeaModel {
    public var serviceLocation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceLocation != nil {
            map["ServiceLocation"] = self.serviceLocation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceLocation") && dict["ServiceLocation"] != nil {
            self.serviceLocation = dict["ServiceLocation"] as! String
        }
    }
}

public class DescribeAnycastServerRegionsResponseBody : Tea.TeaModel {
    public class AnycastServerRegionList : Tea.TeaModel {
        public var regionId: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
        }
    }
    public var anycastServerRegionList: [DescribeAnycastServerRegionsResponseBody.AnycastServerRegionList]?

    public var count: String?

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
        if self.anycastServerRegionList != nil {
            var tmp : [Any] = []
            for k in self.anycastServerRegionList! {
                tmp.append(k.toMap())
            }
            map["AnycastServerRegionList"] = tmp
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastServerRegionList") && dict["AnycastServerRegionList"] != nil {
            var tmp : [DescribeAnycastServerRegionsResponseBody.AnycastServerRegionList] = []
            for v in dict["AnycastServerRegionList"] as! [Any] {
                var model = DescribeAnycastServerRegionsResponseBody.AnycastServerRegionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.anycastServerRegionList = tmp
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAnycastServerRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAnycastServerRegionsResponseBody?

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
            var model = DescribeAnycastServerRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAnycastEipAddressesRequest : Tea.TeaModel {
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
    public var anycastEipAddress: String?

    public var anycastId: String?

    public var anycastIds: [String]?

    public var bindInstanceIds: [String]?

    public var businessStatus: String?

    public var instanceChargeType: String?

    public var internetChargeType: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var serviceLocation: String?

    public var status: String?

    public var tags: [ListAnycastEipAddressesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastEipAddress != nil {
            map["AnycastEipAddress"] = self.anycastEipAddress!
        }
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.anycastIds != nil {
            map["AnycastIds"] = self.anycastIds!
        }
        if self.bindInstanceIds != nil {
            map["BindInstanceIds"] = self.bindInstanceIds!
        }
        if self.businessStatus != nil {
            map["BusinessStatus"] = self.businessStatus!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceLocation != nil {
            map["ServiceLocation"] = self.serviceLocation!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("AnycastEipAddress") && dict["AnycastEipAddress"] != nil {
            self.anycastEipAddress = dict["AnycastEipAddress"] as! String
        }
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("AnycastIds") && dict["AnycastIds"] != nil {
            self.anycastIds = dict["AnycastIds"] as! [String]
        }
        if dict.keys.contains("BindInstanceIds") && dict["BindInstanceIds"] != nil {
            self.bindInstanceIds = dict["BindInstanceIds"] as! [String]
        }
        if dict.keys.contains("BusinessStatus") && dict["BusinessStatus"] != nil {
            self.businessStatus = dict["BusinessStatus"] as! String
        }
        if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InternetChargeType") && dict["InternetChargeType"] != nil {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceLocation") && dict["ServiceLocation"] != nil {
            self.serviceLocation = dict["ServiceLocation"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [ListAnycastEipAddressesRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListAnycastEipAddressesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListAnycastEipAddressesResponseBody : Tea.TeaModel {
    public class AnycastList : Tea.TeaModel {
        public class AnycastEipBindInfoList : Tea.TeaModel {
            public var bindInstanceId: String?

            public var bindInstanceRegionId: String?

            public var bindInstanceType: String?

            public var bindTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindInstanceId != nil {
                    map["BindInstanceId"] = self.bindInstanceId!
                }
                if self.bindInstanceRegionId != nil {
                    map["BindInstanceRegionId"] = self.bindInstanceRegionId!
                }
                if self.bindInstanceType != nil {
                    map["BindInstanceType"] = self.bindInstanceType!
                }
                if self.bindTime != nil {
                    map["BindTime"] = self.bindTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
                    self.bindInstanceId = dict["BindInstanceId"] as! String
                }
                if dict.keys.contains("BindInstanceRegionId") && dict["BindInstanceRegionId"] != nil {
                    self.bindInstanceRegionId = dict["BindInstanceRegionId"] as! String
                }
                if dict.keys.contains("BindInstanceType") && dict["BindInstanceType"] != nil {
                    self.bindInstanceType = dict["BindInstanceType"] as! String
                }
                if dict.keys.contains("BindTime") && dict["BindTime"] != nil {
                    self.bindTime = dict["BindTime"] as! String
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
        public var aliUid: Int64?

        public var anycastEipBindInfoList: [ListAnycastEipAddressesResponseBody.AnycastList.AnycastEipBindInfoList]?

        public var anycastId: String?

        public var bandwidth: Int32?

        public var businessStatus: String?

        public var createTime: String?

        public var description_: String?

        public var instanceChargeType: String?

        public var internetChargeType: String?

        public var ipAddress: String?

        public var name: String?

        public var resourceGroupId: String?

        public var serviceLocation: String?

        public var serviceManaged: Int32?

        public var status: String?

        public var tags: [ListAnycastEipAddressesResponseBody.AnycastList.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.anycastEipBindInfoList != nil {
                var tmp : [Any] = []
                for k in self.anycastEipBindInfoList! {
                    tmp.append(k.toMap())
                }
                map["AnycastEipBindInfoList"] = tmp
            }
            if self.anycastId != nil {
                map["AnycastId"] = self.anycastId!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.businessStatus != nil {
                map["BusinessStatus"] = self.businessStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceLocation != nil {
                map["ServiceLocation"] = self.serviceLocation!
            }
            if self.serviceManaged != nil {
                map["ServiceManaged"] = self.serviceManaged!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("AnycastEipBindInfoList") && dict["AnycastEipBindInfoList"] != nil {
                var tmp : [ListAnycastEipAddressesResponseBody.AnycastList.AnycastEipBindInfoList] = []
                for v in dict["AnycastEipBindInfoList"] as! [Any] {
                    var model = ListAnycastEipAddressesResponseBody.AnycastList.AnycastEipBindInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.anycastEipBindInfoList = tmp
            }
            if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
                self.anycastId = dict["AnycastId"] as! String
            }
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BusinessStatus") && dict["BusinessStatus"] != nil {
                self.businessStatus = dict["BusinessStatus"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("InternetChargeType") && dict["InternetChargeType"] != nil {
                self.internetChargeType = dict["InternetChargeType"] as! String
            }
            if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ServiceLocation") && dict["ServiceLocation"] != nil {
                self.serviceLocation = dict["ServiceLocation"] as! String
            }
            if dict.keys.contains("ServiceManaged") && dict["ServiceManaged"] != nil {
                self.serviceManaged = dict["ServiceManaged"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListAnycastEipAddressesResponseBody.AnycastList.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListAnycastEipAddressesResponseBody.AnycastList.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var anycastList: [ListAnycastEipAddressesResponseBody.AnycastList]?

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
        if self.anycastList != nil {
            var tmp : [Any] = []
            for k in self.anycastList! {
                tmp.append(k.toMap())
            }
            map["AnycastList"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastList") && dict["AnycastList"] != nil {
            var tmp : [ListAnycastEipAddressesResponseBody.AnycastList] = []
            for v in dict["AnycastList"] as! [Any] {
                var model = ListAnycastEipAddressesResponseBody.AnycastList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.anycastList = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAnycastEipAddressesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnycastEipAddressesResponseBody?

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
            var model = ListAnycastEipAddressesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
    public var maxResults: String?

    public var nextToken: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
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
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
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
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAnycastEipAddressAttributeRequest : Tea.TeaModel {
    public var anycastId: String?

    public var description_: String?

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
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyAnycastEipAddressAttributeResponseBody : Tea.TeaModel {
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

public class ModifyAnycastEipAddressAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAnycastEipAddressAttributeResponseBody?

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
            var model = ModifyAnycastEipAddressAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAnycastEipAddressSpecRequest : Tea.TeaModel {
    public var anycastId: String?

    public var bandwidth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! String
        }
    }
}

public class ModifyAnycastEipAddressSpecResponseBody : Tea.TeaModel {
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

public class ModifyAnycastEipAddressSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAnycastEipAddressSpecResponseBody?

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
            var model = ModifyAnycastEipAddressSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseAnycastEipAddressRequest : Tea.TeaModel {
    public var anycastId: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
    }
}

public class ReleaseAnycastEipAddressResponseBody : Tea.TeaModel {
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

public class ReleaseAnycastEipAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseAnycastEipAddressResponseBody?

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
            var model = ReleaseAnycastEipAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnassociateAnycastEipAddressRequest : Tea.TeaModel {
    public var anycastId: String?

    public var bindInstanceId: String?

    public var bindInstanceRegionId: String?

    public var bindInstanceType: String?

    public var clientToken: String?

    public var dryRun: String?

    public var privateIpAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.bindInstanceId != nil {
            map["BindInstanceId"] = self.bindInstanceId!
        }
        if self.bindInstanceRegionId != nil {
            map["BindInstanceRegionId"] = self.bindInstanceRegionId!
        }
        if self.bindInstanceType != nil {
            map["BindInstanceType"] = self.bindInstanceType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
            self.bindInstanceId = dict["BindInstanceId"] as! String
        }
        if dict.keys.contains("BindInstanceRegionId") && dict["BindInstanceRegionId"] != nil {
            self.bindInstanceRegionId = dict["BindInstanceRegionId"] as! String
        }
        if dict.keys.contains("BindInstanceType") && dict["BindInstanceType"] != nil {
            self.bindInstanceType = dict["BindInstanceType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
    }
}

public class UnassociateAnycastEipAddressResponseBody : Tea.TeaModel {
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

public class UnassociateAnycastEipAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnassociateAnycastEipAddressResponseBody?

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
            var model = UnassociateAnycastEipAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAnycastEipAddressAssociationsRequest : Tea.TeaModel {
    public class PopLocationAddList : Tea.TeaModel {
        public var popLocation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.popLocation != nil {
                map["PopLocation"] = self.popLocation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PopLocation") && dict["PopLocation"] != nil {
                self.popLocation = dict["PopLocation"] as! String
            }
        }
    }
    public class PopLocationDeleteList : Tea.TeaModel {
        public var popLocation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.popLocation != nil {
                map["PopLocation"] = self.popLocation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PopLocation") && dict["PopLocation"] != nil {
                self.popLocation = dict["PopLocation"] as! String
            }
        }
    }
    public var anycastId: String?

    public var associationMode: String?

    public var bindInstanceId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var popLocationAddList: [UpdateAnycastEipAddressAssociationsRequest.PopLocationAddList]?

    public var popLocationDeleteList: [UpdateAnycastEipAddressAssociationsRequest.PopLocationDeleteList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anycastId != nil {
            map["AnycastId"] = self.anycastId!
        }
        if self.associationMode != nil {
            map["AssociationMode"] = self.associationMode!
        }
        if self.bindInstanceId != nil {
            map["BindInstanceId"] = self.bindInstanceId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.popLocationAddList != nil {
            var tmp : [Any] = []
            for k in self.popLocationAddList! {
                tmp.append(k.toMap())
            }
            map["PopLocationAddList"] = tmp
        }
        if self.popLocationDeleteList != nil {
            var tmp : [Any] = []
            for k in self.popLocationDeleteList! {
                tmp.append(k.toMap())
            }
            map["PopLocationDeleteList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnycastId") && dict["AnycastId"] != nil {
            self.anycastId = dict["AnycastId"] as! String
        }
        if dict.keys.contains("AssociationMode") && dict["AssociationMode"] != nil {
            self.associationMode = dict["AssociationMode"] as! String
        }
        if dict.keys.contains("BindInstanceId") && dict["BindInstanceId"] != nil {
            self.bindInstanceId = dict["BindInstanceId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("PopLocationAddList") && dict["PopLocationAddList"] != nil {
            var tmp : [UpdateAnycastEipAddressAssociationsRequest.PopLocationAddList] = []
            for v in dict["PopLocationAddList"] as! [Any] {
                var model = UpdateAnycastEipAddressAssociationsRequest.PopLocationAddList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.popLocationAddList = tmp
        }
        if dict.keys.contains("PopLocationDeleteList") && dict["PopLocationDeleteList"] != nil {
            var tmp : [UpdateAnycastEipAddressAssociationsRequest.PopLocationDeleteList] = []
            for v in dict["PopLocationDeleteList"] as! [Any] {
                var model = UpdateAnycastEipAddressAssociationsRequest.PopLocationDeleteList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.popLocationDeleteList = tmp
        }
    }
}

public class UpdateAnycastEipAddressAssociationsResponseBody : Tea.TeaModel {
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

public class UpdateAnycastEipAddressAssociationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAnycastEipAddressAssociationsResponseBody?

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
            var model = UpdateAnycastEipAddressAssociationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
