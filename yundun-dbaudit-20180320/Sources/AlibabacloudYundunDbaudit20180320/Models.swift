import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConfigInstanceNetworkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var privateWhiteList: [String]?

    public var publicAccessControl: Int32?

    public var publicWhiteList: [String]?

    public var regionId: String?

    public var securityGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.privateWhiteList != nil {
            map["PrivateWhiteList"] = self.privateWhiteList!
        }
        if self.publicAccessControl != nil {
            map["PublicAccessControl"] = self.publicAccessControl!
        }
        if self.publicWhiteList != nil {
            map["PublicWhiteList"] = self.publicWhiteList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PrivateWhiteList"] as? [String] {
            self.privateWhiteList = value
        }
        if let value = dict["PublicAccessControl"] as? Int32 {
            self.publicAccessControl = value
        }
        if let value = dict["PublicWhiteList"] as? [String] {
            self.publicWhiteList = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
    }
}

public class ConfigInstanceNetworkResponseBody : Tea.TeaModel {
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

public class ConfigInstanceNetworkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigInstanceNetworkResponseBody?

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
            var model = ConfigInstanceNetworkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceAttributeRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceAttributeResponseBody : Tea.TeaModel {
    public class InstanceAttribute : Tea.TeaModel {
        public var accessType: Int32?

        public var description_: String?

        public var ecsStatus: String?

        public var expireTime: Int64?

        public var imageVersionName: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var internetEndpoint: String?

        public var internetIp: String?

        public var intranetEndpoint: String?

        public var intranetIp: String?

        public var licenseCode: String?

        public var networkType: String?

        public var operatable: Bool?

        public var planUpgradeStatus: Int32?

        public var planUpgradeable: Bool?

        public var privateWhiteList: [String]?

        public var publicAccessControl: Int32?

        public var publicWhiteList: [String]?

        public var regionId: String?

        public var renewable: Bool?

        public var securityGroupIds: [String]?

        public var seriesCode: String?

        public var startTime: Int64?

        public var upgradeStatus: Int32?

        public var upgradeable: Bool?

        public var vpcId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ecsStatus != nil {
                map["EcsStatus"] = self.ecsStatus!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.imageVersionName != nil {
                map["ImageVersionName"] = self.imageVersionName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.internetEndpoint != nil {
                map["InternetEndpoint"] = self.internetEndpoint!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetEndpoint != nil {
                map["IntranetEndpoint"] = self.intranetEndpoint!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.operatable != nil {
                map["Operatable"] = self.operatable!
            }
            if self.planUpgradeStatus != nil {
                map["PlanUpgradeStatus"] = self.planUpgradeStatus!
            }
            if self.planUpgradeable != nil {
                map["PlanUpgradeable"] = self.planUpgradeable!
            }
            if self.privateWhiteList != nil {
                map["PrivateWhiteList"] = self.privateWhiteList!
            }
            if self.publicAccessControl != nil {
                map["PublicAccessControl"] = self.publicAccessControl!
            }
            if self.publicWhiteList != nil {
                map["PublicWhiteList"] = self.publicWhiteList!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.renewable != nil {
                map["Renewable"] = self.renewable!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.seriesCode != nil {
                map["SeriesCode"] = self.seriesCode!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.upgradeStatus != nil {
                map["UpgradeStatus"] = self.upgradeStatus!
            }
            if self.upgradeable != nil {
                map["Upgradeable"] = self.upgradeable!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? Int32 {
                self.accessType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EcsStatus"] as? String {
                self.ecsStatus = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["ImageVersionName"] as? String {
                self.imageVersionName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InternetEndpoint"] as? String {
                self.internetEndpoint = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetEndpoint"] as? String {
                self.intranetEndpoint = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["Operatable"] as? Bool {
                self.operatable = value
            }
            if let value = dict["PlanUpgradeStatus"] as? Int32 {
                self.planUpgradeStatus = value
            }
            if let value = dict["PlanUpgradeable"] as? Bool {
                self.planUpgradeable = value
            }
            if let value = dict["PrivateWhiteList"] as? [String] {
                self.privateWhiteList = value
            }
            if let value = dict["PublicAccessControl"] as? Int32 {
                self.publicAccessControl = value
            }
            if let value = dict["PublicWhiteList"] as? [String] {
                self.publicWhiteList = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Renewable"] as? Bool {
                self.renewable = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["SeriesCode"] as? String {
                self.seriesCode = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["UpgradeStatus"] as? Int32 {
                self.upgradeStatus = value
            }
            if let value = dict["Upgradeable"] as? Bool {
                self.upgradeable = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
        }
    }
    public var instanceAttribute: DescribeInstanceAttributeResponseBody.InstanceAttribute?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceAttribute != nil {
            map["InstanceAttribute"] = self.instanceAttribute?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceAttribute"] as? [String: Any?] {
            var model = DescribeInstanceAttributeResponseBody.InstanceAttribute()
            model.fromMap(value)
            self.instanceAttribute = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceAttributeResponseBody?

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
            var model = DescribeInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
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
    public var currentPage: Int32?

    public var instanceId: [String]?

    public var instanceStatus: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeInstancesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? [String] {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var description_: String?

        public var ecsStatus: String?

        public var expireTime: Int64?

        public var imageVersionName: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var internetEndpoint: String?

        public var internetIp: String?

        public var intranetEndpoint: String?

        public var intranetIp: String?

        public var legacy: Bool?

        public var licenseCode: String?

        public var networkType: String?

        public var operatable: Bool?

        public var planUpgradeStatus: Int32?

        public var planUpgradeable: Bool?

        public var regionId: String?

        public var renewable: Bool?

        public var seriesCode: String?

        public var startTime: Int64?

        public var upgradeStatus: Int32?

        public var upgradeable: Bool?

        public var vpcId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
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
            if self.ecsStatus != nil {
                map["EcsStatus"] = self.ecsStatus!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.imageVersionName != nil {
                map["ImageVersionName"] = self.imageVersionName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.internetEndpoint != nil {
                map["InternetEndpoint"] = self.internetEndpoint!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetEndpoint != nil {
                map["IntranetEndpoint"] = self.intranetEndpoint!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.legacy != nil {
                map["Legacy"] = self.legacy!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.operatable != nil {
                map["Operatable"] = self.operatable!
            }
            if self.planUpgradeStatus != nil {
                map["PlanUpgradeStatus"] = self.planUpgradeStatus!
            }
            if self.planUpgradeable != nil {
                map["PlanUpgradeable"] = self.planUpgradeable!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.renewable != nil {
                map["Renewable"] = self.renewable!
            }
            if self.seriesCode != nil {
                map["SeriesCode"] = self.seriesCode!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.upgradeStatus != nil {
                map["UpgradeStatus"] = self.upgradeStatus!
            }
            if self.upgradeable != nil {
                map["Upgradeable"] = self.upgradeable!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EcsStatus"] as? String {
                self.ecsStatus = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["ImageVersionName"] as? String {
                self.imageVersionName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InternetEndpoint"] as? String {
                self.internetEndpoint = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetEndpoint"] as? String {
                self.intranetEndpoint = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["Legacy"] as? Bool {
                self.legacy = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["Operatable"] as? Bool {
                self.operatable = value
            }
            if let value = dict["PlanUpgradeStatus"] as? Int32 {
                self.planUpgradeStatus = value
            }
            if let value = dict["PlanUpgradeable"] as? Bool {
                self.planUpgradeable = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Renewable"] as? Bool {
                self.renewable = value
            }
            if let value = dict["SeriesCode"] as? String {
                self.seriesCode = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["UpgradeStatus"] as? Int32 {
                self.upgradeStatus = value
            }
            if let value = dict["Upgradeable"] as? Bool {
                self.upgradeable = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
        }
    }
    public var instances: [DescribeInstancesResponseBody.Instances]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancesResponseBody?

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
            var model = DescribeInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLoginTicketRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeLoginTicketResponseBody : Tea.TeaModel {
    public class LoginTicket : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var localName: String?

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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var certificate: String?

        public var ticket: String?

        public var zones: [DescribeLoginTicketResponseBody.LoginTicket.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificate != nil {
                map["Certificate"] = self.certificate!
            }
            if self.ticket != nil {
                map["Ticket"] = self.ticket!
            }
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["Zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Certificate"] as? String {
                self.certificate = value
            }
            if let value = dict["Ticket"] as? String {
                self.ticket = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [DescribeLoginTicketResponseBody.LoginTicket.Zones] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoginTicketResponseBody.LoginTicket.Zones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zones = tmp
            }
        }
    }
    public var loginTicket: DescribeLoginTicketResponseBody.LoginTicket?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginTicket?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginTicket != nil {
            map["LoginTicket"] = self.loginTicket?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginTicket"] as? [String: Any?] {
            var model = DescribeLoginTicketResponseBody.LoginTicket()
            model.fromMap(value)
            self.loginTicket = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeLoginTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoginTicketResponseBody?

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
            var model = DescribeLoginTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSyncInfoRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSyncInfoResponseBody : Tea.TeaModel {
    public class InstanceInfo : Tea.TeaModel {
        public var accessType: Int32?

        public var aliuid: Int64?

        public var customName: String?

        public var ecsEip: String?

        public var ecsInstanceId: String?

        public var ecsInternetIp: String?

        public var ecsIntranetIp: String?

        public var ecsNetworkType: String?

        public var ecsStatus: String?

        public var ecsUuid: String?

        public var expireTime: Int64?

        public var imageVersionName: String?

        public var instanceId: String?

        public var planCode: String?

        public var planName: String?

        public var planUpgradeStatus: Int32?

        public var planUpgradeable: String?

        public var productCode: String?

        public var productName: String?

        public var publicAccessControl: Int32?

        public var regionName: String?

        public var regionNo: String?

        public var renewable: Bool?

        public var startTime: Int64?

        public var status: Int32?

        public var upgradeStatus: Int32?

        public var vendorCode: String?

        public var vswitchId: String?

        public var zoneNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.customName != nil {
                map["CustomName"] = self.customName!
            }
            if self.ecsEip != nil {
                map["EcsEip"] = self.ecsEip!
            }
            if self.ecsInstanceId != nil {
                map["EcsInstanceId"] = self.ecsInstanceId!
            }
            if self.ecsInternetIp != nil {
                map["EcsInternetIp"] = self.ecsInternetIp!
            }
            if self.ecsIntranetIp != nil {
                map["EcsIntranetIp"] = self.ecsIntranetIp!
            }
            if self.ecsNetworkType != nil {
                map["EcsNetworkType"] = self.ecsNetworkType!
            }
            if self.ecsStatus != nil {
                map["EcsStatus"] = self.ecsStatus!
            }
            if self.ecsUuid != nil {
                map["EcsUuid"] = self.ecsUuid!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.imageVersionName != nil {
                map["ImageVersionName"] = self.imageVersionName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.planCode != nil {
                map["PlanCode"] = self.planCode!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planUpgradeStatus != nil {
                map["PlanUpgradeStatus"] = self.planUpgradeStatus!
            }
            if self.planUpgradeable != nil {
                map["PlanUpgradeable"] = self.planUpgradeable!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.publicAccessControl != nil {
                map["PublicAccessControl"] = self.publicAccessControl!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.renewable != nil {
                map["Renewable"] = self.renewable!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.upgradeStatus != nil {
                map["UpgradeStatus"] = self.upgradeStatus!
            }
            if self.vendorCode != nil {
                map["VendorCode"] = self.vendorCode!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            if self.zoneNo != nil {
                map["ZoneNo"] = self.zoneNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? Int32 {
                self.accessType = value
            }
            if let value = dict["Aliuid"] as? Int64 {
                self.aliuid = value
            }
            if let value = dict["CustomName"] as? String {
                self.customName = value
            }
            if let value = dict["EcsEip"] as? String {
                self.ecsEip = value
            }
            if let value = dict["EcsInstanceId"] as? String {
                self.ecsInstanceId = value
            }
            if let value = dict["EcsInternetIp"] as? String {
                self.ecsInternetIp = value
            }
            if let value = dict["EcsIntranetIp"] as? String {
                self.ecsIntranetIp = value
            }
            if let value = dict["EcsNetworkType"] as? String {
                self.ecsNetworkType = value
            }
            if let value = dict["EcsStatus"] as? String {
                self.ecsStatus = value
            }
            if let value = dict["EcsUuid"] as? String {
                self.ecsUuid = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["ImageVersionName"] as? String {
                self.imageVersionName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PlanCode"] as? String {
                self.planCode = value
            }
            if let value = dict["PlanName"] as? String {
                self.planName = value
            }
            if let value = dict["PlanUpgradeStatus"] as? Int32 {
                self.planUpgradeStatus = value
            }
            if let value = dict["PlanUpgradeable"] as? String {
                self.planUpgradeable = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["PublicAccessControl"] as? Int32 {
                self.publicAccessControl = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["Renewable"] as? Bool {
                self.renewable = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["UpgradeStatus"] as? Int32 {
                self.upgradeStatus = value
            }
            if let value = dict["VendorCode"] as? String {
                self.vendorCode = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
            if let value = dict["ZoneNo"] as? String {
                self.zoneNo = value
            }
        }
    }
    public var instanceInfo: DescribeSyncInfoResponseBody.InstanceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceInfo != nil {
            map["InstanceInfo"] = self.instanceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceInfo"] as? [String: Any?] {
            var model = DescribeSyncInfoResponseBody.InstanceInfo()
            model.fromMap(value)
            self.instanceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSyncInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSyncInfoResponseBody?

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
            var model = DescribeSyncInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentListRequest : Tea.TeaModel {
    public var agentIp: String?

    public var agentOs: String?

    public var agentStatus: Int32?

    public var instanceId: String?

    public var lang: String?

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
        if self.agentIp != nil {
            map["AgentIp"] = self.agentIp!
        }
        if self.agentOs != nil {
            map["AgentOs"] = self.agentOs!
        }
        if self.agentStatus != nil {
            map["AgentStatus"] = self.agentStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentIp"] as? String {
            self.agentIp = value
        }
        if let value = dict["AgentOs"] as? String {
            self.agentOs = value
        }
        if let value = dict["AgentStatus"] as? Int32 {
            self.agentStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAgentListResponseBody : Tea.TeaModel {
    public class AgentList : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagId: Int64?

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
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagId"] as? Int64 {
                    self.tagId = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var agentId: String?

        public var agentOs: String?

        public var agentPort: String?

        public var agentStatus: Int32?

        public var agentVersion: String?

        public var ecsId: String?

        public var firstLoginTime: String?

        public var lastActiveTime: String?

        public var osCpu: Int32?

        public var osMem: Int32?

        public var pktLoss: Int32?

        public var privateIp: String?

        public var publicIp: String?

        public var rmagentCpu: Int32?

        public var rmagentMem: Int32?

        public var sendByteCount: Int64?

        public var sendBytes: Int64?

        public var sendPacketCount: Int64?

        public var sendPackets: Int64?

        public var sysConfig: String?

        public var tags: [GetAgentListResponseBody.AgentList.Tags]?

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
            if self.agentId != nil {
                map["AgentId"] = self.agentId!
            }
            if self.agentOs != nil {
                map["AgentOs"] = self.agentOs!
            }
            if self.agentPort != nil {
                map["AgentPort"] = self.agentPort!
            }
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.agentVersion != nil {
                map["AgentVersion"] = self.agentVersion!
            }
            if self.ecsId != nil {
                map["EcsId"] = self.ecsId!
            }
            if self.firstLoginTime != nil {
                map["FirstLoginTime"] = self.firstLoginTime!
            }
            if self.lastActiveTime != nil {
                map["LastActiveTime"] = self.lastActiveTime!
            }
            if self.osCpu != nil {
                map["OsCpu"] = self.osCpu!
            }
            if self.osMem != nil {
                map["OsMem"] = self.osMem!
            }
            if self.pktLoss != nil {
                map["PktLoss"] = self.pktLoss!
            }
            if self.privateIp != nil {
                map["PrivateIp"] = self.privateIp!
            }
            if self.publicIp != nil {
                map["PublicIp"] = self.publicIp!
            }
            if self.rmagentCpu != nil {
                map["RmagentCpu"] = self.rmagentCpu!
            }
            if self.rmagentMem != nil {
                map["RmagentMem"] = self.rmagentMem!
            }
            if self.sendByteCount != nil {
                map["SendByteCount"] = self.sendByteCount!
            }
            if self.sendBytes != nil {
                map["SendBytes"] = self.sendBytes!
            }
            if self.sendPacketCount != nil {
                map["SendPacketCount"] = self.sendPacketCount!
            }
            if self.sendPackets != nil {
                map["SendPackets"] = self.sendPackets!
            }
            if self.sysConfig != nil {
                map["SysConfig"] = self.sysConfig!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentId"] as? String {
                self.agentId = value
            }
            if let value = dict["AgentOs"] as? String {
                self.agentOs = value
            }
            if let value = dict["AgentPort"] as? String {
                self.agentPort = value
            }
            if let value = dict["AgentStatus"] as? Int32 {
                self.agentStatus = value
            }
            if let value = dict["AgentVersion"] as? String {
                self.agentVersion = value
            }
            if let value = dict["EcsId"] as? String {
                self.ecsId = value
            }
            if let value = dict["FirstLoginTime"] as? String {
                self.firstLoginTime = value
            }
            if let value = dict["LastActiveTime"] as? String {
                self.lastActiveTime = value
            }
            if let value = dict["OsCpu"] as? Int32 {
                self.osCpu = value
            }
            if let value = dict["OsMem"] as? Int32 {
                self.osMem = value
            }
            if let value = dict["PktLoss"] as? Int32 {
                self.pktLoss = value
            }
            if let value = dict["PrivateIp"] as? String {
                self.privateIp = value
            }
            if let value = dict["PublicIp"] as? String {
                self.publicIp = value
            }
            if let value = dict["RmagentCpu"] as? Int32 {
                self.rmagentCpu = value
            }
            if let value = dict["RmagentMem"] as? Int32 {
                self.rmagentMem = value
            }
            if let value = dict["SendByteCount"] as? Int64 {
                self.sendByteCount = value
            }
            if let value = dict["SendBytes"] as? Int64 {
                self.sendBytes = value
            }
            if let value = dict["SendPacketCount"] as? Int64 {
                self.sendPacketCount = value
            }
            if let value = dict["SendPackets"] as? Int64 {
                self.sendPackets = value
            }
            if let value = dict["SysConfig"] as? String {
                self.sysConfig = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetAgentListResponseBody.AgentList.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetAgentListResponseBody.AgentList.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var agentList: [GetAgentListResponseBody.AgentList]?

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
        if self.agentList != nil {
            var tmp : [Any] = []
            for k in self.agentList! {
                tmp.append(k.toMap())
            }
            map["AgentList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentList"] as? [Any?] {
            var tmp : [GetAgentListResponseBody.AgentList] = []
            for v in value {
                if v != nil {
                    var model = GetAgentListResponseBody.AgentList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.agentList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAgentListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentListResponseBody?

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
            var model = GetAgentListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAuditCountRequest : Tea.TeaModel {
    public var beginDate: String?

    public var dbId: Int32?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAuditCountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var riskCount: Int64?

    public var sessionCount: Int64?

    public var sqlCount: Int64?

    public override init() {
        super.init()
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
        if self.riskCount != nil {
            map["RiskCount"] = self.riskCount!
        }
        if self.sessionCount != nil {
            map["SessionCount"] = self.sessionCount!
        }
        if self.sqlCount != nil {
            map["SqlCount"] = self.sqlCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskCount"] as? Int64 {
            self.riskCount = value
        }
        if let value = dict["SessionCount"] as? Int64 {
            self.sessionCount = value
        }
        if let value = dict["SqlCount"] as? Int64 {
            self.sqlCount = value
        }
    }
}

public class GetAuditCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuditCountResponseBody?

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
            var model = GetAuditCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAuditCountDistributionRequest : Tea.TeaModel {
    public var beginDate: String?

    public var dbId: Int32?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAuditCountDistributionResponseBody : Tea.TeaModel {
    public class TimeList : Tea.TeaModel {
        public var beginDate: String?

        public var endDate: String?

        public var riskCount: Int64?

        public var sessionCount: Int64?

        public var sqlCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginDate != nil {
                map["BeginDate"] = self.beginDate!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.sessionCount != nil {
                map["SessionCount"] = self.sessionCount!
            }
            if self.sqlCount != nil {
                map["SqlCount"] = self.sqlCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginDate"] as? String {
                self.beginDate = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["RiskCount"] as? Int64 {
                self.riskCount = value
            }
            if let value = dict["SessionCount"] as? Int64 {
                self.sessionCount = value
            }
            if let value = dict["SqlCount"] as? Int64 {
                self.sqlCount = value
            }
        }
    }
    public var requestId: String?

    public var timeList: [GetAuditCountDistributionResponseBody.TimeList]?

    public override init() {
        super.init()
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
        if self.timeList != nil {
            var tmp : [Any] = []
            for k in self.timeList! {
                tmp.append(k.toMap())
            }
            map["TimeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TimeList"] as? [Any?] {
            var tmp : [GetAuditCountDistributionResponseBody.TimeList] = []
            for v in value {
                if v != nil {
                    var model = GetAuditCountDistributionResponseBody.TimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeList = tmp
        }
    }
}

public class GetAuditCountDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuditCountDistributionResponseBody?

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
            var model = GetAuditCountDistributionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDBAuditCountListRequest : Tea.TeaModel {
    public var beginDate: String?

    public var dbId: Int32?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetDBAuditCountListResponseBody : Tea.TeaModel {
    public class DbList : Tea.TeaModel {
        public var assetType: Int32?

        public var dbAddresses: [String]?

        public var dbId: Int32?

        public var dbName: String?

        public var dbType: Int32?

        public var dbTypeName: String?

        public var dbVersion: Int32?

        public var dbVersionName: String?

        public var riskCount: Int64?

        public var sessionCount: Int64?

        public var sqlCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetType != nil {
                map["AssetType"] = self.assetType!
            }
            if self.dbAddresses != nil {
                map["DbAddresses"] = self.dbAddresses!
            }
            if self.dbId != nil {
                map["DbId"] = self.dbId!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.dbTypeName != nil {
                map["DbTypeName"] = self.dbTypeName!
            }
            if self.dbVersion != nil {
                map["DbVersion"] = self.dbVersion!
            }
            if self.dbVersionName != nil {
                map["DbVersionName"] = self.dbVersionName!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.sessionCount != nil {
                map["SessionCount"] = self.sessionCount!
            }
            if self.sqlCount != nil {
                map["SqlCount"] = self.sqlCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssetType"] as? Int32 {
                self.assetType = value
            }
            if let value = dict["DbAddresses"] as? [String] {
                self.dbAddresses = value
            }
            if let value = dict["DbId"] as? Int32 {
                self.dbId = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["DbType"] as? Int32 {
                self.dbType = value
            }
            if let value = dict["DbTypeName"] as? String {
                self.dbTypeName = value
            }
            if let value = dict["DbVersion"] as? Int32 {
                self.dbVersion = value
            }
            if let value = dict["DbVersionName"] as? String {
                self.dbVersionName = value
            }
            if let value = dict["RiskCount"] as? Int64 {
                self.riskCount = value
            }
            if let value = dict["SessionCount"] as? Int64 {
                self.sessionCount = value
            }
            if let value = dict["SqlCount"] as? Int64 {
                self.sqlCount = value
            }
        }
    }
    public var dbList: [GetDBAuditCountListResponseBody.DbList]?

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
        if self.dbList != nil {
            var tmp : [Any] = []
            for k in self.dbList! {
                tmp.append(k.toMap())
            }
            map["DbList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbList"] as? [Any?] {
            var tmp : [GetDBAuditCountListResponseBody.DbList] = []
            for v in value {
                if v != nil {
                    var model = GetDBAuditCountListResponseBody.DbList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dbList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDBAuditCountListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDBAuditCountListResponseBody?

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
            var model = GetDBAuditCountListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogDetailRequest : Tea.TeaModel {
    public var beginDate: String?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

    public var regionId: String?

    public var sqlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SqlId"] as? String {
            self.sqlId = value
        }
    }
}

public class GetLogDetailResponseBody : Tea.TeaModel {
    public var affectRows: Int32?

    public var appClientIp: String?

    public var appUsername: String?

    public var captureTime: String?

    public var clientIp: String?

    public var clientMac: String?

    public var clientOsUser: String?

    public var clientPort: Int32?

    public var clientProgram: String?

    public var dbId: Int32?

    public var dbServer: String?

    public var dbUser: String?

    public var execCostUS: Int32?

    public var fetchCostUS: Int32?

    public var instName: String?

    public var requestId: String?

    public var responseCode: String?

    public var responseText: String?

    public var riskLevel: Int32?

    public var ruleId: Int32?

    public var ruleKeyId: Int32?

    public var ruleName: String?

    public var ruleType: Int32?

    public var schema: String?

    public var secondarySqlType: String?

    public var serverMac: String?

    public var sessionId: String?

    public var sessionLoginTime: String?

    public var sessionLogoutTime: String?

    public var sqlContent: String?

    public var sqlId: String?

    public var sqlResult: String?

    public var sqlType: String?

    public var sqlTypeName: String?

    public var templateContent: String?

    public var templateId: String?

    public var templateRules: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectRows != nil {
            map["AffectRows"] = self.affectRows!
        }
        if self.appClientIp != nil {
            map["AppClientIp"] = self.appClientIp!
        }
        if self.appUsername != nil {
            map["AppUsername"] = self.appUsername!
        }
        if self.captureTime != nil {
            map["CaptureTime"] = self.captureTime!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientMac != nil {
            map["ClientMac"] = self.clientMac!
        }
        if self.clientOsUser != nil {
            map["ClientOsUser"] = self.clientOsUser!
        }
        if self.clientPort != nil {
            map["ClientPort"] = self.clientPort!
        }
        if self.clientProgram != nil {
            map["ClientProgram"] = self.clientProgram!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.dbServer != nil {
            map["DbServer"] = self.dbServer!
        }
        if self.dbUser != nil {
            map["DbUser"] = self.dbUser!
        }
        if self.execCostUS != nil {
            map["ExecCostUS"] = self.execCostUS!
        }
        if self.fetchCostUS != nil {
            map["FetchCostUS"] = self.fetchCostUS!
        }
        if self.instName != nil {
            map["InstName"] = self.instName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseText != nil {
            map["ResponseText"] = self.responseText!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleKeyId != nil {
            map["RuleKeyId"] = self.ruleKeyId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.secondarySqlType != nil {
            map["SecondarySqlType"] = self.secondarySqlType!
        }
        if self.serverMac != nil {
            map["ServerMac"] = self.serverMac!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionLoginTime != nil {
            map["SessionLoginTime"] = self.sessionLoginTime!
        }
        if self.sessionLogoutTime != nil {
            map["SessionLogoutTime"] = self.sessionLogoutTime!
        }
        if self.sqlContent != nil {
            map["SqlContent"] = self.sqlContent!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.sqlResult != nil {
            map["SqlResult"] = self.sqlResult!
        }
        if self.sqlType != nil {
            map["SqlType"] = self.sqlType!
        }
        if self.sqlTypeName != nil {
            map["SqlTypeName"] = self.sqlTypeName!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateRules != nil {
            map["TemplateRules"] = self.templateRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AffectRows"] as? Int32 {
            self.affectRows = value
        }
        if let value = dict["AppClientIp"] as? String {
            self.appClientIp = value
        }
        if let value = dict["AppUsername"] as? String {
            self.appUsername = value
        }
        if let value = dict["CaptureTime"] as? String {
            self.captureTime = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientMac"] as? String {
            self.clientMac = value
        }
        if let value = dict["ClientOsUser"] as? String {
            self.clientOsUser = value
        }
        if let value = dict["ClientPort"] as? Int32 {
            self.clientPort = value
        }
        if let value = dict["ClientProgram"] as? String {
            self.clientProgram = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["DbServer"] as? String {
            self.dbServer = value
        }
        if let value = dict["DbUser"] as? String {
            self.dbUser = value
        }
        if let value = dict["ExecCostUS"] as? Int32 {
            self.execCostUS = value
        }
        if let value = dict["FetchCostUS"] as? Int32 {
            self.fetchCostUS = value
        }
        if let value = dict["InstName"] as? String {
            self.instName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseText"] as? String {
            self.responseText = value
        }
        if let value = dict["RiskLevel"] as? Int32 {
            self.riskLevel = value
        }
        if let value = dict["RuleId"] as? Int32 {
            self.ruleId = value
        }
        if let value = dict["RuleKeyId"] as? Int32 {
            self.ruleKeyId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["Schema"] as? String {
            self.schema = value
        }
        if let value = dict["SecondarySqlType"] as? String {
            self.secondarySqlType = value
        }
        if let value = dict["ServerMac"] as? String {
            self.serverMac = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionLoginTime"] as? String {
            self.sessionLoginTime = value
        }
        if let value = dict["SessionLogoutTime"] as? String {
            self.sessionLogoutTime = value
        }
        if let value = dict["SqlContent"] as? String {
            self.sqlContent = value
        }
        if let value = dict["SqlId"] as? String {
            self.sqlId = value
        }
        if let value = dict["SqlResult"] as? String {
            self.sqlResult = value
        }
        if let value = dict["SqlType"] as? String {
            self.sqlType = value
        }
        if let value = dict["SqlTypeName"] as? String {
            self.sqlTypeName = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateRules"] as? [String] {
            self.templateRules = value
        }
    }
}

public class GetLogDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogDetailResponseBody?

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
            var model = GetLogDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogListRequest : Tea.TeaModel {
    public var beginDate: String?

    public var clientIpList: [String]?

    public var clientProgramList: [String]?

    public var dbHostList: [String]?

    public var dbId: Int32?

    public var dbUserList: [String]?

    public var endDate: String?

    public var instanceId: String?

    public var isSuccess: String?

    public var lang: String?

    public var maxAffectRows: Int32?

    public var maxExecCostUS: Int32?

    public var minAffectRows: Int32?

    public var minExecCostUS: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var riskLevelList: [String]?

    public var ruleName: String?

    public var ruleTypeList: [String]?

    public var sessionId: String?

    public var sqlId: String?

    public var sqlKey: String?

    public var sqlTypeList: [String]?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.clientIpList != nil {
            map["ClientIpList"] = self.clientIpList!
        }
        if self.clientProgramList != nil {
            map["ClientProgramList"] = self.clientProgramList!
        }
        if self.dbHostList != nil {
            map["DbHostList"] = self.dbHostList!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.dbUserList != nil {
            map["DbUserList"] = self.dbUserList!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxAffectRows != nil {
            map["MaxAffectRows"] = self.maxAffectRows!
        }
        if self.maxExecCostUS != nil {
            map["MaxExecCostUS"] = self.maxExecCostUS!
        }
        if self.minAffectRows != nil {
            map["MinAffectRows"] = self.minAffectRows!
        }
        if self.minExecCostUS != nil {
            map["MinExecCostUS"] = self.minExecCostUS!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.riskLevelList != nil {
            map["RiskLevelList"] = self.riskLevelList!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleTypeList != nil {
            map["RuleTypeList"] = self.ruleTypeList!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sqlId != nil {
            map["SqlId"] = self.sqlId!
        }
        if self.sqlKey != nil {
            map["SqlKey"] = self.sqlKey!
        }
        if self.sqlTypeList != nil {
            map["SqlTypeList"] = self.sqlTypeList!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["ClientIpList"] as? [String] {
            self.clientIpList = value
        }
        if let value = dict["ClientProgramList"] as? [String] {
            self.clientProgramList = value
        }
        if let value = dict["DbHostList"] as? [String] {
            self.dbHostList = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["DbUserList"] as? [String] {
            self.dbUserList = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? String {
            self.isSuccess = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxAffectRows"] as? Int32 {
            self.maxAffectRows = value
        }
        if let value = dict["MaxExecCostUS"] as? Int32 {
            self.maxExecCostUS = value
        }
        if let value = dict["MinAffectRows"] as? Int32 {
            self.minAffectRows = value
        }
        if let value = dict["MinExecCostUS"] as? Int32 {
            self.minExecCostUS = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RiskLevelList"] as? [String] {
            self.riskLevelList = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleTypeList"] as? [String] {
            self.ruleTypeList = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SqlId"] as? String {
            self.sqlId = value
        }
        if let value = dict["SqlKey"] as? String {
            self.sqlKey = value
        }
        if let value = dict["SqlTypeList"] as? [String] {
            self.sqlTypeList = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetLogListResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var affectRows: Int32?

        public var appClientIp: String?

        public var appUsername: String?

        public var captureTime: String?

        public var clientIp: String?

        public var clientIpAlias: String?

        public var clientMac: String?

        public var clientOsUser: String?

        public var clientPort: Int32?

        public var clientProgram: String?

        public var dbId: Int32?

        public var dbServer: String?

        public var dbUser: String?

        public var execCostUS: Int32?

        public var fetchCostUS: Int32?

        public var instName: String?

        public var responseCode: String?

        public var responseText: String?

        public var riskLevel: Int32?

        public var ruleId: Int32?

        public var ruleKeyId: Int32?

        public var ruleName: String?

        public var ruleType: Int32?

        public var schema: String?

        public var serverMac: String?

        public var sessionId: String?

        public var sessionLoginTime: String?

        public var sessionLogoutTime: String?

        public var sqlContent: String?

        public var sqlId: String?

        public var sqlType: String?

        public var templateId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectRows != nil {
                map["AffectRows"] = self.affectRows!
            }
            if self.appClientIp != nil {
                map["AppClientIp"] = self.appClientIp!
            }
            if self.appUsername != nil {
                map["AppUsername"] = self.appUsername!
            }
            if self.captureTime != nil {
                map["CaptureTime"] = self.captureTime!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientIpAlias != nil {
                map["ClientIpAlias"] = self.clientIpAlias!
            }
            if self.clientMac != nil {
                map["ClientMac"] = self.clientMac!
            }
            if self.clientOsUser != nil {
                map["ClientOsUser"] = self.clientOsUser!
            }
            if self.clientPort != nil {
                map["ClientPort"] = self.clientPort!
            }
            if self.clientProgram != nil {
                map["ClientProgram"] = self.clientProgram!
            }
            if self.dbId != nil {
                map["DbId"] = self.dbId!
            }
            if self.dbServer != nil {
                map["DbServer"] = self.dbServer!
            }
            if self.dbUser != nil {
                map["DbUser"] = self.dbUser!
            }
            if self.execCostUS != nil {
                map["ExecCostUS"] = self.execCostUS!
            }
            if self.fetchCostUS != nil {
                map["FetchCostUS"] = self.fetchCostUS!
            }
            if self.instName != nil {
                map["InstName"] = self.instName!
            }
            if self.responseCode != nil {
                map["ResponseCode"] = self.responseCode!
            }
            if self.responseText != nil {
                map["ResponseText"] = self.responseText!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleKeyId != nil {
                map["RuleKeyId"] = self.ruleKeyId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.serverMac != nil {
                map["ServerMac"] = self.serverMac!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.sessionLoginTime != nil {
                map["SessionLoginTime"] = self.sessionLoginTime!
            }
            if self.sessionLogoutTime != nil {
                map["SessionLogoutTime"] = self.sessionLogoutTime!
            }
            if self.sqlContent != nil {
                map["SqlContent"] = self.sqlContent!
            }
            if self.sqlId != nil {
                map["SqlId"] = self.sqlId!
            }
            if self.sqlType != nil {
                map["SqlType"] = self.sqlType!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AffectRows"] as? Int32 {
                self.affectRows = value
            }
            if let value = dict["AppClientIp"] as? String {
                self.appClientIp = value
            }
            if let value = dict["AppUsername"] as? String {
                self.appUsername = value
            }
            if let value = dict["CaptureTime"] as? String {
                self.captureTime = value
            }
            if let value = dict["ClientIp"] as? String {
                self.clientIp = value
            }
            if let value = dict["ClientIpAlias"] as? String {
                self.clientIpAlias = value
            }
            if let value = dict["ClientMac"] as? String {
                self.clientMac = value
            }
            if let value = dict["ClientOsUser"] as? String {
                self.clientOsUser = value
            }
            if let value = dict["ClientPort"] as? Int32 {
                self.clientPort = value
            }
            if let value = dict["ClientProgram"] as? String {
                self.clientProgram = value
            }
            if let value = dict["DbId"] as? Int32 {
                self.dbId = value
            }
            if let value = dict["DbServer"] as? String {
                self.dbServer = value
            }
            if let value = dict["DbUser"] as? String {
                self.dbUser = value
            }
            if let value = dict["ExecCostUS"] as? Int32 {
                self.execCostUS = value
            }
            if let value = dict["FetchCostUS"] as? Int32 {
                self.fetchCostUS = value
            }
            if let value = dict["InstName"] as? String {
                self.instName = value
            }
            if let value = dict["ResponseCode"] as? String {
                self.responseCode = value
            }
            if let value = dict["ResponseText"] as? String {
                self.responseText = value
            }
            if let value = dict["RiskLevel"] as? Int32 {
                self.riskLevel = value
            }
            if let value = dict["RuleId"] as? Int32 {
                self.ruleId = value
            }
            if let value = dict["RuleKeyId"] as? Int32 {
                self.ruleKeyId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? Int32 {
                self.ruleType = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["ServerMac"] as? String {
                self.serverMac = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["SessionLoginTime"] as? String {
                self.sessionLoginTime = value
            }
            if let value = dict["SessionLogoutTime"] as? String {
                self.sessionLogoutTime = value
            }
            if let value = dict["SqlContent"] as? String {
                self.sqlContent = value
            }
            if let value = dict["SqlId"] as? String {
                self.sqlId = value
            }
            if let value = dict["SqlType"] as? String {
                self.sqlType = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
        }
    }
    public var beginDate: String?

    public var endDate: String?

    public var incomplete: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var results: [GetLogListResponseBody.Results]?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.incomplete != nil {
            map["Incomplete"] = self.incomplete!
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
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Incomplete"] as? String {
            self.incomplete = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [GetLogListResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = GetLogListResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetLogListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogListResponseBody?

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
            var model = GetLogListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogTypeDistributionRequest : Tea.TeaModel {
    public var beginDate: String?

    public var dbId: Int32?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetLogTypeDistributionResponseBody : Tea.TeaModel {
    public class TimeList : Tea.TeaModel {
        public var beginDate: String?

        public var deleteSqlCount: Int64?

        public var endDate: String?

        public var execCostUS: String?

        public var insertSqlCount: Int64?

        public var otherSqlCount: Int64?

        public var selectSqlCount: Int64?

        public var sqlCount: Int64?

        public var updateSqlCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginDate != nil {
                map["BeginDate"] = self.beginDate!
            }
            if self.deleteSqlCount != nil {
                map["DeleteSqlCount"] = self.deleteSqlCount!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.execCostUS != nil {
                map["ExecCostUS"] = self.execCostUS!
            }
            if self.insertSqlCount != nil {
                map["InsertSqlCount"] = self.insertSqlCount!
            }
            if self.otherSqlCount != nil {
                map["OtherSqlCount"] = self.otherSqlCount!
            }
            if self.selectSqlCount != nil {
                map["SelectSqlCount"] = self.selectSqlCount!
            }
            if self.sqlCount != nil {
                map["SqlCount"] = self.sqlCount!
            }
            if self.updateSqlCount != nil {
                map["UpdateSqlCount"] = self.updateSqlCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginDate"] as? String {
                self.beginDate = value
            }
            if let value = dict["DeleteSqlCount"] as? Int64 {
                self.deleteSqlCount = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["ExecCostUS"] as? String {
                self.execCostUS = value
            }
            if let value = dict["InsertSqlCount"] as? Int64 {
                self.insertSqlCount = value
            }
            if let value = dict["OtherSqlCount"] as? Int64 {
                self.otherSqlCount = value
            }
            if let value = dict["SelectSqlCount"] as? Int64 {
                self.selectSqlCount = value
            }
            if let value = dict["SqlCount"] as? Int64 {
                self.sqlCount = value
            }
            if let value = dict["UpdateSqlCount"] as? Int64 {
                self.updateSqlCount = value
            }
        }
    }
    public var requestId: String?

    public var timeList: [GetLogTypeDistributionResponseBody.TimeList]?

    public override init() {
        super.init()
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
        if self.timeList != nil {
            var tmp : [Any] = []
            for k in self.timeList! {
                tmp.append(k.toMap())
            }
            map["TimeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TimeList"] as? [Any?] {
            var tmp : [GetLogTypeDistributionResponseBody.TimeList] = []
            for v in value {
                if v != nil {
                    var model = GetLogTypeDistributionResponseBody.TimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeList = tmp
        }
    }
}

public class GetLogTypeDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogTypeDistributionResponseBody?

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
            var model = GetLogTypeDistributionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRiskLevelDistributionRequest : Tea.TeaModel {
    public var beginDate: String?

    public var dbId: Int32?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetRiskLevelDistributionResponseBody : Tea.TeaModel {
    public class TimeList : Tea.TeaModel {
        public var beginDate: String?

        public var endDate: String?

        public var highRiskCount: Int64?

        public var lowRiskCount: Int64?

        public var middleRiskCount: Int64?

        public var riskCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginDate != nil {
                map["BeginDate"] = self.beginDate!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.highRiskCount != nil {
                map["HighRiskCount"] = self.highRiskCount!
            }
            if self.lowRiskCount != nil {
                map["LowRiskCount"] = self.lowRiskCount!
            }
            if self.middleRiskCount != nil {
                map["MiddleRiskCount"] = self.middleRiskCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginDate"] as? String {
                self.beginDate = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["HighRiskCount"] as? Int64 {
                self.highRiskCount = value
            }
            if let value = dict["LowRiskCount"] as? Int64 {
                self.lowRiskCount = value
            }
            if let value = dict["MiddleRiskCount"] as? Int64 {
                self.middleRiskCount = value
            }
            if let value = dict["RiskCount"] as? Int64 {
                self.riskCount = value
            }
        }
    }
    public var requestId: String?

    public var timeList: [GetRiskLevelDistributionResponseBody.TimeList]?

    public override init() {
        super.init()
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
        if self.timeList != nil {
            var tmp : [Any] = []
            for k in self.timeList! {
                tmp.append(k.toMap())
            }
            map["TimeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TimeList"] as? [Any?] {
            var tmp : [GetRiskLevelDistributionResponseBody.TimeList] = []
            for v in value {
                if v != nil {
                    var model = GetRiskLevelDistributionResponseBody.TimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeList = tmp
        }
    }
}

public class GetRiskLevelDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRiskLevelDistributionResponseBody?

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
            var model = GetRiskLevelDistributionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSessionDistributionRequest : Tea.TeaModel {
    public var beginDate: String?

    public var dbId: Int32?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetSessionDistributionResponseBody : Tea.TeaModel {
    public class TimeList : Tea.TeaModel {
        public var activeSessionCount: Int64?

        public var beginDate: String?

        public var endDate: String?

        public var errorSessionCount: Int64?

        public var loginSessionCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeSessionCount != nil {
                map["ActiveSessionCount"] = self.activeSessionCount!
            }
            if self.beginDate != nil {
                map["BeginDate"] = self.beginDate!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.errorSessionCount != nil {
                map["ErrorSessionCount"] = self.errorSessionCount!
            }
            if self.loginSessionCount != nil {
                map["LoginSessionCount"] = self.loginSessionCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveSessionCount"] as? Int64 {
                self.activeSessionCount = value
            }
            if let value = dict["BeginDate"] as? String {
                self.beginDate = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["ErrorSessionCount"] as? Int64 {
                self.errorSessionCount = value
            }
            if let value = dict["LoginSessionCount"] as? Int64 {
                self.loginSessionCount = value
            }
        }
    }
    public var requestId: String?

    public var timeList: [GetSessionDistributionResponseBody.TimeList]?

    public override init() {
        super.init()
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
        if self.timeList != nil {
            var tmp : [Any] = []
            for k in self.timeList! {
                tmp.append(k.toMap())
            }
            map["TimeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TimeList"] as? [Any?] {
            var tmp : [GetSessionDistributionResponseBody.TimeList] = []
            for v in value {
                if v != nil {
                    var model = GetSessionDistributionResponseBody.TimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeList = tmp
        }
    }
}

public class GetSessionDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSessionDistributionResponseBody?

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
            var model = GetSessionDistributionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSessionListRequest : Tea.TeaModel {
    public var actionList: [String]?

    public var beginDate: String?

    public var clientIpList: [String]?

    public var clientProgramList: [String]?

    public var dbHostList: [String]?

    public var dbId: Int32?

    public var dbUserList: [String]?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionList != nil {
            map["ActionList"] = self.actionList!
        }
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.clientIpList != nil {
            map["ClientIpList"] = self.clientIpList!
        }
        if self.clientProgramList != nil {
            map["ClientProgramList"] = self.clientProgramList!
        }
        if self.dbHostList != nil {
            map["DbHostList"] = self.dbHostList!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.dbUserList != nil {
            map["DbUserList"] = self.dbUserList!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionList"] as? [String] {
            self.actionList = value
        }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["ClientIpList"] as? [String] {
            self.clientIpList = value
        }
        if let value = dict["ClientProgramList"] as? [String] {
            self.clientProgramList = value
        }
        if let value = dict["DbHostList"] as? [String] {
            self.dbHostList = value
        }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["DbUserList"] as? [String] {
            self.dbUserList = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetSessionListResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var action: String?

        public var captureTime: String?

        public var clientIp: String?

        public var clientIpAlias: String?

        public var clientMac: String?

        public var clientOsUser: String?

        public var clientPort: Int32?

        public var clientProgram: String?

        public var dbId: Int32?

        public var dbUser: String?

        public var loginCode: Int32?

        public var loginMessage: String?

        public var serverIp: String?

        public var serverMac: String?

        public var serverPort: Int32?

        public var sessionId: String?

        public override init() {
            super.init()
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
            if self.captureTime != nil {
                map["CaptureTime"] = self.captureTime!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientIpAlias != nil {
                map["ClientIpAlias"] = self.clientIpAlias!
            }
            if self.clientMac != nil {
                map["ClientMac"] = self.clientMac!
            }
            if self.clientOsUser != nil {
                map["ClientOsUser"] = self.clientOsUser!
            }
            if self.clientPort != nil {
                map["ClientPort"] = self.clientPort!
            }
            if self.clientProgram != nil {
                map["ClientProgram"] = self.clientProgram!
            }
            if self.dbId != nil {
                map["DbId"] = self.dbId!
            }
            if self.dbUser != nil {
                map["DbUser"] = self.dbUser!
            }
            if self.loginCode != nil {
                map["LoginCode"] = self.loginCode!
            }
            if self.loginMessage != nil {
                map["LoginMessage"] = self.loginMessage!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
            }
            if self.serverMac != nil {
                map["ServerMac"] = self.serverMac!
            }
            if self.serverPort != nil {
                map["ServerPort"] = self.serverPort!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["CaptureTime"] as? String {
                self.captureTime = value
            }
            if let value = dict["ClientIp"] as? String {
                self.clientIp = value
            }
            if let value = dict["ClientIpAlias"] as? String {
                self.clientIpAlias = value
            }
            if let value = dict["ClientMac"] as? String {
                self.clientMac = value
            }
            if let value = dict["ClientOsUser"] as? String {
                self.clientOsUser = value
            }
            if let value = dict["ClientPort"] as? Int32 {
                self.clientPort = value
            }
            if let value = dict["ClientProgram"] as? String {
                self.clientProgram = value
            }
            if let value = dict["DbId"] as? Int32 {
                self.dbId = value
            }
            if let value = dict["DbUser"] as? String {
                self.dbUser = value
            }
            if let value = dict["LoginCode"] as? Int32 {
                self.loginCode = value
            }
            if let value = dict["LoginMessage"] as? String {
                self.loginMessage = value
            }
            if let value = dict["ServerIp"] as? String {
                self.serverIp = value
            }
            if let value = dict["ServerMac"] as? String {
                self.serverMac = value
            }
            if let value = dict["ServerPort"] as? Int32 {
                self.serverPort = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var beginDate: String?

    public var endDate: String?

    public var incomplete: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var results: [GetSessionListResponseBody.Results]?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.incomplete != nil {
            map["Incomplete"] = self.incomplete!
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
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Incomplete"] as? String {
            self.incomplete = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [GetSessionListResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = GetSessionListResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetSessionListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSessionListResponseBody?

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
            var model = GetSessionListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceAttributeRequest : Tea.TeaModel {
    public var dbIds: [String]?

    public var instanceId: String?

    public var lang: String?

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
        if self.dbIds != nil {
            map["DbIds"] = self.dbIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbIds"] as? [String] {
            self.dbIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListDataSourceAttributeResponseBody : Tea.TeaModel {
    public class DbList : Tea.TeaModel {
        public var auditMode: String?

        public var dbId: Int32?

        public var freqAuditMode: String?

        public var resultAuditMaxLine: Int32?

        public var resultAuditMaxSize: Int32?

        public var resultAuditMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditMode != nil {
                map["AuditMode"] = self.auditMode!
            }
            if self.dbId != nil {
                map["DbId"] = self.dbId!
            }
            if self.freqAuditMode != nil {
                map["FreqAuditMode"] = self.freqAuditMode!
            }
            if self.resultAuditMaxLine != nil {
                map["ResultAuditMaxLine"] = self.resultAuditMaxLine!
            }
            if self.resultAuditMaxSize != nil {
                map["ResultAuditMaxSize"] = self.resultAuditMaxSize!
            }
            if self.resultAuditMode != nil {
                map["ResultAuditMode"] = self.resultAuditMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditMode"] as? String {
                self.auditMode = value
            }
            if let value = dict["DbId"] as? Int32 {
                self.dbId = value
            }
            if let value = dict["FreqAuditMode"] as? String {
                self.freqAuditMode = value
            }
            if let value = dict["ResultAuditMaxLine"] as? Int32 {
                self.resultAuditMaxLine = value
            }
            if let value = dict["ResultAuditMaxSize"] as? Int32 {
                self.resultAuditMaxSize = value
            }
            if let value = dict["ResultAuditMode"] as? String {
                self.resultAuditMode = value
            }
        }
    }
    public var dbList: [ListDataSourceAttributeResponseBody.DbList]?

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
        if self.dbList != nil {
            var tmp : [Any] = []
            for k in self.dbList! {
                tmp.append(k.toMap())
            }
            map["DbList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbList"] as? [Any?] {
            var tmp : [ListDataSourceAttributeResponseBody.DbList] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourceAttributeResponseBody.DbList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dbList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataSourceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceAttributeResponseBody?

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
            var model = ListDataSourceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourcesRequest : Tea.TeaModel {
    public var dbId: Int32?

    public var instanceId: String?

    public var lang: String?

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
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbId"] as? Int32 {
            self.dbId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class DbList : Tea.TeaModel {
        public var assetType: Int32?

        public var auditSwitch: Int32?

        public var createTime: String?

        public var dbAddresses: [String]?

        public var dbCertificate: String?

        public var dbId: Int32?

        public var dbInstanceId: String?

        public var dbName: String?

        public var dbType: Int32?

        public var dbTypeName: String?

        public var dbUsername: String?

        public var dbVersion: Int32?

        public var dbVersionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetType != nil {
                map["AssetType"] = self.assetType!
            }
            if self.auditSwitch != nil {
                map["AuditSwitch"] = self.auditSwitch!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dbAddresses != nil {
                map["DbAddresses"] = self.dbAddresses!
            }
            if self.dbCertificate != nil {
                map["DbCertificate"] = self.dbCertificate!
            }
            if self.dbId != nil {
                map["DbId"] = self.dbId!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.dbTypeName != nil {
                map["DbTypeName"] = self.dbTypeName!
            }
            if self.dbUsername != nil {
                map["DbUsername"] = self.dbUsername!
            }
            if self.dbVersion != nil {
                map["DbVersion"] = self.dbVersion!
            }
            if self.dbVersionName != nil {
                map["DbVersionName"] = self.dbVersionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssetType"] as? Int32 {
                self.assetType = value
            }
            if let value = dict["AuditSwitch"] as? Int32 {
                self.auditSwitch = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DbAddresses"] as? [String] {
                self.dbAddresses = value
            }
            if let value = dict["DbCertificate"] as? String {
                self.dbCertificate = value
            }
            if let value = dict["DbId"] as? Int32 {
                self.dbId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["DbType"] as? Int32 {
                self.dbType = value
            }
            if let value = dict["DbTypeName"] as? String {
                self.dbTypeName = value
            }
            if let value = dict["DbUsername"] as? String {
                self.dbUsername = value
            }
            if let value = dict["DbVersion"] as? Int32 {
                self.dbVersion = value
            }
            if let value = dict["DbVersionName"] as? String {
                self.dbVersionName = value
            }
        }
    }
    public var dbList: [ListDataSourcesResponseBody.DbList]?

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
        if self.dbList != nil {
            var tmp : [Any] = []
            for k in self.dbList! {
                tmp.append(k.toMap())
            }
            map["DbList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbList"] as? [Any?] {
            var tmp : [ListDataSourcesResponseBody.DbList] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourcesResponseBody.DbList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dbList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

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
            var model = ListDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSystemAlarmsRequest : Tea.TeaModel {
    public var alarmType: Int32?

    public var beginDate: String?

    public var endDate: String?

    public var instanceId: String?

    public var lang: String?

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
        if self.alarmType != nil {
            map["AlarmType"] = self.alarmType!
        }
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmType"] as? Int32 {
            self.alarmType = value
        }
        if let value = dict["BeginDate"] as? String {
            self.beginDate = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListSystemAlarmsResponseBody : Tea.TeaModel {
    public class Alarms : Tea.TeaModel {
        public var alarmDetail: String?

        public var alarmId: Int32?

        public var alarmType: String?

        public var createTime: String?

        public var readMark: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmDetail != nil {
                map["AlarmDetail"] = self.alarmDetail!
            }
            if self.alarmId != nil {
                map["AlarmId"] = self.alarmId!
            }
            if self.alarmType != nil {
                map["AlarmType"] = self.alarmType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.readMark != nil {
                map["ReadMark"] = self.readMark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmDetail"] as? String {
                self.alarmDetail = value
            }
            if let value = dict["AlarmId"] as? Int32 {
                self.alarmId = value
            }
            if let value = dict["AlarmType"] as? String {
                self.alarmType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ReadMark"] as? Int32 {
                self.readMark = value
            }
        }
    }
    public var alarms: [ListSystemAlarmsResponseBody.Alarms]?

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
        if self.alarms != nil {
            var tmp : [Any] = []
            for k in self.alarms! {
                tmp.append(k.toMap())
            }
            map["Alarms"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alarms"] as? [Any?] {
            var tmp : [ListSystemAlarmsResponseBody.Alarms] = []
            for v in value {
                if v != nil {
                    var model = ListSystemAlarmsResponseBody.Alarms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alarms = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSystemAlarmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemAlarmsResponseBody?

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
            var model = ListSystemAlarmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceAttributeResponseBody : Tea.TeaModel {
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

public class ModifyInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceAttributeResponseBody?

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
            var model = ModifyInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var vswitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
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

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

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
            var model = StartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
