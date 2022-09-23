import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CloneFlowJobRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CloneFlowJobResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CloneFlowJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneFlowJobResponseBody?

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
            var model = CloneFlowJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterV2Request : Tea.TeaModel {
    public class BootstrapAction : Tea.TeaModel {
        public var arg: String?

        public var name: String?

        public var path: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arg") {
                self.arg = dict["Arg"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public class Config : Tea.TeaModel {
        public var configKey: String?

        public var configValue: String?

        public var encrypt: String?

        public var fileName: String?

        public var replace: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configKey != nil {
                map["ConfigKey"] = self.configKey!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.encrypt != nil {
                map["Encrypt"] = self.encrypt!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.replace != nil {
                map["Replace"] = self.replace!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigKey") {
                self.configKey = dict["ConfigKey"] as! String
            }
            if dict.keys.contains("ConfigValue") {
                self.configValue = dict["ConfigValue"] as! String
            }
            if dict.keys.contains("Encrypt") {
                self.encrypt = dict["Encrypt"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Replace") {
                self.replace = dict["Replace"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public class HostComponentInfo : Tea.TeaModel {
        public var componentNameList: [String]?

        public var hostName: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentNameList != nil {
                map["ComponentNameList"] = self.componentNameList!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComponentNameList") {
                self.componentNameList = dict["ComponentNameList"] as! [String]
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public class HostGroup : Tea.TeaModel {
        public var autoRenew: Bool?

        public var chargeType: String?

        public var clusterId: String?

        public var comment: String?

        public var createType: String?

        public var diskCapacity: Int32?

        public var diskCount: Int32?

        public var diskType: String?

        public var gpuDriver: String?

        public var hostGroupId: String?

        public var hostGroupName: String?

        public var hostGroupType: String?

        public var instanceType: String?

        public var nodeCount: Int32?

        public var period: Int32?

        public var sysDiskCapacity: Int32?

        public var sysDiskType: String?

        public var vSwitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.createType != nil {
                map["CreateType"] = self.createType!
            }
            if self.diskCapacity != nil {
                map["DiskCapacity"] = self.diskCapacity!
            }
            if self.diskCount != nil {
                map["DiskCount"] = self.diskCount!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.gpuDriver != nil {
                map["GpuDriver"] = self.gpuDriver!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostGroupName != nil {
                map["HostGroupName"] = self.hostGroupName!
            }
            if self.hostGroupType != nil {
                map["HostGroupType"] = self.hostGroupType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.sysDiskCapacity != nil {
                map["SysDiskCapacity"] = self.sysDiskCapacity!
            }
            if self.sysDiskType != nil {
                map["SysDiskType"] = self.sysDiskType!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("CreateType") {
                self.createType = dict["CreateType"] as! String
            }
            if dict.keys.contains("DiskCapacity") {
                self.diskCapacity = dict["DiskCapacity"] as! Int32
            }
            if dict.keys.contains("DiskCount") {
                self.diskCount = dict["DiskCount"] as! Int32
            }
            if dict.keys.contains("DiskType") {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("GpuDriver") {
                self.gpuDriver = dict["GpuDriver"] as! String
            }
            if dict.keys.contains("HostGroupId") {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostGroupName") {
                self.hostGroupName = dict["HostGroupName"] as! String
            }
            if dict.keys.contains("HostGroupType") {
                self.hostGroupType = dict["HostGroupType"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("NodeCount") {
                self.nodeCount = dict["NodeCount"] as! Int32
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("SysDiskCapacity") {
                self.sysDiskCapacity = dict["SysDiskCapacity"] as! Int32
            }
            if dict.keys.contains("SysDiskType") {
                self.sysDiskType = dict["SysDiskType"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
        }
    }
    public class PromotionInfo : Tea.TeaModel {
        public var productCode: String?

        public var promotionOptionCode: String?

        public var promotionOptionNo: String?

        public override init() {
            super.init()
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
            if self.promotionOptionCode != nil {
                map["PromotionOptionCode"] = self.promotionOptionCode!
            }
            if self.promotionOptionNo != nil {
                map["PromotionOptionNo"] = self.promotionOptionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("PromotionOptionCode") {
                self.promotionOptionCode = dict["PromotionOptionCode"] as! String
            }
            if dict.keys.contains("PromotionOptionNo") {
                self.promotionOptionNo = dict["PromotionOptionNo"] as! String
            }
        }
    }
    public class ServiceInfo : Tea.TeaModel {
        public var serviceName: String?

        public var serviceVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceVersion != nil {
                map["ServiceVersion"] = self.serviceVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceVersion") {
                self.serviceVersion = dict["ServiceVersion"] as! String
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
    public class UserInfo : Tea.TeaModel {
        public var password: String?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var authorizeContent: String?

    public var auto: Bool?

    public var autoPayOrder: Bool?

    public var bootstrapAction: [CreateClusterV2Request.BootstrapAction]?

    public var chargeType: String?

    public var clickHouseConf: String?

    public var clientToken: String?

    public var clusterType: String?

    public var config: [CreateClusterV2Request.Config]?

    public var configurations: String?

    public var depositType: String?

    public var emrVer: String?

    public var enableEas: Bool?

    public var enableHighAvailability: Bool?

    public var enableSsh: Bool?

    public var extraAttributes: String?

    public var hostComponentInfo: [CreateClusterV2Request.HostComponentInfo]?

    public var hostGroup: [CreateClusterV2Request.HostGroup]?

    public var initCustomHiveMetaDB: Bool?

    public var instanceGeneration: String?

    public var isOpenPublicIp: Bool?

    public var keyPairName: String?

    public var logPath: String?

    public var machineType: String?

    public var masterPwd: String?

    public var metaStoreConf: String?

    public var metaStoreType: String?

    public var name: String?

    public var netType: String?

    public var period: Int32?

    public var promotionInfo: [CreateClusterV2Request.PromotionInfo]?

    public var regionId: String?

    public var relatedClusterId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var securityGroupName: String?

    public var serviceInfo: [CreateClusterV2Request.ServiceInfo]?

    public var tag: [CreateClusterV2Request.Tag]?

    public var useCustomHiveMetaDB: Bool?

    public var useLocalMetaDb: Bool?

    public var userDefinedEmrEcsRole: String?

    public var userInfo: [CreateClusterV2Request.UserInfo]?

    public var vSwitchId: String?

    public var vpcId: String?

    public var whiteListType: String?

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
        if self.authorizeContent != nil {
            map["AuthorizeContent"] = self.authorizeContent!
        }
        if self.auto != nil {
            map["Auto"] = self.auto!
        }
        if self.autoPayOrder != nil {
            map["AutoPayOrder"] = self.autoPayOrder!
        }
        if self.bootstrapAction != nil {
            var tmp : [Any] = []
            for k in self.bootstrapAction! {
                tmp.append(k.toMap())
            }
            map["BootstrapAction"] = tmp
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clickHouseConf != nil {
            map["ClickHouseConf"] = self.clickHouseConf!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.config != nil {
            var tmp : [Any] = []
            for k in self.config! {
                tmp.append(k.toMap())
            }
            map["Config"] = tmp
        }
        if self.configurations != nil {
            map["Configurations"] = self.configurations!
        }
        if self.depositType != nil {
            map["DepositType"] = self.depositType!
        }
        if self.emrVer != nil {
            map["EmrVer"] = self.emrVer!
        }
        if self.enableEas != nil {
            map["EnableEas"] = self.enableEas!
        }
        if self.enableHighAvailability != nil {
            map["EnableHighAvailability"] = self.enableHighAvailability!
        }
        if self.enableSsh != nil {
            map["EnableSsh"] = self.enableSsh!
        }
        if self.extraAttributes != nil {
            map["ExtraAttributes"] = self.extraAttributes!
        }
        if self.hostComponentInfo != nil {
            var tmp : [Any] = []
            for k in self.hostComponentInfo! {
                tmp.append(k.toMap())
            }
            map["HostComponentInfo"] = tmp
        }
        if self.hostGroup != nil {
            var tmp : [Any] = []
            for k in self.hostGroup! {
                tmp.append(k.toMap())
            }
            map["HostGroup"] = tmp
        }
        if self.initCustomHiveMetaDB != nil {
            map["InitCustomHiveMetaDB"] = self.initCustomHiveMetaDB!
        }
        if self.instanceGeneration != nil {
            map["InstanceGeneration"] = self.instanceGeneration!
        }
        if self.isOpenPublicIp != nil {
            map["IsOpenPublicIp"] = self.isOpenPublicIp!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.logPath != nil {
            map["LogPath"] = self.logPath!
        }
        if self.machineType != nil {
            map["MachineType"] = self.machineType!
        }
        if self.masterPwd != nil {
            map["MasterPwd"] = self.masterPwd!
        }
        if self.metaStoreConf != nil {
            map["MetaStoreConf"] = self.metaStoreConf!
        }
        if self.metaStoreType != nil {
            map["MetaStoreType"] = self.metaStoreType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.promotionInfo != nil {
            var tmp : [Any] = []
            for k in self.promotionInfo! {
                tmp.append(k.toMap())
            }
            map["PromotionInfo"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relatedClusterId != nil {
            map["RelatedClusterId"] = self.relatedClusterId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.securityGroupName != nil {
            map["SecurityGroupName"] = self.securityGroupName!
        }
        if self.serviceInfo != nil {
            var tmp : [Any] = []
            for k in self.serviceInfo! {
                tmp.append(k.toMap())
            }
            map["ServiceInfo"] = tmp
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.useCustomHiveMetaDB != nil {
            map["UseCustomHiveMetaDB"] = self.useCustomHiveMetaDB!
        }
        if self.useLocalMetaDb != nil {
            map["UseLocalMetaDb"] = self.useLocalMetaDb!
        }
        if self.userDefinedEmrEcsRole != nil {
            map["UserDefinedEmrEcsRole"] = self.userDefinedEmrEcsRole!
        }
        if self.userInfo != nil {
            var tmp : [Any] = []
            for k in self.userInfo! {
                tmp.append(k.toMap())
            }
            map["UserInfo"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.whiteListType != nil {
            map["WhiteListType"] = self.whiteListType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizeContent") {
            self.authorizeContent = dict["AuthorizeContent"] as! String
        }
        if dict.keys.contains("Auto") {
            self.auto = dict["Auto"] as! Bool
        }
        if dict.keys.contains("AutoPayOrder") {
            self.autoPayOrder = dict["AutoPayOrder"] as! Bool
        }
        if dict.keys.contains("BootstrapAction") {
            self.bootstrapAction = dict["BootstrapAction"] as! [CreateClusterV2Request.BootstrapAction]
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClickHouseConf") {
            self.clickHouseConf = dict["ClickHouseConf"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! [CreateClusterV2Request.Config]
        }
        if dict.keys.contains("Configurations") {
            self.configurations = dict["Configurations"] as! String
        }
        if dict.keys.contains("DepositType") {
            self.depositType = dict["DepositType"] as! String
        }
        if dict.keys.contains("EmrVer") {
            self.emrVer = dict["EmrVer"] as! String
        }
        if dict.keys.contains("EnableEas") {
            self.enableEas = dict["EnableEas"] as! Bool
        }
        if dict.keys.contains("EnableHighAvailability") {
            self.enableHighAvailability = dict["EnableHighAvailability"] as! Bool
        }
        if dict.keys.contains("EnableSsh") {
            self.enableSsh = dict["EnableSsh"] as! Bool
        }
        if dict.keys.contains("ExtraAttributes") {
            self.extraAttributes = dict["ExtraAttributes"] as! String
        }
        if dict.keys.contains("HostComponentInfo") {
            self.hostComponentInfo = dict["HostComponentInfo"] as! [CreateClusterV2Request.HostComponentInfo]
        }
        if dict.keys.contains("HostGroup") {
            self.hostGroup = dict["HostGroup"] as! [CreateClusterV2Request.HostGroup]
        }
        if dict.keys.contains("InitCustomHiveMetaDB") {
            self.initCustomHiveMetaDB = dict["InitCustomHiveMetaDB"] as! Bool
        }
        if dict.keys.contains("InstanceGeneration") {
            self.instanceGeneration = dict["InstanceGeneration"] as! String
        }
        if dict.keys.contains("IsOpenPublicIp") {
            self.isOpenPublicIp = dict["IsOpenPublicIp"] as! Bool
        }
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("LogPath") {
            self.logPath = dict["LogPath"] as! String
        }
        if dict.keys.contains("MachineType") {
            self.machineType = dict["MachineType"] as! String
        }
        if dict.keys.contains("MasterPwd") {
            self.masterPwd = dict["MasterPwd"] as! String
        }
        if dict.keys.contains("MetaStoreConf") {
            self.metaStoreConf = dict["MetaStoreConf"] as! String
        }
        if dict.keys.contains("MetaStoreType") {
            self.metaStoreType = dict["MetaStoreType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetType") {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PromotionInfo") {
            self.promotionInfo = dict["PromotionInfo"] as! [CreateClusterV2Request.PromotionInfo]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RelatedClusterId") {
            self.relatedClusterId = dict["RelatedClusterId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupName") {
            self.securityGroupName = dict["SecurityGroupName"] as! String
        }
        if dict.keys.contains("ServiceInfo") {
            self.serviceInfo = dict["ServiceInfo"] as! [CreateClusterV2Request.ServiceInfo]
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateClusterV2Request.Tag]
        }
        if dict.keys.contains("UseCustomHiveMetaDB") {
            self.useCustomHiveMetaDB = dict["UseCustomHiveMetaDB"] as! Bool
        }
        if dict.keys.contains("UseLocalMetaDb") {
            self.useLocalMetaDb = dict["UseLocalMetaDb"] as! Bool
        }
        if dict.keys.contains("UserDefinedEmrEcsRole") {
            self.userDefinedEmrEcsRole = dict["UserDefinedEmrEcsRole"] as! String
        }
        if dict.keys.contains("UserInfo") {
            self.userInfo = dict["UserInfo"] as! [CreateClusterV2Request.UserInfo]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WhiteListType") {
            self.whiteListType = dict["WhiteListType"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateClusterV2ResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var coreOrderId: String?

    public var emrOrderId: String?

    public var masterOrderId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coreOrderId != nil {
            map["CoreOrderId"] = self.coreOrderId!
        }
        if self.emrOrderId != nil {
            map["EmrOrderId"] = self.emrOrderId!
        }
        if self.masterOrderId != nil {
            map["MasterOrderId"] = self.masterOrderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CoreOrderId") {
            self.coreOrderId = dict["CoreOrderId"] as! String
        }
        if dict.keys.contains("EmrOrderId") {
            self.emrOrderId = dict["EmrOrderId"] as! String
        }
        if dict.keys.contains("MasterOrderId") {
            self.masterOrderId = dict["MasterOrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateClusterV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterV2ResponseBody?

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
            var model = CreateClusterV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowRequest : Tea.TeaModel {
    public var alertConf: String?

    public var alertDingDingGroupBizId: String?

    public var alertUserGroupBizId: String?

    public var application: String?

    public var clientToken: String?

    public var clusterId: String?

    public var createCluster: Bool?

    public var cronExpression: String?

    public var description_: String?

    public var endSchedule: Int64?

    public var hostName: String?

    public var name: String?

    public var namespace: String?

    public var parentCategory: String?

    public var parentFlowList: String?

    public var projectId: String?

    public var regionId: String?

    public var startSchedule: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertConf != nil {
            map["AlertConf"] = self.alertConf!
        }
        if self.alertDingDingGroupBizId != nil {
            map["AlertDingDingGroupBizId"] = self.alertDingDingGroupBizId!
        }
        if self.alertUserGroupBizId != nil {
            map["AlertUserGroupBizId"] = self.alertUserGroupBizId!
        }
        if self.application != nil {
            map["Application"] = self.application!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.createCluster != nil {
            map["CreateCluster"] = self.createCluster!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endSchedule != nil {
            map["EndSchedule"] = self.endSchedule!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.parentCategory != nil {
            map["ParentCategory"] = self.parentCategory!
        }
        if self.parentFlowList != nil {
            map["ParentFlowList"] = self.parentFlowList!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startSchedule != nil {
            map["StartSchedule"] = self.startSchedule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertConf") {
            self.alertConf = dict["AlertConf"] as! String
        }
        if dict.keys.contains("AlertDingDingGroupBizId") {
            self.alertDingDingGroupBizId = dict["AlertDingDingGroupBizId"] as! String
        }
        if dict.keys.contains("AlertUserGroupBizId") {
            self.alertUserGroupBizId = dict["AlertUserGroupBizId"] as! String
        }
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CreateCluster") {
            self.createCluster = dict["CreateCluster"] as! Bool
        }
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndSchedule") {
            self.endSchedule = dict["EndSchedule"] as! Int64
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ParentCategory") {
            self.parentCategory = dict["ParentCategory"] as! String
        }
        if dict.keys.contains("ParentFlowList") {
            self.parentFlowList = dict["ParentFlowList"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartSchedule") {
            self.startSchedule = dict["StartSchedule"] as! Int64
        }
    }
}

public class CreateFlowResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowResponseBody?

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
            var model = CreateFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowCategoryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var name: String?

    public var parentId: String?

    public var projectId: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateFlowCategoryResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFlowCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowCategoryResponseBody?

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
            var model = CreateFlowCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowJobRequest : Tea.TeaModel {
    public class ResourceList : Tea.TeaModel {
        public var alias: String?

        public var path: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public var adhoc: Bool?

    public var alertConf: String?

    public var clientToken: String?

    public var clusterId: String?

    public var customVariables: String?

    public var description_: String?

    public var envConf: String?

    public var failAct: String?

    public var mode: String?

    public var monitorConf: String?

    public var name: String?

    public var paramConf: String?

    public var params: String?

    public var parentCategory: String?

    public var projectId: String?

    public var regionId: String?

    public var resourceList: [CreateFlowJobRequest.ResourceList]?

    public var retryPolicy: String?

    public var runConf: String?

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
        if self.adhoc != nil {
            map["Adhoc"] = self.adhoc!
        }
        if self.alertConf != nil {
            map["AlertConf"] = self.alertConf!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.customVariables != nil {
            map["CustomVariables"] = self.customVariables!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.envConf != nil {
            map["EnvConf"] = self.envConf!
        }
        if self.failAct != nil {
            map["FailAct"] = self.failAct!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.monitorConf != nil {
            map["MonitorConf"] = self.monitorConf!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paramConf != nil {
            map["ParamConf"] = self.paramConf!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.parentCategory != nil {
            map["ParentCategory"] = self.parentCategory!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceList != nil {
            var tmp : [Any] = []
            for k in self.resourceList! {
                tmp.append(k.toMap())
            }
            map["ResourceList"] = tmp
        }
        if self.retryPolicy != nil {
            map["RetryPolicy"] = self.retryPolicy!
        }
        if self.runConf != nil {
            map["RunConf"] = self.runConf!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Adhoc") {
            self.adhoc = dict["Adhoc"] as! Bool
        }
        if dict.keys.contains("AlertConf") {
            self.alertConf = dict["AlertConf"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CustomVariables") {
            self.customVariables = dict["CustomVariables"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnvConf") {
            self.envConf = dict["EnvConf"] as! String
        }
        if dict.keys.contains("FailAct") {
            self.failAct = dict["FailAct"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("MonitorConf") {
            self.monitorConf = dict["MonitorConf"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParamConf") {
            self.paramConf = dict["ParamConf"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("ParentCategory") {
            self.parentCategory = dict["ParentCategory"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceList") {
            self.resourceList = dict["ResourceList"] as! [CreateFlowJobRequest.ResourceList]
        }
        if dict.keys.contains("RetryPolicy") {
            self.retryPolicy = dict["RetryPolicy"] as! String
        }
        if dict.keys.contains("RunConf") {
            self.runConf = dict["RunConf"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateFlowJobResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFlowJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowJobResponseBody?

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
            var model = CreateFlowJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowProjectRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var productType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateFlowProjectResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFlowProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowProjectResponseBody?

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
            var model = CreateFlowProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowProjectUserRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var clientToken: String?

    public var projectId: String?

    public var regionId: String?

    public var user: [CreateFlowProjectUserRequest.User]?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! [CreateFlowProjectUserRequest.User]
        }
    }
}

public class CreateFlowProjectUserResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFlowProjectUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowProjectUserResponseBody?

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
            var model = CreateFlowProjectUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteFlowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowResponseBody?

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
            var model = DeleteFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowCategoryRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteFlowCategoryResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFlowCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowCategoryResponseBody?

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
            var model = DeleteFlowCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowProjectRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteFlowProjectResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFlowProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowProjectResponseBody?

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
            var model = DeleteFlowProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowProjectUserRequest : Tea.TeaModel {
    public var projectId: String?

    public var regionId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteFlowProjectUserResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFlowProjectUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowProjectUserResponseBody?

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
            var model = DeleteFlowProjectUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterV2Request : Tea.TeaModel {
    public var id: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeClusterV2ResponseBody : Tea.TeaModel {
    public class ClusterInfo : Tea.TeaModel {
        public class AccessInfo : Tea.TeaModel {
            public class ZKLinks : Tea.TeaModel {
                public class ZKLink : Tea.TeaModel {
                    public var link: String?

                    public var port: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.link != nil {
                            map["Link"] = self.link!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Link") {
                            self.link = dict["Link"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! String
                        }
                    }
                }
                public var ZKLink: [DescribeClusterV2ResponseBody.ClusterInfo.AccessInfo.ZKLinks.ZKLink]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ZKLink != nil {
                        var tmp : [Any] = []
                        for k in self.ZKLink! {
                            tmp.append(k.toMap())
                        }
                        map["ZKLink"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ZKLink") {
                        self.ZKLink = dict["ZKLink"] as! [DescribeClusterV2ResponseBody.ClusterInfo.AccessInfo.ZKLinks.ZKLink]
                    }
                }
            }
            public var ZKLinks: DescribeClusterV2ResponseBody.ClusterInfo.AccessInfo.ZKLinks?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ZKLinks?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ZKLinks != nil {
                    map["ZKLinks"] = self.ZKLinks?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ZKLinks") {
                    var model = DescribeClusterV2ResponseBody.ClusterInfo.AccessInfo.ZKLinks()
                    model.fromMap(dict["ZKLinks"] as! [String: Any])
                    self.ZKLinks = model
                }
            }
        }
        public class BootstrapActionList : Tea.TeaModel {
            public class BootstrapAction : Tea.TeaModel {
                public var arg: String?

                public var name: String?

                public var path: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arg != nil {
                        map["Arg"] = self.arg!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Arg") {
                        self.arg = dict["Arg"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                }
            }
            public var bootstrapAction: [DescribeClusterV2ResponseBody.ClusterInfo.BootstrapActionList.BootstrapAction]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bootstrapAction != nil {
                    var tmp : [Any] = []
                    for k in self.bootstrapAction! {
                        tmp.append(k.toMap())
                    }
                    map["BootstrapAction"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BootstrapAction") {
                    self.bootstrapAction = dict["BootstrapAction"] as! [DescribeClusterV2ResponseBody.ClusterInfo.BootstrapActionList.BootstrapAction]
                }
            }
        }
        public class FailReason : Tea.TeaModel {
            public var errorCode: String?

            public var errorMsg: String?

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
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMsg") {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("RequestId") {
                    self.requestId = dict["RequestId"] as! String
                }
            }
        }
        public class GatewayClusterInfoList : Tea.TeaModel {
            public class GatewayClusterInfo : Tea.TeaModel {
                public var clusterId: String?

                public var clusterName: String?

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
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.clusterName != nil {
                        map["ClusterName"] = self.clusterName!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
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
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var gatewayClusterInfo: [DescribeClusterV2ResponseBody.ClusterInfo.GatewayClusterInfoList.GatewayClusterInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayClusterInfo != nil {
                    var tmp : [Any] = []
                    for k in self.gatewayClusterInfo! {
                        tmp.append(k.toMap())
                    }
                    map["GatewayClusterInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GatewayClusterInfo") {
                    self.gatewayClusterInfo = dict["GatewayClusterInfo"] as! [DescribeClusterV2ResponseBody.ClusterInfo.GatewayClusterInfoList.GatewayClusterInfo]
                }
            }
        }
        public class HostGroupList : Tea.TeaModel {
            public class HostGroup : Tea.TeaModel {
                public class Nodes : Tea.TeaModel {
                    public class Node : Tea.TeaModel {
                        public class DaemonInfos : Tea.TeaModel {
                            public class DaemonInfo : Tea.TeaModel {
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
                                    if self.name != nil {
                                        map["Name"] = self.name!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Name") {
                                        self.name = dict["Name"] as! String
                                    }
                                }
                            }
                            public var daemonInfo: [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DaemonInfos.DaemonInfo]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.daemonInfo != nil {
                                    var tmp : [Any] = []
                                    for k in self.daemonInfo! {
                                        tmp.append(k.toMap())
                                    }
                                    map["DaemonInfo"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("DaemonInfo") {
                                    self.daemonInfo = dict["DaemonInfo"] as! [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DaemonInfos.DaemonInfo]
                                }
                            }
                        }
                        public class DiskInfos : Tea.TeaModel {
                            public class DiskInfo : Tea.TeaModel {
                                public var device: String?

                                public var diskId: String?

                                public var diskName: String?

                                public var size: Int32?

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
                                    if self.device != nil {
                                        map["Device"] = self.device!
                                    }
                                    if self.diskId != nil {
                                        map["DiskId"] = self.diskId!
                                    }
                                    if self.diskName != nil {
                                        map["DiskName"] = self.diskName!
                                    }
                                    if self.size != nil {
                                        map["Size"] = self.size!
                                    }
                                    if self.type != nil {
                                        map["Type"] = self.type!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Device") {
                                        self.device = dict["Device"] as! String
                                    }
                                    if dict.keys.contains("DiskId") {
                                        self.diskId = dict["DiskId"] as! String
                                    }
                                    if dict.keys.contains("DiskName") {
                                        self.diskName = dict["DiskName"] as! String
                                    }
                                    if dict.keys.contains("Size") {
                                        self.size = dict["Size"] as! Int32
                                    }
                                    if dict.keys.contains("Type") {
                                        self.type = dict["Type"] as! String
                                    }
                                }
                            }
                            public var diskInfo: [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DiskInfos.DiskInfo]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.diskInfo != nil {
                                    var tmp : [Any] = []
                                    for k in self.diskInfo! {
                                        tmp.append(k.toMap())
                                    }
                                    map["DiskInfo"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("DiskInfo") {
                                    self.diskInfo = dict["DiskInfo"] as! [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DiskInfos.DiskInfo]
                                }
                            }
                        }
                        public var createTime: String?

                        public var daemonInfos: DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DaemonInfos?

                        public var diskInfos: DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DiskInfos?

                        public var emrExpiredTime: String?

                        public var expiredTime: String?

                        public var innerIp: String?

                        public var instanceId: String?

                        public var pubIp: String?

                        public var status: String?

                        public var supportIpV6: Bool?

                        public var zoneId: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.daemonInfos?.validate()
                            try self.diskInfos?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.createTime != nil {
                                map["CreateTime"] = self.createTime!
                            }
                            if self.daemonInfos != nil {
                                map["DaemonInfos"] = self.daemonInfos?.toMap()
                            }
                            if self.diskInfos != nil {
                                map["DiskInfos"] = self.diskInfos?.toMap()
                            }
                            if self.emrExpiredTime != nil {
                                map["EmrExpiredTime"] = self.emrExpiredTime!
                            }
                            if self.expiredTime != nil {
                                map["ExpiredTime"] = self.expiredTime!
                            }
                            if self.innerIp != nil {
                                map["InnerIp"] = self.innerIp!
                            }
                            if self.instanceId != nil {
                                map["InstanceId"] = self.instanceId!
                            }
                            if self.pubIp != nil {
                                map["PubIp"] = self.pubIp!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            if self.supportIpV6 != nil {
                                map["SupportIpV6"] = self.supportIpV6!
                            }
                            if self.zoneId != nil {
                                map["ZoneId"] = self.zoneId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CreateTime") {
                                self.createTime = dict["CreateTime"] as! String
                            }
                            if dict.keys.contains("DaemonInfos") {
                                var model = DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DaemonInfos()
                                model.fromMap(dict["DaemonInfos"] as! [String: Any])
                                self.daemonInfos = model
                            }
                            if dict.keys.contains("DiskInfos") {
                                var model = DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node.DiskInfos()
                                model.fromMap(dict["DiskInfos"] as! [String: Any])
                                self.diskInfos = model
                            }
                            if dict.keys.contains("EmrExpiredTime") {
                                self.emrExpiredTime = dict["EmrExpiredTime"] as! String
                            }
                            if dict.keys.contains("ExpiredTime") {
                                self.expiredTime = dict["ExpiredTime"] as! String
                            }
                            if dict.keys.contains("InnerIp") {
                                self.innerIp = dict["InnerIp"] as! String
                            }
                            if dict.keys.contains("InstanceId") {
                                self.instanceId = dict["InstanceId"] as! String
                            }
                            if dict.keys.contains("PubIp") {
                                self.pubIp = dict["PubIp"] as! String
                            }
                            if dict.keys.contains("Status") {
                                self.status = dict["Status"] as! String
                            }
                            if dict.keys.contains("SupportIpV6") {
                                self.supportIpV6 = dict["SupportIpV6"] as! Bool
                            }
                            if dict.keys.contains("ZoneId") {
                                self.zoneId = dict["ZoneId"] as! String
                            }
                        }
                    }
                    public var node: [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.node != nil {
                            var tmp : [Any] = []
                            for k in self.node! {
                                tmp.append(k.toMap())
                            }
                            map["Node"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Node") {
                            self.node = dict["Node"] as! [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes.Node]
                        }
                    }
                }
                public var bandWidth: String?

                public var chargeType: String?

                public var cpuCore: Int32?

                public var diskCapacity: Int32?

                public var diskCount: Int32?

                public var diskType: String?

                public var hostGroupChangeStatus: String?

                public var hostGroupChangeType: String?

                public var hostGroupId: String?

                public var hostGroupName: String?

                public var hostGroupSubType: String?

                public var hostGroupType: String?

                public var instanceType: String?

                public var lockReason: String?

                public var lockType: String?

                public var memoryCapacity: Int32?

                public var nodeCount: Int32?

                public var nodes: DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes?

                public var period: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nodes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bandWidth != nil {
                        map["BandWidth"] = self.bandWidth!
                    }
                    if self.chargeType != nil {
                        map["ChargeType"] = self.chargeType!
                    }
                    if self.cpuCore != nil {
                        map["CpuCore"] = self.cpuCore!
                    }
                    if self.diskCapacity != nil {
                        map["DiskCapacity"] = self.diskCapacity!
                    }
                    if self.diskCount != nil {
                        map["DiskCount"] = self.diskCount!
                    }
                    if self.diskType != nil {
                        map["DiskType"] = self.diskType!
                    }
                    if self.hostGroupChangeStatus != nil {
                        map["HostGroupChangeStatus"] = self.hostGroupChangeStatus!
                    }
                    if self.hostGroupChangeType != nil {
                        map["HostGroupChangeType"] = self.hostGroupChangeType!
                    }
                    if self.hostGroupId != nil {
                        map["HostGroupId"] = self.hostGroupId!
                    }
                    if self.hostGroupName != nil {
                        map["HostGroupName"] = self.hostGroupName!
                    }
                    if self.hostGroupSubType != nil {
                        map["HostGroupSubType"] = self.hostGroupSubType!
                    }
                    if self.hostGroupType != nil {
                        map["HostGroupType"] = self.hostGroupType!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.lockReason != nil {
                        map["LockReason"] = self.lockReason!
                    }
                    if self.lockType != nil {
                        map["LockType"] = self.lockType!
                    }
                    if self.memoryCapacity != nil {
                        map["MemoryCapacity"] = self.memoryCapacity!
                    }
                    if self.nodeCount != nil {
                        map["NodeCount"] = self.nodeCount!
                    }
                    if self.nodes != nil {
                        map["Nodes"] = self.nodes?.toMap()
                    }
                    if self.period != nil {
                        map["Period"] = self.period!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BandWidth") {
                        self.bandWidth = dict["BandWidth"] as! String
                    }
                    if dict.keys.contains("ChargeType") {
                        self.chargeType = dict["ChargeType"] as! String
                    }
                    if dict.keys.contains("CpuCore") {
                        self.cpuCore = dict["CpuCore"] as! Int32
                    }
                    if dict.keys.contains("DiskCapacity") {
                        self.diskCapacity = dict["DiskCapacity"] as! Int32
                    }
                    if dict.keys.contains("DiskCount") {
                        self.diskCount = dict["DiskCount"] as! Int32
                    }
                    if dict.keys.contains("DiskType") {
                        self.diskType = dict["DiskType"] as! String
                    }
                    if dict.keys.contains("HostGroupChangeStatus") {
                        self.hostGroupChangeStatus = dict["HostGroupChangeStatus"] as! String
                    }
                    if dict.keys.contains("HostGroupChangeType") {
                        self.hostGroupChangeType = dict["HostGroupChangeType"] as! String
                    }
                    if dict.keys.contains("HostGroupId") {
                        self.hostGroupId = dict["HostGroupId"] as! String
                    }
                    if dict.keys.contains("HostGroupName") {
                        self.hostGroupName = dict["HostGroupName"] as! String
                    }
                    if dict.keys.contains("HostGroupSubType") {
                        self.hostGroupSubType = dict["HostGroupSubType"] as! String
                    }
                    if dict.keys.contains("HostGroupType") {
                        self.hostGroupType = dict["HostGroupType"] as! String
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                    if dict.keys.contains("LockReason") {
                        self.lockReason = dict["LockReason"] as! String
                    }
                    if dict.keys.contains("LockType") {
                        self.lockType = dict["LockType"] as! String
                    }
                    if dict.keys.contains("MemoryCapacity") {
                        self.memoryCapacity = dict["MemoryCapacity"] as! Int32
                    }
                    if dict.keys.contains("NodeCount") {
                        self.nodeCount = dict["NodeCount"] as! Int32
                    }
                    if dict.keys.contains("Nodes") {
                        var model = DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup.Nodes()
                        model.fromMap(dict["Nodes"] as! [String: Any])
                        self.nodes = model
                    }
                    if dict.keys.contains("Period") {
                        self.period = dict["Period"] as! String
                    }
                }
            }
            public var hostGroup: [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostGroup != nil {
                    var tmp : [Any] = []
                    for k in self.hostGroup! {
                        tmp.append(k.toMap())
                    }
                    map["HostGroup"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostGroup") {
                    self.hostGroup = dict["HostGroup"] as! [DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList.HostGroup]
                }
            }
        }
        public class HostPoolInfo : Tea.TeaModel {
            public var hpBizId: String?

            public var hpName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hpBizId != nil {
                    map["HpBizId"] = self.hpBizId!
                }
                if self.hpName != nil {
                    map["HpName"] = self.hpName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HpBizId") {
                    self.hpBizId = dict["HpBizId"] as! String
                }
                if dict.keys.contains("HpName") {
                    self.hpName = dict["HpName"] as! String
                }
            }
        }
        public class RelateClusterInfo : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
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
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class SoftwareInfo : Tea.TeaModel {
            public class Softwares : Tea.TeaModel {
                public class Software : Tea.TeaModel {
                    public var displayName: String?

                    public var name: String?

                    public var onlyDisplay: Bool?

                    public var startTpe: Int32?

                    public var version: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.displayName != nil {
                            map["DisplayName"] = self.displayName!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.onlyDisplay != nil {
                            map["OnlyDisplay"] = self.onlyDisplay!
                        }
                        if self.startTpe != nil {
                            map["StartTpe"] = self.startTpe!
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayName") {
                            self.displayName = dict["DisplayName"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("OnlyDisplay") {
                            self.onlyDisplay = dict["OnlyDisplay"] as! Bool
                        }
                        if dict.keys.contains("StartTpe") {
                            self.startTpe = dict["StartTpe"] as! Int32
                        }
                        if dict.keys.contains("Version") {
                            self.version = dict["Version"] as! String
                        }
                    }
                }
                public var software: [DescribeClusterV2ResponseBody.ClusterInfo.SoftwareInfo.Softwares.Software]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.software != nil {
                        var tmp : [Any] = []
                        for k in self.software! {
                            tmp.append(k.toMap())
                        }
                        map["Software"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Software") {
                        self.software = dict["Software"] as! [DescribeClusterV2ResponseBody.ClusterInfo.SoftwareInfo.Softwares.Software]
                    }
                }
            }
            public var clusterType: String?

            public var emrVer: String?

            public var softwares: DescribeClusterV2ResponseBody.ClusterInfo.SoftwareInfo.Softwares?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.softwares?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.emrVer != nil {
                    map["EmrVer"] = self.emrVer!
                }
                if self.softwares != nil {
                    map["Softwares"] = self.softwares?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterType") {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("EmrVer") {
                    self.emrVer = dict["EmrVer"] as! String
                }
                if dict.keys.contains("Softwares") {
                    var model = DescribeClusterV2ResponseBody.ClusterInfo.SoftwareInfo.Softwares()
                    model.fromMap(dict["Softwares"] as! [String: Any])
                    self.softwares = model
                }
            }
        }
        public var accessInfo: DescribeClusterV2ResponseBody.ClusterInfo.AccessInfo?

        public var autoScalingAllowed: Bool?

        public var autoScalingByLoadAllowed: Bool?

        public var autoScalingEnable: Bool?

        public var autoScalingSpotWithLimitAllowed: Bool?

        public var autoScalingVersion: String?

        public var autoScalingWithGraceAllowed: Bool?

        public var bootstrapActionList: DescribeClusterV2ResponseBody.ClusterInfo.BootstrapActionList?

        public var bootstrapFailed: Bool?

        public var chargeType: String?

        public var configurations: String?

        public var coreNodeInService: Int32?

        public var coreNodeTotal: Int32?

        public var createResource: String?

        public var createType: String?

        public var depositType: String?

        public var easEnable: Bool?

        public var expiredTime: Int64?

        public var extraInfo: String?

        public var failReason: DescribeClusterV2ResponseBody.ClusterInfo.FailReason?

        public var gatewayClusterIds: String?

        public var gatewayClusterInfoList: DescribeClusterV2ResponseBody.ClusterInfo.GatewayClusterInfoList?

        public var highAvailabilityEnable: Bool?

        public var hostGroupList: DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList?

        public var hostPoolInfo: DescribeClusterV2ResponseBody.ClusterInfo.HostPoolInfo?

        public var id: String?

        public var imageId: String?

        public var instanceGeneration: String?

        public var ioOptimized: Bool?

        public var k8sClusterId: String?

        public var localMetaDb: Bool?

        public var logEnable: Bool?

        public var logPath: String?

        public var machineType: String?

        public var masterNodeInService: Int32?

        public var masterNodeTotal: Int32?

        public var metaStoreType: String?

        public var name: String?

        public var netType: String?

        public var period: Int32?

        public var regionId: String?

        public var relateClusterId: String?

        public var relateClusterInfo: DescribeClusterV2ResponseBody.ClusterInfo.RelateClusterInfo?

        public var resizeDiskEnable: Bool?

        public var runningTime: Int32?

        public var securityGroupId: String?

        public var securityGroupName: String?

        public var showSoftwareInterface: Bool?

        public var softwareInfo: DescribeClusterV2ResponseBody.ClusterInfo.SoftwareInfo?

        public var startTime: Int64?

        public var status: String?

        public var stopTime: Int64?

        public var taskNodeInService: Int32?

        public var taskNodeTotal: Int32?

        public var userDefinedEmrEcsRole: String?

        public var userId: String?

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
            try self.accessInfo?.validate()
            try self.bootstrapActionList?.validate()
            try self.failReason?.validate()
            try self.gatewayClusterInfoList?.validate()
            try self.hostGroupList?.validate()
            try self.hostPoolInfo?.validate()
            try self.relateClusterInfo?.validate()
            try self.softwareInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessInfo != nil {
                map["AccessInfo"] = self.accessInfo?.toMap()
            }
            if self.autoScalingAllowed != nil {
                map["AutoScalingAllowed"] = self.autoScalingAllowed!
            }
            if self.autoScalingByLoadAllowed != nil {
                map["AutoScalingByLoadAllowed"] = self.autoScalingByLoadAllowed!
            }
            if self.autoScalingEnable != nil {
                map["AutoScalingEnable"] = self.autoScalingEnable!
            }
            if self.autoScalingSpotWithLimitAllowed != nil {
                map["AutoScalingSpotWithLimitAllowed"] = self.autoScalingSpotWithLimitAllowed!
            }
            if self.autoScalingVersion != nil {
                map["AutoScalingVersion"] = self.autoScalingVersion!
            }
            if self.autoScalingWithGraceAllowed != nil {
                map["AutoScalingWithGraceAllowed"] = self.autoScalingWithGraceAllowed!
            }
            if self.bootstrapActionList != nil {
                map["BootstrapActionList"] = self.bootstrapActionList?.toMap()
            }
            if self.bootstrapFailed != nil {
                map["BootstrapFailed"] = self.bootstrapFailed!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.configurations != nil {
                map["Configurations"] = self.configurations!
            }
            if self.coreNodeInService != nil {
                map["CoreNodeInService"] = self.coreNodeInService!
            }
            if self.coreNodeTotal != nil {
                map["CoreNodeTotal"] = self.coreNodeTotal!
            }
            if self.createResource != nil {
                map["CreateResource"] = self.createResource!
            }
            if self.createType != nil {
                map["CreateType"] = self.createType!
            }
            if self.depositType != nil {
                map["DepositType"] = self.depositType!
            }
            if self.easEnable != nil {
                map["EasEnable"] = self.easEnable!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.failReason != nil {
                map["FailReason"] = self.failReason?.toMap()
            }
            if self.gatewayClusterIds != nil {
                map["GatewayClusterIds"] = self.gatewayClusterIds!
            }
            if self.gatewayClusterInfoList != nil {
                map["GatewayClusterInfoList"] = self.gatewayClusterInfoList?.toMap()
            }
            if self.highAvailabilityEnable != nil {
                map["HighAvailabilityEnable"] = self.highAvailabilityEnable!
            }
            if self.hostGroupList != nil {
                map["HostGroupList"] = self.hostGroupList?.toMap()
            }
            if self.hostPoolInfo != nil {
                map["HostPoolInfo"] = self.hostPoolInfo?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.instanceGeneration != nil {
                map["InstanceGeneration"] = self.instanceGeneration!
            }
            if self.ioOptimized != nil {
                map["IoOptimized"] = self.ioOptimized!
            }
            if self.k8sClusterId != nil {
                map["K8sClusterId"] = self.k8sClusterId!
            }
            if self.localMetaDb != nil {
                map["LocalMetaDb"] = self.localMetaDb!
            }
            if self.logEnable != nil {
                map["LogEnable"] = self.logEnable!
            }
            if self.logPath != nil {
                map["LogPath"] = self.logPath!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.masterNodeInService != nil {
                map["MasterNodeInService"] = self.masterNodeInService!
            }
            if self.masterNodeTotal != nil {
                map["MasterNodeTotal"] = self.masterNodeTotal!
            }
            if self.metaStoreType != nil {
                map["MetaStoreType"] = self.metaStoreType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relateClusterId != nil {
                map["RelateClusterId"] = self.relateClusterId!
            }
            if self.relateClusterInfo != nil {
                map["RelateClusterInfo"] = self.relateClusterInfo?.toMap()
            }
            if self.resizeDiskEnable != nil {
                map["ResizeDiskEnable"] = self.resizeDiskEnable!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.securityGroupName != nil {
                map["SecurityGroupName"] = self.securityGroupName!
            }
            if self.showSoftwareInterface != nil {
                map["ShowSoftwareInterface"] = self.showSoftwareInterface!
            }
            if self.softwareInfo != nil {
                map["SoftwareInfo"] = self.softwareInfo?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stopTime != nil {
                map["StopTime"] = self.stopTime!
            }
            if self.taskNodeInService != nil {
                map["TaskNodeInService"] = self.taskNodeInService!
            }
            if self.taskNodeTotal != nil {
                map["TaskNodeTotal"] = self.taskNodeTotal!
            }
            if self.userDefinedEmrEcsRole != nil {
                map["UserDefinedEmrEcsRole"] = self.userDefinedEmrEcsRole!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessInfo") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.AccessInfo()
                model.fromMap(dict["AccessInfo"] as! [String: Any])
                self.accessInfo = model
            }
            if dict.keys.contains("AutoScalingAllowed") {
                self.autoScalingAllowed = dict["AutoScalingAllowed"] as! Bool
            }
            if dict.keys.contains("AutoScalingByLoadAllowed") {
                self.autoScalingByLoadAllowed = dict["AutoScalingByLoadAllowed"] as! Bool
            }
            if dict.keys.contains("AutoScalingEnable") {
                self.autoScalingEnable = dict["AutoScalingEnable"] as! Bool
            }
            if dict.keys.contains("AutoScalingSpotWithLimitAllowed") {
                self.autoScalingSpotWithLimitAllowed = dict["AutoScalingSpotWithLimitAllowed"] as! Bool
            }
            if dict.keys.contains("AutoScalingVersion") {
                self.autoScalingVersion = dict["AutoScalingVersion"] as! String
            }
            if dict.keys.contains("AutoScalingWithGraceAllowed") {
                self.autoScalingWithGraceAllowed = dict["AutoScalingWithGraceAllowed"] as! Bool
            }
            if dict.keys.contains("BootstrapActionList") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.BootstrapActionList()
                model.fromMap(dict["BootstrapActionList"] as! [String: Any])
                self.bootstrapActionList = model
            }
            if dict.keys.contains("BootstrapFailed") {
                self.bootstrapFailed = dict["BootstrapFailed"] as! Bool
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("Configurations") {
                self.configurations = dict["Configurations"] as! String
            }
            if dict.keys.contains("CoreNodeInService") {
                self.coreNodeInService = dict["CoreNodeInService"] as! Int32
            }
            if dict.keys.contains("CoreNodeTotal") {
                self.coreNodeTotal = dict["CoreNodeTotal"] as! Int32
            }
            if dict.keys.contains("CreateResource") {
                self.createResource = dict["CreateResource"] as! String
            }
            if dict.keys.contains("CreateType") {
                self.createType = dict["CreateType"] as! String
            }
            if dict.keys.contains("DepositType") {
                self.depositType = dict["DepositType"] as! String
            }
            if dict.keys.contains("EasEnable") {
                self.easEnable = dict["EasEnable"] as! Bool
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("ExtraInfo") {
                self.extraInfo = dict["ExtraInfo"] as! String
            }
            if dict.keys.contains("FailReason") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.FailReason()
                model.fromMap(dict["FailReason"] as! [String: Any])
                self.failReason = model
            }
            if dict.keys.contains("GatewayClusterIds") {
                self.gatewayClusterIds = dict["GatewayClusterIds"] as! String
            }
            if dict.keys.contains("GatewayClusterInfoList") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.GatewayClusterInfoList()
                model.fromMap(dict["GatewayClusterInfoList"] as! [String: Any])
                self.gatewayClusterInfoList = model
            }
            if dict.keys.contains("HighAvailabilityEnable") {
                self.highAvailabilityEnable = dict["HighAvailabilityEnable"] as! Bool
            }
            if dict.keys.contains("HostGroupList") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.HostGroupList()
                model.fromMap(dict["HostGroupList"] as! [String: Any])
                self.hostGroupList = model
            }
            if dict.keys.contains("HostPoolInfo") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.HostPoolInfo()
                model.fromMap(dict["HostPoolInfo"] as! [String: Any])
                self.hostPoolInfo = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("InstanceGeneration") {
                self.instanceGeneration = dict["InstanceGeneration"] as! String
            }
            if dict.keys.contains("IoOptimized") {
                self.ioOptimized = dict["IoOptimized"] as! Bool
            }
            if dict.keys.contains("K8sClusterId") {
                self.k8sClusterId = dict["K8sClusterId"] as! String
            }
            if dict.keys.contains("LocalMetaDb") {
                self.localMetaDb = dict["LocalMetaDb"] as! Bool
            }
            if dict.keys.contains("LogEnable") {
                self.logEnable = dict["LogEnable"] as! Bool
            }
            if dict.keys.contains("LogPath") {
                self.logPath = dict["LogPath"] as! String
            }
            if dict.keys.contains("MachineType") {
                self.machineType = dict["MachineType"] as! String
            }
            if dict.keys.contains("MasterNodeInService") {
                self.masterNodeInService = dict["MasterNodeInService"] as! Int32
            }
            if dict.keys.contains("MasterNodeTotal") {
                self.masterNodeTotal = dict["MasterNodeTotal"] as! Int32
            }
            if dict.keys.contains("MetaStoreType") {
                self.metaStoreType = dict["MetaStoreType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NetType") {
                self.netType = dict["NetType"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RelateClusterId") {
                self.relateClusterId = dict["RelateClusterId"] as! String
            }
            if dict.keys.contains("RelateClusterInfo") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.RelateClusterInfo()
                model.fromMap(dict["RelateClusterInfo"] as! [String: Any])
                self.relateClusterInfo = model
            }
            if dict.keys.contains("ResizeDiskEnable") {
                self.resizeDiskEnable = dict["ResizeDiskEnable"] as! Bool
            }
            if dict.keys.contains("RunningTime") {
                self.runningTime = dict["RunningTime"] as! Int32
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("SecurityGroupName") {
                self.securityGroupName = dict["SecurityGroupName"] as! String
            }
            if dict.keys.contains("ShowSoftwareInterface") {
                self.showSoftwareInterface = dict["ShowSoftwareInterface"] as! Bool
            }
            if dict.keys.contains("SoftwareInfo") {
                var model = DescribeClusterV2ResponseBody.ClusterInfo.SoftwareInfo()
                model.fromMap(dict["SoftwareInfo"] as! [String: Any])
                self.softwareInfo = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StopTime") {
                self.stopTime = dict["StopTime"] as! Int64
            }
            if dict.keys.contains("TaskNodeInService") {
                self.taskNodeInService = dict["TaskNodeInService"] as! Int32
            }
            if dict.keys.contains("TaskNodeTotal") {
                self.taskNodeTotal = dict["TaskNodeTotal"] as! Int32
            }
            if dict.keys.contains("UserDefinedEmrEcsRole") {
                self.userDefinedEmrEcsRole = dict["UserDefinedEmrEcsRole"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var clusterInfo: DescribeClusterV2ResponseBody.ClusterInfo?

    public var requestId: String?

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
        if self.clusterInfo != nil {
            map["ClusterInfo"] = self.clusterInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterInfo") {
            var model = DescribeClusterV2ResponseBody.ClusterInfo()
            model.fromMap(dict["ClusterInfo"] as! [String: Any])
            self.clusterInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterV2ResponseBody?

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
            var model = DescribeClusterV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeFlowResponseBody : Tea.TeaModel {
    public class ParentFlowList : Tea.TeaModel {
        public class ParentFlow : Tea.TeaModel {
            public var parentFlowId: String?

            public var parentFlowName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parentFlowId != nil {
                    map["ParentFlowId"] = self.parentFlowId!
                }
                if self.parentFlowName != nil {
                    map["ParentFlowName"] = self.parentFlowName!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParentFlowId") {
                    self.parentFlowId = dict["ParentFlowId"] as! String
                }
                if dict.keys.contains("ParentFlowName") {
                    self.parentFlowName = dict["ParentFlowName"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("ProjectName") {
                    self.projectName = dict["ProjectName"] as! String
                }
            }
        }
        public var parentFlow: [DescribeFlowResponseBody.ParentFlowList.ParentFlow]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parentFlow != nil {
                var tmp : [Any] = []
                for k in self.parentFlow! {
                    tmp.append(k.toMap())
                }
                map["ParentFlow"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParentFlow") {
                self.parentFlow = dict["ParentFlow"] as! [DescribeFlowResponseBody.ParentFlowList.ParentFlow]
            }
        }
    }
    public var alertConf: String?

    public var alertDingDingGroupBizId: String?

    public var alertUserGroupBizId: String?

    public var application: String?

    public var categoryId: String?

    public var clusterId: String?

    public var createCluster: Bool?

    public var cronExpr: String?

    public var description_: String?

    public var editLockDetail: String?

    public var endSchedule: Int64?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var graph: String?

    public var hostName: String?

    public var id: String?

    public var name: String?

    public var namespace: String?

    public var parentFlowList: DescribeFlowResponseBody.ParentFlowList?

    public var periodic: Bool?

    public var requestId: String?

    public var startSchedule: Int64?

    public var status: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parentFlowList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertConf != nil {
            map["AlertConf"] = self.alertConf!
        }
        if self.alertDingDingGroupBizId != nil {
            map["AlertDingDingGroupBizId"] = self.alertDingDingGroupBizId!
        }
        if self.alertUserGroupBizId != nil {
            map["AlertUserGroupBizId"] = self.alertUserGroupBizId!
        }
        if self.application != nil {
            map["Application"] = self.application!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.createCluster != nil {
            map["CreateCluster"] = self.createCluster!
        }
        if self.cronExpr != nil {
            map["CronExpr"] = self.cronExpr!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.editLockDetail != nil {
            map["EditLockDetail"] = self.editLockDetail!
        }
        if self.endSchedule != nil {
            map["EndSchedule"] = self.endSchedule!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.graph != nil {
            map["Graph"] = self.graph!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.parentFlowList != nil {
            map["ParentFlowList"] = self.parentFlowList?.toMap()
        }
        if self.periodic != nil {
            map["Periodic"] = self.periodic!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startSchedule != nil {
            map["StartSchedule"] = self.startSchedule!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertConf") {
            self.alertConf = dict["AlertConf"] as! String
        }
        if dict.keys.contains("AlertDingDingGroupBizId") {
            self.alertDingDingGroupBizId = dict["AlertDingDingGroupBizId"] as! String
        }
        if dict.keys.contains("AlertUserGroupBizId") {
            self.alertUserGroupBizId = dict["AlertUserGroupBizId"] as! String
        }
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CreateCluster") {
            self.createCluster = dict["CreateCluster"] as! Bool
        }
        if dict.keys.contains("CronExpr") {
            self.cronExpr = dict["CronExpr"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EditLockDetail") {
            self.editLockDetail = dict["EditLockDetail"] as! String
        }
        if dict.keys.contains("EndSchedule") {
            self.endSchedule = dict["EndSchedule"] as! Int64
        }
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! Int64
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! Int64
        }
        if dict.keys.contains("Graph") {
            self.graph = dict["Graph"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ParentFlowList") {
            var model = DescribeFlowResponseBody.ParentFlowList()
            model.fromMap(dict["ParentFlowList"] as! [String: Any])
            self.parentFlowList = model
        }
        if dict.keys.contains("Periodic") {
            self.periodic = dict["Periodic"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartSchedule") {
            self.startSchedule = dict["StartSchedule"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowResponseBody?

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
            var model = DescribeFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowCategoryTreeRequest : Tea.TeaModel {
    public var categoryId: String?

    public var keyword: String?

    public var mode: String?

    public var projectId: String?

    public var regionId: String?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeFlowCategoryTreeResponseBody : Tea.TeaModel {
    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFlowCategoryTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowCategoryTreeResponseBody?

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
            var model = DescribeFlowCategoryTreeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowJobRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeFlowJobResponseBody : Tea.TeaModel {
    public class ResourceList : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public var alias: String?

            public var path: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alias != nil {
                    map["Alias"] = self.alias!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alias") {
                    self.alias = dict["Alias"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
            }
        }
        public var resource: [DescribeFlowJobResponseBody.ResourceList.Resource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resource != nil {
                var tmp : [Any] = []
                for k in self.resource! {
                    tmp.append(k.toMap())
                }
                map["Resource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! [DescribeFlowJobResponseBody.ResourceList.Resource]
            }
        }
    }
    public var adhoc: String?

    public var alertConf: String?

    public var categoryId: String?

    public var customVariables: String?

    public var description_: String?

    public var editLockDetail: String?

    public var envConf: String?

    public var failAct: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var id: String?

    public var knoxPassword: String?

    public var knoxUser: String?

    public var lastInstanceId: String?

    public var maxRetry: Int32?

    public var maxRunningTimeSec: Int64?

    public var mode: String?

    public var monitorConf: String?

    public var name: String?

    public var paramConf: String?

    public var params: String?

    public var requestId: String?

    public var resourceList: DescribeFlowJobResponseBody.ResourceList?

    public var retryInterval: Int64?

    public var retryPolicy: String?

    public var runConf: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adhoc != nil {
            map["Adhoc"] = self.adhoc!
        }
        if self.alertConf != nil {
            map["AlertConf"] = self.alertConf!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.customVariables != nil {
            map["CustomVariables"] = self.customVariables!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.editLockDetail != nil {
            map["EditLockDetail"] = self.editLockDetail!
        }
        if self.envConf != nil {
            map["EnvConf"] = self.envConf!
        }
        if self.failAct != nil {
            map["FailAct"] = self.failAct!
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
        if self.knoxPassword != nil {
            map["KnoxPassword"] = self.knoxPassword!
        }
        if self.knoxUser != nil {
            map["KnoxUser"] = self.knoxUser!
        }
        if self.lastInstanceId != nil {
            map["LastInstanceId"] = self.lastInstanceId!
        }
        if self.maxRetry != nil {
            map["MaxRetry"] = self.maxRetry!
        }
        if self.maxRunningTimeSec != nil {
            map["MaxRunningTimeSec"] = self.maxRunningTimeSec!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.monitorConf != nil {
            map["MonitorConf"] = self.monitorConf!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paramConf != nil {
            map["ParamConf"] = self.paramConf!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceList != nil {
            map["ResourceList"] = self.resourceList?.toMap()
        }
        if self.retryInterval != nil {
            map["RetryInterval"] = self.retryInterval!
        }
        if self.retryPolicy != nil {
            map["RetryPolicy"] = self.retryPolicy!
        }
        if self.runConf != nil {
            map["RunConf"] = self.runConf!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Adhoc") {
            self.adhoc = dict["Adhoc"] as! String
        }
        if dict.keys.contains("AlertConf") {
            self.alertConf = dict["AlertConf"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("CustomVariables") {
            self.customVariables = dict["CustomVariables"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EditLockDetail") {
            self.editLockDetail = dict["EditLockDetail"] as! String
        }
        if dict.keys.contains("EnvConf") {
            self.envConf = dict["EnvConf"] as! String
        }
        if dict.keys.contains("FailAct") {
            self.failAct = dict["FailAct"] as! String
        }
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! Int64
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("KnoxPassword") {
            self.knoxPassword = dict["KnoxPassword"] as! String
        }
        if dict.keys.contains("KnoxUser") {
            self.knoxUser = dict["KnoxUser"] as! String
        }
        if dict.keys.contains("LastInstanceId") {
            self.lastInstanceId = dict["LastInstanceId"] as! String
        }
        if dict.keys.contains("MaxRetry") {
            self.maxRetry = dict["MaxRetry"] as! Int32
        }
        if dict.keys.contains("MaxRunningTimeSec") {
            self.maxRunningTimeSec = dict["MaxRunningTimeSec"] as! Int64
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("MonitorConf") {
            self.monitorConf = dict["MonitorConf"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParamConf") {
            self.paramConf = dict["ParamConf"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceList") {
            var model = DescribeFlowJobResponseBody.ResourceList()
            model.fromMap(dict["ResourceList"] as! [String: Any])
            self.resourceList = model
        }
        if dict.keys.contains("RetryInterval") {
            self.retryInterval = dict["RetryInterval"] as! Int64
        }
        if dict.keys.contains("RetryPolicy") {
            self.retryPolicy = dict["RetryPolicy"] as! String
        }
        if dict.keys.contains("RunConf") {
            self.runConf = dict["RunConf"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeFlowJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowJobResponseBody?

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
            var model = DescribeFlowJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowNodeInstanceRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeFlowNodeInstanceResponseBody : Tea.TeaModel {
    public var adhoc: Bool?

    public var clusterId: String?

    public var clusterName: String?

    public var duration: Int64?

    public var endTime: Int64?

    public var envConf: String?

    public var externalChildIds: String?

    public var externalId: String?

    public var externalInfo: String?

    public var externalStatus: String?

    public var externalSubId: String?

    public var failAct: String?

    public var flowId: String?

    public var flowInstanceId: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var hostName: String?

    public var id: String?

    public var jobId: String?

    public var jobName: String?

    public var jobParams: String?

    public var jobType: String?

    public var maxRetry: String?

    public var mode: String?

    public var monitorConf: String?

    public var nodeName: String?

    public var paramConf: String?

    public var pending: Bool?

    public var projectId: String?

    public var requestId: String?

    public var retries: Int32?

    public var retryInterval: String?

    public var retryPolicy: String?

    public var runConf: String?

    public var startTime: Int64?

    public var status: String?

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
        if self.adhoc != nil {
            map["Adhoc"] = self.adhoc!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.envConf != nil {
            map["EnvConf"] = self.envConf!
        }
        if self.externalChildIds != nil {
            map["ExternalChildIds"] = self.externalChildIds!
        }
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.externalInfo != nil {
            map["ExternalInfo"] = self.externalInfo!
        }
        if self.externalStatus != nil {
            map["ExternalStatus"] = self.externalStatus!
        }
        if self.externalSubId != nil {
            map["ExternalSubId"] = self.externalSubId!
        }
        if self.failAct != nil {
            map["FailAct"] = self.failAct!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowInstanceId != nil {
            map["FlowInstanceId"] = self.flowInstanceId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobParams != nil {
            map["JobParams"] = self.jobParams!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.maxRetry != nil {
            map["MaxRetry"] = self.maxRetry!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.monitorConf != nil {
            map["MonitorConf"] = self.monitorConf!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.paramConf != nil {
            map["ParamConf"] = self.paramConf!
        }
        if self.pending != nil {
            map["Pending"] = self.pending!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.retries != nil {
            map["Retries"] = self.retries!
        }
        if self.retryInterval != nil {
            map["RetryInterval"] = self.retryInterval!
        }
        if self.retryPolicy != nil {
            map["RetryPolicy"] = self.retryPolicy!
        }
        if self.runConf != nil {
            map["RunConf"] = self.runConf!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Adhoc") {
            self.adhoc = dict["Adhoc"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EnvConf") {
            self.envConf = dict["EnvConf"] as! String
        }
        if dict.keys.contains("ExternalChildIds") {
            self.externalChildIds = dict["ExternalChildIds"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("ExternalInfo") {
            self.externalInfo = dict["ExternalInfo"] as! String
        }
        if dict.keys.contains("ExternalStatus") {
            self.externalStatus = dict["ExternalStatus"] as! String
        }
        if dict.keys.contains("ExternalSubId") {
            self.externalSubId = dict["ExternalSubId"] as! String
        }
        if dict.keys.contains("FailAct") {
            self.failAct = dict["FailAct"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
        if dict.keys.contains("FlowInstanceId") {
            self.flowInstanceId = dict["FlowInstanceId"] as! String
        }
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! Int64
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! Int64
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("JobParams") {
            self.jobParams = dict["JobParams"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("MaxRetry") {
            self.maxRetry = dict["MaxRetry"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("MonitorConf") {
            self.monitorConf = dict["MonitorConf"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("ParamConf") {
            self.paramConf = dict["ParamConf"] as! String
        }
        if dict.keys.contains("Pending") {
            self.pending = dict["Pending"] as! Bool
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Retries") {
            self.retries = dict["Retries"] as! Int32
        }
        if dict.keys.contains("RetryInterval") {
            self.retryInterval = dict["RetryInterval"] as! String
        }
        if dict.keys.contains("RetryPolicy") {
            self.retryPolicy = dict["RetryPolicy"] as! String
        }
        if dict.keys.contains("RunConf") {
            self.runConf = dict["RunConf"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeFlowNodeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowNodeInstanceResponseBody?

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
            var model = DescribeFlowNodeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowProjectRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeFlowProjectResponseBody : Tea.TeaModel {
    public var description_: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var id: String?

    public var name: String?

    public var requestId: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! Int64
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeFlowProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowProjectResponseBody?

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
            var model = DescribeFlowProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillFlowJobRequest : Tea.TeaModel {
    public var jobInstanceId: String?

    public var projectId: String?

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
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobInstanceId") {
            self.jobInstanceId = dict["JobInstanceId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class KillFlowJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillFlowJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillFlowJobResponseBody?

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
            var model = KillFlowJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
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
    public var clusterTypeList: [String]?

    public var createType: String?

    public var defaultStatus: Bool?

    public var depositType: String?

    public var expiredTagList: [String]?

    public var isDesc: Bool?

    public var machineType: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

    public var statusList: [String]?

    public var tag: [ListClustersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterTypeList != nil {
            map["ClusterTypeList"] = self.clusterTypeList!
        }
        if self.createType != nil {
            map["CreateType"] = self.createType!
        }
        if self.defaultStatus != nil {
            map["DefaultStatus"] = self.defaultStatus!
        }
        if self.depositType != nil {
            map["DepositType"] = self.depositType!
        }
        if self.expiredTagList != nil {
            map["ExpiredTagList"] = self.expiredTagList!
        }
        if self.isDesc != nil {
            map["IsDesc"] = self.isDesc!
        }
        if self.machineType != nil {
            map["MachineType"] = self.machineType!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
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
        if dict.keys.contains("ClusterTypeList") {
            self.clusterTypeList = dict["ClusterTypeList"] as! [String]
        }
        if dict.keys.contains("CreateType") {
            self.createType = dict["CreateType"] as! String
        }
        if dict.keys.contains("DefaultStatus") {
            self.defaultStatus = dict["DefaultStatus"] as! Bool
        }
        if dict.keys.contains("DepositType") {
            self.depositType = dict["DepositType"] as! String
        }
        if dict.keys.contains("ExpiredTagList") {
            self.expiredTagList = dict["ExpiredTagList"] as! [String]
        }
        if dict.keys.contains("IsDesc") {
            self.isDesc = dict["IsDesc"] as! Bool
        }
        if dict.keys.contains("MachineType") {
            self.machineType = dict["MachineType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StatusList") {
            self.statusList = dict["StatusList"] as! [String]
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListClustersRequest.Tag]
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class ClusterInfo : Tea.TeaModel {
            public class FailReason : Tea.TeaModel {
                public var errorCode: String?

                public var errorMsg: String?

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
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.requestId != nil {
                        map["RequestId"] = self.requestId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("RequestId") {
                        self.requestId = dict["RequestId"] as! String
                    }
                }
            }
            public class OrderTaskInfo : Tea.TeaModel {
                public var currentCount: Int32?

                public var orderIdList: String?

                public var targetCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currentCount != nil {
                        map["CurrentCount"] = self.currentCount!
                    }
                    if self.orderIdList != nil {
                        map["OrderIdList"] = self.orderIdList!
                    }
                    if self.targetCount != nil {
                        map["TargetCount"] = self.targetCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CurrentCount") {
                        self.currentCount = dict["CurrentCount"] as! Int32
                    }
                    if dict.keys.contains("OrderIdList") {
                        self.orderIdList = dict["OrderIdList"] as! String
                    }
                    if dict.keys.contains("TargetCount") {
                        self.targetCount = dict["TargetCount"] as! Int32
                    }
                }
            }
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
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
                        if self.tagKey != nil {
                            map["TagKey"] = self.tagKey!
                        }
                        if self.tagValue != nil {
                            map["TagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [ListClustersResponseBody.Clusters.ClusterInfo.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! [ListClustersResponseBody.Clusters.ClusterInfo.Tags.Tag]
                    }
                }
            }
            public var chargeType: String?

            public var createResource: String?

            public var createTime: Int64?

            public var depositType: String?

            public var expiredTime: Int64?

            public var failReason: ListClustersResponseBody.Clusters.ClusterInfo.FailReason?

            public var hasUncompletedOrder: Bool?

            public var id: String?

            public var k8sClusterId: String?

            public var machineType: String?

            public var metaStoreType: String?

            public var name: String?

            public var orderList: String?

            public var orderTaskInfo: ListClustersResponseBody.Clusters.ClusterInfo.OrderTaskInfo?

            public var period: Int32?

            public var runningTime: Int32?

            public var status: String?

            public var tags: ListClustersResponseBody.Clusters.ClusterInfo.Tags?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.failReason?.validate()
                try self.orderTaskInfo?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.createResource != nil {
                    map["CreateResource"] = self.createResource!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.depositType != nil {
                    map["DepositType"] = self.depositType!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.failReason != nil {
                    map["FailReason"] = self.failReason?.toMap()
                }
                if self.hasUncompletedOrder != nil {
                    map["HasUncompletedOrder"] = self.hasUncompletedOrder!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.k8sClusterId != nil {
                    map["K8sClusterId"] = self.k8sClusterId!
                }
                if self.machineType != nil {
                    map["MachineType"] = self.machineType!
                }
                if self.metaStoreType != nil {
                    map["MetaStoreType"] = self.metaStoreType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.orderList != nil {
                    map["OrderList"] = self.orderList!
                }
                if self.orderTaskInfo != nil {
                    map["OrderTaskInfo"] = self.orderTaskInfo?.toMap()
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChargeType") {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("CreateResource") {
                    self.createResource = dict["CreateResource"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DepositType") {
                    self.depositType = dict["DepositType"] as! String
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! Int64
                }
                if dict.keys.contains("FailReason") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfo.FailReason()
                    model.fromMap(dict["FailReason"] as! [String: Any])
                    self.failReason = model
                }
                if dict.keys.contains("HasUncompletedOrder") {
                    self.hasUncompletedOrder = dict["HasUncompletedOrder"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("K8sClusterId") {
                    self.k8sClusterId = dict["K8sClusterId"] as! String
                }
                if dict.keys.contains("MachineType") {
                    self.machineType = dict["MachineType"] as! String
                }
                if dict.keys.contains("MetaStoreType") {
                    self.metaStoreType = dict["MetaStoreType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OrderList") {
                    self.orderList = dict["OrderList"] as! String
                }
                if dict.keys.contains("OrderTaskInfo") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfo.OrderTaskInfo()
                    model.fromMap(dict["OrderTaskInfo"] as! [String: Any])
                    self.orderTaskInfo = model
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! Int32
                }
                if dict.keys.contains("RunningTime") {
                    self.runningTime = dict["RunningTime"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfo.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var clusterInfo: [ListClustersResponseBody.Clusters.ClusterInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterInfo != nil {
                var tmp : [Any] = []
                for k in self.clusterInfo! {
                    tmp.append(k.toMap())
                }
                map["ClusterInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterInfo") {
                self.clusterInfo = dict["ClusterInfo"] as! [ListClustersResponseBody.Clusters.ClusterInfo]
            }
        }
    }
    public var clusters: ListClustersResponseBody.Clusters?

    public var pageNumber: Int32?

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
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            var model = ListClustersResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

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
            var model = ListClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowRequest : Tea.TeaModel {
    public var clusterId: String?

    public var id: String?

    public var jobId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var periodic: Bool?

    public var projectId: String?

    public var regionId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.periodic != nil {
            map["Periodic"] = self.periodic!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Periodic") {
            self.periodic = dict["Periodic"] as! Bool
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListFlowResponseBody : Tea.TeaModel {
    public class Flow : Tea.TeaModel {
        public class Flow : Tea.TeaModel {
            public var alertConf: String?

            public var alertDingDingGroupBizId: String?

            public var alertUserGroupBizId: String?

            public var categoryId: String?

            public var clusterId: String?

            public var createCluster: Bool?

            public var cronExpr: String?

            public var description_: String?

            public var endSchedule: Int64?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var graph: String?

            public var hostName: String?

            public var id: String?

            public var name: String?

            public var periodic: Bool?

            public var projectId: String?

            public var startSchedule: Int64?

            public var status: String?

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
                if self.alertConf != nil {
                    map["AlertConf"] = self.alertConf!
                }
                if self.alertDingDingGroupBizId != nil {
                    map["AlertDingDingGroupBizId"] = self.alertDingDingGroupBizId!
                }
                if self.alertUserGroupBizId != nil {
                    map["AlertUserGroupBizId"] = self.alertUserGroupBizId!
                }
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createCluster != nil {
                    map["CreateCluster"] = self.createCluster!
                }
                if self.cronExpr != nil {
                    map["CronExpr"] = self.cronExpr!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.endSchedule != nil {
                    map["EndSchedule"] = self.endSchedule!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.graph != nil {
                    map["Graph"] = self.graph!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.periodic != nil {
                    map["Periodic"] = self.periodic!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.startSchedule != nil {
                    map["StartSchedule"] = self.startSchedule!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertConf") {
                    self.alertConf = dict["AlertConf"] as! String
                }
                if dict.keys.contains("AlertDingDingGroupBizId") {
                    self.alertDingDingGroupBizId = dict["AlertDingDingGroupBizId"] as! String
                }
                if dict.keys.contains("AlertUserGroupBizId") {
                    self.alertUserGroupBizId = dict["AlertUserGroupBizId"] as! String
                }
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateCluster") {
                    self.createCluster = dict["CreateCluster"] as! Bool
                }
                if dict.keys.contains("CronExpr") {
                    self.cronExpr = dict["CronExpr"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EndSchedule") {
                    self.endSchedule = dict["EndSchedule"] as! Int64
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Graph") {
                    self.graph = dict["Graph"] as! String
                }
                if dict.keys.contains("HostName") {
                    self.hostName = dict["HostName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Periodic") {
                    self.periodic = dict["Periodic"] as! Bool
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("StartSchedule") {
                    self.startSchedule = dict["StartSchedule"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var flow: [ListFlowResponseBody.Flow.Flow]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flow != nil {
                var tmp : [Any] = []
                for k in self.flow! {
                    tmp.append(k.toMap())
                }
                map["Flow"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Flow") {
                self.flow = dict["Flow"] as! [ListFlowResponseBody.Flow.Flow]
            }
        }
    }
    public var flow: ListFlowResponseBody.Flow?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.flow?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flow != nil {
            map["Flow"] = self.flow?.toMap()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Flow") {
            var model = ListFlowResponseBody.Flow()
            model.fromMap(dict["Flow"] as! [String: Any])
            self.flow = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowResponseBody?

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
            var model = ListFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowJobHistoryRequest : Tea.TeaModel {
    public var id: String?

    public var instanceId: String?

    public var jobType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var regionId: String?

    public var statusList: [String]?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StatusList") {
            self.statusList = dict["StatusList"] as! [String]
        }
        if dict.keys.contains("TimeRange") {
            self.timeRange = dict["TimeRange"] as! String
        }
    }
}

public class ListFlowJobHistoryResponseBody : Tea.TeaModel {
    public class NodeInstances : Tea.TeaModel {
        public class NodeInstance : Tea.TeaModel {
            public var clusterId: String?

            public var endTime: Int64?

            public var envConf: String?

            public var externalId: String?

            public var externalInfo: String?

            public var externalStatus: String?

            public var failAct: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var hostName: String?

            public var id: String?

            public var jobId: String?

            public var jobName: String?

            public var jobParams: String?

            public var jobType: String?

            public var maxRetry: Int32?

            public var nodeName: String?

            public var paramConf: String?

            public var projectId: String?

            public var retries: Int32?

            public var retryInterval: Int64?

            public var runConf: String?

            public var startTime: Int64?

            public var status: String?

            public var type: String?

            public var pending: Bool?

            public override init() {
                super.init()
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
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.envConf != nil {
                    map["EnvConf"] = self.envConf!
                }
                if self.externalId != nil {
                    map["ExternalId"] = self.externalId!
                }
                if self.externalInfo != nil {
                    map["ExternalInfo"] = self.externalInfo!
                }
                if self.externalStatus != nil {
                    map["ExternalStatus"] = self.externalStatus!
                }
                if self.failAct != nil {
                    map["FailAct"] = self.failAct!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.jobParams != nil {
                    map["JobParams"] = self.jobParams!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.maxRetry != nil {
                    map["MaxRetry"] = self.maxRetry!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.paramConf != nil {
                    map["ParamConf"] = self.paramConf!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.retries != nil {
                    map["Retries"] = self.retries!
                }
                if self.retryInterval != nil {
                    map["RetryInterval"] = self.retryInterval!
                }
                if self.runConf != nil {
                    map["RunConf"] = self.runConf!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.pending != nil {
                    map["pending"] = self.pending!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("EnvConf") {
                    self.envConf = dict["EnvConf"] as! String
                }
                if dict.keys.contains("ExternalId") {
                    self.externalId = dict["ExternalId"] as! String
                }
                if dict.keys.contains("ExternalInfo") {
                    self.externalInfo = dict["ExternalInfo"] as! String
                }
                if dict.keys.contains("ExternalStatus") {
                    self.externalStatus = dict["ExternalStatus"] as! String
                }
                if dict.keys.contains("FailAct") {
                    self.failAct = dict["FailAct"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("HostName") {
                    self.hostName = dict["HostName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobName") {
                    self.jobName = dict["JobName"] as! String
                }
                if dict.keys.contains("JobParams") {
                    self.jobParams = dict["JobParams"] as! String
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("MaxRetry") {
                    self.maxRetry = dict["MaxRetry"] as! Int32
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("ParamConf") {
                    self.paramConf = dict["ParamConf"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Retries") {
                    self.retries = dict["Retries"] as! Int32
                }
                if dict.keys.contains("RetryInterval") {
                    self.retryInterval = dict["RetryInterval"] as! Int64
                }
                if dict.keys.contains("RunConf") {
                    self.runConf = dict["RunConf"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("pending") {
                    self.pending = dict["pending"] as! Bool
                }
            }
        }
        public var nodeInstance: [ListFlowJobHistoryResponseBody.NodeInstances.NodeInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInstance != nil {
                var tmp : [Any] = []
                for k in self.nodeInstance! {
                    tmp.append(k.toMap())
                }
                map["NodeInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInstance") {
                self.nodeInstance = dict["NodeInstance"] as! [ListFlowJobHistoryResponseBody.NodeInstances.NodeInstance]
            }
        }
    }
    public var nodeInstances: ListFlowJobHistoryResponseBody.NodeInstances?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeInstances != nil {
            map["NodeInstances"] = self.nodeInstances?.toMap()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeInstances") {
            var model = ListFlowJobHistoryResponseBody.NodeInstances()
            model.fromMap(dict["NodeInstances"] as! [String: Any])
            self.nodeInstances = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListFlowJobHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowJobHistoryResponseBody?

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
            var model = ListFlowJobHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowJobsRequest : Tea.TeaModel {
    public var adhoc: Bool?

    public var exactName: String?

    public var id: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var regionId: String?

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
        if self.adhoc != nil {
            map["Adhoc"] = self.adhoc!
        }
        if self.exactName != nil {
            map["ExactName"] = self.exactName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Adhoc") {
            self.adhoc = dict["Adhoc"] as! Bool
        }
        if dict.keys.contains("ExactName") {
            self.exactName = dict["ExactName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListFlowJobsResponseBody : Tea.TeaModel {
    public class JobList : Tea.TeaModel {
        public class Job : Tea.TeaModel {
            public class ResourceList : Tea.TeaModel {
                public class Resource : Tea.TeaModel {
                    public var alias: String?

                    public var path: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.alias != nil {
                            map["Alias"] = self.alias!
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Alias") {
                            self.alias = dict["Alias"] as! String
                        }
                        if dict.keys.contains("Path") {
                            self.path = dict["Path"] as! String
                        }
                    }
                }
                public var resource: [ListFlowJobsResponseBody.JobList.Job.ResourceList.Resource]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resource != nil {
                        var tmp : [Any] = []
                        for k in self.resource! {
                            tmp.append(k.toMap())
                        }
                        map["Resource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Resource") {
                        self.resource = dict["Resource"] as! [ListFlowJobsResponseBody.JobList.Job.ResourceList.Resource]
                    }
                }
            }
            public var adhoc: String?

            public var alertConf: String?

            public var categoryId: String?

            public var customVariables: String?

            public var description_: String?

            public var envConf: String?

            public var failAct: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: String?

            public var lastInstanceDetail: String?

            public var maxRetry: Int32?

            public var mode: String?

            public var monitorConf: String?

            public var name: String?

            public var paramConf: String?

            public var params: String?

            public var resourceList: ListFlowJobsResponseBody.JobList.Job.ResourceList?

            public var retryInterval: Int64?

            public var runConf: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resourceList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adhoc != nil {
                    map["Adhoc"] = self.adhoc!
                }
                if self.alertConf != nil {
                    map["AlertConf"] = self.alertConf!
                }
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.customVariables != nil {
                    map["CustomVariables"] = self.customVariables!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.envConf != nil {
                    map["EnvConf"] = self.envConf!
                }
                if self.failAct != nil {
                    map["FailAct"] = self.failAct!
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
                if self.lastInstanceDetail != nil {
                    map["LastInstanceDetail"] = self.lastInstanceDetail!
                }
                if self.maxRetry != nil {
                    map["MaxRetry"] = self.maxRetry!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.monitorConf != nil {
                    map["MonitorConf"] = self.monitorConf!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.paramConf != nil {
                    map["ParamConf"] = self.paramConf!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.resourceList != nil {
                    map["ResourceList"] = self.resourceList?.toMap()
                }
                if self.retryInterval != nil {
                    map["RetryInterval"] = self.retryInterval!
                }
                if self.runConf != nil {
                    map["RunConf"] = self.runConf!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Adhoc") {
                    self.adhoc = dict["Adhoc"] as! String
                }
                if dict.keys.contains("AlertConf") {
                    self.alertConf = dict["AlertConf"] as! String
                }
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CustomVariables") {
                    self.customVariables = dict["CustomVariables"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnvConf") {
                    self.envConf = dict["EnvConf"] as! String
                }
                if dict.keys.contains("FailAct") {
                    self.failAct = dict["FailAct"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LastInstanceDetail") {
                    self.lastInstanceDetail = dict["LastInstanceDetail"] as! String
                }
                if dict.keys.contains("MaxRetry") {
                    self.maxRetry = dict["MaxRetry"] as! Int32
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("MonitorConf") {
                    self.monitorConf = dict["MonitorConf"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ParamConf") {
                    self.paramConf = dict["ParamConf"] as! String
                }
                if dict.keys.contains("Params") {
                    self.params = dict["Params"] as! String
                }
                if dict.keys.contains("ResourceList") {
                    var model = ListFlowJobsResponseBody.JobList.Job.ResourceList()
                    model.fromMap(dict["ResourceList"] as! [String: Any])
                    self.resourceList = model
                }
                if dict.keys.contains("RetryInterval") {
                    self.retryInterval = dict["RetryInterval"] as! Int64
                }
                if dict.keys.contains("RunConf") {
                    self.runConf = dict["RunConf"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var job: [ListFlowJobsResponseBody.JobList.Job]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.job != nil {
                var tmp : [Any] = []
                for k in self.job! {
                    tmp.append(k.toMap())
                }
                map["Job"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Job") {
                self.job = dict["Job"] as! [ListFlowJobsResponseBody.JobList.Job]
            }
        }
    }
    public var jobList: ListFlowJobsResponseBody.JobList?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobList != nil {
            map["JobList"] = self.jobList?.toMap()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobList") {
            var model = ListFlowJobsResponseBody.JobList()
            model.fromMap(dict["JobList"] as! [String: Any])
            self.jobList = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListFlowJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowJobsResponseBody?

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
            var model = ListFlowJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowProjectUserRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListFlowProjectUserResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var accountUserId: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var ownerId: String?

            public var projectId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountUserId != nil {
                    map["AccountUserId"] = self.accountUserId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountUserId") {
                    self.accountUserId = dict["AccountUserId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var user: [ListFlowProjectUserResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                self.user = dict["User"] as! [ListFlowProjectUserResponseBody.Users.User]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public var users: ListFlowProjectUserResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("Users") {
            var model = ListFlowProjectUserResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListFlowProjectUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowProjectUserResponseBody?

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
            var model = ListFlowProjectUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowProjectsRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public var projectId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ListFlowProjectsResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public class Project : Tea.TeaModel {
            public var description_: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: String?

            public var name: String?

            public var userId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var project: [ListFlowProjectsResponseBody.Projects.Project]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.project != nil {
                var tmp : [Any] = []
                for k in self.project! {
                    tmp.append(k.toMap())
                }
                map["Project"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Project") {
                self.project = dict["Project"] as! [ListFlowProjectsResponseBody.Projects.Project]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projects: ListFlowProjectsResponseBody.Projects?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projects?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projects != nil {
            map["Projects"] = self.projects?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Projects") {
            var model = ListFlowProjectsResponseBody.Projects()
            model.fromMap(dict["Projects"] as! [String: Any])
            self.projects = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListFlowProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowProjectsResponseBody?

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
            var model = ListFlowProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFlowForWebRequest : Tea.TeaModel {
    public var alertConf: String?

    public var alertDingDingGroupBizId: String?

    public var alertUserGroupBizId: String?

    public var clusterId: String?

    public var createCluster: Bool?

    public var cronExpr: String?

    public var description_: String?

    public var endSchedule: Int64?

    public var graph: String?

    public var hostName: String?

    public var id: String?

    public var name: String?

    public var namespace: String?

    public var parentCategory: String?

    public var parentFlowList: String?

    public var periodic: Bool?

    public var projectId: String?

    public var regionId: String?

    public var startSchedule: Int64?

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
        if self.alertConf != nil {
            map["AlertConf"] = self.alertConf!
        }
        if self.alertDingDingGroupBizId != nil {
            map["AlertDingDingGroupBizId"] = self.alertDingDingGroupBizId!
        }
        if self.alertUserGroupBizId != nil {
            map["AlertUserGroupBizId"] = self.alertUserGroupBizId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.createCluster != nil {
            map["CreateCluster"] = self.createCluster!
        }
        if self.cronExpr != nil {
            map["CronExpr"] = self.cronExpr!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endSchedule != nil {
            map["EndSchedule"] = self.endSchedule!
        }
        if self.graph != nil {
            map["Graph"] = self.graph!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.parentCategory != nil {
            map["ParentCategory"] = self.parentCategory!
        }
        if self.parentFlowList != nil {
            map["ParentFlowList"] = self.parentFlowList!
        }
        if self.periodic != nil {
            map["Periodic"] = self.periodic!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startSchedule != nil {
            map["StartSchedule"] = self.startSchedule!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertConf") {
            self.alertConf = dict["AlertConf"] as! String
        }
        if dict.keys.contains("AlertDingDingGroupBizId") {
            self.alertDingDingGroupBizId = dict["AlertDingDingGroupBizId"] as! String
        }
        if dict.keys.contains("AlertUserGroupBizId") {
            self.alertUserGroupBizId = dict["AlertUserGroupBizId"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CreateCluster") {
            self.createCluster = dict["CreateCluster"] as! Bool
        }
        if dict.keys.contains("CronExpr") {
            self.cronExpr = dict["CronExpr"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndSchedule") {
            self.endSchedule = dict["EndSchedule"] as! Int64
        }
        if dict.keys.contains("Graph") {
            self.graph = dict["Graph"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ParentCategory") {
            self.parentCategory = dict["ParentCategory"] as! String
        }
        if dict.keys.contains("ParentFlowList") {
            self.parentFlowList = dict["ParentFlowList"] as! String
        }
        if dict.keys.contains("Periodic") {
            self.periodic = dict["Periodic"] as! Bool
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartSchedule") {
            self.startSchedule = dict["StartSchedule"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ModifyFlowForWebResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyFlowForWebResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFlowForWebResponseBody?

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
            var model = ModifyFlowForWebResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFlowJobRequest : Tea.TeaModel {
    public class ResourceList : Tea.TeaModel {
        public var alias: String?

        public var path: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public var alertConf: String?

    public var clusterId: String?

    public var customVariables: String?

    public var description_: String?

    public var envConf: String?

    public var failAct: String?

    public var id: String?

    public var knoxPassword: String?

    public var knoxUser: String?

    public var maxRetry: Int32?

    public var mode: String?

    public var monitorConf: String?

    public var name: String?

    public var paramConf: String?

    public var params: String?

    public var projectId: String?

    public var regionId: String?

    public var resourceList: [ModifyFlowJobRequest.ResourceList]?

    public var retryInterval: Int64?

    public var retryPolicy: String?

    public var runConf: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertConf != nil {
            map["AlertConf"] = self.alertConf!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.customVariables != nil {
            map["CustomVariables"] = self.customVariables!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.envConf != nil {
            map["EnvConf"] = self.envConf!
        }
        if self.failAct != nil {
            map["FailAct"] = self.failAct!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.knoxPassword != nil {
            map["KnoxPassword"] = self.knoxPassword!
        }
        if self.knoxUser != nil {
            map["KnoxUser"] = self.knoxUser!
        }
        if self.maxRetry != nil {
            map["MaxRetry"] = self.maxRetry!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.monitorConf != nil {
            map["MonitorConf"] = self.monitorConf!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paramConf != nil {
            map["ParamConf"] = self.paramConf!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceList != nil {
            var tmp : [Any] = []
            for k in self.resourceList! {
                tmp.append(k.toMap())
            }
            map["ResourceList"] = tmp
        }
        if self.retryInterval != nil {
            map["RetryInterval"] = self.retryInterval!
        }
        if self.retryPolicy != nil {
            map["RetryPolicy"] = self.retryPolicy!
        }
        if self.runConf != nil {
            map["RunConf"] = self.runConf!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertConf") {
            self.alertConf = dict["AlertConf"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CustomVariables") {
            self.customVariables = dict["CustomVariables"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnvConf") {
            self.envConf = dict["EnvConf"] as! String
        }
        if dict.keys.contains("FailAct") {
            self.failAct = dict["FailAct"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("KnoxPassword") {
            self.knoxPassword = dict["KnoxPassword"] as! String
        }
        if dict.keys.contains("KnoxUser") {
            self.knoxUser = dict["KnoxUser"] as! String
        }
        if dict.keys.contains("MaxRetry") {
            self.maxRetry = dict["MaxRetry"] as! Int32
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("MonitorConf") {
            self.monitorConf = dict["MonitorConf"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParamConf") {
            self.paramConf = dict["ParamConf"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceList") {
            self.resourceList = dict["ResourceList"] as! [ModifyFlowJobRequest.ResourceList]
        }
        if dict.keys.contains("RetryInterval") {
            self.retryInterval = dict["RetryInterval"] as! Int64
        }
        if dict.keys.contains("RetryPolicy") {
            self.retryPolicy = dict["RetryPolicy"] as! String
        }
        if dict.keys.contains("RunConf") {
            self.runConf = dict["RunConf"] as! String
        }
    }
}

public class ModifyFlowJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyFlowJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFlowJobResponseBody?

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
            var model = ModifyFlowJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFlowProjectRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var projectId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyFlowProjectResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyFlowProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFlowProjectResponseBody?

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
            var model = ModifyFlowProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseClusterRequest : Tea.TeaModel {
    public var forceRelease: Bool?

    public var id: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceRelease != nil {
            map["ForceRelease"] = self.forceRelease!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForceRelease") {
            self.forceRelease = dict["ForceRelease"] as! Bool
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ReleaseClusterResponseBody : Tea.TeaModel {
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

public class ReleaseClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseClusterResponseBody?

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
            var model = ReleaseClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RerunFlowRequest : Tea.TeaModel {
    public var flowInstanceId: String?

    public var projectId: String?

    public var reRunFail: Bool?

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
        if self.flowInstanceId != nil {
            map["FlowInstanceId"] = self.flowInstanceId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.reRunFail != nil {
            map["ReRunFail"] = self.reRunFail!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowInstanceId") {
            self.flowInstanceId = dict["FlowInstanceId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReRunFail") {
            self.reRunFail = dict["ReRunFail"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RerunFlowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RerunFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RerunFlowResponseBody?

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
            var model = RerunFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeFlowRequest : Tea.TeaModel {
    public var flowInstanceId: String?

    public var projectId: String?

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
        if self.flowInstanceId != nil {
            map["FlowInstanceId"] = self.flowInstanceId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowInstanceId") {
            self.flowInstanceId = dict["FlowInstanceId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResumeFlowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResumeFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeFlowResponseBody?

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
            var model = ResumeFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitFlowRequest : Tea.TeaModel {
    public var conf: String?

    public var flowId: String?

    public var projectId: String?

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
        if self.conf != nil {
            map["Conf"] = self.conf!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Conf") {
            self.conf = dict["Conf"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SubmitFlowResponseBody : Tea.TeaModel {
    public var data: String?

    public var id: String?

    public var instanceId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitFlowResponseBody?

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
            var model = SubmitFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitFlowJobRequest : Tea.TeaModel {
    public var clusterId: String?

    public var conf: String?

    public var hostName: String?

    public var jobId: String?

    public var projectId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.conf != nil {
            map["Conf"] = self.conf!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Conf") {
            self.conf = dict["Conf"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SubmitFlowJobResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitFlowJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitFlowJobResponseBody?

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
            var model = SubmitFlowJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
