import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class AddDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class AddDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDiskReplicaPairResponseBody?

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
            var model = AddDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyLensServiceResponseBody : Tea.TeaModel {
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

public class ApplyLensServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyLensServiceResponseBody?

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
            var model = ApplyLensServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var diskTargets: [String]?

    public var policyId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskTargets != nil {
            map["DiskTargets"] = self.diskTargets!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskTargets"] as? [String] {
            self.diskTargets = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class BindEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class BindEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindEnterpriseSnapshotPolicyResponseBody?

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
            var model = BindEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelLensServiceResponseBody : Tea.TeaModel {
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

public class CancelLensServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelLensServiceResponseBody?

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
            var model = CancelLensServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

public class ClearPairDrillRequest : Tea.TeaModel {
    public var drillId: String?

    public var pairId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.pairId != nil {
            map["PairId"] = self.pairId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrillId"] as? String {
            self.drillId = value
        }
        if let value = dict["PairId"] as? String {
            self.pairId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ClearPairDrillResponseBody : Tea.TeaModel {
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

public class ClearPairDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearPairDrillResponseBody?

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
            var model = ClearPairDrillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ClearReplicaGroupDrillRequest : Tea.TeaModel {
    public var drillId: String?

    public var groupId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrillId"] as? String {
            self.drillId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ClearReplicaGroupDrillResponseBody : Tea.TeaModel {
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

public class ClearReplicaGroupDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearReplicaGroupDrillResponseBody?

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
            var model = ClearReplicaGroupDrillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public class AppTags : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var appName: String?

    public var appTags: [CreateAppRequest.AppTags]?

    public var clientToken: String?

    public var description_: String?

    public var owner: String?

    public var regionId: String?

    public var reportSendEnabled: Bool?

    public var subscribePeriod: String?

    public var subscribeStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appTags != nil {
            var tmp : [Any] = []
            for k in self.appTags! {
                tmp.append(k.toMap())
            }
            map["AppTags"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reportSendEnabled != nil {
            map["ReportSendEnabled"] = self.reportSendEnabled!
        }
        if self.subscribePeriod != nil {
            map["SubscribePeriod"] = self.subscribePeriod!
        }
        if self.subscribeStatus != nil {
            map["SubscribeStatus"] = self.subscribeStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppTags"] as? [Any?] {
            var tmp : [CreateAppRequest.AppTags] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.AppTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appTags = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReportSendEnabled"] as? Bool {
            self.reportSendEnabled = value
        }
        if let value = dict["SubscribePeriod"] as? String {
            self.subscribePeriod = value
        }
        if let value = dict["SubscribeStatus"] as? String {
            self.subscribeStatus = value
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var appId: String?

    public var appName: String?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var userCode: String?

    public override init() {
        super.init()
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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.userCode != nil {
            map["UserCode"] = self.userCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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
        if let value = dict["UserCode"] as? String {
            self.userCode = value
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

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
            var model = CreateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDedicatedBlockStorageClusterRequest : Tea.TeaModel {
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
    public var azone: String?

    public var capacity: Int64?

    public var dbscId: String?

    public var dbscName: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateDedicatedBlockStorageClusterRequest.Tag]?

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
        if self.azone != nil {
            map["Azone"] = self.azone!
        }
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
        }
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.dbscName != nil {
            map["DbscName"] = self.dbscName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Azone"] as? String {
            self.azone = value
        }
        if let value = dict["Capacity"] as? Int64 {
            self.capacity = value
        }
        if let value = dict["DbscId"] as? String {
            self.dbscId = value
        }
        if let value = dict["DbscName"] as? String {
            self.dbscName = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateDedicatedBlockStorageClusterRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateDedicatedBlockStorageClusterRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateDedicatedBlockStorageClusterResponseBody : Tea.TeaModel {
    public var dbscId: String?

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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbscId"] as? String {
            self.dbscId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDedicatedBlockStorageClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDedicatedBlockStorageClusterResponseBody?

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
            var model = CreateDedicatedBlockStorageClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDiskReplicaGroupRequest : Tea.TeaModel {
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
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var destinationRegionId: String?

    public var destinationZoneId: String?

    public var enableRtc: Bool?

    public var groupName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceZoneId: String?

    public var tag: [CreateDiskReplicaGroupRequest.Tag]?

    public override init() {
        super.init()
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
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.destinationZoneId != nil {
            map["DestinationZoneId"] = self.destinationZoneId!
        }
        if self.enableRtc != nil {
            map["EnableRtc"] = self.enableRtc!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceZoneId != nil {
            map["SourceZoneId"] = self.sourceZoneId!
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
        if let value = dict["Bandwidth"] as? Int64 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestinationRegionId"] as? String {
            self.destinationRegionId = value
        }
        if let value = dict["DestinationZoneId"] as? String {
            self.destinationZoneId = value
        }
        if let value = dict["EnableRtc"] as? Bool {
            self.enableRtc = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RPO"] as? Int64 {
            self.RPO = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceZoneId"] as? String {
            self.sourceZoneId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateDiskReplicaGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateDiskReplicaGroupRequest.Tag()
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

public class CreateDiskReplicaGroupResponseBody : Tea.TeaModel {
    public var replicaGroupId: String?

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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiskReplicaGroupResponseBody?

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
            var model = CreateDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDiskReplicaPairRequest : Tea.TeaModel {
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
    public var bandwidth: Int64?

    public var chargeType: String?

    public var clientToken: String?

    public var description_: String?

    public var destinationDiskId: String?

    public var destinationRegionId: String?

    public var destinationZoneId: String?

    public var diskId: String?

    public var enableRtc: Bool?

    public var pairName: String?

    public var period: Int64?

    public var periodUnit: String?

    public var RPO: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceZoneId: String?

    public var tag: [CreateDiskReplicaPairRequest.Tag]?

    public override init() {
        super.init()
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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationDiskId != nil {
            map["DestinationDiskId"] = self.destinationDiskId!
        }
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.destinationZoneId != nil {
            map["DestinationZoneId"] = self.destinationZoneId!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.enableRtc != nil {
            map["EnableRtc"] = self.enableRtc!
        }
        if self.pairName != nil {
            map["PairName"] = self.pairName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceZoneId != nil {
            map["SourceZoneId"] = self.sourceZoneId!
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
        if let value = dict["Bandwidth"] as? Int64 {
            self.bandwidth = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestinationDiskId"] as? String {
            self.destinationDiskId = value
        }
        if let value = dict["DestinationRegionId"] as? String {
            self.destinationRegionId = value
        }
        if let value = dict["DestinationZoneId"] as? String {
            self.destinationZoneId = value
        }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["EnableRtc"] as? Bool {
            self.enableRtc = value
        }
        if let value = dict["PairName"] as? String {
            self.pairName = value
        }
        if let value = dict["Period"] as? Int64 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RPO"] as? Int64 {
            self.RPO = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceZoneId"] as? String {
            self.sourceZoneId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateDiskReplicaPairRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateDiskReplicaPairRequest.Tag()
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

public class CreateDiskReplicaPairResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var replicaPairId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiskReplicaPairResponseBody?

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
            var model = CreateDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public class CrossRegionCopyInfo : Tea.TeaModel {
        public class Regions : Tea.TeaModel {
            public var regionId: String?

            public var retainDays: Int32?

            public override init() {
                super.init()
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
                if self.retainDays != nil {
                    map["RetainDays"] = self.retainDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RetainDays"] as? Int32 {
                    self.retainDays = value
                }
            }
        }
        public var enabled: Bool?

        public var regions: [CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.regions != nil {
                var tmp : [Any] = []
                for k in self.regions! {
                    tmp.append(k.toMap())
                }
                map["Regions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Regions"] as? [Any?] {
                var tmp : [CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions] = []
                for v in value {
                    if v != nil {
                        var model = CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regions = tmp
            }
        }
    }
    public class RetainRule : Tea.TeaModel {
        public var number: Int32?

        public var timeInterval: Int32?

        public var timeUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.timeInterval != nil {
                map["TimeInterval"] = self.timeInterval!
            }
            if self.timeUnit != nil {
                map["TimeUnit"] = self.timeUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Number"] as? Int32 {
                self.number = value
            }
            if let value = dict["TimeInterval"] as? Int32 {
                self.timeInterval = value
            }
            if let value = dict["TimeUnit"] as? String {
                self.timeUnit = value
            }
        }
    }
    public class Schedule : Tea.TeaModel {
        public var cronExpression: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CronExpression"] as? String {
                self.cronExpression = value
            }
        }
    }
    public class SpecialRetainRules : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var specialPeriodUnit: String?

            public var timeInterval: Int32?

            public var timeUnit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.specialPeriodUnit != nil {
                    map["SpecialPeriodUnit"] = self.specialPeriodUnit!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpecialPeriodUnit"] as? String {
                    self.specialPeriodUnit = value
                }
                if let value = dict["TimeInterval"] as? Int32 {
                    self.timeInterval = value
                }
                if let value = dict["TimeUnit"] as? String {
                    self.timeUnit = value
                }
            }
        }
        public var enabled: Bool?

        public var rules: [CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules] = []
                for v in value {
                    if v != nil {
                        var model = CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public class StorageRule : Tea.TeaModel {
        public var enableImmediateAccess: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableImmediateAccess != nil {
                map["EnableImmediateAccess"] = self.enableImmediateAccess!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableImmediateAccess"] as? Bool {
                self.enableImmediateAccess = value
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
    public var clientToken: String?

    public var crossRegionCopyInfo: CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo?

    public var desc: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var retainRule: CreateEnterpriseSnapshotPolicyRequest.RetainRule?

    public var schedule: CreateEnterpriseSnapshotPolicyRequest.Schedule?

    public var specialRetainRules: CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules?

    public var state: String?

    public var storageRule: CreateEnterpriseSnapshotPolicyRequest.StorageRule?

    public var tag: [CreateEnterpriseSnapshotPolicyRequest.Tag]?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.crossRegionCopyInfo?.validate()
        try self.retainRule?.validate()
        try self.schedule?.validate()
        try self.specialRetainRules?.validate()
        try self.storageRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossRegionCopyInfo != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfo?.toMap()
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retainRule != nil {
            map["RetainRule"] = self.retainRule?.toMap()
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule?.toMap()
        }
        if self.specialRetainRules != nil {
            map["SpecialRetainRules"] = self.specialRetainRules?.toMap()
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRule != nil {
            map["StorageRule"] = self.storageRule?.toMap()
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossRegionCopyInfo"] as? [String: Any?] {
            var model = CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo()
            model.fromMap(value)
            self.crossRegionCopyInfo = model
        }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RetainRule"] as? [String: Any?] {
            var model = CreateEnterpriseSnapshotPolicyRequest.RetainRule()
            model.fromMap(value)
            self.retainRule = model
        }
        if let value = dict["Schedule"] as? [String: Any?] {
            var model = CreateEnterpriseSnapshotPolicyRequest.Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["SpecialRetainRules"] as? [String: Any?] {
            var model = CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules()
            model.fromMap(value)
            self.specialRetainRules = model
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["StorageRule"] as? [String: Any?] {
            var model = CreateEnterpriseSnapshotPolicyRequest.StorageRule()
            model.fromMap(value)
            self.storageRule = model
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateEnterpriseSnapshotPolicyRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateEnterpriseSnapshotPolicyRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class CreateEnterpriseSnapshotPolicyShrinkRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var crossRegionCopyInfoShrink: String?

    public var desc: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var retainRuleShrink: String?

    public var scheduleShrink: String?

    public var specialRetainRulesShrink: String?

    public var state: String?

    public var storageRuleShrink: String?

    public var tag: [CreateEnterpriseSnapshotPolicyShrinkRequest.Tag]?

    public var targetType: String?

    public override init() {
        super.init()
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
        if self.crossRegionCopyInfoShrink != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfoShrink!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retainRuleShrink != nil {
            map["RetainRule"] = self.retainRuleShrink!
        }
        if self.scheduleShrink != nil {
            map["Schedule"] = self.scheduleShrink!
        }
        if self.specialRetainRulesShrink != nil {
            map["SpecialRetainRules"] = self.specialRetainRulesShrink!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRuleShrink != nil {
            map["StorageRule"] = self.storageRuleShrink!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossRegionCopyInfo"] as? String {
            self.crossRegionCopyInfoShrink = value
        }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RetainRule"] as? String {
            self.retainRuleShrink = value
        }
        if let value = dict["Schedule"] as? String {
            self.scheduleShrink = value
        }
        if let value = dict["SpecialRetainRules"] as? String {
            self.specialRetainRulesShrink = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["StorageRule"] as? String {
            self.storageRuleShrink = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateEnterpriseSnapshotPolicyShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateEnterpriseSnapshotPolicyShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class CreateEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnterpriseSnapshotPolicyResponseBody?

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
            var model = CreateEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appId: String?

    public var clientToken: String?

    public var owner: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
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

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

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
            var model = DeleteAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
    }
}

public class DeleteDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class DeleteDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDiskReplicaGroupResponseBody?

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
            var model = DeleteDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class DeleteDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class DeleteDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDiskReplicaPairResponseBody?

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
            var model = DeleteDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var policyId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class DeleteEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnterpriseSnapshotPolicyResponseBody?

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
            var model = DeleteEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDedicatedBlockStorageClusterDisksRequest : Tea.TeaModel {
    public var dbscId: String?

    public var maxResults: Int64?

    public var nextToken: String?

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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbscId"] as? String {
            self.dbscId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDedicatedBlockStorageClusterDisksResponseBody : Tea.TeaModel {
    public class Disks : Tea.TeaModel {
        public class Disk : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var attachedTime: String?

            public var bdfId: String?

            public var burstingEnabled: Bool?

            public var category: String?

            public var deleteAutoSnapshot: Bool?

            public var deleteWithInstance: Bool?

            public var description_: String?

            public var detachedTime: String?

            public var device: String?

            public var diskChargeType: String?

            public var diskId: String?

            public var diskName: String?

            public var enableAutoSnapshot: Bool?

            public var encrypted: Bool?

            public var IOPS: Int64?

            public var imageId: String?

            public var instanceId: String?

            public var KMSKeyId: String?

            public var mountInstanceNum: Int32?

            public var multiAttach: String?

            public var performanceLevel: String?

            public var portable: Bool?

            public var provisionedIops: Int64?

            public var regionId: String?

            public var size: Int32?

            public var sourceSnapshotId: String?

            public var status: String?

            public var storageClusterId: String?

            public var storageSetId: String?

            public var storageSetPartitionNumber: Int32?

            public var tags: [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags]?

            public var throughput: Int64?

            public var type: String?

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
                if self.attachedTime != nil {
                    map["AttachedTime"] = self.attachedTime!
                }
                if self.bdfId != nil {
                    map["BdfId"] = self.bdfId!
                }
                if self.burstingEnabled != nil {
                    map["BurstingEnabled"] = self.burstingEnabled!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.deleteAutoSnapshot != nil {
                    map["DeleteAutoSnapshot"] = self.deleteAutoSnapshot!
                }
                if self.deleteWithInstance != nil {
                    map["DeleteWithInstance"] = self.deleteWithInstance!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.detachedTime != nil {
                    map["DetachedTime"] = self.detachedTime!
                }
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.diskChargeType != nil {
                    map["DiskChargeType"] = self.diskChargeType!
                }
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskName != nil {
                    map["DiskName"] = self.diskName!
                }
                if self.enableAutoSnapshot != nil {
                    map["EnableAutoSnapshot"] = self.enableAutoSnapshot!
                }
                if self.encrypted != nil {
                    map["Encrypted"] = self.encrypted!
                }
                if self.IOPS != nil {
                    map["IOPS"] = self.IOPS!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.KMSKeyId != nil {
                    map["KMSKeyId"] = self.KMSKeyId!
                }
                if self.mountInstanceNum != nil {
                    map["MountInstanceNum"] = self.mountInstanceNum!
                }
                if self.multiAttach != nil {
                    map["MultiAttach"] = self.multiAttach!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                if self.portable != nil {
                    map["Portable"] = self.portable!
                }
                if self.provisionedIops != nil {
                    map["ProvisionedIops"] = self.provisionedIops!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.sourceSnapshotId != nil {
                    map["SourceSnapshotId"] = self.sourceSnapshotId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageClusterId != nil {
                    map["StorageClusterId"] = self.storageClusterId!
                }
                if self.storageSetId != nil {
                    map["StorageSetId"] = self.storageSetId!
                }
                if self.storageSetPartitionNumber != nil {
                    map["StorageSetPartitionNumber"] = self.storageSetPartitionNumber!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.throughput != nil {
                    map["Throughput"] = self.throughput!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachedTime"] as? String {
                    self.attachedTime = value
                }
                if let value = dict["BdfId"] as? String {
                    self.bdfId = value
                }
                if let value = dict["BurstingEnabled"] as? Bool {
                    self.burstingEnabled = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["DeleteAutoSnapshot"] as? Bool {
                    self.deleteAutoSnapshot = value
                }
                if let value = dict["DeleteWithInstance"] as? Bool {
                    self.deleteWithInstance = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DetachedTime"] as? String {
                    self.detachedTime = value
                }
                if let value = dict["Device"] as? String {
                    self.device = value
                }
                if let value = dict["DiskChargeType"] as? String {
                    self.diskChargeType = value
                }
                if let value = dict["DiskId"] as? String {
                    self.diskId = value
                }
                if let value = dict["DiskName"] as? String {
                    self.diskName = value
                }
                if let value = dict["EnableAutoSnapshot"] as? Bool {
                    self.enableAutoSnapshot = value
                }
                if let value = dict["Encrypted"] as? Bool {
                    self.encrypted = value
                }
                if let value = dict["IOPS"] as? Int64 {
                    self.IOPS = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["KMSKeyId"] as? String {
                    self.KMSKeyId = value
                }
                if let value = dict["MountInstanceNum"] as? Int32 {
                    self.mountInstanceNum = value
                }
                if let value = dict["MultiAttach"] as? String {
                    self.multiAttach = value
                }
                if let value = dict["PerformanceLevel"] as? String {
                    self.performanceLevel = value
                }
                if let value = dict["Portable"] as? Bool {
                    self.portable = value
                }
                if let value = dict["ProvisionedIops"] as? Int64 {
                    self.provisionedIops = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["SourceSnapshotId"] as? String {
                    self.sourceSnapshotId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageClusterId"] as? String {
                    self.storageClusterId = value
                }
                if let value = dict["StorageSetId"] as? String {
                    self.storageSetId = value
                }
                if let value = dict["StorageSetPartitionNumber"] as? Int32 {
                    self.storageSetPartitionNumber = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["Throughput"] as? Int64 {
                    self.throughput = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var disk: [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disk != nil {
                var tmp : [Any] = []
                for k in self.disk! {
                    tmp.append(k.toMap())
                }
                map["Disk"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Disk"] as? [Any?] {
                var tmp : [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.disk = tmp
            }
        }
    }
    public var disks: DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.disks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disks != nil {
            map["Disks"] = self.disks?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Disks"] as? [String: Any?] {
            var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks()
            model.fromMap(value)
            self.disks = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDedicatedBlockStorageClusterDisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedBlockStorageClusterDisksResponseBody?

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
            var model = DescribeDedicatedBlockStorageClusterDisksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDedicatedBlockStorageClustersRequest : Tea.TeaModel {
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
    public var azoneId: String?

    public var category: String?

    public var clientToken: String?

    public var dedicatedBlockStorageClusterId: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: [String]?

    public var tag: [DescribeDedicatedBlockStorageClustersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.azoneId != nil {
            map["AzoneId"] = self.azoneId!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedicatedBlockStorageClusterId != nil {
            map["DedicatedBlockStorageClusterId"] = self.dedicatedBlockStorageClusterId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["AzoneId"] as? String {
            self.azoneId = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedicatedBlockStorageClusterId"] as? [String] {
            self.dedicatedBlockStorageClusterId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Status"] as? [String] {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDedicatedBlockStorageClustersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDedicatedBlockStorageClustersRequest.Tag()
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

public class DescribeDedicatedBlockStorageClustersResponseBody : Tea.TeaModel {
    public class DedicatedBlockStorageClusters : Tea.TeaModel {
        public class DedicatedBlockStorageClusterCapacity : Tea.TeaModel {
            public var availableCapacity: Int64?

            public var availableDeviceCapacity: Int64?

            public var availableSpaceCapacity: Double?

            public var clusterAvailableCapacity: Int64?

            public var clusterDeliveryCapacity: Int64?

            public var deliveryCapacity: Int64?

            public var totalCapacity: Int64?

            public var totalDeviceCapacity: Int64?

            public var totalSpaceCapacity: Int64?

            public var usedCapacity: Int64?

            public var usedDeviceCapacity: Int64?

            public var usedSpaceCapacity: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableCapacity != nil {
                    map["AvailableCapacity"] = self.availableCapacity!
                }
                if self.availableDeviceCapacity != nil {
                    map["AvailableDeviceCapacity"] = self.availableDeviceCapacity!
                }
                if self.availableSpaceCapacity != nil {
                    map["AvailableSpaceCapacity"] = self.availableSpaceCapacity!
                }
                if self.clusterAvailableCapacity != nil {
                    map["ClusterAvailableCapacity"] = self.clusterAvailableCapacity!
                }
                if self.clusterDeliveryCapacity != nil {
                    map["ClusterDeliveryCapacity"] = self.clusterDeliveryCapacity!
                }
                if self.deliveryCapacity != nil {
                    map["DeliveryCapacity"] = self.deliveryCapacity!
                }
                if self.totalCapacity != nil {
                    map["TotalCapacity"] = self.totalCapacity!
                }
                if self.totalDeviceCapacity != nil {
                    map["TotalDeviceCapacity"] = self.totalDeviceCapacity!
                }
                if self.totalSpaceCapacity != nil {
                    map["TotalSpaceCapacity"] = self.totalSpaceCapacity!
                }
                if self.usedCapacity != nil {
                    map["UsedCapacity"] = self.usedCapacity!
                }
                if self.usedDeviceCapacity != nil {
                    map["UsedDeviceCapacity"] = self.usedDeviceCapacity!
                }
                if self.usedSpaceCapacity != nil {
                    map["UsedSpaceCapacity"] = self.usedSpaceCapacity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvailableCapacity"] as? Int64 {
                    self.availableCapacity = value
                }
                if let value = dict["AvailableDeviceCapacity"] as? Int64 {
                    self.availableDeviceCapacity = value
                }
                if let value = dict["AvailableSpaceCapacity"] as? Double {
                    self.availableSpaceCapacity = value
                }
                if let value = dict["ClusterAvailableCapacity"] as? Int64 {
                    self.clusterAvailableCapacity = value
                }
                if let value = dict["ClusterDeliveryCapacity"] as? Int64 {
                    self.clusterDeliveryCapacity = value
                }
                if let value = dict["DeliveryCapacity"] as? Int64 {
                    self.deliveryCapacity = value
                }
                if let value = dict["TotalCapacity"] as? Int64 {
                    self.totalCapacity = value
                }
                if let value = dict["TotalDeviceCapacity"] as? Int64 {
                    self.totalDeviceCapacity = value
                }
                if let value = dict["TotalSpaceCapacity"] as? Int64 {
                    self.totalSpaceCapacity = value
                }
                if let value = dict["UsedCapacity"] as? Int64 {
                    self.usedCapacity = value
                }
                if let value = dict["UsedDeviceCapacity"] as? Int64 {
                    self.usedDeviceCapacity = value
                }
                if let value = dict["UsedSpaceCapacity"] as? Double {
                    self.usedSpaceCapacity = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var aliUid: String?

        public var category: String?

        public var createTime: String?

        public var dedicatedBlockStorageClusterCapacity: DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.DedicatedBlockStorageClusterCapacity?

        public var dedicatedBlockStorageClusterId: String?

        public var dedicatedBlockStorageClusterName: String?

        public var description_: String?

        public var enableThinProvision: Bool?

        public var expiredTime: String?

        public var performanceLevel: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var sizeOverSoldRatio: Double?

        public var status: String?

        public var storageDomain: String?

        public var supportedCategory: String?

        public var tags: [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags]?

        public var type: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dedicatedBlockStorageClusterCapacity?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dedicatedBlockStorageClusterCapacity != nil {
                map["DedicatedBlockStorageClusterCapacity"] = self.dedicatedBlockStorageClusterCapacity?.toMap()
            }
            if self.dedicatedBlockStorageClusterId != nil {
                map["DedicatedBlockStorageClusterId"] = self.dedicatedBlockStorageClusterId!
            }
            if self.dedicatedBlockStorageClusterName != nil {
                map["DedicatedBlockStorageClusterName"] = self.dedicatedBlockStorageClusterName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableThinProvision != nil {
                map["EnableThinProvision"] = self.enableThinProvision!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sizeOverSoldRatio != nil {
                map["SizeOverSoldRatio"] = self.sizeOverSoldRatio!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageDomain != nil {
                map["StorageDomain"] = self.storageDomain!
            }
            if self.supportedCategory != nil {
                map["SupportedCategory"] = self.supportedCategory!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? String {
                self.aliUid = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DedicatedBlockStorageClusterCapacity"] as? [String: Any?] {
                var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.DedicatedBlockStorageClusterCapacity()
                model.fromMap(value)
                self.dedicatedBlockStorageClusterCapacity = model
            }
            if let value = dict["DedicatedBlockStorageClusterId"] as? String {
                self.dedicatedBlockStorageClusterId = value
            }
            if let value = dict["DedicatedBlockStorageClusterName"] as? String {
                self.dedicatedBlockStorageClusterName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EnableThinProvision"] as? Bool {
                self.enableThinProvision = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["PerformanceLevel"] as? String {
                self.performanceLevel = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SizeOverSoldRatio"] as? Double {
                self.sizeOverSoldRatio = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageDomain"] as? String {
                self.storageDomain = value
            }
            if let value = dict["SupportedCategory"] as? String {
                self.supportedCategory = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var dedicatedBlockStorageClusters: [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.dedicatedBlockStorageClusters != nil {
            var tmp : [Any] = []
            for k in self.dedicatedBlockStorageClusters! {
                tmp.append(k.toMap())
            }
            map["DedicatedBlockStorageClusters"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedBlockStorageClusters"] as? [Any?] {
            var tmp : [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters] = []
            for v in value {
                if v != nil {
                    var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dedicatedBlockStorageClusters = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDedicatedBlockStorageClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedBlockStorageClustersResponseBody?

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
            var model = DescribeDedicatedBlockStorageClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskEventsRequest : Tea.TeaModel {
    public var diskCategory: String?

    public var diskId: String?

    public var endTime: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var regionId: String?

    public var startTime: String?

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
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeDiskEventsResponseBody : Tea.TeaModel {
    public class DiskEvents : Tea.TeaModel {
        public var description_: String?

        public var diskId: String?

        public var recommendAction: String?

        public var regionId: String?

        public var status: String?

        public var timestamp: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.recommendAction != nil {
                map["RecommendAction"] = self.recommendAction!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["RecommendAction"] as? String {
                self.recommendAction = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var diskEvents: [DescribeDiskEventsResponseBody.DiskEvents]?

    public var nextToken: String?

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
        if self.diskEvents != nil {
            var tmp : [Any] = []
            for k in self.diskEvents! {
                tmp.append(k.toMap())
            }
            map["DiskEvents"] = tmp
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
        if let value = dict["DiskEvents"] as? [Any?] {
            var tmp : [DescribeDiskEventsResponseBody.DiskEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskEventsResponseBody.DiskEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.diskEvents = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDiskEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskEventsResponseBody?

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
            var model = DescribeDiskEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskMonitorDataRequest : Tea.TeaModel {
    public var diskId: String?

    public var endTime: String?

    public var period: Int64?

    public var regionId: String?

    public var startTime: String?

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
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Period"] as? Int64 {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeDiskMonitorDataResponseBody : Tea.TeaModel {
    public class MonitorData : Tea.TeaModel {
        public var BPSPercent: Int64?

        public var burstIOCount: Int64?

        public var diskId: String?

        public var IOPSPercent: Int64?

        public var readBPS: Int64?

        public var readBlockSize: Int64?

        public var readIOPS: Int64?

        public var readLatency: Int64?

        public var timestamp: String?

        public var writeBPS: Int64?

        public var writeBlockSize: Int64?

        public var writeIOPS: Int64?

        public var writeLatency: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.BPSPercent != nil {
                map["BPSPercent"] = self.BPSPercent!
            }
            if self.burstIOCount != nil {
                map["BurstIOCount"] = self.burstIOCount!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.IOPSPercent != nil {
                map["IOPSPercent"] = self.IOPSPercent!
            }
            if self.readBPS != nil {
                map["ReadBPS"] = self.readBPS!
            }
            if self.readBlockSize != nil {
                map["ReadBlockSize"] = self.readBlockSize!
            }
            if self.readIOPS != nil {
                map["ReadIOPS"] = self.readIOPS!
            }
            if self.readLatency != nil {
                map["ReadLatency"] = self.readLatency!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.writeBPS != nil {
                map["WriteBPS"] = self.writeBPS!
            }
            if self.writeBlockSize != nil {
                map["WriteBlockSize"] = self.writeBlockSize!
            }
            if self.writeIOPS != nil {
                map["WriteIOPS"] = self.writeIOPS!
            }
            if self.writeLatency != nil {
                map["WriteLatency"] = self.writeLatency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BPSPercent"] as? Int64 {
                self.BPSPercent = value
            }
            if let value = dict["BurstIOCount"] as? Int64 {
                self.burstIOCount = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["IOPSPercent"] as? Int64 {
                self.IOPSPercent = value
            }
            if let value = dict["ReadBPS"] as? Int64 {
                self.readBPS = value
            }
            if let value = dict["ReadBlockSize"] as? Int64 {
                self.readBlockSize = value
            }
            if let value = dict["ReadIOPS"] as? Int64 {
                self.readIOPS = value
            }
            if let value = dict["ReadLatency"] as? Int64 {
                self.readLatency = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["WriteBPS"] as? Int64 {
                self.writeBPS = value
            }
            if let value = dict["WriteBlockSize"] as? Int64 {
                self.writeBlockSize = value
            }
            if let value = dict["WriteIOPS"] as? Int64 {
                self.writeIOPS = value
            }
            if let value = dict["WriteLatency"] as? Int64 {
                self.writeLatency = value
            }
        }
    }
    public var monitorData: [DescribeDiskMonitorDataResponseBody.MonitorData]?

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
        if self.monitorData != nil {
            var tmp : [Any] = []
            for k in self.monitorData! {
                tmp.append(k.toMap())
            }
            map["MonitorData"] = tmp
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
        if let value = dict["MonitorData"] as? [Any?] {
            var tmp : [DescribeDiskMonitorDataResponseBody.MonitorData] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskMonitorDataResponseBody.MonitorData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.monitorData = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDiskMonitorDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskMonitorDataResponseBody?

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
            var model = DescribeDiskMonitorDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskMonitorDataListRequest : Tea.TeaModel {
    public var diskIds: String?

    public var endTime: String?

    public var maxResults: String?

    public var nextToken: String?

    public var regionId: String?

    public var startTime: String?

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
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskIds"] as? String {
            self.diskIds = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeDiskMonitorDataListResponseBody : Tea.TeaModel {
    public class MonitorData : Tea.TeaModel {
        public var burstIOCount: Int64?

        public var diskId: String?

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
            if self.burstIOCount != nil {
                map["BurstIOCount"] = self.burstIOCount!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BurstIOCount"] as? Int64 {
                self.burstIOCount = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var monitorData: [DescribeDiskMonitorDataListResponseBody.MonitorData]?

    public var nextToken: String?

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
        if self.monitorData != nil {
            var tmp : [Any] = []
            for k in self.monitorData! {
                tmp.append(k.toMap())
            }
            map["MonitorData"] = tmp
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
        if let value = dict["MonitorData"] as? [Any?] {
            var tmp : [DescribeDiskMonitorDataListResponseBody.MonitorData] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskMonitorDataListResponseBody.MonitorData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.monitorData = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDiskMonitorDataListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskMonitorDataListResponseBody?

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
            var model = DescribeDiskMonitorDataListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskReplicaGroupsRequest : Tea.TeaModel {
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
    public var groupIds: String?

    public var maxResults: Int64?

    public var name: String?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var site: String?

    public var tag: [DescribeDiskReplicaGroupsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
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
        if self.site != nil {
            map["Site"] = self.site!
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
        if let value = dict["GroupIds"] as? String {
            self.groupIds = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Site"] as? String {
            self.site = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDiskReplicaGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskReplicaGroupsRequest.Tag()
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

public class DescribeDiskReplicaGroupsResponseBody : Tea.TeaModel {
    public class ReplicaGroups : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var bandwidth: Int64?

        public var description_: String?

        public var destinationRegionId: String?

        public var destinationZoneId: String?

        public var enableRtc: Bool?

        public var groupName: String?

        public var lastRecoverPoint: Int64?

        public var pairIds: [[UInt8]]?

        public var pairNumber: Int64?

        public var primaryRegion: String?

        public var primaryZone: String?

        public var RPO: Int64?

        public var replicaGroupId: String?

        public var resourceGroupId: String?

        public var site: String?

        public var sourceRegionId: String?

        public var sourceZoneId: String?

        public var standbyRegion: String?

        public var standbyZone: String?

        public var status: String?

        public var tags: [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups.Tags]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationRegionId != nil {
                map["DestinationRegionId"] = self.destinationRegionId!
            }
            if self.destinationZoneId != nil {
                map["DestinationZoneId"] = self.destinationZoneId!
            }
            if self.enableRtc != nil {
                map["EnableRtc"] = self.enableRtc!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.lastRecoverPoint != nil {
                map["LastRecoverPoint"] = self.lastRecoverPoint!
            }
            if self.pairIds != nil {
                map["PairIds"] = self.pairIds!
            }
            if self.pairNumber != nil {
                map["PairNumber"] = self.pairNumber!
            }
            if self.primaryRegion != nil {
                map["PrimaryRegion"] = self.primaryRegion!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.RPO != nil {
                map["RPO"] = self.RPO!
            }
            if self.replicaGroupId != nil {
                map["ReplicaGroupId"] = self.replicaGroupId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.sourceRegionId != nil {
                map["SourceRegionId"] = self.sourceRegionId!
            }
            if self.sourceZoneId != nil {
                map["SourceZoneId"] = self.sourceZoneId!
            }
            if self.standbyRegion != nil {
                map["StandbyRegion"] = self.standbyRegion!
            }
            if self.standbyZone != nil {
                map["StandbyZone"] = self.standbyZone!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int64 {
                self.bandwidth = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestinationRegionId"] as? String {
                self.destinationRegionId = value
            }
            if let value = dict["DestinationZoneId"] as? String {
                self.destinationZoneId = value
            }
            if let value = dict["EnableRtc"] as? Bool {
                self.enableRtc = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["LastRecoverPoint"] as? Int64 {
                self.lastRecoverPoint = value
            }
            if let value = dict["PairIds"] as? [[UInt8]] {
                self.pairIds = value
            }
            if let value = dict["PairNumber"] as? Int64 {
                self.pairNumber = value
            }
            if let value = dict["PrimaryRegion"] as? String {
                self.primaryRegion = value
            }
            if let value = dict["PrimaryZone"] as? String {
                self.primaryZone = value
            }
            if let value = dict["RPO"] as? Int64 {
                self.RPO = value
            }
            if let value = dict["ReplicaGroupId"] as? String {
                self.replicaGroupId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
            if let value = dict["SourceRegionId"] as? String {
                self.sourceRegionId = value
            }
            if let value = dict["SourceZoneId"] as? String {
                self.sourceZoneId = value
            }
            if let value = dict["StandbyRegion"] as? String {
                self.standbyRegion = value
            }
            if let value = dict["StandbyZone"] as? String {
                self.standbyZone = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDiskReplicaGroupsResponseBody.ReplicaGroups.Tags()
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
    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var replicaGroups: [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.replicaGroups != nil {
            var tmp : [Any] = []
            for k in self.replicaGroups! {
                tmp.append(k.toMap())
            }
            map["ReplicaGroups"] = tmp
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReplicaGroups"] as? [Any?] {
            var tmp : [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskReplicaGroupsResponseBody.ReplicaGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.replicaGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDiskReplicaGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskReplicaGroupsResponseBody?

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
            var model = DescribeDiskReplicaGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskReplicaPairProgressRequest : Tea.TeaModel {
    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class DescribeDiskReplicaPairProgressResponseBody : Tea.TeaModel {
    public var progress: Int32?

    public var recoverPoint: Int64?

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
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.recoverPoint != nil {
            map["RecoverPoint"] = self.recoverPoint!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RecoverPoint"] as? Int64 {
            self.recoverPoint = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDiskReplicaPairProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskReplicaPairProgressResponseBody?

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
            var model = DescribeDiskReplicaPairProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskReplicaPairsRequest : Tea.TeaModel {
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
    public var maxResults: Int64?

    public var name: String?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pairIds: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var resourceGroupId: String?

    public var site: String?

    public var tag: [DescribeDiskReplicaPairsRequest.Tag]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pairIds != nil {
            map["PairIds"] = self.pairIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.site != nil {
            map["Site"] = self.site!
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
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PairIds"] as? String {
            self.pairIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Site"] as? String {
            self.site = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDiskReplicaPairsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskReplicaPairsRequest.Tag()
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

public class DescribeDiskReplicaPairsResponseBody : Tea.TeaModel {
    public class ReplicaPairs : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var bandwidth: Int64?

        public var chargeType: String?

        public var createTime: Int64?

        public var description_: String?

        public var destinationDiskId: String?

        public var destinationRegion: String?

        public var destinationZoneId: String?

        public var enableRtc: Bool?

        public var expiredTime: Int64?

        public var lastRecoverPoint: Int64?

        public var pairName: String?

        public var primaryRegion: String?

        public var primaryZone: String?

        public var RPO: Int64?

        public var replicaGroupId: String?

        public var replicaGroupName: String?

        public var replicaPairId: String?

        public var resourceGroupId: String?

        public var site: String?

        public var sourceDiskId: String?

        public var sourceRegion: String?

        public var sourceZoneId: String?

        public var standbyRegion: String?

        public var standbyZone: String?

        public var status: String?

        public var statusMessage: String?

        public var tags: [DescribeDiskReplicaPairsResponseBody.ReplicaPairs.Tags]?

        public override init() {
            super.init()
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
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationDiskId != nil {
                map["DestinationDiskId"] = self.destinationDiskId!
            }
            if self.destinationRegion != nil {
                map["DestinationRegion"] = self.destinationRegion!
            }
            if self.destinationZoneId != nil {
                map["DestinationZoneId"] = self.destinationZoneId!
            }
            if self.enableRtc != nil {
                map["EnableRtc"] = self.enableRtc!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.lastRecoverPoint != nil {
                map["LastRecoverPoint"] = self.lastRecoverPoint!
            }
            if self.pairName != nil {
                map["PairName"] = self.pairName!
            }
            if self.primaryRegion != nil {
                map["PrimaryRegion"] = self.primaryRegion!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.RPO != nil {
                map["RPO"] = self.RPO!
            }
            if self.replicaGroupId != nil {
                map["ReplicaGroupId"] = self.replicaGroupId!
            }
            if self.replicaGroupName != nil {
                map["ReplicaGroupName"] = self.replicaGroupName!
            }
            if self.replicaPairId != nil {
                map["ReplicaPairId"] = self.replicaPairId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.sourceDiskId != nil {
                map["SourceDiskId"] = self.sourceDiskId!
            }
            if self.sourceRegion != nil {
                map["SourceRegion"] = self.sourceRegion!
            }
            if self.sourceZoneId != nil {
                map["SourceZoneId"] = self.sourceZoneId!
            }
            if self.standbyRegion != nil {
                map["StandbyRegion"] = self.standbyRegion!
            }
            if self.standbyZone != nil {
                map["StandbyZone"] = self.standbyZone!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
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
            if let value = dict["Bandwidth"] as? Int64 {
                self.bandwidth = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestinationDiskId"] as? String {
                self.destinationDiskId = value
            }
            if let value = dict["DestinationRegion"] as? String {
                self.destinationRegion = value
            }
            if let value = dict["DestinationZoneId"] as? String {
                self.destinationZoneId = value
            }
            if let value = dict["EnableRtc"] as? Bool {
                self.enableRtc = value
            }
            if let value = dict["ExpiredTime"] as? Int64 {
                self.expiredTime = value
            }
            if let value = dict["LastRecoverPoint"] as? Int64 {
                self.lastRecoverPoint = value
            }
            if let value = dict["PairName"] as? String {
                self.pairName = value
            }
            if let value = dict["PrimaryRegion"] as? String {
                self.primaryRegion = value
            }
            if let value = dict["PrimaryZone"] as? String {
                self.primaryZone = value
            }
            if let value = dict["RPO"] as? Int64 {
                self.RPO = value
            }
            if let value = dict["ReplicaGroupId"] as? String {
                self.replicaGroupId = value
            }
            if let value = dict["ReplicaGroupName"] as? String {
                self.replicaGroupName = value
            }
            if let value = dict["ReplicaPairId"] as? String {
                self.replicaPairId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
            if let value = dict["SourceDiskId"] as? String {
                self.sourceDiskId = value
            }
            if let value = dict["SourceRegion"] as? String {
                self.sourceRegion = value
            }
            if let value = dict["SourceZoneId"] as? String {
                self.sourceZoneId = value
            }
            if let value = dict["StandbyRegion"] as? String {
                self.standbyRegion = value
            }
            if let value = dict["StandbyZone"] as? String {
                self.standbyZone = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeDiskReplicaPairsResponseBody.ReplicaPairs.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDiskReplicaPairsResponseBody.ReplicaPairs.Tags()
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
    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var replicaPairs: [DescribeDiskReplicaPairsResponseBody.ReplicaPairs]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.replicaPairs != nil {
            var tmp : [Any] = []
            for k in self.replicaPairs! {
                tmp.append(k.toMap())
            }
            map["ReplicaPairs"] = tmp
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReplicaPairs"] as? [Any?] {
            var tmp : [DescribeDiskReplicaPairsResponseBody.ReplicaPairs] = []
            for v in value {
                if v != nil {
                    var model = DescribeDiskReplicaPairsResponseBody.ReplicaPairs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.replicaPairs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDiskReplicaPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskReplicaPairsResponseBody?

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
            var model = DescribeDiskReplicaPairsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var diskIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyIds: [String]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeEnterpriseSnapshotPolicyRequest.Tag]?

    public override init() {
        super.init()
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
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskIds"] as? [String] {
            self.diskIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyIds"] as? [String] {
            self.policyIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeEnterpriseSnapshotPolicyRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeEnterpriseSnapshotPolicyRequest.Tag()
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

public class DescribeEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class CrossRegionCopyInfo : Tea.TeaModel {
            public class Regions : Tea.TeaModel {
                public var regionId: String?

                public var retainDays: Int32?

                public override init() {
                    super.init()
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
                    if self.retainDays != nil {
                        map["RetainDays"] = self.retainDays!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["RetainDays"] as? Int32 {
                        self.retainDays = value
                    }
                }
            }
            public var enabled: Bool?

            public var regions: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo.Regions]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.regions != nil {
                    var tmp : [Any] = []
                    for k in self.regions! {
                        tmp.append(k.toMap())
                    }
                    map["Regions"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["Regions"] as? [Any?] {
                    var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo.Regions] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo.Regions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.regions = tmp
                }
            }
        }
        public class RetainRule : Tea.TeaModel {
            public var number: Int32?

            public var timeInterval: Int32?

            public var timeUnit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Number"] as? Int32 {
                    self.number = value
                }
                if let value = dict["TimeInterval"] as? Int32 {
                    self.timeInterval = value
                }
                if let value = dict["TimeUnit"] as? String {
                    self.timeUnit = value
                }
            }
        }
        public class Schedule : Tea.TeaModel {
            public var cronExpression: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cronExpression != nil {
                    map["CronExpression"] = self.cronExpression!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CronExpression"] as? String {
                    self.cronExpression = value
                }
            }
        }
        public class SpecialRetainRules : Tea.TeaModel {
            public class Rules : Tea.TeaModel {
                public var specialPeriodUnit: String?

                public var timeInterval: Int32?

                public var timeUnit: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.specialPeriodUnit != nil {
                        map["SpecialPeriodUnit"] = self.specialPeriodUnit!
                    }
                    if self.timeInterval != nil {
                        map["TimeInterval"] = self.timeInterval!
                    }
                    if self.timeUnit != nil {
                        map["TimeUnit"] = self.timeUnit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SpecialPeriodUnit"] as? String {
                        self.specialPeriodUnit = value
                    }
                    if let value = dict["TimeInterval"] as? Int32 {
                        self.timeInterval = value
                    }
                    if let value = dict["TimeUnit"] as? String {
                        self.timeUnit = value
                    }
                }
            }
            public var enabled: Bool?

            public var rules: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules.Rules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["Rules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["Rules"] as? [Any?] {
                    var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules.Rules] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules.Rules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rules = tmp
                }
            }
        }
        public class StorageRule : Tea.TeaModel {
            public var enableImmediateAccess: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableImmediateAccess != nil {
                    map["EnableImmediateAccess"] = self.enableImmediateAccess!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnableImmediateAccess"] as? Bool {
                    self.enableImmediateAccess = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var crossRegionCopyInfo: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo?

        public var desc: String?

        public var diskIds: [String]?

        public var managedForEcs: Bool?

        public var name: String?

        public var policyId: String?

        public var resourceGroupId: String?

        public var retainRule: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.RetainRule?

        public var schedule: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Schedule?

        public var specialRetainRules: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules?

        public var state: String?

        public var storageRule: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.StorageRule?

        public var tags: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Tags]?

        public var targetCount: Int32?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.crossRegionCopyInfo?.validate()
            try self.retainRule?.validate()
            try self.schedule?.validate()
            try self.specialRetainRules?.validate()
            try self.storageRule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossRegionCopyInfo != nil {
                map["CrossRegionCopyInfo"] = self.crossRegionCopyInfo?.toMap()
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.diskIds != nil {
                map["DiskIds"] = self.diskIds!
            }
            if self.managedForEcs != nil {
                map["ManagedForEcs"] = self.managedForEcs!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.retainRule != nil {
                map["RetainRule"] = self.retainRule?.toMap()
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule?.toMap()
            }
            if self.specialRetainRules != nil {
                map["SpecialRetainRules"] = self.specialRetainRules?.toMap()
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.storageRule != nil {
                map["StorageRule"] = self.storageRule?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.targetCount != nil {
                map["TargetCount"] = self.targetCount!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CrossRegionCopyInfo"] as? [String: Any?] {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo()
                model.fromMap(value)
                self.crossRegionCopyInfo = model
            }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["DiskIds"] as? [String] {
                self.diskIds = value
            }
            if let value = dict["ManagedForEcs"] as? Bool {
                self.managedForEcs = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RetainRule"] as? [String: Any?] {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.RetainRule()
                model.fromMap(value)
                self.retainRule = model
            }
            if let value = dict["Schedule"] as? [String: Any?] {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Schedule()
                model.fromMap(value)
                self.schedule = model
            }
            if let value = dict["SpecialRetainRules"] as? [String: Any?] {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules()
                model.fromMap(value)
                self.specialRetainRules = model
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["StorageRule"] as? [String: Any?] {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.StorageRule()
                model.fromMap(value)
                self.storageRule = model
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TargetCount"] as? Int32 {
                self.targetCount = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policies: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEnterpriseSnapshotPolicyResponseBody?

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
            var model = DescribeEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var eventLevel: String?

    public var eventName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventLevel != nil {
            map["EventLevel"] = self.eventLevel!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventLevel"] as? String {
            self.eventLevel = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeEventsResponseBody : Tea.TeaModel {
    public class ResourceEvents : Tea.TeaModel {
        public var description_: String?

        public var endTime: String?

        public var eventLevel: String?

        public var eventName: String?

        public var eventType: String?

        public var extraAttributes: String?

        public var recommendAction: String?

        public var recommendParams: String?

        public var resourceId: String?

        public var resourceType: String?

        public var startTime: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.eventLevel != nil {
                map["EventLevel"] = self.eventLevel!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.extraAttributes != nil {
                map["ExtraAttributes"] = self.extraAttributes!
            }
            if self.recommendAction != nil {
                map["RecommendAction"] = self.recommendAction!
            }
            if self.recommendParams != nil {
                map["RecommendParams"] = self.recommendParams!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EventLevel"] as? String {
                self.eventLevel = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["ExtraAttributes"] as? String {
                self.extraAttributes = value
            }
            if let value = dict["RecommendAction"] as? String {
                self.recommendAction = value
            }
            if let value = dict["RecommendParams"] as? String {
                self.recommendParams = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceEvents: [DescribeEventsResponseBody.ResourceEvents]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceEvents != nil {
            var tmp : [Any] = []
            for k in self.resourceEvents! {
                tmp.append(k.toMap())
            }
            map["ResourceEvents"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceEvents"] as? [Any?] {
            var tmp : [DescribeEventsResponseBody.ResourceEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeEventsResponseBody.ResourceEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceEvents = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsResponseBody?

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
            var model = DescribeEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLensMonitorDisksRequest : Tea.TeaModel {
    public var diskCategory: String?

    public var diskIdPattern: String?

    public var diskIds: [String]?

    public var lensTags: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskIdPattern != nil {
            map["DiskIdPattern"] = self.diskIdPattern!
        }
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.lensTags != nil {
            map["LensTags"] = self.lensTags!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["DiskIdPattern"] as? String {
            self.diskIdPattern = value
        }
        if let value = dict["DiskIds"] as? [String] {
            self.diskIds = value
        }
        if let value = dict["LensTags"] as? [String] {
            self.lensTags = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeLensMonitorDisksResponseBody : Tea.TeaModel {
    public class DiskInfos : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var bps: Int32?

        public var burstingEnabled: Bool?

        public var diskCategory: String?

        public var diskId: String?

        public var diskName: String?

        public var diskStatus: String?

        public var diskType: String?

        public var iops: Int32?

        public var lensTags: [String]?

        public var performanceLevel: String?

        public var provisionedIops: Int32?

        public var regionId: String?

        public var sharingEnabled: String?

        public var size: Int32?

        public var tags: [DescribeLensMonitorDisksResponseBody.DiskInfos.Tags]?

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
            if self.bps != nil {
                map["Bps"] = self.bps!
            }
            if self.burstingEnabled != nil {
                map["BurstingEnabled"] = self.burstingEnabled!
            }
            if self.diskCategory != nil {
                map["DiskCategory"] = self.diskCategory!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.diskName != nil {
                map["DiskName"] = self.diskName!
            }
            if self.diskStatus != nil {
                map["DiskStatus"] = self.diskStatus!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.iops != nil {
                map["Iops"] = self.iops!
            }
            if self.lensTags != nil {
                map["LensTags"] = self.lensTags!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.provisionedIops != nil {
                map["ProvisionedIops"] = self.provisionedIops!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sharingEnabled != nil {
                map["SharingEnabled"] = self.sharingEnabled!
            }
            if self.size != nil {
                map["Size"] = self.size!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bps"] as? Int32 {
                self.bps = value
            }
            if let value = dict["BurstingEnabled"] as? Bool {
                self.burstingEnabled = value
            }
            if let value = dict["DiskCategory"] as? String {
                self.diskCategory = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["DiskName"] as? String {
                self.diskName = value
            }
            if let value = dict["DiskStatus"] as? String {
                self.diskStatus = value
            }
            if let value = dict["DiskType"] as? String {
                self.diskType = value
            }
            if let value = dict["Iops"] as? Int32 {
                self.iops = value
            }
            if let value = dict["LensTags"] as? [String] {
                self.lensTags = value
            }
            if let value = dict["PerformanceLevel"] as? String {
                self.performanceLevel = value
            }
            if let value = dict["ProvisionedIops"] as? Int32 {
                self.provisionedIops = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SharingEnabled"] as? String {
                self.sharingEnabled = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeLensMonitorDisksResponseBody.DiskInfos.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLensMonitorDisksResponseBody.DiskInfos.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var diskInfos: [DescribeLensMonitorDisksResponseBody.DiskInfos]?

    public var nextToken: String?

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
        if self.diskInfos != nil {
            var tmp : [Any] = []
            for k in self.diskInfos! {
                tmp.append(k.toMap())
            }
            map["DiskInfos"] = tmp
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
        if let value = dict["DiskInfos"] as? [Any?] {
            var tmp : [DescribeLensMonitorDisksResponseBody.DiskInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeLensMonitorDisksResponseBody.DiskInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.diskInfos = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeLensMonitorDisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLensMonitorDisksResponseBody?

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
            var model = DescribeLensMonitorDisksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLensServiceStatusResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeLensServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLensServiceStatusResponseBody?

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
            var model = DescribeLensServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMetricDataRequest : Tea.TeaModel {
    public var aggreOps: String?

    public var aggreOverLineOps: String?

    public var dimensions: String?

    public var endTime: String?

    public var groupByLabels: [String]?

    public var metricName: String?

    public var period: Int32?

    public var regionId: String?

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
        if self.aggreOps != nil {
            map["AggreOps"] = self.aggreOps!
        }
        if self.aggreOverLineOps != nil {
            map["AggreOverLineOps"] = self.aggreOverLineOps!
        }
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupByLabels != nil {
            map["GroupByLabels"] = self.groupByLabels!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggreOps"] as? String {
            self.aggreOps = value
        }
        if let value = dict["AggreOverLineOps"] as? String {
            self.aggreOverLineOps = value
        }
        if let value = dict["Dimensions"] as? String {
            self.dimensions = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GroupByLabels"] as? [String] {
            self.groupByLabels = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeMetricDataShrinkRequest : Tea.TeaModel {
    public var aggreOps: String?

    public var aggreOverLineOps: String?

    public var dimensions: String?

    public var endTime: String?

    public var groupByLabelsShrink: String?

    public var metricName: String?

    public var period: Int32?

    public var regionId: String?

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
        if self.aggreOps != nil {
            map["AggreOps"] = self.aggreOps!
        }
        if self.aggreOverLineOps != nil {
            map["AggreOverLineOps"] = self.aggreOverLineOps!
        }
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupByLabelsShrink != nil {
            map["GroupByLabels"] = self.groupByLabelsShrink!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggreOps"] as? String {
            self.aggreOps = value
        }
        if let value = dict["AggreOverLineOps"] as? String {
            self.aggreOverLineOps = value
        }
        if let value = dict["Dimensions"] as? String {
            self.dimensions = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GroupByLabels"] as? String {
            self.groupByLabelsShrink = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeMetricDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var datapoints: Any?

        public var labels: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datapoints != nil {
                map["Datapoints"] = self.datapoints!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Datapoints"] as? Any {
                self.datapoints = value
            }
            if let value = dict["Labels"] as? Any {
                self.labels = value
            }
        }
    }
    public var dataList: [DescribeMetricDataResponseBody.DataList]?

    public var requestId: String?

    public var totalCount: Int32?

    public var warnings: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.warnings != nil {
            map["Warnings"] = self.warnings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeMetricDataResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeMetricDataResponseBody.DataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Warnings"] as? [String] {
            self.warnings = value
        }
    }
}

public class DescribeMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetricDataResponseBody?

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
            var model = DescribeMetricDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePairDrillsRequest : Tea.TeaModel {
    public var drillId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pairId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pairId != nil {
            map["PairId"] = self.pairId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrillId"] as? String {
            self.drillId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PairId"] as? String {
            self.pairId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribePairDrillsResponseBody : Tea.TeaModel {
    public class Drills : Tea.TeaModel {
        public var drillDiskId: String?

        public var drillDiskStatus: String?

        public var drillId: String?

        public var recoverPoint: Int64?

        public var startAt: Int64?

        public var status: String?

        public var statusMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drillDiskId != nil {
                map["DrillDiskId"] = self.drillDiskId!
            }
            if self.drillDiskStatus != nil {
                map["DrillDiskStatus"] = self.drillDiskStatus!
            }
            if self.drillId != nil {
                map["DrillId"] = self.drillId!
            }
            if self.recoverPoint != nil {
                map["RecoverPoint"] = self.recoverPoint!
            }
            if self.startAt != nil {
                map["StartAt"] = self.startAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DrillDiskId"] as? String {
                self.drillDiskId = value
            }
            if let value = dict["DrillDiskStatus"] as? String {
                self.drillDiskStatus = value
            }
            if let value = dict["DrillId"] as? String {
                self.drillId = value
            }
            if let value = dict["RecoverPoint"] as? Int64 {
                self.recoverPoint = value
            }
            if let value = dict["StartAt"] as? Int64 {
                self.startAt = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
        }
    }
    public var drills: [DescribePairDrillsResponseBody.Drills]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.drills != nil {
            var tmp : [Any] = []
            for k in self.drills! {
                tmp.append(k.toMap())
            }
            map["Drills"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Drills"] as? [Any?] {
            var tmp : [DescribePairDrillsResponseBody.Drills] = []
            for v in value {
                if v != nil {
                    var model = DescribePairDrillsResponseBody.Drills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.drills = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribePairDrillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePairDrillsResponseBody?

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
            var model = DescribePairDrillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var localName: String?

            public var resourceTypes: [String]?

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
                if self.resourceTypes != nil {
                    map["ResourceTypes"] = self.resourceTypes!
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
                if let value = dict["ResourceTypes"] as? [String] {
                    self.resourceTypes = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var localName: String?

        public var regionEndpoint: String?

        public var regionId: String?

        public var zones: [DescribeRegionsResponseBody.Regions.Zones]?

        public override init() {
            super.init()
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
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Zones] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Zones()
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
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeReplicaGroupDrillsRequest : Tea.TeaModel {
    public var drillId: String?

    public var groupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrillId"] as? String {
            self.drillId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
    }
}

public class DescribeReplicaGroupDrillsResponseBody : Tea.TeaModel {
    public class Drills : Tea.TeaModel {
        public class PairsInfo : Tea.TeaModel {
            public var drillDiskId: String?

            public var drillDiskStatus: String?

            public var pairId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.drillDiskId != nil {
                    map["DrillDiskId"] = self.drillDiskId!
                }
                if self.drillDiskStatus != nil {
                    map["DrillDiskStatus"] = self.drillDiskStatus!
                }
                if self.pairId != nil {
                    map["PairId"] = self.pairId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DrillDiskId"] as? String {
                    self.drillDiskId = value
                }
                if let value = dict["DrillDiskStatus"] as? String {
                    self.drillDiskStatus = value
                }
                if let value = dict["PairId"] as? String {
                    self.pairId = value
                }
            }
        }
        public var drillId: String?

        public var groupId: String?

        public var pairsInfo: [DescribeReplicaGroupDrillsResponseBody.Drills.PairsInfo]?

        public var recoverPoint: Int64?

        public var startAt: Int64?

        public var status: String?

        public var statusMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drillId != nil {
                map["DrillId"] = self.drillId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.pairsInfo != nil {
                var tmp : [Any] = []
                for k in self.pairsInfo! {
                    tmp.append(k.toMap())
                }
                map["PairsInfo"] = tmp
            }
            if self.recoverPoint != nil {
                map["RecoverPoint"] = self.recoverPoint!
            }
            if self.startAt != nil {
                map["StartAt"] = self.startAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DrillId"] as? String {
                self.drillId = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["PairsInfo"] as? [Any?] {
                var tmp : [DescribeReplicaGroupDrillsResponseBody.Drills.PairsInfo] = []
                for v in value {
                    if v != nil {
                        var model = DescribeReplicaGroupDrillsResponseBody.Drills.PairsInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pairsInfo = tmp
            }
            if let value = dict["RecoverPoint"] as? Int64 {
                self.recoverPoint = value
            }
            if let value = dict["StartAt"] as? Int64 {
                self.startAt = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
        }
    }
    public var drills: [DescribeReplicaGroupDrillsResponseBody.Drills]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.drills != nil {
            var tmp : [Any] = []
            for k in self.drills! {
                tmp.append(k.toMap())
            }
            map["Drills"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Drills"] as? [Any?] {
            var tmp : [DescribeReplicaGroupDrillsResponseBody.Drills] = []
            for v in value {
                if v != nil {
                    var model = DescribeReplicaGroupDrillsResponseBody.Drills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.drills = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeReplicaGroupDrillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeReplicaGroupDrillsResponseBody?

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
            var model = DescribeReplicaGroupDrillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSolutionInstanceConfigurationRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
            }
        }
    }
    public var clientToken: String?

    public var parameters: [DescribeSolutionInstanceConfigurationRequest.Parameters]?

    public var regionId: String?

    public var solutionId: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [DescribeSolutionInstanceConfigurationRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = DescribeSolutionInstanceConfigurationRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SolutionId"] as? String {
            self.solutionId = value
        }
    }
}

public class DescribeSolutionInstanceConfigurationResponseBody : Tea.TeaModel {
    public var data: [[String: Any]]?

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
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSolutionInstanceConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSolutionInstanceConfigurationResponseBody?

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
            var model = DescribeSolutionInstanceConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserTagKeysRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var tagFilterKey: String?

    public override init() {
        super.init()
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
        if self.tagFilterKey != nil {
            map["TagFilterKey"] = self.tagFilterKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TagFilterKey"] as? String {
            self.tagFilterKey = value
        }
    }
}

public class DescribeUserTagKeysResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagKeys"] as? [String] {
            self.tagKeys = value
        }
    }
}

public class DescribeUserTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserTagKeysResponseBody?

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
            var model = DescribeUserTagKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserTagValuesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var tagFilterValue: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tagFilterValue != nil {
            map["TagFilterValue"] = self.tagFilterValue!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TagFilterValue"] as? String {
            self.tagFilterValue = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
    }
}

public class DescribeUserTagValuesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagValues"] as? [String] {
            self.tagValues = value
        }
    }
}

public class DescribeUserTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserTagValuesResponseBody?

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
            var model = DescribeUserTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FailoverDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
    }
}

public class FailoverDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class FailoverDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailoverDiskReplicaGroupResponseBody?

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
            var model = FailoverDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FailoverDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class FailoverDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class FailoverDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailoverDiskReplicaPairResponseBody?

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
            var model = FailoverDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetReportRequest : Tea.TeaModel {
    public var appName: String?

    public var regionId: String?

    public var reportId: String?

    public var reportType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
    }
}

public class GetReportResponseBody : Tea.TeaModel {
    public class Datas : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var dataPoints: [String: Any]?

            public var labels: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataPoints != nil {
                    map["DataPoints"] = self.dataPoints!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataPoints"] as? [String: Any] {
                    self.dataPoints = value
                }
                if let value = dict["Labels"] as? [String: Any] {
                    self.labels = value
                }
            }
        }
        public var data: [GetReportResponseBody.Datas.Data]?

        public var title: String?

        public override init() {
            super.init()
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
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [GetReportResponseBody.Datas.Data] = []
                for v in value {
                    if v != nil {
                        var model = GetReportResponseBody.Datas.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var datas: [GetReportResponseBody.Datas]?

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
        if self.datas != nil {
            var tmp : [Any] = []
            for k in self.datas! {
                tmp.append(k.toMap())
            }
            map["Datas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Datas"] as? [Any?] {
            var tmp : [GetReportResponseBody.Datas] = []
            for v in value {
                if v != nil {
                    var model = GetReportResponseBody.Datas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReportResponseBody?

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
            var model = GetReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListReplicaEdgeSupportedRequest : Tea.TeaModel {
    public var azone: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.azone != nil {
            map["Azone"] = self.azone!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Azone"] as? String {
            self.azone = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListReplicaEdgeSupportedResponseBody : Tea.TeaModel {
    public class SupportedRegions : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
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
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var regionId: String?

        public var zones: [ListReplicaEdgeSupportedResponseBody.SupportedRegions.Zones]?

        public override init() {
            super.init()
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
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [ListReplicaEdgeSupportedResponseBody.SupportedRegions.Zones] = []
                for v in value {
                    if v != nil {
                        var model = ListReplicaEdgeSupportedResponseBody.SupportedRegions.Zones()
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var supportedRegions: [ListReplicaEdgeSupportedResponseBody.SupportedRegions]?

    public override init() {
        super.init()
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
        if self.supportedRegions != nil {
            var tmp : [Any] = []
            for k in self.supportedRegions! {
                tmp.append(k.toMap())
            }
            map["SupportedRegions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SupportedRegions"] as? [Any?] {
            var tmp : [ListReplicaEdgeSupportedResponseBody.SupportedRegions] = []
            for v in value {
                if v != nil {
                    var model = ListReplicaEdgeSupportedResponseBody.SupportedRegions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supportedRegions = tmp
        }
    }
}

public class ListReplicaEdgeSupportedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReplicaEdgeSupportedResponseBody?

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
            var model = ListReplicaEdgeSupportedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListReportsRequest : Tea.TeaModel {
    public var appId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
    }
}

public class ListReportsResponseBody : Tea.TeaModel {
    public class HistoryReports : Tea.TeaModel {
        public var appName: String?

        public var reportId: String?

        public var reportName: String?

        public var reportTime: String?

        public var subscribePeriod: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportName != nil {
                map["ReportName"] = self.reportName!
            }
            if self.reportTime != nil {
                map["ReportTime"] = self.reportTime!
            }
            if self.subscribePeriod != nil {
                map["SubscribePeriod"] = self.subscribePeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["ReportTime"] as? String {
                self.reportTime = value
            }
            if let value = dict["SubscribePeriod"] as? String {
                self.subscribePeriod = value
            }
        }
    }
    public var historyReports: [ListReportsResponseBody.HistoryReports]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.historyReports != nil {
            var tmp : [Any] = []
            for k in self.historyReports! {
                tmp.append(k.toMap())
            }
            map["HistoryReports"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HistoryReports"] as? [Any?] {
            var tmp : [ListReportsResponseBody.HistoryReports] = []
            for v in value {
                if v != nil {
                    var model = ListReportsResponseBody.HistoryReports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.historyReports = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReportsResponseBody?

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
            var model = ListReportsResponseBody()
            model.fromMap(value)
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
    public var clientToken: String?

    public var nextToken: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public class AppTags : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var appId: String?

    public var appName: String?

    public var appTags: [ModifyAppRequest.AppTags]?

    public var clientToken: String?

    public var description_: String?

    public var owner: String?

    public var regionId: String?

    public var reportSendEnabled: Bool?

    public var subscribePeriod: String?

    public var subscribeStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appTags != nil {
            var tmp : [Any] = []
            for k in self.appTags! {
                tmp.append(k.toMap())
            }
            map["AppTags"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reportSendEnabled != nil {
            map["ReportSendEnabled"] = self.reportSendEnabled!
        }
        if self.subscribePeriod != nil {
            map["SubscribePeriod"] = self.subscribePeriod!
        }
        if self.subscribeStatus != nil {
            map["SubscribeStatus"] = self.subscribeStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppTags"] as? [Any?] {
            var tmp : [ModifyAppRequest.AppTags] = []
            for v in value {
                if v != nil {
                    var model = ModifyAppRequest.AppTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appTags = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReportSendEnabled"] as? Bool {
            self.reportSendEnabled = value
        }
        if let value = dict["SubscribePeriod"] as? String {
            self.subscribePeriod = value
        }
        if let value = dict["SubscribeStatus"] as? String {
            self.subscribeStatus = value
        }
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var userCode: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.userCode != nil {
            map["UserCode"] = self.userCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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
        if let value = dict["UserCode"] as? String {
            self.userCode = value
        }
    }
}

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

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
            var model = ModifyAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDedicatedBlockStorageClusterAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbscId: String?

    public var dbscName: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.dbscName != nil {
            map["DbscName"] = self.dbscName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DbscId"] as? String {
            self.dbscId = value
        }
        if let value = dict["DbscName"] as? String {
            self.dbscName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDedicatedBlockStorageClusterAttributeResponseBody : Tea.TeaModel {
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

public class ModifyDedicatedBlockStorageClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedBlockStorageClusterAttributeResponseBody?

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
            var model = ModifyDedicatedBlockStorageClusterAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskReplicaGroupRequest : Tea.TeaModel {
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var enableRtc: Bool?

    public var groupName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.enableRtc != nil {
            map["EnableRtc"] = self.enableRtc!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int64 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableRtc"] as? Bool {
            self.enableRtc = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RPO"] as? Int64 {
            self.RPO = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
    }
}

public class ModifyDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class ModifyDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskReplicaGroupResponseBody?

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
            var model = ModifyDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskReplicaPairRequest : Tea.TeaModel {
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var enableRtc: Bool?

    public var pairName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.enableRtc != nil {
            map["EnableRtc"] = self.enableRtc!
        }
        if self.pairName != nil {
            map["PairName"] = self.pairName!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int64 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableRtc"] as? Bool {
            self.enableRtc = value
        }
        if let value = dict["PairName"] as? String {
            self.pairName = value
        }
        if let value = dict["RPO"] as? Int64 {
            self.RPO = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class ModifyDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class ModifyDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskReplicaPairResponseBody?

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
            var model = ModifyDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDedicatedBlockStorageClusterDiskThroughputStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var qosRequestId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.qosRequestId != nil {
            map["QosRequestId"] = self.qosRequestId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["QosRequestId"] as? String {
            self.qosRequestId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class QueryDedicatedBlockStorageClusterDiskThroughputStatusResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class QueryDedicatedBlockStorageClusterDiskThroughputStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDedicatedBlockStorageClusterDiskThroughputStatusResponseBody?

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
            var model = QueryDedicatedBlockStorageClusterDiskThroughputStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDedicatedBlockStorageClusterInventoryDataRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbscId: String?

    public var endTime: Int64?

    public var period: Int32?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DbscId"] as? String {
            self.dbscId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class QueryDedicatedBlockStorageClusterInventoryDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MonitorItems : Tea.TeaModel {
            public var availableSize: Int64?

            public var totalSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableSize != nil {
                    map["AvailableSize"] = self.availableSize!
                }
                if self.totalSize != nil {
                    map["TotalSize"] = self.totalSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvailableSize"] as? Int64 {
                    self.availableSize = value
                }
                if let value = dict["TotalSize"] as? Int64 {
                    self.totalSize = value
                }
            }
        }
        public var monitorItems: QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data.MonitorItems?

        public var resourceId: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.monitorItems?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.monitorItems != nil {
                map["MonitorItems"] = self.monitorItems?.toMap()
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MonitorItems"] as? [String: Any?] {
                var model = QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data.MonitorItems()
                model.fromMap(value)
                self.monitorItems = model
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var data: [QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data]?

    public var dbscId: String?

    public var dbscName: String?

    public var diskCategory: String?

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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.dbscName != nil {
            map["DbscName"] = self.dbscName!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
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
            var tmp : [QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["DbscId"] as? String {
            self.dbscId = value
        }
        if let value = dict["DbscName"] as? String {
            self.dbscName = value
        }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class QueryDedicatedBlockStorageClusterInventoryDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDedicatedBlockStorageClusterInventoryDataResponseBody?

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
            var model = QueryDedicatedBlockStorageClusterInventoryDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class RemoveDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class RemoveDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDiskReplicaPairResponseBody?

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
            var model = RemoveDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReprotectDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var reverseReplicate: Bool?

    public override init() {
        super.init()
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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.reverseReplicate != nil {
            map["ReverseReplicate"] = self.reverseReplicate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
        if let value = dict["ReverseReplicate"] as? Bool {
            self.reverseReplicate = value
        }
    }
}

public class ReprotectDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class ReprotectDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReprotectDiskReplicaGroupResponseBody?

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
            var model = ReprotectDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReprotectDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public var reverseReplicate: Bool?

    public override init() {
        super.init()
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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        if self.reverseReplicate != nil {
            map["ReverseReplicate"] = self.reverseReplicate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
        if let value = dict["ReverseReplicate"] as? Bool {
            self.reverseReplicate = value
        }
    }
}

public class ReprotectDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class ReprotectDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReprotectDiskReplicaPairResponseBody?

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
            var model = ReprotectDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDedicatedBlockStorageClusterDiskThroughputRequest : Tea.TeaModel {
    public var bps: Int32?

    public var clientToken: String?

    public var diskId: String?

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
        if self.bps != nil {
            map["Bps"] = self.bps!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bps"] as? Int32 {
            self.bps = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SetDedicatedBlockStorageClusterDiskThroughputResponseBody : Tea.TeaModel {
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

public class SetDedicatedBlockStorageClusterDiskThroughputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDedicatedBlockStorageClusterDiskThroughputResponseBody?

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
            var model = SetDedicatedBlockStorageClusterDiskThroughputResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var oneShot: Bool?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.oneShot != nil {
            map["OneShot"] = self.oneShot!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OneShot"] as? Bool {
            self.oneShot = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
    }
}

public class StartDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class StartDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDiskReplicaGroupResponseBody?

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
            var model = StartDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var oneShot: Bool?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.oneShot != nil {
            map["OneShot"] = self.oneShot!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OneShot"] as? Bool {
            self.oneShot = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class StartDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class StartDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDiskReplicaPairResponseBody?

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
            var model = StartDiskReplicaPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartPairDrillRequest : Tea.TeaModel {
    public var clientToken: String?

    public var pairId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.pairId != nil {
            map["PairId"] = self.pairId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["PairId"] as? String {
            self.pairId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartPairDrillResponseBody : Tea.TeaModel {
    public var drillId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrillId"] as? String {
            self.drillId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartPairDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartPairDrillResponseBody?

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
            var model = StartPairDrillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartReplicaGroupDrillRequest : Tea.TeaModel {
    public var clientToken: String?

    public var groupId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartReplicaGroupDrillResponseBody : Tea.TeaModel {
    public var drillId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrillId"] as? String {
            self.drillId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartReplicaGroupDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartReplicaGroupDrillResponseBody?

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
            var model = StartReplicaGroupDrillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaGroupId"] as? String {
            self.replicaGroupId = value
        }
    }
}

public class StopDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class StopDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDiskReplicaGroupResponseBody?

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
            var model = StopDiskReplicaGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicaPairId"] as? String {
            self.replicaPairId = value
        }
    }
}

public class StopDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class StopDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDiskReplicaPairResponseBody?

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
            var model = StopDiskReplicaPairResponseBody()
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
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
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

public class UnbindEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var diskTargets: [String]?

    public var policyId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskTargets != nil {
            map["DiskTargets"] = self.diskTargets!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskTargets"] as? [String] {
            self.diskTargets = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UnbindEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class UnbindEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindEnterpriseSnapshotPolicyResponseBody?

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
            var model = UnbindEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
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

public class UntagResourcesResponseBody : Tea.TeaModel {
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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public class CrossRegionCopyInfo : Tea.TeaModel {
        public class Regions : Tea.TeaModel {
            public var regionId: String?

            public var retainDays: Int32?

            public override init() {
                super.init()
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
                if self.retainDays != nil {
                    map["RetainDays"] = self.retainDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RetainDays"] as? Int32 {
                    self.retainDays = value
                }
            }
        }
        public var enabled: Bool?

        public var regions: [UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.regions != nil {
                var tmp : [Any] = []
                for k in self.regions! {
                    tmp.append(k.toMap())
                }
                map["Regions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Regions"] as? [Any?] {
                var tmp : [UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions] = []
                for v in value {
                    if v != nil {
                        var model = UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regions = tmp
            }
        }
    }
    public class RetainRule : Tea.TeaModel {
        public var number: Int32?

        public var timeInterval: Int32?

        public var timeUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.timeInterval != nil {
                map["TimeInterval"] = self.timeInterval!
            }
            if self.timeUnit != nil {
                map["TimeUnit"] = self.timeUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Number"] as? Int32 {
                self.number = value
            }
            if let value = dict["TimeInterval"] as? Int32 {
                self.timeInterval = value
            }
            if let value = dict["TimeUnit"] as? String {
                self.timeUnit = value
            }
        }
    }
    public class Schedule : Tea.TeaModel {
        public var cronExpression: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CronExpression"] as? String {
                self.cronExpression = value
            }
        }
    }
    public class SpecialRetainRules : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var specialPeriodUnit: String?

            public var timeInterval: Int32?

            public var timeUnit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.specialPeriodUnit != nil {
                    map["SpecialPeriodUnit"] = self.specialPeriodUnit!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpecialPeriodUnit"] as? String {
                    self.specialPeriodUnit = value
                }
                if let value = dict["TimeInterval"] as? Int32 {
                    self.timeInterval = value
                }
                if let value = dict["TimeUnit"] as? String {
                    self.timeUnit = value
                }
            }
        }
        public var enabled: Bool?

        public var rules: [UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules] = []
                for v in value {
                    if v != nil {
                        var model = UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public class StorageRule : Tea.TeaModel {
        public var enableImmediateAccess: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableImmediateAccess != nil {
                map["EnableImmediateAccess"] = self.enableImmediateAccess!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableImmediateAccess"] as? Bool {
                self.enableImmediateAccess = value
            }
        }
    }
    public var clientToken: String?

    public var crossRegionCopyInfo: UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo?

    public var desc: String?

    public var name: String?

    public var policyId: String?

    public var regionId: String?

    public var retainRule: UpdateEnterpriseSnapshotPolicyRequest.RetainRule?

    public var schedule: UpdateEnterpriseSnapshotPolicyRequest.Schedule?

    public var specialRetainRules: UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules?

    public var state: String?

    public var storageRule: UpdateEnterpriseSnapshotPolicyRequest.StorageRule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.crossRegionCopyInfo?.validate()
        try self.retainRule?.validate()
        try self.schedule?.validate()
        try self.specialRetainRules?.validate()
        try self.storageRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossRegionCopyInfo != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfo?.toMap()
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainRule != nil {
            map["RetainRule"] = self.retainRule?.toMap()
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule?.toMap()
        }
        if self.specialRetainRules != nil {
            map["SpecialRetainRules"] = self.specialRetainRules?.toMap()
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRule != nil {
            map["StorageRule"] = self.storageRule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossRegionCopyInfo"] as? [String: Any?] {
            var model = UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo()
            model.fromMap(value)
            self.crossRegionCopyInfo = model
        }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetainRule"] as? [String: Any?] {
            var model = UpdateEnterpriseSnapshotPolicyRequest.RetainRule()
            model.fromMap(value)
            self.retainRule = model
        }
        if let value = dict["Schedule"] as? [String: Any?] {
            var model = UpdateEnterpriseSnapshotPolicyRequest.Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["SpecialRetainRules"] as? [String: Any?] {
            var model = UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules()
            model.fromMap(value)
            self.specialRetainRules = model
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["StorageRule"] as? [String: Any?] {
            var model = UpdateEnterpriseSnapshotPolicyRequest.StorageRule()
            model.fromMap(value)
            self.storageRule = model
        }
    }
}

public class UpdateEnterpriseSnapshotPolicyShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var crossRegionCopyInfoShrink: String?

    public var desc: String?

    public var name: String?

    public var policyId: String?

    public var regionId: String?

    public var retainRuleShrink: String?

    public var scheduleShrink: String?

    public var specialRetainRulesShrink: String?

    public var state: String?

    public var storageRuleShrink: String?

    public override init() {
        super.init()
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
        if self.crossRegionCopyInfoShrink != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfoShrink!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainRuleShrink != nil {
            map["RetainRule"] = self.retainRuleShrink!
        }
        if self.scheduleShrink != nil {
            map["Schedule"] = self.scheduleShrink!
        }
        if self.specialRetainRulesShrink != nil {
            map["SpecialRetainRules"] = self.specialRetainRulesShrink!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRuleShrink != nil {
            map["StorageRule"] = self.storageRuleShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossRegionCopyInfo"] as? String {
            self.crossRegionCopyInfoShrink = value
        }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetainRule"] as? String {
            self.retainRuleShrink = value
        }
        if let value = dict["Schedule"] as? String {
            self.scheduleShrink = value
        }
        if let value = dict["SpecialRetainRules"] as? String {
            self.specialRetainRulesShrink = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["StorageRule"] as? String {
            self.storageRuleShrink = value
        }
    }
}

public class UpdateEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class UpdateEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnterpriseSnapshotPolicyResponseBody?

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
            var model = UpdateEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSolutionInstanceAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var solutionInstanceId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.solutionInstanceId != nil {
            map["SolutionInstanceId"] = self.solutionInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SolutionInstanceId"] as? String {
            self.solutionInstanceId = value
        }
    }
}

public class UpdateSolutionInstanceAttributeResponseBody : Tea.TeaModel {
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

public class UpdateSolutionInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSolutionInstanceAttributeResponseBody?

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
            var model = UpdateSolutionInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
