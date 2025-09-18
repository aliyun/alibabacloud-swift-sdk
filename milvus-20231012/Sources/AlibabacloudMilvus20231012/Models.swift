import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDefaultRoleResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDefaultRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDefaultRoleResponseBody?

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
            var model = CreateDefaultRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? String {
                self.aclId = value
            }
            if let value = dict["Cidr"] as? [String] {
                self.cidr = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAccessControlListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccessControlListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [UInt8] {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ClusterInfo : Tea.TeaModel {
            public class MilvusResourceInfoList : Tea.TeaModel {
                public var componentType: String?

                public var cuNum: Int32?

                public var cuRatio: Int32?

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
                    if self.cuRatio != nil {
                        map["CuRatio"] = self.cuRatio!
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ComponentType"] as? String {
                        self.componentType = value
                    }
                    if let value = dict["CuNum"] as? Int32 {
                        self.cuNum = value
                    }
                    if let value = dict["CuRatio"] as? Int32 {
                        self.cuRatio = value
                    }
                    if let value = dict["DiskSize"] as? Int32 {
                        self.diskSize = value
                    }
                    if let value = dict["DiskType"] as? String {
                        self.diskType = value
                    }
                    if let value = dict["Replica"] as? Int32 {
                        self.replica = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttuPort"] as? Int32 {
                    self.attuPort = value
                }
                if let value = dict["InternetUrl"] as? String {
                    self.internetUrl = value
                }
                if let value = dict["IntranetUrl"] as? String {
                    self.intranetUrl = value
                }
                if let value = dict["MilvusResourceInfoList"] as? [Any?] {
                    var tmp : [GetInstanceDetailResponseBody.Data.ClusterInfo.MilvusResourceInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetInstanceDetailResponseBody.Data.ClusterInfo.MilvusResourceInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.milvusResourceInfoList = tmp
                }
                if let value = dict["OssStorageSize"] as? String {
                    self.ossStorageSize = value
                }
                if let value = dict["OssStorageTimestamp"] as? Int64 {
                    self.ossStorageTimestamp = value
                }
                if let value = dict["ProxyPort"] as? Int32 {
                    self.proxyPort = value
                }
                if let value = dict["TotalCuNum"] as? Int32 {
                    self.totalCuNum = value
                }
                if let value = dict["TotalDiskSize"] as? Int32 {
                    self.totalDiskSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataNodeCuNum"] as? Int32 {
                    self.dataNodeCuNum = value
                }
                if let value = dict["DataNodeReplica"] as? Int32 {
                    self.dataNodeReplica = value
                }
                if let value = dict["IndexNodeCuNum"] as? Int32 {
                    self.indexNodeCuNum = value
                }
                if let value = dict["IndexNodeReplica"] as? Int32 {
                    self.indexNodeReplica = value
                }
                if let value = dict["MixCoodinatorNodeCuNum"] as? Int32 {
                    self.mixCoodinatorNodeCuNum = value
                }
                if let value = dict["MixCoodinatorNodeReplica"] as? Int32 {
                    self.mixCoodinatorNodeReplica = value
                }
                if let value = dict["ProxyNodeCuNum"] as? Int32 {
                    self.proxyNodeCuNum = value
                }
                if let value = dict["ProxyNodeReplica"] as? Int32 {
                    self.proxyNodeReplica = value
                }
                if let value = dict["QueryNodeCuNum"] as? Int32 {
                    self.queryNodeCuNum = value
                }
                if let value = dict["QueryNodeReplica"] as? Int32 {
                    self.queryNodeReplica = value
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
        public var aclId: String?

        public var beginTime: Int64?

        public var bucketName: String?

        public var bucketPath: String?

        public var clusterInfo: GetInstanceDetailResponseBody.Data.ClusterInfo?

        public var clusterName: String?

        public var enableHa: Bool?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceStatus: String?

        public var measureConfig: GetInstanceDetailResponseBody.Data.MeasureConfig?

        public var nodeType: String?

        public var openPublicNet: Bool?

        public var packageType: String?

        public var payType: Int32?

        public var productCode: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var runningTime: Int64?

        public var sgId: String?

        public var tags: [GetInstanceDetailResponseBody.Data.Tags]?

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
            if self.enableHa != nil {
                map["EnableHa"] = self.enableHa!
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
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? String {
                self.aclId = value
            }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["BucketPath"] as? String {
                self.bucketPath = value
            }
            if let value = dict["ClusterInfo"] as? [String: Any?] {
                var model = GetInstanceDetailResponseBody.Data.ClusterInfo()
                model.fromMap(value)
                self.clusterInfo = model
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["EnableHa"] as? Bool {
                self.enableHa = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["MeasureConfig"] as? [String: Any?] {
                var model = GetInstanceDetailResponseBody.Data.MeasureConfig()
                model.fromMap(value)
                self.measureConfig = model
            }
            if let value = dict["NodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["OpenPublicNet"] as? Bool {
                self.openPublicNet = value
            }
            if let value = dict["PackageType"] as? String {
                self.packageType = value
            }
            if let value = dict["PayType"] as? Int32 {
                self.payType = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RunningTime"] as? Int64 {
                self.runningTime = value
            }
            if let value = dict["SgId"] as? String {
                self.sgId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetInstanceDetailResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceDetailResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UserConfig"] as? String {
                self.userConfig = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswId"] as? String {
                self.vswId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetInstanceDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
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
    public var clusterId: String?

    public var clusterName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListInstancesRequest.Tag]?

    public override init() {
        super.init()
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesRequest.Tag()
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

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ComponentType"] as? String {
                        self.componentType = value
                    }
                    if let value = dict["CuNum"] as? Int32 {
                        self.cuNum = value
                    }
                    if let value = dict["DiskSize"] as? Int32 {
                        self.diskSize = value
                    }
                    if let value = dict["DiskType"] as? String {
                        self.diskType = value
                    }
                    if let value = dict["Replica"] as? Int32 {
                        self.replica = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttuPort"] as? Int32 {
                    self.attuPort = value
                }
                if let value = dict["InternetUrl"] as? String {
                    self.internetUrl = value
                }
                if let value = dict["IntranetUrl"] as? String {
                    self.intranetUrl = value
                }
                if let value = dict["MilvusResourceInfoList"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Data.ClusterInfo.MilvusResourceInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Data.ClusterInfo.MilvusResourceInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.milvusResourceInfoList = tmp
                }
                if let value = dict["ProxyPort"] as? Int32 {
                    self.proxyPort = value
                }
                if let value = dict["TotalCuNum"] as? Int32 {
                    self.totalCuNum = value
                }
                if let value = dict["TotalDiskSize"] as? Int32 {
                    self.totalDiskSize = value
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
        public var autoBackup: Bool?

        public var beginTime: Int64?

        public var clusterInfo: ListInstancesResponseBody.Data.ClusterInfo?

        public var clusterName: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceStatus: String?

        public var nodeType: String?

        public var openPublicNet: Bool?

        public var packageType: String?

        public var payType: Int32?

        public var productCode: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var runningTime: Int32?

        public var sgId: String?

        public var tags: [ListInstancesResponseBody.Data.Tags]?

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
            if self.autoBackup != nil {
                map["AutoBackup"] = self.autoBackup!
            }
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
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
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
            if self.vswId != nil {
                map["VswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoBackup"] as? Bool {
                self.autoBackup = value
            }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["ClusterInfo"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Data.ClusterInfo()
                model.fromMap(value)
                self.clusterInfo = model
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["NodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["OpenPublicNet"] as? Bool {
                self.openPublicNet = value
            }
            if let value = dict["PackageType"] as? String {
                self.packageType = value
            }
            if let value = dict["PayType"] as? Int32 {
                self.payType = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RunningTime"] as? Int32 {
                self.runningTime = value
            }
            if let value = dict["SgId"] as? String {
                self.sgId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Data.Tags()
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
            if let value = dict["VswId"] as? String {
                self.vswId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["UserConfig"] as? String {
            self.userConfig = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["Cidr"] as? String {
            self.cidr = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAccessControlListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cidr"] as? String {
            self.cidr = value
        }
        if let value = dict["ComponentType"] as? String {
            self.componentType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PublicNetworkEnabled"] as? Bool {
            self.publicNetworkEnabled = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePublicNetworkStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
