import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class InstanceDetail : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var cuNum: Int32?

        public var cuType: String?

        public var diskSizeType: String?

        public var replica: Int32?

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
            if self.cuNum != nil {
                map["cuNum"] = self.cuNum!
            }
            if self.cuType != nil {
                map["cuType"] = self.cuType!
            }
            if self.diskSizeType != nil {
                map["diskSizeType"] = self.diskSizeType!
            }
            if self.replica != nil {
                map["replica"] = self.replica!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cuNum"] as? Int32 {
                self.cuNum = value
            }
            if let value = dict["cuType"] as? String {
                self.cuType = value
            }
            if let value = dict["diskSizeType"] as? String {
                self.diskSizeType = value
            }
            if let value = dict["replica"] as? Int32 {
                self.replica = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class VSwitchIds : Tea.TeaModel {
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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var autoBackup: Bool?

    public var components: [InstanceDetail.Components]?

    public var configuration: String?

    public var createTime: String?

    public var dbVersion: String?

    public var encrypted: Bool?

    public var expireTime: String?

    public var ha: Bool?

    public var instanceId: String?

    public var instanceName: String?

    public var kmsKeyId: String?

    public var multiZoneMode: String?

    public var orderId: String?

    public var paymentType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var runningTime: Int64?

    public var securityGroupIds: [String]?

    public var status: String?

    public var tags: [InstanceDetail.Tags]?

    public var vSwitchIds: [InstanceDetail.VSwitchIds]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoBackup != nil {
            map["autoBackup"] = self.autoBackup!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.configuration != nil {
            map["configuration"] = self.configuration!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.dbVersion != nil {
            map["dbVersion"] = self.dbVersion!
        }
        if self.encrypted != nil {
            map["encrypted"] = self.encrypted!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.ha != nil {
            map["ha"] = self.ha!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.kmsKeyId != nil {
            map["kmsKeyId"] = self.kmsKeyId!
        }
        if self.multiZoneMode != nil {
            map["multiZoneMode"] = self.multiZoneMode!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.runningTime != nil {
            map["runningTime"] = self.runningTime!
        }
        if self.securityGroupIds != nil {
            map["securityGroupIds"] = self.securityGroupIds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.vSwitchIds != nil {
            var tmp : [Any] = []
            for k in self.vSwitchIds! {
                tmp.append(k.toMap())
            }
            map["vSwitchIds"] = tmp
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["zoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoBackup"] as? Bool {
            self.autoBackup = value
        }
        if let value = dict["components"] as? [Any?] {
            var tmp : [InstanceDetail.Components] = []
            for v in value {
                if v != nil {
                    var model = InstanceDetail.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["configuration"] as? String {
            self.configuration = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["dbVersion"] as? String {
            self.dbVersion = value
        }
        if let value = dict["encrypted"] as? Bool {
            self.encrypted = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ha"] as? Bool {
            self.ha = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["kmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["multiZoneMode"] as? String {
            self.multiZoneMode = value
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["paymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["runningTime"] as? Int64 {
            self.runningTime = value
        }
        if let value = dict["securityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [InstanceDetail.Tags] = []
            for v in value {
                if v != nil {
                    var model = InstanceDetail.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["vSwitchIds"] as? [Any?] {
            var tmp : [InstanceDetail.VSwitchIds] = []
            for v in value {
                if v != nil {
                    var model = InstanceDetail.VSwitchIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitchIds = tmp
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["zoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

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

public class CreateInstanceRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var cuNum: Int32?

        public var cuType: String?

        public var diskSizeType: String?

        public var replica: Int32?

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
            if self.cuNum != nil {
                map["cuNum"] = self.cuNum!
            }
            if self.cuType != nil {
                map["cuType"] = self.cuType!
            }
            if self.diskSizeType != nil {
                map["diskSizeType"] = self.diskSizeType!
            }
            if self.replica != nil {
                map["replica"] = self.replica!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cuNum"] as? Int32 {
                self.cuNum = value
            }
            if let value = dict["cuType"] as? String {
                self.cuType = value
            }
            if let value = dict["diskSizeType"] as? String {
                self.diskSizeType = value
            }
            if let value = dict["replica"] as? Int32 {
                self.replica = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class VSwitchIds : Tea.TeaModel {
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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var regionId: String?

    public var autoBackup: Bool?

    public var components: [CreateInstanceRequest.Components]?

    public var configuration: String?

    public var dbAdminPassword: String?

    public var dbVersion: String?

    public var encrypted: Bool?

    public var ha: Bool?

    public var instanceName: String?

    public var kmsKeyId: String?

    public var multiZoneMode: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var resourceGroupId: String?

    public var tags: [CreateInstanceRequest.Tags]?

    public var vSwitchIds: [CreateInstanceRequest.VSwitchIds]?

    public var vpcId: String?

    public var zoneId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.autoBackup != nil {
            map["autoBackup"] = self.autoBackup!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.configuration != nil {
            map["configuration"] = self.configuration!
        }
        if self.dbAdminPassword != nil {
            map["dbAdminPassword"] = self.dbAdminPassword!
        }
        if self.dbVersion != nil {
            map["dbVersion"] = self.dbVersion!
        }
        if self.encrypted != nil {
            map["encrypted"] = self.encrypted!
        }
        if self.ha != nil {
            map["ha"] = self.ha!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.kmsKeyId != nil {
            map["kmsKeyId"] = self.kmsKeyId!
        }
        if self.multiZoneMode != nil {
            map["multiZoneMode"] = self.multiZoneMode!
        }
        if self.paymentDuration != nil {
            map["paymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["paymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.vSwitchIds != nil {
            var tmp : [Any] = []
            for k in self.vSwitchIds! {
                tmp.append(k.toMap())
            }
            map["vSwitchIds"] = tmp
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["zoneId"] = self.zoneId!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["autoBackup"] as? Bool {
            self.autoBackup = value
        }
        if let value = dict["components"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["configuration"] as? String {
            self.configuration = value
        }
        if let value = dict["dbAdminPassword"] as? String {
            self.dbAdminPassword = value
        }
        if let value = dict["dbVersion"] as? String {
            self.dbVersion = value
        }
        if let value = dict["encrypted"] as? Bool {
            self.encrypted = value
        }
        if let value = dict["ha"] as? Bool {
            self.ha = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["kmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["multiZoneMode"] as? String {
            self.multiZoneMode = value
        }
        if let value = dict["paymentDuration"] as? Int32 {
            self.paymentDuration = value
        }
        if let value = dict["paymentDurationUnit"] as? String {
            self.paymentDurationUnit = value
        }
        if let value = dict["paymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["vSwitchIds"] as? [Any?] {
            var tmp : [CreateInstanceRequest.VSwitchIds] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.VSwitchIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitchIds = tmp
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["zoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: String?

        public override init() {
            super.init()
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
                map["instanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["orderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["orderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var requestId: String?

    public var data: CreateInstanceResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var instanceId: String?

    public var orderId: String?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

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
            var model = DeleteInstanceResponseBody()
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

public class GetInstanceRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var instance: InstanceDetail?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.instance != nil {
            map["instance"] = self.instance?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["instance"] as? [String: Any?] {
            var model = InstanceDetail()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

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
            var model = GetInstanceResponseBody()
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
        public class VSwitches : Tea.TeaModel {
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
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
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
                if let value = dict["VswId"] as? String {
                    self.vswId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public var encrypted: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceStatus: String?

        public var kmsKeyId: String?

        public var measureConfig: GetInstanceDetailResponseBody.Data.MeasureConfig?

        public var multiZoneMode: String?

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

        public var vSwitches: [GetInstanceDetailResponseBody.Data.VSwitches]?

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
            if self.encrypted != nil {
                map["Encrypted"] = self.encrypted!
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
            if self.kmsKeyId != nil {
                map["KmsKeyId"] = self.kmsKeyId!
            }
            if self.measureConfig != nil {
                map["MeasureConfig"] = self.measureConfig?.toMap()
            }
            if self.multiZoneMode != nil {
                map["MultiZoneMode"] = self.multiZoneMode!
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
            if self.vSwitches != nil {
                var tmp : [Any] = []
                for k in self.vSwitches! {
                    tmp.append(k.toMap())
                }
                map["VSwitches"] = tmp
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
            if let value = dict["Encrypted"] as? String {
                self.encrypted = value
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
            if let value = dict["KmsKeyId"] as? String {
                self.kmsKeyId = value
            }
            if let value = dict["MeasureConfig"] as? [String: Any?] {
                var model = GetInstanceDetailResponseBody.Data.MeasureConfig()
                model.fromMap(value)
                self.measureConfig = model
            }
            if let value = dict["MultiZoneMode"] as? String {
                self.multiZoneMode = value
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
            if let value = dict["VSwitches"] as? [Any?] {
                var tmp : [GetInstanceDetailResponseBody.Data.VSwitches] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceDetailResponseBody.Data.VSwitches()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vSwitches = tmp
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

public class ListInstancesV2Request : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var regionId: String?

    public var instanceId: String?

    public var instanceName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tag: [ListInstancesV2Request.Tag]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListInstancesV2Request.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesV2Request.Tag()
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

public class ListInstancesV2ShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var instanceId: String?

    public var instanceName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListInstancesV2ResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var instances: [InstanceDetail]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [InstanceDetail] = []
            for v in value {
                if v != nil {
                    var model = InstanceDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListInstancesV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesV2ResponseBody?

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
            var model = ListInstancesV2ResponseBody()
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
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

public class TagResourcesResponseBody : Tea.TeaModel {
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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

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
        if self.all != nil {
            map["All"] = self.all!
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
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UnTagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagKeyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdShrink != nil {
            map["ResourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeyShrink != nil {
            map["TagKey"] = self.tagKeyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKeyShrink = value
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

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
            var model = UnTagResourcesResponseBody()
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

public class UpdateInstanceRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var cuNum: Int32?

        public var replica: Int32?

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
            if self.cuNum != nil {
                map["cuNum"] = self.cuNum!
            }
            if self.replica != nil {
                map["replica"] = self.replica!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cuNum"] as? Int32 {
                self.cuNum = value
            }
            if let value = dict["replica"] as? Int32 {
                self.replica = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var regionId: String?

    public var autoBackup: Bool?

    public var components: [UpdateInstanceRequest.Components]?

    public var configuration: String?

    public var ha: Bool?

    public var instanceId: String?

    public var instanceName: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.autoBackup != nil {
            map["autoBackup"] = self.autoBackup!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.configuration != nil {
            map["configuration"] = self.configuration!
        }
        if self.ha != nil {
            map["ha"] = self.ha!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["autoBackup"] as? Bool {
            self.autoBackup = value
        }
        if let value = dict["components"] as? [Any?] {
            var tmp : [UpdateInstanceRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = UpdateInstanceRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["configuration"] as? String {
            self.configuration = value
        }
        if let value = dict["ha"] as? Bool {
            self.ha = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

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
            var model = UpdateInstanceResponseBody()
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
