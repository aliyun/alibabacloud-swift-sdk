import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeAccessControlListRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeAccessControlListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aclId: String?

        public var cidr: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("Cidr") {
                self.cidr = dict["Cidr"] as! [String]
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: DescribeAccessControlListResponseBody.Data?

    public var errMessage: String?

    public var errorCode: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeAccessControlListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAccessControlListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessControlListResponseBody?

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
            var model = DescribeAccessControlListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceConfigsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceConfigsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: [UInt8]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [UInt8]
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeInstanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceConfigsResponseBody?

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
            var model = DescribeInstanceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceDetailRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetInstanceDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ClusterInfo : Tea.TeaModel {
            public class MilvusResourceInfoList : Tea.TeaModel {
                public var componentType: String?

                public var cuNum: Int32?

                public var diskSize: Int32?

                public var diskType: String?

                public var replica: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.componentType != nil {
                        map["ComponentType"] = self.componentType!
                    }
                    if self.cuNum != nil {
                        map["CuNum"] = self.cuNum!
                    }
                    if self.diskSize != nil {
                        map["DiskSize"] = self.diskSize!
                    }
                    if self.diskType != nil {
                        map["DiskType"] = self.diskType!
                    }
                    if self.replica != nil {
                        map["Replica"] = self.replica!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComponentType") {
                        self.componentType = dict["ComponentType"] as! String
                    }
                    if dict.keys.contains("CuNum") {
                        self.cuNum = dict["CuNum"] as! Int32
                    }
                    if dict.keys.contains("DiskSize") {
                        self.diskSize = dict["DiskSize"] as! Int32
                    }
                    if dict.keys.contains("DiskType") {
                        self.diskType = dict["DiskType"] as! String
                    }
                    if dict.keys.contains("Replica") {
                        self.replica = dict["Replica"] as! Int32
                    }
                }
            }
            public var attuPort: Int32?

            public var internetUrl: String?

            public var intranetUrl: String?

            public var milvusResourceInfoList: [GetInstanceDetailResponseBody.Data.ClusterInfo.MilvusResourceInfoList]?

            public var ossStorageSize: String?

            public var ossStorageTimestamp: Int64?

            public var proxyPort: Int32?

            public var totalCuNum: Int32?

            public var totalDiskSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attuPort != nil {
                    map["AttuPort"] = self.attuPort!
                }
                if self.internetUrl != nil {
                    map["InternetUrl"] = self.internetUrl!
                }
                if self.intranetUrl != nil {
                    map["IntranetUrl"] = self.intranetUrl!
                }
                if self.milvusResourceInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.milvusResourceInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["MilvusResourceInfoList"] = tmp
                }
                if self.ossStorageSize != nil {
                    map["OssStorageSize"] = self.ossStorageSize!
                }
                if self.ossStorageTimestamp != nil {
                    map["OssStorageTimestamp"] = self.ossStorageTimestamp!
                }
                if self.proxyPort != nil {
                    map["ProxyPort"] = self.proxyPort!
                }
                if self.totalCuNum != nil {
                    map["TotalCuNum"] = self.totalCuNum!
                }
                if self.totalDiskSize != nil {
                    map["TotalDiskSize"] = self.totalDiskSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttuPort") {
                    self.attuPort = dict["AttuPort"] as! Int32
                }
                if dict.keys.contains("InternetUrl") {
                    self.internetUrl = dict["InternetUrl"] as! String
                }
                if dict.keys.contains("IntranetUrl") {
                    self.intranetUrl = dict["IntranetUrl"] as! String
                }
                if dict.keys.contains("MilvusResourceInfoList") {
                    var tmp : [GetInstanceDetailResponseBody.Data.ClusterInfo.MilvusResourceInfoList] = []
                    for v in dict["MilvusResourceInfoList"] as! [Any] {
                        var model = GetInstanceDetailResponseBody.Data.ClusterInfo.MilvusResourceInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.milvusResourceInfoList = tmp
                }
                if dict.keys.contains("OssStorageSize") {
                    self.ossStorageSize = dict["OssStorageSize"] as! String
                }
                if dict.keys.contains("OssStorageTimestamp") {
                    self.ossStorageTimestamp = dict["OssStorageTimestamp"] as! Int64
                }
                if dict.keys.contains("ProxyPort") {
                    self.proxyPort = dict["ProxyPort"] as! Int32
                }
                if dict.keys.contains("TotalCuNum") {
                    self.totalCuNum = dict["TotalCuNum"] as! Int32
                }
                if dict.keys.contains("TotalDiskSize") {
                    self.totalDiskSize = dict["TotalDiskSize"] as! Int32
                }
            }
        }
        public class MeasureConfig : Tea.TeaModel {
            public var dataNodeCuNum: Int32?

            public var dataNodeReplica: Int32?

            public var indexNodeCuNum: Int32?

            public var indexNodeReplica: Int32?

            public var mixCoodinatorNodeCuNum: Int32?

            public var mixCoodinatorNodeReplica: Int32?

            public var proxyNodeCuNum: Int32?

            public var proxyNodeReplica: Int32?

            public var queryNodeCuNum: Int32?

            public var queryNodeReplica: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataNodeCuNum != nil {
                    map["DataNodeCuNum"] = self.dataNodeCuNum!
                }
                if self.dataNodeReplica != nil {
                    map["DataNodeReplica"] = self.dataNodeReplica!
                }
                if self.indexNodeCuNum != nil {
                    map["IndexNodeCuNum"] = self.indexNodeCuNum!
                }
                if self.indexNodeReplica != nil {
                    map["IndexNodeReplica"] = self.indexNodeReplica!
                }
                if self.mixCoodinatorNodeCuNum != nil {
                    map["MixCoodinatorNodeCuNum"] = self.mixCoodinatorNodeCuNum!
                }
                if self.mixCoodinatorNodeReplica != nil {
                    map["MixCoodinatorNodeReplica"] = self.mixCoodinatorNodeReplica!
                }
                if self.proxyNodeCuNum != nil {
                    map["ProxyNodeCuNum"] = self.proxyNodeCuNum!
                }
                if self.proxyNodeReplica != nil {
                    map["ProxyNodeReplica"] = self.proxyNodeReplica!
                }
                if self.queryNodeCuNum != nil {
                    map["QueryNodeCuNum"] = self.queryNodeCuNum!
                }
                if self.queryNodeReplica != nil {
                    map["QueryNodeReplica"] = self.queryNodeReplica!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataNodeCuNum") {
                    self.dataNodeCuNum = dict["DataNodeCuNum"] as! Int32
                }
                if dict.keys.contains("DataNodeReplica") {
                    self.dataNodeReplica = dict["DataNodeReplica"] as! Int32
                }
                if dict.keys.contains("IndexNodeCuNum") {
                    self.indexNodeCuNum = dict["IndexNodeCuNum"] as! Int32
                }
                if dict.keys.contains("IndexNodeReplica") {
                    self.indexNodeReplica = dict["IndexNodeReplica"] as! Int32
                }
                if dict.keys.contains("MixCoodinatorNodeCuNum") {
                    self.mixCoodinatorNodeCuNum = dict["MixCoodinatorNodeCuNum"] as! Int32
                }
                if dict.keys.contains("MixCoodinatorNodeReplica") {
                    self.mixCoodinatorNodeReplica = dict["MixCoodinatorNodeReplica"] as! Int32
                }
                if dict.keys.contains("ProxyNodeCuNum") {
                    self.proxyNodeCuNum = dict["ProxyNodeCuNum"] as! Int32
                }
                if dict.keys.contains("ProxyNodeReplica") {
                    self.proxyNodeReplica = dict["ProxyNodeReplica"] as! Int32
                }
                if dict.keys.contains("QueryNodeCuNum") {
                    self.queryNodeCuNum = dict["QueryNodeCuNum"] as! Int32
                }
                if dict.keys.contains("QueryNodeReplica") {
                    self.queryNodeReplica = dict["QueryNodeReplica"] as! Int32
                }
            }
        }
        public var aclId: String?

        public var beginTime: Int64?

        public var bucketName: String?

        public var bucketPath: String?

        public var clusterInfo: GetInstanceDetailResponseBody.Data.ClusterInfo?

        public var clusterName: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceStatus: String?

        public var measureConfig: GetInstanceDetailResponseBody.Data.MeasureConfig?

        public var openPublicNet: Bool?

        public var packageType: String?

        public var payType: Int32?

        public var productCode: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var runningTime: Int64?

        public var sgId: String?

        public var templateVersion: String?

        public var userConfig: String?

        public var version: String?

        public var vpcId: String?

        public var vswId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clusterInfo?.validate()
            try self.measureConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.bucketPath != nil {
                map["BucketPath"] = self.bucketPath!
            }
            if self.clusterInfo != nil {
                map["ClusterInfo"] = self.clusterInfo?.toMap()
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.measureConfig != nil {
                map["MeasureConfig"] = self.measureConfig?.toMap()
            }
            if self.openPublicNet != nil {
                map["OpenPublicNet"] = self.openPublicNet!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.sgId != nil {
                map["SgId"] = self.sgId!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.userConfig != nil {
                map["UserConfig"] = self.userConfig!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswId != nil {
                map["VswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("BucketPath") {
                self.bucketPath = dict["BucketPath"] as! String
            }
            if dict.keys.contains("ClusterInfo") {
                var model = GetInstanceDetailResponseBody.Data.ClusterInfo()
                model.fromMap(dict["ClusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceStatus") {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("MeasureConfig") {
                var model = GetInstanceDetailResponseBody.Data.MeasureConfig()
                model.fromMap(dict["MeasureConfig"] as! [String: Any])
                self.measureConfig = model
            }
            if dict.keys.contains("OpenPublicNet") {
                self.openPublicNet = dict["OpenPublicNet"] as! Bool
            }
            if dict.keys.contains("PackageType") {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! Int32
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RunningTime") {
                self.runningTime = dict["RunningTime"] as! Int64
            }
            if dict.keys.contains("SgId") {
                self.sgId = dict["SgId"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UserConfig") {
                self.userConfig = dict["UserConfig"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswId") {
                self.vswId = dict["VswId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetInstanceDetailResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInstanceDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceDetailResponseBody?

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
            var model = GetInstanceDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ClusterInfo : Tea.TeaModel {
            public class MilvusResourceInfoList : Tea.TeaModel {
                public var componentType: String?

                public var cuNum: Int32?

                public var diskSize: Int32?

                public var diskType: String?

                public var replica: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.componentType != nil {
                        map["ComponentType"] = self.componentType!
                    }
                    if self.cuNum != nil {
                        map["CuNum"] = self.cuNum!
                    }
                    if self.diskSize != nil {
                        map["DiskSize"] = self.diskSize!
                    }
                    if self.diskType != nil {
                        map["DiskType"] = self.diskType!
                    }
                    if self.replica != nil {
                        map["Replica"] = self.replica!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComponentType") {
                        self.componentType = dict["ComponentType"] as! String
                    }
                    if dict.keys.contains("CuNum") {
                        self.cuNum = dict["CuNum"] as! Int32
                    }
                    if dict.keys.contains("DiskSize") {
                        self.diskSize = dict["DiskSize"] as! Int32
                    }
                    if dict.keys.contains("DiskType") {
                        self.diskType = dict["DiskType"] as! String
                    }
                    if dict.keys.contains("Replica") {
                        self.replica = dict["Replica"] as! Int32
                    }
                }
            }
            public var attuPort: Int32?

            public var internetUrl: String?

            public var intranetUrl: String?

            public var milvusResourceInfoList: [ListInstancesResponseBody.Data.ClusterInfo.MilvusResourceInfoList]?

            public var proxyPort: Int32?

            public var totalCuNum: Int32?

            public var totalDiskSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attuPort != nil {
                    map["AttuPort"] = self.attuPort!
                }
                if self.internetUrl != nil {
                    map["InternetUrl"] = self.internetUrl!
                }
                if self.intranetUrl != nil {
                    map["IntranetUrl"] = self.intranetUrl!
                }
                if self.milvusResourceInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.milvusResourceInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["MilvusResourceInfoList"] = tmp
                }
                if self.proxyPort != nil {
                    map["ProxyPort"] = self.proxyPort!
                }
                if self.totalCuNum != nil {
                    map["TotalCuNum"] = self.totalCuNum!
                }
                if self.totalDiskSize != nil {
                    map["TotalDiskSize"] = self.totalDiskSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttuPort") {
                    self.attuPort = dict["AttuPort"] as! Int32
                }
                if dict.keys.contains("InternetUrl") {
                    self.internetUrl = dict["InternetUrl"] as! String
                }
                if dict.keys.contains("IntranetUrl") {
                    self.intranetUrl = dict["IntranetUrl"] as! String
                }
                if dict.keys.contains("MilvusResourceInfoList") {
                    var tmp : [ListInstancesResponseBody.Data.ClusterInfo.MilvusResourceInfoList] = []
                    for v in dict["MilvusResourceInfoList"] as! [Any] {
                        var model = ListInstancesResponseBody.Data.ClusterInfo.MilvusResourceInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.milvusResourceInfoList = tmp
                }
                if dict.keys.contains("ProxyPort") {
                    self.proxyPort = dict["ProxyPort"] as! Int32
                }
                if dict.keys.contains("TotalCuNum") {
                    self.totalCuNum = dict["TotalCuNum"] as! Int32
                }
                if dict.keys.contains("TotalDiskSize") {
                    self.totalDiskSize = dict["TotalDiskSize"] as! Int32
                }
            }
        }
        public var beginTime: Int64?

        public var clusterInfo: ListInstancesResponseBody.Data.ClusterInfo?

        public var clusterName: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceStatus: String?

        public var openPublicNet: Bool?

        public var packageType: String?

        public var payType: Int32?

        public var productCode: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var runningTime: Int32?

        public var sgId: String?

        public var vpcId: String?

        public var vswId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clusterInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.clusterInfo != nil {
                map["ClusterInfo"] = self.clusterInfo?.toMap()
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.openPublicNet != nil {
                map["OpenPublicNet"] = self.openPublicNet!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.sgId != nil {
                map["SgId"] = self.sgId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswId != nil {
                map["VswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("ClusterInfo") {
                var model = ListInstancesResponseBody.Data.ClusterInfo()
                model.fromMap(dict["ClusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceStatus") {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("OpenPublicNet") {
                self.openPublicNet = dict["OpenPublicNet"] as! Bool
            }
            if dict.keys.contains("PackageType") {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! Int32
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RunningTime") {
                self.runningTime = dict["RunningTime"] as! Int32
            }
            if dict.keys.contains("SgId") {
                self.sgId = dict["SgId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswId") {
                self.vswId = dict["VswId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [ListInstancesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListInstancesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListInstancesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public var reason: String?

    public var userConfig: String?

    public override init() {
        super.init()
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
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.userConfig != nil {
            map["UserConfig"] = self.userConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("UserConfig") {
            self.userConfig = dict["UserConfig"] as! String
        }
    }
}

public class ModifyInstanceConfigResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceConfigResponseBody?

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
            var model = ModifyInstanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccessControlListRequest : Tea.TeaModel {
    public var aclId: String?

    public var cidr: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.cidr != nil {
            map["Cidr"] = self.cidr!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("Cidr") {
            self.cidr = dict["Cidr"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateAccessControlListResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errMessage: String?

    public var errorCode: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateAccessControlListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccessControlListResponseBody?

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
            var model = UpdateAccessControlListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceNameRequest : Tea.TeaModel {
    public var clusterName: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateInstanceNameResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceNameResponseBody?

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
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePublicNetworkStatusRequest : Tea.TeaModel {
    public var cidr: String?

    public var componentType: String?

    public var instanceId: String?

    public var publicNetworkEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cidr != nil {
            map["Cidr"] = self.cidr!
        }
        if self.componentType != nil {
            map["ComponentType"] = self.componentType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.publicNetworkEnabled != nil {
            map["PublicNetworkEnabled"] = self.publicNetworkEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cidr") {
            self.cidr = dict["Cidr"] as! String
        }
        if dict.keys.contains("ComponentType") {
            self.componentType = dict["ComponentType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PublicNetworkEnabled") {
            self.publicNetworkEnabled = dict["PublicNetworkEnabled"] as! Bool
        }
    }
}

public class UpdatePublicNetworkStatusResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdatePublicNetworkStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePublicNetworkStatusResponseBody?

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
            var model = UpdatePublicNetworkStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
