import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateOfficeSiteRequest : Tea.TeaModel {
    public var officeSiteId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ActivateOfficeSiteResponseBody : Tea.TeaModel {
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

public class ActivateOfficeSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateOfficeSiteResponseBody?

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
            var model = ActivateOfficeSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserToDesktopGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var desktopGroupId: String?

    public var desktopGroupIds: [String]?

    public var endUserIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopGroupIds != nil {
            map["DesktopGroupIds"] = self.desktopGroupIds!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopGroupIds") {
            self.desktopGroupIds = dict["DesktopGroupIds"] as! [String]
        }
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddUserToDesktopGroupResponseBody : Tea.TeaModel {
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

public class AddUserToDesktopGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToDesktopGroupResponseBody?

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
            var model = AddUserToDesktopGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyCoordinatePrivilegeRequest : Tea.TeaModel {
    public var coId: String?

    public var endUserId: String?

    public var regionId: String?

    public var userType: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coId != nil {
            map["CoId"] = self.coId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoId") {
            self.coId = dict["CoId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ApplyCoordinatePrivilegeResponseBody : Tea.TeaModel {
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

public class ApplyCoordinatePrivilegeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCoordinatePrivilegeResponseBody?

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
            var model = ApplyCoordinatePrivilegeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyCoordinationForMonitoringRequest : Tea.TeaModel {
    public class ResourceCandidates : Tea.TeaModel {
        public var ownerAliUid: Int64?

        public var ownerEndUserId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceProperties: String?

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
            if self.ownerAliUid != nil {
                map["OwnerAliUid"] = self.ownerAliUid!
            }
            if self.ownerEndUserId != nil {
                map["OwnerEndUserId"] = self.ownerEndUserId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceProperties != nil {
                map["ResourceProperties"] = self.resourceProperties!
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
            if dict.keys.contains("OwnerAliUid") {
                self.ownerAliUid = dict["OwnerAliUid"] as! Int64
            }
            if dict.keys.contains("OwnerEndUserId") {
                self.ownerEndUserId = dict["OwnerEndUserId"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceProperties") {
                self.resourceProperties = dict["ResourceProperties"] as! String
            }
            if dict.keys.contains("ResourceRegionId") {
                self.resourceRegionId = dict["ResourceRegionId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var coordinatePolicyType: String?

    public var endUserId: String?

    public var initiatorType: String?

    public var regionId: String?

    public var resourceCandidates: [ApplyCoordinationForMonitoringRequest.ResourceCandidates]?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coordinatePolicyType != nil {
            map["CoordinatePolicyType"] = self.coordinatePolicyType!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.initiatorType != nil {
            map["InitiatorType"] = self.initiatorType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceCandidates != nil {
            var tmp : [Any] = []
            for k in self.resourceCandidates! {
                tmp.append(k.toMap())
            }
            map["ResourceCandidates"] = tmp
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoordinatePolicyType") {
            self.coordinatePolicyType = dict["CoordinatePolicyType"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("InitiatorType") {
            self.initiatorType = dict["InitiatorType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceCandidates") {
            self.resourceCandidates = dict["ResourceCandidates"] as! [ApplyCoordinationForMonitoringRequest.ResourceCandidates]
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ApplyCoordinationForMonitoringResponseBody : Tea.TeaModel {
    public class CoordinateFlowModels : Tea.TeaModel {
        public var coId: String?

        public var coordinateStatus: String?

        public var coordinateTicket: String?

        public var initiatorType: String?

        public var ownerUserId: String?

        public var resourceId: String?

        public var resourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coId != nil {
                map["CoId"] = self.coId!
            }
            if self.coordinateStatus != nil {
                map["CoordinateStatus"] = self.coordinateStatus!
            }
            if self.coordinateTicket != nil {
                map["CoordinateTicket"] = self.coordinateTicket!
            }
            if self.initiatorType != nil {
                map["InitiatorType"] = self.initiatorType!
            }
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoId") {
                self.coId = dict["CoId"] as! String
            }
            if dict.keys.contains("CoordinateStatus") {
                self.coordinateStatus = dict["CoordinateStatus"] as! String
            }
            if dict.keys.contains("CoordinateTicket") {
                self.coordinateTicket = dict["CoordinateTicket"] as! String
            }
            if dict.keys.contains("InitiatorType") {
                self.initiatorType = dict["InitiatorType"] as! String
            }
            if dict.keys.contains("OwnerUserId") {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
        }
    }
    public var coordinateFlowModels: [ApplyCoordinationForMonitoringResponseBody.CoordinateFlowModels]?

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
        if self.coordinateFlowModels != nil {
            var tmp : [Any] = []
            for k in self.coordinateFlowModels! {
                tmp.append(k.toMap())
            }
            map["CoordinateFlowModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoordinateFlowModels") {
            self.coordinateFlowModels = dict["CoordinateFlowModels"] as! [ApplyCoordinationForMonitoringResponseBody.CoordinateFlowModels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ApplyCoordinationForMonitoringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCoordinationForMonitoringResponseBody?

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
            var model = ApplyCoordinationForMonitoringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApproveFotaUpdateRequest : Tea.TeaModel {
    public var appVersion: String?

    public var desktopId: String?

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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ApproveFotaUpdateResponseBody : Tea.TeaModel {
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

public class ApproveFotaUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveFotaUpdateResponseBody?

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
            var model = ApproveFotaUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateNetworkPackageRequest : Tea.TeaModel {
    public var networkPackageId: String?

    public var officeSiteId: String?

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
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AssociateNetworkPackageResponseBody : Tea.TeaModel {
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

public class AssociateNetworkPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateNetworkPackageResponseBody?

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
            var model = AssociateNetworkPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenOwnerId: Int64?

    public var officeSiteId: String?

    public var regionId: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class AttachCenResponseBody : Tea.TeaModel {
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

public class AttachCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachCenResponseBody?

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
            var model = AttachCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelCoordinationForMonitoringRequest : Tea.TeaModel {
    public var coIds: [String]?

    public var endUserId: String?

    public var regionId: String?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coIds != nil {
            map["CoIds"] = self.coIds!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoIds") {
            self.coIds = dict["CoIds"] as! [String]
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class CancelCoordinationForMonitoringResponseBody : Tea.TeaModel {
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

public class CancelCoordinationForMonitoringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCoordinationForMonitoringResponseBody?

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
            var model = CancelCoordinationForMonitoringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelCopyImageRequest : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CancelCopyImageResponseBody : Tea.TeaModel {
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

public class CancelCopyImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCopyImageResponseBody?

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
            var model = CancelCopyImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClonePolicyGroupRequest : Tea.TeaModel {
    public var name: String?

    public var policyGroupId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ClonePolicyGroupResponseBody : Tea.TeaModel {
    public var policyGroupId: String?

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
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ClonePolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClonePolicyGroupResponseBody?

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
            var model = ClonePolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigADConnectorTrustRequest : Tea.TeaModel {
    public var officeSiteId: String?

    public var regionId: String?

    public var trustKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.trustKey != nil {
            map["TrustKey"] = self.trustKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TrustKey") {
            self.trustKey = dict["TrustKey"] as! String
        }
    }
}

public class ConfigADConnectorTrustResponseBody : Tea.TeaModel {
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

public class ConfigADConnectorTrustResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigADConnectorTrustResponseBody?

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
            var model = ConfigADConnectorTrustResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigADConnectorUserRequest : Tea.TeaModel {
    public var domainPassword: String?

    public var domainUserName: String?

    public var OUName: String?

    public var officeSiteId: String?

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
        if self.domainPassword != nil {
            map["DomainPassword"] = self.domainPassword!
        }
        if self.domainUserName != nil {
            map["DomainUserName"] = self.domainUserName!
        }
        if self.OUName != nil {
            map["OUName"] = self.OUName!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainPassword") {
            self.domainPassword = dict["DomainPassword"] as! String
        }
        if dict.keys.contains("DomainUserName") {
            self.domainUserName = dict["DomainUserName"] as! String
        }
        if dict.keys.contains("OUName") {
            self.OUName = dict["OUName"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ConfigADConnectorUserResponseBody : Tea.TeaModel {
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

public class ConfigADConnectorUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigADConnectorUserResponseBody?

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
            var model = ConfigADConnectorUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyImageRequest : Tea.TeaModel {
    public var destinationDescription: String?

    public var destinationImageName: String?

    public var destinationRegionId: String?

    public var imageId: String?

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
        if self.destinationDescription != nil {
            map["DestinationDescription"] = self.destinationDescription!
        }
        if self.destinationImageName != nil {
            map["DestinationImageName"] = self.destinationImageName!
        }
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationDescription") {
            self.destinationDescription = dict["DestinationDescription"] as! String
        }
        if dict.keys.contains("DestinationImageName") {
            self.destinationImageName = dict["DestinationImageName"] as! String
        }
        if dict.keys.contains("DestinationRegionId") {
            self.destinationRegionId = dict["DestinationRegionId"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CopyImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CopyImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyImageResponseBody?

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
            var model = CopyImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateADConnectorDirectoryRequest : Tea.TeaModel {
    public var desktopAccessType: String?

    public var directoryName: String?

    public var dnsAddress: [String]?

    public var domainName: String?

    public var domainPassword: String?

    public var domainUserName: String?

    public var enableAdminAccess: Bool?

    public var mfaEnabled: Bool?

    public var regionId: String?

    public var specification: Int64?

    public var subDomainDnsAddress: [String]?

    public var subDomainName: String?

    public var vSwitchId: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopAccessType != nil {
            map["DesktopAccessType"] = self.desktopAccessType!
        }
        if self.directoryName != nil {
            map["DirectoryName"] = self.directoryName!
        }
        if self.dnsAddress != nil {
            map["DnsAddress"] = self.dnsAddress!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainPassword != nil {
            map["DomainPassword"] = self.domainPassword!
        }
        if self.domainUserName != nil {
            map["DomainUserName"] = self.domainUserName!
        }
        if self.enableAdminAccess != nil {
            map["EnableAdminAccess"] = self.enableAdminAccess!
        }
        if self.mfaEnabled != nil {
            map["MfaEnabled"] = self.mfaEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        if self.subDomainDnsAddress != nil {
            map["SubDomainDnsAddress"] = self.subDomainDnsAddress!
        }
        if self.subDomainName != nil {
            map["SubDomainName"] = self.subDomainName!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopAccessType") {
            self.desktopAccessType = dict["DesktopAccessType"] as! String
        }
        if dict.keys.contains("DirectoryName") {
            self.directoryName = dict["DirectoryName"] as! String
        }
        if dict.keys.contains("DnsAddress") {
            self.dnsAddress = dict["DnsAddress"] as! [String]
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainPassword") {
            self.domainPassword = dict["DomainPassword"] as! String
        }
        if dict.keys.contains("DomainUserName") {
            self.domainUserName = dict["DomainUserName"] as! String
        }
        if dict.keys.contains("EnableAdminAccess") {
            self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
        }
        if dict.keys.contains("MfaEnabled") {
            self.mfaEnabled = dict["MfaEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! Int64
        }
        if dict.keys.contains("SubDomainDnsAddress") {
            self.subDomainDnsAddress = dict["SubDomainDnsAddress"] as! [String]
        }
        if dict.keys.contains("SubDomainName") {
            self.subDomainName = dict["SubDomainName"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! [String]
        }
    }
}

public class CreateADConnectorDirectoryResponseBody : Tea.TeaModel {
    public class AdConnectors : Tea.TeaModel {
        public var address: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
        }
    }
    public var adConnectors: [CreateADConnectorDirectoryResponseBody.AdConnectors]?

    public var directoryId: String?

    public var requestId: String?

    public var trustPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adConnectors != nil {
            var tmp : [Any] = []
            for k in self.adConnectors! {
                tmp.append(k.toMap())
            }
            map["AdConnectors"] = tmp
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trustPassword != nil {
            map["TrustPassword"] = self.trustPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdConnectors") {
            self.adConnectors = dict["AdConnectors"] as! [CreateADConnectorDirectoryResponseBody.AdConnectors]
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrustPassword") {
            self.trustPassword = dict["TrustPassword"] as! String
        }
    }
}

public class CreateADConnectorDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateADConnectorDirectoryResponseBody?

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
            var model = CreateADConnectorDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateADConnectorOfficeSiteRequest : Tea.TeaModel {
    public var adHostname: String?

    public var bandwidth: Int32?

    public var cenId: String?

    public var cenOwnerId: Int64?

    public var cidrBlock: String?

    public var desktopAccessType: String?

    public var dnsAddress: [String]?

    public var domainName: String?

    public var domainPassword: String?

    public var domainUserName: String?

    public var enableAdminAccess: Bool?

    public var enableInternetAccess: Bool?

    public var mfaEnabled: Bool?

    public var officeSiteName: String?

    public var protocolType: String?

    public var regionId: String?

    public var specification: Int64?

    public var subDomainDnsAddress: [String]?

    public var subDomainName: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adHostname != nil {
            map["AdHostname"] = self.adHostname!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.cidrBlock != nil {
            map["CidrBlock"] = self.cidrBlock!
        }
        if self.desktopAccessType != nil {
            map["DesktopAccessType"] = self.desktopAccessType!
        }
        if self.dnsAddress != nil {
            map["DnsAddress"] = self.dnsAddress!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainPassword != nil {
            map["DomainPassword"] = self.domainPassword!
        }
        if self.domainUserName != nil {
            map["DomainUserName"] = self.domainUserName!
        }
        if self.enableAdminAccess != nil {
            map["EnableAdminAccess"] = self.enableAdminAccess!
        }
        if self.enableInternetAccess != nil {
            map["EnableInternetAccess"] = self.enableInternetAccess!
        }
        if self.mfaEnabled != nil {
            map["MfaEnabled"] = self.mfaEnabled!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        if self.subDomainDnsAddress != nil {
            map["SubDomainDnsAddress"] = self.subDomainDnsAddress!
        }
        if self.subDomainName != nil {
            map["SubDomainName"] = self.subDomainName!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdHostname") {
            self.adHostname = dict["AdHostname"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("CidrBlock") {
            self.cidrBlock = dict["CidrBlock"] as! String
        }
        if dict.keys.contains("DesktopAccessType") {
            self.desktopAccessType = dict["DesktopAccessType"] as! String
        }
        if dict.keys.contains("DnsAddress") {
            self.dnsAddress = dict["DnsAddress"] as! [String]
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainPassword") {
            self.domainPassword = dict["DomainPassword"] as! String
        }
        if dict.keys.contains("DomainUserName") {
            self.domainUserName = dict["DomainUserName"] as! String
        }
        if dict.keys.contains("EnableAdminAccess") {
            self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
        }
        if dict.keys.contains("EnableInternetAccess") {
            self.enableInternetAccess = dict["EnableInternetAccess"] as! Bool
        }
        if dict.keys.contains("MfaEnabled") {
            self.mfaEnabled = dict["MfaEnabled"] as! Bool
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! Int64
        }
        if dict.keys.contains("SubDomainDnsAddress") {
            self.subDomainDnsAddress = dict["SubDomainDnsAddress"] as! [String]
        }
        if dict.keys.contains("SubDomainName") {
            self.subDomainName = dict["SubDomainName"] as! String
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class CreateADConnectorOfficeSiteResponseBody : Tea.TeaModel {
    public var officeSiteId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateADConnectorOfficeSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateADConnectorOfficeSiteResponseBody?

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
            var model = CreateADConnectorOfficeSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAndBindNasFileSystemRequest : Tea.TeaModel {
    public var description_: String?

    public var desktopGroupId: String?

    public var encryptType: Int32?

    public var endUserIds: [String]?

    public var fileSystemName: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var storageType: String?

    public override init() {
        super.init()
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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.fileSystemName != nil {
            map["FileSystemName"] = self.fileSystemName!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("EncryptType") {
            self.encryptType = dict["EncryptType"] as! Int32
        }
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("FileSystemName") {
            self.fileSystemName = dict["FileSystemName"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
    }
}

public class CreateAndBindNasFileSystemResponseBody : Tea.TeaModel {
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

public class CreateAndBindNasFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndBindNasFileSystemResponseBody?

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
            var model = CreateAndBindNasFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBundleRequest : Tea.TeaModel {
    public var bundleName: String?

    public var description_: String?

    public var desktopType: String?

    public var imageId: String?

    public var language: String?

    public var regionId: String?

    public var rootDiskPerformanceLevel: String?

    public var rootDiskSizeGib: Int32?

    public var userDiskPerformanceLevel: String?

    public var userDiskSizeGib: [Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundleName != nil {
            map["BundleName"] = self.bundleName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopType != nil {
            map["DesktopType"] = self.desktopType!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rootDiskPerformanceLevel != nil {
            map["RootDiskPerformanceLevel"] = self.rootDiskPerformanceLevel!
        }
        if self.rootDiskSizeGib != nil {
            map["RootDiskSizeGib"] = self.rootDiskSizeGib!
        }
        if self.userDiskPerformanceLevel != nil {
            map["UserDiskPerformanceLevel"] = self.userDiskPerformanceLevel!
        }
        if self.userDiskSizeGib != nil {
            map["UserDiskSizeGib"] = self.userDiskSizeGib!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleName") {
            self.bundleName = dict["BundleName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopType") {
            self.desktopType = dict["DesktopType"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RootDiskPerformanceLevel") {
            self.rootDiskPerformanceLevel = dict["RootDiskPerformanceLevel"] as! String
        }
        if dict.keys.contains("RootDiskSizeGib") {
            self.rootDiskSizeGib = dict["RootDiskSizeGib"] as! Int32
        }
        if dict.keys.contains("UserDiskPerformanceLevel") {
            self.userDiskPerformanceLevel = dict["UserDiskPerformanceLevel"] as! String
        }
        if dict.keys.contains("UserDiskSizeGib") {
            self.userDiskSizeGib = dict["UserDiskSizeGib"] as! [Int32]
        }
    }
}

public class CreateBundleResponseBody : Tea.TeaModel {
    public var bundleId: String?

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
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBundleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBundleResponseBody?

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
            var model = CreateBundleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDesktopGroupRequest : Tea.TeaModel {
    public var allClassifyUsers: Bool?

    public var allowAutoSetup: Int32?

    public var allowBufferCount: Int32?

    public var autoPay: Bool?

    public var bindAmount: Int64?

    public var bundleId: String?

    public var chargeType: String?

    public var classify: String?

    public var clientToken: String?

    public var comments: String?

    public var connectDuration: Int64?

    public var defaultInitDesktopCount: Int32?

    public var desktopGroupName: String?

    public var directoryId: String?

    public var endUserIds: [String]?

    public var fileSystemId: String?

    public var idleDisconnectDuration: Int64?

    public var keepDuration: Int64?

    public var loadPolicy: Int64?

    public var maxDesktopsCount: Int32?

    public var minDesktopsCount: Int32?

    public var officeSiteId: String?

    public var ownType: Int32?

    public var period: Int32?

    public var periodUnit: String?

    public var policyGroupId: String?

    public var profileFollowSwitch: Bool?

    public var ratioThreshold: Double?

    public var regionId: String?

    public var resetType: Int64?

    public var scaleStrategyId: String?

    public var stopDuration: Int64?

    public var volumeEncryptionEnabled: Bool?

    public var volumeEncryptionKey: String?

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
        if self.allClassifyUsers != nil {
            map["AllClassifyUsers"] = self.allClassifyUsers!
        }
        if self.allowAutoSetup != nil {
            map["AllowAutoSetup"] = self.allowAutoSetup!
        }
        if self.allowBufferCount != nil {
            map["AllowBufferCount"] = self.allowBufferCount!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bindAmount != nil {
            map["BindAmount"] = self.bindAmount!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.classify != nil {
            map["Classify"] = self.classify!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.connectDuration != nil {
            map["ConnectDuration"] = self.connectDuration!
        }
        if self.defaultInitDesktopCount != nil {
            map["DefaultInitDesktopCount"] = self.defaultInitDesktopCount!
        }
        if self.desktopGroupName != nil {
            map["DesktopGroupName"] = self.desktopGroupName!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.idleDisconnectDuration != nil {
            map["IdleDisconnectDuration"] = self.idleDisconnectDuration!
        }
        if self.keepDuration != nil {
            map["KeepDuration"] = self.keepDuration!
        }
        if self.loadPolicy != nil {
            map["LoadPolicy"] = self.loadPolicy!
        }
        if self.maxDesktopsCount != nil {
            map["MaxDesktopsCount"] = self.maxDesktopsCount!
        }
        if self.minDesktopsCount != nil {
            map["MinDesktopsCount"] = self.minDesktopsCount!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.ownType != nil {
            map["OwnType"] = self.ownType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.profileFollowSwitch != nil {
            map["ProfileFollowSwitch"] = self.profileFollowSwitch!
        }
        if self.ratioThreshold != nil {
            map["RatioThreshold"] = self.ratioThreshold!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetType != nil {
            map["ResetType"] = self.resetType!
        }
        if self.scaleStrategyId != nil {
            map["ScaleStrategyId"] = self.scaleStrategyId!
        }
        if self.stopDuration != nil {
            map["StopDuration"] = self.stopDuration!
        }
        if self.volumeEncryptionEnabled != nil {
            map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
        }
        if self.volumeEncryptionKey != nil {
            map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllClassifyUsers") {
            self.allClassifyUsers = dict["AllClassifyUsers"] as! Bool
        }
        if dict.keys.contains("AllowAutoSetup") {
            self.allowAutoSetup = dict["AllowAutoSetup"] as! Int32
        }
        if dict.keys.contains("AllowBufferCount") {
            self.allowBufferCount = dict["AllowBufferCount"] as! Int32
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("BindAmount") {
            self.bindAmount = dict["BindAmount"] as! Int64
        }
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Classify") {
            self.classify = dict["Classify"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("ConnectDuration") {
            self.connectDuration = dict["ConnectDuration"] as! Int64
        }
        if dict.keys.contains("DefaultInitDesktopCount") {
            self.defaultInitDesktopCount = dict["DefaultInitDesktopCount"] as! Int32
        }
        if dict.keys.contains("DesktopGroupName") {
            self.desktopGroupName = dict["DesktopGroupName"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("IdleDisconnectDuration") {
            self.idleDisconnectDuration = dict["IdleDisconnectDuration"] as! Int64
        }
        if dict.keys.contains("KeepDuration") {
            self.keepDuration = dict["KeepDuration"] as! Int64
        }
        if dict.keys.contains("LoadPolicy") {
            self.loadPolicy = dict["LoadPolicy"] as! Int64
        }
        if dict.keys.contains("MaxDesktopsCount") {
            self.maxDesktopsCount = dict["MaxDesktopsCount"] as! Int32
        }
        if dict.keys.contains("MinDesktopsCount") {
            self.minDesktopsCount = dict["MinDesktopsCount"] as! Int32
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OwnType") {
            self.ownType = dict["OwnType"] as! Int32
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("ProfileFollowSwitch") {
            self.profileFollowSwitch = dict["ProfileFollowSwitch"] as! Bool
        }
        if dict.keys.contains("RatioThreshold") {
            self.ratioThreshold = dict["RatioThreshold"] as! Double
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResetType") {
            self.resetType = dict["ResetType"] as! Int64
        }
        if dict.keys.contains("ScaleStrategyId") {
            self.scaleStrategyId = dict["ScaleStrategyId"] as! String
        }
        if dict.keys.contains("StopDuration") {
            self.stopDuration = dict["StopDuration"] as! Int64
        }
        if dict.keys.contains("VolumeEncryptionEnabled") {
            self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
        }
        if dict.keys.contains("VolumeEncryptionKey") {
            self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateDesktopGroupResponseBody : Tea.TeaModel {
    public var desktopGroupId: String?

    public var orderIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("OrderIds") {
            self.orderIds = dict["OrderIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDesktopGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDesktopGroupResponseBody?

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
            var model = CreateDesktopGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDesktopsRequest : Tea.TeaModel {
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
    public class UserCommands : Tea.TeaModel {
        public var content: String?

        public var contentEncoding: String?

        public var contentType: String?

        public override init() {
            super.init()
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
            if self.contentEncoding != nil {
                map["ContentEncoding"] = self.contentEncoding!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentEncoding") {
                self.contentEncoding = dict["ContentEncoding"] as! String
            }
            if dict.keys.contains("ContentType") {
                self.contentType = dict["ContentType"] as! String
            }
        }
    }
    public var amount: Int32?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bundleId: String?

    public var chargeType: String?

    public var desktopName: String?

    public var desktopNameSuffix: Bool?

    public var directoryId: String?

    public var endUserId: [String]?

    public var groupId: String?

    public var hostname: String?

    public var officeSiteId: String?

    public var period: Int32?

    public var periodUnit: String?

    public var policyGroupId: String?

    public var promotionId: String?

    public var regionId: String?

    public var tag: [CreateDesktopsRequest.Tag]?

    public var userAssignMode: String?

    public var userCommands: [CreateDesktopsRequest.UserCommands]?

    public var userName: String?

    public var volumeEncryptionEnabled: Bool?

    public var volumeEncryptionKey: String?

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
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.desktopNameSuffix != nil {
            map["DesktopNameSuffix"] = self.desktopNameSuffix!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
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
        if self.userAssignMode != nil {
            map["UserAssignMode"] = self.userAssignMode!
        }
        if self.userCommands != nil {
            var tmp : [Any] = []
            for k in self.userCommands! {
                tmp.append(k.toMap())
            }
            map["UserCommands"] = tmp
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.volumeEncryptionEnabled != nil {
            map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
        }
        if self.volumeEncryptionKey != nil {
            map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("DesktopNameSuffix") {
            self.desktopNameSuffix = dict["DesktopNameSuffix"] as! Bool
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateDesktopsRequest.Tag]
        }
        if dict.keys.contains("UserAssignMode") {
            self.userAssignMode = dict["UserAssignMode"] as! String
        }
        if dict.keys.contains("UserCommands") {
            self.userCommands = dict["UserCommands"] as! [CreateDesktopsRequest.UserCommands]
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("VolumeEncryptionEnabled") {
            self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
        }
        if dict.keys.contains("VolumeEncryptionKey") {
            self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateDesktopsResponseBody : Tea.TeaModel {
    public var desktopId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
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
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDesktopsResponseBody?

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
            var model = CreateDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiskEncryptionServiceRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateDiskEncryptionServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateDiskEncryptionServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiskEncryptionServiceResponseBody?

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
            var model = CreateDiskEncryptionServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDriveRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var description_: String?

    public var domainId: String?

    public var driveName: String?

    public var externalDomainId: String?

    public var profileRoaming: Bool?

    public var regionId: String?

    public var resourceType: String?

    public var totalSize: Int64?

    public var type: String?

    public var usedSize: Int64?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.driveName != nil {
            map["DriveName"] = self.driveName!
        }
        if self.externalDomainId != nil {
            map["ExternalDomainId"] = self.externalDomainId!
        }
        if self.profileRoaming != nil {
            map["ProfileRoaming"] = self.profileRoaming!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.totalSize != nil {
            map["TotalSize"] = self.totalSize!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.usedSize != nil {
            map["UsedSize"] = self.usedSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DriveName") {
            self.driveName = dict["DriveName"] as! String
        }
        if dict.keys.contains("ExternalDomainId") {
            self.externalDomainId = dict["ExternalDomainId"] as! String
        }
        if dict.keys.contains("ProfileRoaming") {
            self.profileRoaming = dict["ProfileRoaming"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TotalSize") {
            self.totalSize = dict["TotalSize"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UsedSize") {
            self.usedSize = dict["UsedSize"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateDriveResponseBody : Tea.TeaModel {
    public class Drive : Tea.TeaModel {
        public var aliUid: String?

        public var description_: String?

        public var domainId: String?

        public var driveId: String?

        public var externalDriveId: String?

        public var externalUserId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: String?

        public var name: String?

        public var profileRoaming: Bool?

        public var status: String?

        public var totalSize: Int64?

        public var type: String?

        public var usedSize: Int64?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.driveId != nil {
                map["DriveId"] = self.driveId!
            }
            if self.externalDriveId != nil {
                map["ExternalDriveId"] = self.externalDriveId!
            }
            if self.externalUserId != nil {
                map["ExternalUserId"] = self.externalUserId!
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
            if self.profileRoaming != nil {
                map["ProfileRoaming"] = self.profileRoaming!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.usedSize != nil {
                map["UsedSize"] = self.usedSize!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DriveId") {
                self.driveId = dict["DriveId"] as! String
            }
            if dict.keys.contains("ExternalDriveId") {
                self.externalDriveId = dict["ExternalDriveId"] as! String
            }
            if dict.keys.contains("ExternalUserId") {
                self.externalUserId = dict["ExternalUserId"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProfileRoaming") {
                self.profileRoaming = dict["ProfileRoaming"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UsedSize") {
                self.usedSize = dict["UsedSize"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var drive: CreateDriveResponseBody.Drive?

    public var message: String?

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
        try self.drive?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.drive != nil {
            map["Drive"] = self.drive?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Drive") {
            var model = CreateDriveResponseBody.Drive()
            model.fromMap(dict["Drive"] as! [String: Any])
            self.drive = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateDriveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDriveResponseBody?

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
            var model = CreateDriveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageRequest : Tea.TeaModel {
    public var autoCleanUserdata: Bool?

    public var description_: String?

    public var desktopId: String?

    public var diskType: String?

    public var imageName: String?

    public var imageResourceType: String?

    public var regionId: String?

    public var snapshotId: String?

    public var snapshotIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCleanUserdata != nil {
            map["AutoCleanUserdata"] = self.autoCleanUserdata!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.imageResourceType != nil {
            map["ImageResourceType"] = self.imageResourceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCleanUserdata") {
            self.autoCleanUserdata = dict["AutoCleanUserdata"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("DiskType") {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("ImageResourceType") {
            self.imageResourceType = dict["ImageResourceType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SnapshotIds") {
            self.snapshotIds = dict["SnapshotIds"] as! [String]
        }
    }
}

public class CreateImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageResponseBody?

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
            var model = CreateImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNASFileSystemRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptType: String?

    public var name: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var storageType: String?

    public override init() {
        super.init()
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
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncryptType") {
            self.encryptType = dict["EncryptType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
    }
}

public class CreateNASFileSystemResponseBody : Tea.TeaModel {
    public var fileSystemId: String?

    public var fileSystemName: String?

    public var mountTargetDomain: String?

    public var officeSiteId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemName != nil {
            map["FileSystemName"] = self.fileSystemName!
        }
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("FileSystemName") {
            self.fileSystemName = dict["FileSystemName"] as! String
        }
        if dict.keys.contains("MountTargetDomain") {
            self.mountTargetDomain = dict["MountTargetDomain"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNASFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNASFileSystemResponseBody?

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
            var model = CreateNASFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNetworkPackageRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bandwidth: Int32?

    public var internetChargeType: String?

    public var officeSiteId: String?

    public var period: Int32?

    public var periodUnit: String?

    public var promotionId: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateNetworkPackageResponseBody : Tea.TeaModel {
    public var networkPackageId: String?

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
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
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
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNetworkPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkPackageResponseBody?

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
            var model = CreateNetworkPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyGroupRequest : Tea.TeaModel {
    public class AuthorizeAccessPolicyRule : Tea.TeaModel {
        public var cidrIp: String?

        public var description_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrIp != nil {
                map["CidrIp"] = self.cidrIp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrIp") {
                self.cidrIp = dict["CidrIp"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
        }
    }
    public class AuthorizeSecurityPolicyRule : Tea.TeaModel {
        public var cidrIp: String?

        public var description_: String?

        public var ipProtocol: String?

        public var policy: String?

        public var portRange: String?

        public var priority: String?

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
            if self.cidrIp != nil {
                map["CidrIp"] = self.cidrIp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ipProtocol != nil {
                map["IpProtocol"] = self.ipProtocol!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrIp") {
                self.cidrIp = dict["CidrIp"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IpProtocol") {
                self.ipProtocol = dict["IpProtocol"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("PortRange") {
                self.portRange = dict["PortRange"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class ClientType : Tea.TeaModel {
        public var clientType: String?

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
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class UsbSupplyRedirectRule : Tea.TeaModel {
        public var description_: String?

        public var deviceClass: String?

        public var deviceSubclass: String?

        public var productId: String?

        public var usbRedirectType: Int64?

        public var usbRuleType: Int64?

        public var vendorId: String?

        public override init() {
            super.init()
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
            if self.deviceClass != nil {
                map["DeviceClass"] = self.deviceClass!
            }
            if self.deviceSubclass != nil {
                map["DeviceSubclass"] = self.deviceSubclass!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.usbRedirectType != nil {
                map["UsbRedirectType"] = self.usbRedirectType!
            }
            if self.usbRuleType != nil {
                map["UsbRuleType"] = self.usbRuleType!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceClass") {
                self.deviceClass = dict["DeviceClass"] as! String
            }
            if dict.keys.contains("DeviceSubclass") {
                self.deviceSubclass = dict["DeviceSubclass"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("UsbRedirectType") {
                self.usbRedirectType = dict["UsbRedirectType"] as! Int64
            }
            if dict.keys.contains("UsbRuleType") {
                self.usbRuleType = dict["UsbRuleType"] as! Int64
            }
            if dict.keys.contains("VendorId") {
                self.vendorId = dict["VendorId"] as! String
            }
        }
    }
    public var appContentProtection: String?

    public var authorizeAccessPolicyRule: [CreatePolicyGroupRequest.AuthorizeAccessPolicyRule]?

    public var authorizeSecurityPolicyRule: [CreatePolicyGroupRequest.AuthorizeSecurityPolicyRule]?

    public var cameraRedirect: String?

    public var clientType: [CreatePolicyGroupRequest.ClientType]?

    public var clipboard: String?

    public var domainList: String?

    public var gpuAcceleration: String?

    public var html5Access: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var name: String?

    public var netRedirect: String?

    public var preemptLogin: String?

    public var preemptLoginUser: [String]?

    public var printerRedirection: String?

    public var recordContent: String?

    public var recordContentExpires: Int64?

    public var recording: String?

    public var recordingEndTime: String?

    public var recordingExpires: Int64?

    public var recordingFps: Int64?

    public var recordingStartTime: String?

    public var regionId: String?

    public var remoteCoordinate: String?

    public var usbRedirect: String?

    public var usbSupplyRedirectRule: [CreatePolicyGroupRequest.UsbSupplyRedirectRule]?

    public var visualQuality: String?

    public var watermark: String?

    public var watermarkTransparency: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appContentProtection != nil {
            map["AppContentProtection"] = self.appContentProtection!
        }
        if self.authorizeAccessPolicyRule != nil {
            var tmp : [Any] = []
            for k in self.authorizeAccessPolicyRule! {
                tmp.append(k.toMap())
            }
            map["AuthorizeAccessPolicyRule"] = tmp
        }
        if self.authorizeSecurityPolicyRule != nil {
            var tmp : [Any] = []
            for k in self.authorizeSecurityPolicyRule! {
                tmp.append(k.toMap())
            }
            map["AuthorizeSecurityPolicyRule"] = tmp
        }
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clientType != nil {
            var tmp : [Any] = []
            for k in self.clientType! {
                tmp.append(k.toMap())
            }
            map["ClientType"] = tmp
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.domainList != nil {
            map["DomainList"] = self.domainList!
        }
        if self.gpuAcceleration != nil {
            map["GpuAcceleration"] = self.gpuAcceleration!
        }
        if self.html5Access != nil {
            map["Html5Access"] = self.html5Access!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netRedirect != nil {
            map["NetRedirect"] = self.netRedirect!
        }
        if self.preemptLogin != nil {
            map["PreemptLogin"] = self.preemptLogin!
        }
        if self.preemptLoginUser != nil {
            map["PreemptLoginUser"] = self.preemptLoginUser!
        }
        if self.printerRedirection != nil {
            map["PrinterRedirection"] = self.printerRedirection!
        }
        if self.recordContent != nil {
            map["RecordContent"] = self.recordContent!
        }
        if self.recordContentExpires != nil {
            map["RecordContentExpires"] = self.recordContentExpires!
        }
        if self.recording != nil {
            map["Recording"] = self.recording!
        }
        if self.recordingEndTime != nil {
            map["RecordingEndTime"] = self.recordingEndTime!
        }
        if self.recordingExpires != nil {
            map["RecordingExpires"] = self.recordingExpires!
        }
        if self.recordingFps != nil {
            map["RecordingFps"] = self.recordingFps!
        }
        if self.recordingStartTime != nil {
            map["RecordingStartTime"] = self.recordingStartTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remoteCoordinate != nil {
            map["RemoteCoordinate"] = self.remoteCoordinate!
        }
        if self.usbRedirect != nil {
            map["UsbRedirect"] = self.usbRedirect!
        }
        if self.usbSupplyRedirectRule != nil {
            var tmp : [Any] = []
            for k in self.usbSupplyRedirectRule! {
                tmp.append(k.toMap())
            }
            map["UsbSupplyRedirectRule"] = tmp
        }
        if self.visualQuality != nil {
            map["VisualQuality"] = self.visualQuality!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        if self.watermarkTransparency != nil {
            map["WatermarkTransparency"] = self.watermarkTransparency!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppContentProtection") {
            self.appContentProtection = dict["AppContentProtection"] as! String
        }
        if dict.keys.contains("AuthorizeAccessPolicyRule") {
            self.authorizeAccessPolicyRule = dict["AuthorizeAccessPolicyRule"] as! [CreatePolicyGroupRequest.AuthorizeAccessPolicyRule]
        }
        if dict.keys.contains("AuthorizeSecurityPolicyRule") {
            self.authorizeSecurityPolicyRule = dict["AuthorizeSecurityPolicyRule"] as! [CreatePolicyGroupRequest.AuthorizeSecurityPolicyRule]
        }
        if dict.keys.contains("CameraRedirect") {
            self.cameraRedirect = dict["CameraRedirect"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! [CreatePolicyGroupRequest.ClientType]
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("DomainList") {
            self.domainList = dict["DomainList"] as! String
        }
        if dict.keys.contains("GpuAcceleration") {
            self.gpuAcceleration = dict["GpuAcceleration"] as! String
        }
        if dict.keys.contains("Html5Access") {
            self.html5Access = dict["Html5Access"] as! String
        }
        if dict.keys.contains("Html5FileTransfer") {
            self.html5FileTransfer = dict["Html5FileTransfer"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetRedirect") {
            self.netRedirect = dict["NetRedirect"] as! String
        }
        if dict.keys.contains("PreemptLogin") {
            self.preemptLogin = dict["PreemptLogin"] as! String
        }
        if dict.keys.contains("PreemptLoginUser") {
            self.preemptLoginUser = dict["PreemptLoginUser"] as! [String]
        }
        if dict.keys.contains("PrinterRedirection") {
            self.printerRedirection = dict["PrinterRedirection"] as! String
        }
        if dict.keys.contains("RecordContent") {
            self.recordContent = dict["RecordContent"] as! String
        }
        if dict.keys.contains("RecordContentExpires") {
            self.recordContentExpires = dict["RecordContentExpires"] as! Int64
        }
        if dict.keys.contains("Recording") {
            self.recording = dict["Recording"] as! String
        }
        if dict.keys.contains("RecordingEndTime") {
            self.recordingEndTime = dict["RecordingEndTime"] as! String
        }
        if dict.keys.contains("RecordingExpires") {
            self.recordingExpires = dict["RecordingExpires"] as! Int64
        }
        if dict.keys.contains("RecordingFps") {
            self.recordingFps = dict["RecordingFps"] as! Int64
        }
        if dict.keys.contains("RecordingStartTime") {
            self.recordingStartTime = dict["RecordingStartTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RemoteCoordinate") {
            self.remoteCoordinate = dict["RemoteCoordinate"] as! String
        }
        if dict.keys.contains("UsbRedirect") {
            self.usbRedirect = dict["UsbRedirect"] as! String
        }
        if dict.keys.contains("UsbSupplyRedirectRule") {
            self.usbSupplyRedirectRule = dict["UsbSupplyRedirectRule"] as! [CreatePolicyGroupRequest.UsbSupplyRedirectRule]
        }
        if dict.keys.contains("VisualQuality") {
            self.visualQuality = dict["VisualQuality"] as! String
        }
        if dict.keys.contains("Watermark") {
            self.watermark = dict["Watermark"] as! String
        }
        if dict.keys.contains("WatermarkTransparency") {
            self.watermarkTransparency = dict["WatermarkTransparency"] as! String
        }
        if dict.keys.contains("WatermarkType") {
            self.watermarkType = dict["WatermarkType"] as! String
        }
    }
}

public class CreatePolicyGroupResponseBody : Tea.TeaModel {
    public var policyGroupId: String?

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
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyGroupResponseBody?

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
            var model = CreatePolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRAMDirectoryRequest : Tea.TeaModel {
    public var desktopAccessType: String?

    public var directoryName: String?

    public var enableAdminAccess: Bool?

    public var enableInternetAccess: Bool?

    public var regionId: String?

    public var vSwitchId: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopAccessType != nil {
            map["DesktopAccessType"] = self.desktopAccessType!
        }
        if self.directoryName != nil {
            map["DirectoryName"] = self.directoryName!
        }
        if self.enableAdminAccess != nil {
            map["EnableAdminAccess"] = self.enableAdminAccess!
        }
        if self.enableInternetAccess != nil {
            map["EnableInternetAccess"] = self.enableInternetAccess!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopAccessType") {
            self.desktopAccessType = dict["DesktopAccessType"] as! String
        }
        if dict.keys.contains("DirectoryName") {
            self.directoryName = dict["DirectoryName"] as! String
        }
        if dict.keys.contains("EnableAdminAccess") {
            self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
        }
        if dict.keys.contains("EnableInternetAccess") {
            self.enableInternetAccess = dict["EnableInternetAccess"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! [String]
        }
    }
}

public class CreateRAMDirectoryResponseBody : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRAMDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRAMDirectoryResponseBody?

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
            var model = CreateRAMDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSimpleOfficeSiteRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var cenId: String?

    public var cenOwnerId: Int64?

    public var cidrBlock: String?

    public var cloudBoxOfficeSite: Bool?

    public var desktopAccessType: String?

    public var enableAdminAccess: Bool?

    public var enableInternetAccess: Bool?

    public var needVerifyZeroDevice: Bool?

    public var officeSiteName: String?

    public var regionId: String?

    public var vSwitchId: [String]?

    public var verifyCode: String?

    public override init() {
        super.init()
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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.cidrBlock != nil {
            map["CidrBlock"] = self.cidrBlock!
        }
        if self.cloudBoxOfficeSite != nil {
            map["CloudBoxOfficeSite"] = self.cloudBoxOfficeSite!
        }
        if self.desktopAccessType != nil {
            map["DesktopAccessType"] = self.desktopAccessType!
        }
        if self.enableAdminAccess != nil {
            map["EnableAdminAccess"] = self.enableAdminAccess!
        }
        if self.enableInternetAccess != nil {
            map["EnableInternetAccess"] = self.enableInternetAccess!
        }
        if self.needVerifyZeroDevice != nil {
            map["NeedVerifyZeroDevice"] = self.needVerifyZeroDevice!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("CidrBlock") {
            self.cidrBlock = dict["CidrBlock"] as! String
        }
        if dict.keys.contains("CloudBoxOfficeSite") {
            self.cloudBoxOfficeSite = dict["CloudBoxOfficeSite"] as! Bool
        }
        if dict.keys.contains("DesktopAccessType") {
            self.desktopAccessType = dict["DesktopAccessType"] as! String
        }
        if dict.keys.contains("EnableAdminAccess") {
            self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
        }
        if dict.keys.contains("EnableInternetAccess") {
            self.enableInternetAccess = dict["EnableInternetAccess"] as! Bool
        }
        if dict.keys.contains("NeedVerifyZeroDevice") {
            self.needVerifyZeroDevice = dict["NeedVerifyZeroDevice"] as! Bool
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! [String]
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class CreateSimpleOfficeSiteResponseBody : Tea.TeaModel {
    public var officeSiteId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSimpleOfficeSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSimpleOfficeSiteResponseBody?

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
            var model = CreateSimpleOfficeSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSnapshotRequest : Tea.TeaModel {
    public var description_: String?

    public var desktopId: String?

    public var regionId: String?

    public var snapshotName: String?

    public var sourceDiskType: String?

    public override init() {
        super.init()
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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        if self.sourceDiskType != nil {
            map["SourceDiskType"] = self.sourceDiskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotName") {
            self.snapshotName = dict["SnapshotName"] as! String
        }
        if dict.keys.contains("SourceDiskType") {
            self.sourceDiskType = dict["SourceDiskType"] as! String
        }
    }
}

public class CreateSnapshotResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
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
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class CreateSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSnapshotResponseBody?

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
            var model = CreateSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBundlesRequest : Tea.TeaModel {
    public var bundleId: [String]?

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
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBundlesResponseBody : Tea.TeaModel {
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

public class DeleteBundlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBundlesResponseBody?

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
            var model = DeleteBundlesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCloudDriveUsersRequest : Tea.TeaModel {
    public var cdsId: String?

    public var endUserId: [String]?

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
        if self.cdsId != nil {
            map["CdsId"] = self.cdsId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CdsId") {
            self.cdsId = dict["CdsId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteCloudDriveUsersResponseBody : Tea.TeaModel {
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

public class DeleteCloudDriveUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCloudDriveUsersResponseBody?

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
            var model = DeleteCloudDriveUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDesktopGroupRequest : Tea.TeaModel {
    public var desktopGroupId: String?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDesktopGroupResponseBody : Tea.TeaModel {
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

public class DeleteDesktopGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDesktopGroupResponseBody?

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
            var model = DeleteDesktopGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDesktopsRequest : Tea.TeaModel {
    public var desktopId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDesktopsResponseBody : Tea.TeaModel {
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

public class DeleteDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDesktopsResponseBody?

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
            var model = DeleteDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDirectoriesRequest : Tea.TeaModel {
    public var directoryId: [String]?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDirectoriesResponseBody : Tea.TeaModel {
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

public class DeleteDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDirectoriesResponseBody?

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
            var model = DeleteDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDriveRequest : Tea.TeaModel {
    public var driveId: String?

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
        if self.driveId != nil {
            map["DriveId"] = self.driveId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DriveId") {
            self.driveId = dict["DriveId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDriveResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteDriveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDriveResponseBody?

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
            var model = DeleteDriveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImagesRequest : Tea.TeaModel {
    public var imageId: [String]?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteImagesResponseBody : Tea.TeaModel {
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

public class DeleteImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImagesResponseBody?

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
            var model = DeleteImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNASFileSystemsRequest : Tea.TeaModel {
    public var fileSystemId: [String]?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNASFileSystemsResponseBody : Tea.TeaModel {
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

public class DeleteNASFileSystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNASFileSystemsResponseBody?

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
            var model = DeleteNASFileSystemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNetworkPackagesRequest : Tea.TeaModel {
    public var networkPackageId: [String]?

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
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkPackagesResponseBody : Tea.TeaModel {
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

public class DeleteNetworkPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkPackagesResponseBody?

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
            var model = DeleteNetworkPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOfficeSitesRequest : Tea.TeaModel {
    public var officeSiteId: [String]?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteOfficeSitesResponseBody : Tea.TeaModel {
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

public class DeleteOfficeSitesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOfficeSitesResponseBody?

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
            var model = DeleteOfficeSitesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyGroupsRequest : Tea.TeaModel {
    public var policyGroupId: [String]?

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
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeletePolicyGroupsResponseBody : Tea.TeaModel {
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

public class DeletePolicyGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyGroupsResponseBody?

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
            var model = DeletePolicyGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSnapshotRequest : Tea.TeaModel {
    public var regionId: String?

    public var snapshotId: [String]?

    public override init() {
        super.init()
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
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! [String]
        }
    }
}

public class DeleteSnapshotResponseBody : Tea.TeaModel {
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

public class DeleteSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSnapshotResponseBody?

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
            var model = DeleteSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVirtualMFADeviceRequest : Tea.TeaModel {
    public var regionId: String?

    public var serialNumber: String?

    public override init() {
        super.init()
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
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class DeleteVirtualMFADeviceResponseBody : Tea.TeaModel {
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

public class DeleteVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualMFADeviceResponseBody?

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
            var model = DeleteVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlarmEventStackInfoRequest : Tea.TeaModel {
    public var desktopId: String?

    public var eventName: String?

    public var lang: String?

    public var regionId: String?

    public var uniqueInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uniqueInfo != nil {
            map["UniqueInfo"] = self.uniqueInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("EventName") {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UniqueInfo") {
            self.uniqueInfo = dict["UniqueInfo"] as! String
        }
    }
}

public class DescribeAlarmEventStackInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stackInfo: String?

    public override init() {
        super.init()
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
        if self.stackInfo != nil {
            map["StackInfo"] = self.stackInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackInfo") {
            self.stackInfo = dict["StackInfo"] as! String
        }
    }
}

public class DescribeAlarmEventStackInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlarmEventStackInfoResponseBody?

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
            var model = DescribeAlarmEventStackInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBundlesRequest : Tea.TeaModel {
    public var bundleId: [String]?

    public var bundleType: String?

    public var checkStock: Bool?

    public var cpuCount: Int32?

    public var desktopTypeFamily: String?

    public var fotaChannel: String?

    public var fromDesktopGroup: Bool?

    public var gpuCount: Double?

    public var maxResults: Int32?

    public var memorySize: Int32?

    public var nextToken: String?

    public var protocolType: String?

    public var regionId: String?

    public var supportMultiSession: Bool?

    public var volumeEncryptionEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.bundleType != nil {
            map["BundleType"] = self.bundleType!
        }
        if self.checkStock != nil {
            map["CheckStock"] = self.checkStock!
        }
        if self.cpuCount != nil {
            map["CpuCount"] = self.cpuCount!
        }
        if self.desktopTypeFamily != nil {
            map["DesktopTypeFamily"] = self.desktopTypeFamily!
        }
        if self.fotaChannel != nil {
            map["FotaChannel"] = self.fotaChannel!
        }
        if self.fromDesktopGroup != nil {
            map["FromDesktopGroup"] = self.fromDesktopGroup!
        }
        if self.gpuCount != nil {
            map["GpuCount"] = self.gpuCount!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.memorySize != nil {
            map["MemorySize"] = self.memorySize!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.supportMultiSession != nil {
            map["SupportMultiSession"] = self.supportMultiSession!
        }
        if self.volumeEncryptionEnabled != nil {
            map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! [String]
        }
        if dict.keys.contains("BundleType") {
            self.bundleType = dict["BundleType"] as! String
        }
        if dict.keys.contains("CheckStock") {
            self.checkStock = dict["CheckStock"] as! Bool
        }
        if dict.keys.contains("CpuCount") {
            self.cpuCount = dict["CpuCount"] as! Int32
        }
        if dict.keys.contains("DesktopTypeFamily") {
            self.desktopTypeFamily = dict["DesktopTypeFamily"] as! String
        }
        if dict.keys.contains("FotaChannel") {
            self.fotaChannel = dict["FotaChannel"] as! String
        }
        if dict.keys.contains("FromDesktopGroup") {
            self.fromDesktopGroup = dict["FromDesktopGroup"] as! Bool
        }
        if dict.keys.contains("GpuCount") {
            self.gpuCount = dict["GpuCount"] as! Double
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("MemorySize") {
            self.memorySize = dict["MemorySize"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SupportMultiSession") {
            self.supportMultiSession = dict["SupportMultiSession"] as! Bool
        }
        if dict.keys.contains("VolumeEncryptionEnabled") {
            self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
        }
    }
}

public class DescribeBundlesResponseBody : Tea.TeaModel {
    public class Bundles : Tea.TeaModel {
        public class DesktopTypeAttribute : Tea.TeaModel {
            public var cpuCount: Int32?

            public var gpuCount: Double?

            public var gpuSpec: String?

            public var memorySize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuCount != nil {
                    map["CpuCount"] = self.cpuCount!
                }
                if self.gpuCount != nil {
                    map["GpuCount"] = self.gpuCount!
                }
                if self.gpuSpec != nil {
                    map["GpuSpec"] = self.gpuSpec!
                }
                if self.memorySize != nil {
                    map["MemorySize"] = self.memorySize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuCount") {
                    self.cpuCount = dict["CpuCount"] as! Int32
                }
                if dict.keys.contains("GpuCount") {
                    self.gpuCount = dict["GpuCount"] as! Double
                }
                if dict.keys.contains("GpuSpec") {
                    self.gpuSpec = dict["GpuSpec"] as! String
                }
                if dict.keys.contains("MemorySize") {
                    self.memorySize = dict["MemorySize"] as! Int32
                }
            }
        }
        public class Disks : Tea.TeaModel {
            public var diskPerformanceLevel: String?

            public var diskSize: Int32?

            public var diskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskPerformanceLevel != nil {
                    map["DiskPerformanceLevel"] = self.diskPerformanceLevel!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskPerformanceLevel") {
                    self.diskPerformanceLevel = dict["DiskPerformanceLevel"] as! String
                }
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
            }
        }
        public var bundleId: String?

        public var bundleName: String?

        public var bundleType: String?

        public var creationTime: String?

        public var description_: String?

        public var desktopType: String?

        public var desktopTypeAttribute: DescribeBundlesResponseBody.Bundles.DesktopTypeAttribute?

        public var desktopTypeFamily: String?

        public var disks: [DescribeBundlesResponseBody.Bundles.Disks]?

        public var imageId: String?

        public var imageName: String?

        public var language: String?

        public var osType: String?

        public var platform: String?

        public var protocolType: String?

        public var sessionType: String?

        public var stockState: String?

        public var volumeEncryptionEnabled: Bool?

        public var volumeEncryptionKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.desktopTypeAttribute?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bundleId != nil {
                map["BundleId"] = self.bundleId!
            }
            if self.bundleName != nil {
                map["BundleName"] = self.bundleName!
            }
            if self.bundleType != nil {
                map["BundleType"] = self.bundleType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.desktopType != nil {
                map["DesktopType"] = self.desktopType!
            }
            if self.desktopTypeAttribute != nil {
                map["DesktopTypeAttribute"] = self.desktopTypeAttribute?.toMap()
            }
            if self.desktopTypeFamily != nil {
                map["DesktopTypeFamily"] = self.desktopTypeFamily!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.stockState != nil {
                map["StockState"] = self.stockState!
            }
            if self.volumeEncryptionEnabled != nil {
                map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
            }
            if self.volumeEncryptionKey != nil {
                map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BundleId") {
                self.bundleId = dict["BundleId"] as! String
            }
            if dict.keys.contains("BundleName") {
                self.bundleName = dict["BundleName"] as! String
            }
            if dict.keys.contains("BundleType") {
                self.bundleType = dict["BundleType"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DesktopType") {
                self.desktopType = dict["DesktopType"] as! String
            }
            if dict.keys.contains("DesktopTypeAttribute") {
                var model = DescribeBundlesResponseBody.Bundles.DesktopTypeAttribute()
                model.fromMap(dict["DesktopTypeAttribute"] as! [String: Any])
                self.desktopTypeAttribute = model
            }
            if dict.keys.contains("DesktopTypeFamily") {
                self.desktopTypeFamily = dict["DesktopTypeFamily"] as! String
            }
            if dict.keys.contains("Disks") {
                self.disks = dict["Disks"] as! [DescribeBundlesResponseBody.Bundles.Disks]
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("Platform") {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("SessionType") {
                self.sessionType = dict["SessionType"] as! String
            }
            if dict.keys.contains("StockState") {
                self.stockState = dict["StockState"] as! String
            }
            if dict.keys.contains("VolumeEncryptionEnabled") {
                self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
            }
            if dict.keys.contains("VolumeEncryptionKey") {
                self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
            }
        }
    }
    public var bundles: [DescribeBundlesResponseBody.Bundles]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundles != nil {
            var tmp : [Any] = []
            for k in self.bundles! {
                tmp.append(k.toMap())
            }
            map["Bundles"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bundles") {
            self.bundles = dict["Bundles"] as! [DescribeBundlesResponseBody.Bundles]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeBundlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBundlesResponseBody?

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
            var model = DescribeBundlesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCensRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCensResponseBody : Tea.TeaModel {
    public class Cens : Tea.TeaModel {
        public class PackageIds : Tea.TeaModel {
            public var packageId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PackageId") {
                    self.packageId = dict["PackageId"] as! String
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
        public var cenId: String?

        public var creationTime: String?

        public var description_: String?

        public var ipv6Level: String?

        public var name: String?

        public var packageIds: [DescribeCensResponseBody.Cens.PackageIds]?

        public var protectionLevel: String?

        public var status: String?

        public var tags: [DescribeCensResponseBody.Cens.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ipv6Level != nil {
                map["Ipv6Level"] = self.ipv6Level!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.packageIds != nil {
                var tmp : [Any] = []
                for k in self.packageIds! {
                    tmp.append(k.toMap())
                }
                map["PackageIds"] = tmp
            }
            if self.protectionLevel != nil {
                map["ProtectionLevel"] = self.protectionLevel!
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
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Ipv6Level") {
                self.ipv6Level = dict["Ipv6Level"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PackageIds") {
                self.packageIds = dict["PackageIds"] as! [DescribeCensResponseBody.Cens.PackageIds]
            }
            if dict.keys.contains("ProtectionLevel") {
                self.protectionLevel = dict["ProtectionLevel"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeCensResponseBody.Cens.Tags]
            }
        }
    }
    public var cens: [DescribeCensResponseBody.Cens]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cens != nil {
            var tmp : [Any] = []
            for k in self.cens! {
                tmp.append(k.toMap())
            }
            map["Cens"] = tmp
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
        if dict.keys.contains("Cens") {
            self.cens = dict["Cens"] as! [DescribeCensResponseBody.Cens]
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

public class DescribeCensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCensResponseBody?

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
            var model = DescribeCensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClientEventsRequest : Tea.TeaModel {
    public var desktopId: String?

    public var desktopIp: String?

    public var desktopName: String?

    public var directoryId: String?

    public var endTime: String?

    public var endUserId: String?

    public var eventType: String?

    public var eventTypes: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var officeSiteName: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopIp != nil {
            map["DesktopIp"] = self.desktopIp!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.eventTypes != nil {
            map["EventTypes"] = self.eventTypes!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("DesktopIp") {
            self.desktopIp = dict["DesktopIp"] as! String
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("EventTypes") {
            self.eventTypes = dict["EventTypes"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeClientEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var aliUid: String?

        public var bytesReceived: String?

        public var bytesSend: String?

        public var clientIp: String?

        public var clientOS: String?

        public var clientVersion: String?

        public var desktopGroupId: String?

        public var desktopGroupName: String?

        public var desktopId: String?

        public var desktopIp: String?

        public var desktopName: String?

        public var directoryId: String?

        public var directoryType: String?

        public var endUserId: String?

        public var eventId: String?

        public var eventTime: String?

        public var eventType: String?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteType: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bytesReceived != nil {
                map["BytesReceived"] = self.bytesReceived!
            }
            if self.bytesSend != nil {
                map["BytesSend"] = self.bytesSend!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientOS != nil {
                map["ClientOS"] = self.clientOS!
            }
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.desktopGroupId != nil {
                map["DesktopGroupId"] = self.desktopGroupId!
            }
            if self.desktopGroupName != nil {
                map["DesktopGroupName"] = self.desktopGroupName!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopIp != nil {
                map["DesktopIp"] = self.desktopIp!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryType != nil {
                map["DirectoryType"] = self.directoryType!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventTime != nil {
                map["EventTime"] = self.eventTime!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("BytesReceived") {
                self.bytesReceived = dict["BytesReceived"] as! String
            }
            if dict.keys.contains("BytesSend") {
                self.bytesSend = dict["BytesSend"] as! String
            }
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ClientOS") {
                self.clientOS = dict["ClientOS"] as! String
            }
            if dict.keys.contains("ClientVersion") {
                self.clientVersion = dict["ClientVersion"] as! String
            }
            if dict.keys.contains("DesktopGroupId") {
                self.desktopGroupId = dict["DesktopGroupId"] as! String
            }
            if dict.keys.contains("DesktopGroupName") {
                self.desktopGroupName = dict["DesktopGroupName"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopIp") {
                self.desktopIp = dict["DesktopIp"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryType") {
                self.directoryType = dict["DirectoryType"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("EventTime") {
                self.eventTime = dict["EventTime"] as! String
            }
            if dict.keys.contains("EventType") {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("OfficeSiteType") {
                self.officeSiteType = dict["OfficeSiteType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var events: [DescribeClientEventsResponseBody.Events]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [DescribeClientEventsResponseBody.Events]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClientEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientEventsResponseBody?

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
            var model = DescribeClientEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudDrivePermissionsRequest : Tea.TeaModel {
    public var cdsId: String?

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
        if self.cdsId != nil {
            map["CdsId"] = self.cdsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CdsId") {
            self.cdsId = dict["CdsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCloudDrivePermissionsResponseBody : Tea.TeaModel {
    public class CloudDrivePermissionModels : Tea.TeaModel {
        public var endUsers: [String]?

        public var permission: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endUsers != nil {
                map["EndUsers"] = self.endUsers!
            }
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndUsers") {
                self.endUsers = dict["EndUsers"] as! [String]
            }
            if dict.keys.contains("Permission") {
                self.permission = dict["Permission"] as! String
            }
        }
    }
    public var cloudDrivePermissionModels: [DescribeCloudDrivePermissionsResponseBody.CloudDrivePermissionModels]?

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
        if self.cloudDrivePermissionModels != nil {
            var tmp : [Any] = []
            for k in self.cloudDrivePermissionModels! {
                tmp.append(k.toMap())
            }
            map["CloudDrivePermissionModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudDrivePermissionModels") {
            self.cloudDrivePermissionModels = dict["CloudDrivePermissionModels"] as! [DescribeCloudDrivePermissionsResponseBody.CloudDrivePermissionModels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCloudDrivePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudDrivePermissionsResponseBody?

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
            var model = DescribeCloudDrivePermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomizedListHeadersRequest : Tea.TeaModel {
    public var langType: String?

    public var listType: String?

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
        if self.langType != nil {
            map["LangType"] = self.langType!
        }
        if self.listType != nil {
            map["ListType"] = self.listType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LangType") {
            self.langType = dict["LangType"] as! String
        }
        if dict.keys.contains("ListType") {
            self.listType = dict["ListType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomizedListHeadersResponseBody : Tea.TeaModel {
    public class Headers : Tea.TeaModel {
        public var displayType: String?

        public var headerKey: String?

        public var headerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayType != nil {
                map["DisplayType"] = self.displayType!
            }
            if self.headerKey != nil {
                map["HeaderKey"] = self.headerKey!
            }
            if self.headerName != nil {
                map["HeaderName"] = self.headerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayType") {
                self.displayType = dict["DisplayType"] as! String
            }
            if dict.keys.contains("HeaderKey") {
                self.headerKey = dict["HeaderKey"] as! String
            }
            if dict.keys.contains("HeaderName") {
                self.headerName = dict["HeaderName"] as! String
            }
        }
    }
    public var headers: [DescribeCustomizedListHeadersResponseBody.Headers]?

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
        if self.headers != nil {
            var tmp : [Any] = []
            for k in self.headers! {
                tmp.append(k.toMap())
            }
            map["Headers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Headers") {
            self.headers = dict["Headers"] as! [DescribeCustomizedListHeadersResponseBody.Headers]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCustomizedListHeadersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizedListHeadersResponseBody?

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
            var model = DescribeCustomizedListHeadersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDesktopGroupsRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var desktopGroupName: String?

    public var endUserIds: [String]?

    public var excludedEndUserIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var ownType: Int64?

    public var period: Int32?

    public var periodUnit: String?

    public var policyGroupId: String?

    public var regionId: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopGroupName != nil {
            map["DesktopGroupName"] = self.desktopGroupName!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.excludedEndUserIds != nil {
            map["ExcludedEndUserIds"] = self.excludedEndUserIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.ownType != nil {
            map["OwnType"] = self.ownType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
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
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopGroupName") {
            self.desktopGroupName = dict["DesktopGroupName"] as! String
        }
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("ExcludedEndUserIds") {
            self.excludedEndUserIds = dict["ExcludedEndUserIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OwnType") {
            self.ownType = dict["OwnType"] as! Int64
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeDesktopGroupsResponseBody : Tea.TeaModel {
    public class DesktopGroups : Tea.TeaModel {
        public var bindAmount: Int64?

        public var comments: String?

        public var connectDuration: Int64?

        public var cpu: Int32?

        public var createTime: String?

        public var creator: String?

        public var dataDiskCategory: String?

        public var dataDiskSize: String?

        public var desktopGroupId: String?

        public var desktopGroupName: String?

        public var endUserCount: Int32?

        public var expiredTime: String?

        public var gpuCount: Double?

        public var gpuSpec: String?

        public var idleDisconnectDuration: Int64?

        public var imageId: String?

        public var keepDuration: Int64?

        public var loadPolicy: Int64?

        public var maxDesktopsCount: Int32?

        public var memory: Int64?

        public var minDesktopsCount: Int32?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteType: String?

        public var ownBundleId: String?

        public var ownBundleName: String?

        public var ownType: Int64?

        public var payType: String?

        public var policyGroupId: String?

        public var policyGroupName: String?

        public var ratioThreshold: Double?

        public var resetType: Int64?

        public var status: Int32?

        public var stopDuration: Int64?

        public var systemDiskCategory: String?

        public var systemDiskSize: Int32?

        public var version: Int32?

        public var volumeEncryptionEnabled: Bool?

        public var volumeEncryptionKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindAmount != nil {
                map["BindAmount"] = self.bindAmount!
            }
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.connectDuration != nil {
                map["ConnectDuration"] = self.connectDuration!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.desktopGroupId != nil {
                map["DesktopGroupId"] = self.desktopGroupId!
            }
            if self.desktopGroupName != nil {
                map["DesktopGroupName"] = self.desktopGroupName!
            }
            if self.endUserCount != nil {
                map["EndUserCount"] = self.endUserCount!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gpuCount != nil {
                map["GpuCount"] = self.gpuCount!
            }
            if self.gpuSpec != nil {
                map["GpuSpec"] = self.gpuSpec!
            }
            if self.idleDisconnectDuration != nil {
                map["IdleDisconnectDuration"] = self.idleDisconnectDuration!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.keepDuration != nil {
                map["KeepDuration"] = self.keepDuration!
            }
            if self.loadPolicy != nil {
                map["LoadPolicy"] = self.loadPolicy!
            }
            if self.maxDesktopsCount != nil {
                map["MaxDesktopsCount"] = self.maxDesktopsCount!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.minDesktopsCount != nil {
                map["MinDesktopsCount"] = self.minDesktopsCount!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
            }
            if self.ownBundleId != nil {
                map["OwnBundleId"] = self.ownBundleId!
            }
            if self.ownBundleName != nil {
                map["OwnBundleName"] = self.ownBundleName!
            }
            if self.ownType != nil {
                map["OwnType"] = self.ownType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.policyGroupName != nil {
                map["PolicyGroupName"] = self.policyGroupName!
            }
            if self.ratioThreshold != nil {
                map["RatioThreshold"] = self.ratioThreshold!
            }
            if self.resetType != nil {
                map["ResetType"] = self.resetType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stopDuration != nil {
                map["StopDuration"] = self.stopDuration!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.volumeEncryptionEnabled != nil {
                map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
            }
            if self.volumeEncryptionKey != nil {
                map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BindAmount") {
                self.bindAmount = dict["BindAmount"] as! Int64
            }
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("ConnectDuration") {
                self.connectDuration = dict["ConnectDuration"] as! Int64
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("DataDiskCategory") {
                self.dataDiskCategory = dict["DataDiskCategory"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! String
            }
            if dict.keys.contains("DesktopGroupId") {
                self.desktopGroupId = dict["DesktopGroupId"] as! String
            }
            if dict.keys.contains("DesktopGroupName") {
                self.desktopGroupName = dict["DesktopGroupName"] as! String
            }
            if dict.keys.contains("EndUserCount") {
                self.endUserCount = dict["EndUserCount"] as! Int32
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GpuCount") {
                self.gpuCount = dict["GpuCount"] as! Double
            }
            if dict.keys.contains("GpuSpec") {
                self.gpuSpec = dict["GpuSpec"] as! String
            }
            if dict.keys.contains("IdleDisconnectDuration") {
                self.idleDisconnectDuration = dict["IdleDisconnectDuration"] as! Int64
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("KeepDuration") {
                self.keepDuration = dict["KeepDuration"] as! Int64
            }
            if dict.keys.contains("LoadPolicy") {
                self.loadPolicy = dict["LoadPolicy"] as! Int64
            }
            if dict.keys.contains("MaxDesktopsCount") {
                self.maxDesktopsCount = dict["MaxDesktopsCount"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("MinDesktopsCount") {
                self.minDesktopsCount = dict["MinDesktopsCount"] as! Int32
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("OfficeSiteType") {
                self.officeSiteType = dict["OfficeSiteType"] as! String
            }
            if dict.keys.contains("OwnBundleId") {
                self.ownBundleId = dict["OwnBundleId"] as! String
            }
            if dict.keys.contains("OwnBundleName") {
                self.ownBundleName = dict["OwnBundleName"] as! String
            }
            if dict.keys.contains("OwnType") {
                self.ownType = dict["OwnType"] as! Int64
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("PolicyGroupName") {
                self.policyGroupName = dict["PolicyGroupName"] as! String
            }
            if dict.keys.contains("RatioThreshold") {
                self.ratioThreshold = dict["RatioThreshold"] as! Double
            }
            if dict.keys.contains("ResetType") {
                self.resetType = dict["ResetType"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StopDuration") {
                self.stopDuration = dict["StopDuration"] as! Int64
            }
            if dict.keys.contains("SystemDiskCategory") {
                self.systemDiskCategory = dict["SystemDiskCategory"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int32
            }
            if dict.keys.contains("VolumeEncryptionEnabled") {
                self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
            }
            if dict.keys.contains("VolumeEncryptionKey") {
                self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
            }
        }
    }
    public var desktopGroups: [DescribeDesktopGroupsResponseBody.DesktopGroups]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopGroups != nil {
            var tmp : [Any] = []
            for k in self.desktopGroups! {
                tmp.append(k.toMap())
            }
            map["DesktopGroups"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroups") {
            self.desktopGroups = dict["DesktopGroups"] as! [DescribeDesktopGroupsResponseBody.DesktopGroups]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDesktopGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopGroupsResponseBody?

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
            var model = DescribeDesktopGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDesktopIdsByVulNamesRequest : Tea.TeaModel {
    public var necessity: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var type: String?

    public var vulName: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.necessity != nil {
            map["Necessity"] = self.necessity!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vulName != nil {
            map["VulName"] = self.vulName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Necessity") {
            self.necessity = dict["Necessity"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VulName") {
            self.vulName = dict["VulName"] as! [String]
        }
    }
}

public class DescribeDesktopIdsByVulNamesResponseBody : Tea.TeaModel {
    public class DesktopItems : Tea.TeaModel {
        public var desktopId: String?

        public var desktopName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
        }
    }
    public var desktopItems: [DescribeDesktopIdsByVulNamesResponseBody.DesktopItems]?

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
        if self.desktopItems != nil {
            var tmp : [Any] = []
            for k in self.desktopItems! {
                tmp.append(k.toMap())
            }
            map["DesktopItems"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopItems") {
            self.desktopItems = dict["DesktopItems"] as! [DescribeDesktopIdsByVulNamesResponseBody.DesktopItems]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDesktopIdsByVulNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopIdsByVulNamesResponseBody?

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
            var model = DescribeDesktopIdsByVulNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDesktopTypesRequest : Tea.TeaModel {
    public var appliedScope: String?

    public var cpuCount: Int32?

    public var desktopIdForModify: String?

    public var desktopTypeId: String?

    public var gpuCount: Double?

    public var instanceTypeFamily: String?

    public var memorySize: Int32?

    public var orderType: String?

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
        if self.appliedScope != nil {
            map["AppliedScope"] = self.appliedScope!
        }
        if self.cpuCount != nil {
            map["CpuCount"] = self.cpuCount!
        }
        if self.desktopIdForModify != nil {
            map["DesktopIdForModify"] = self.desktopIdForModify!
        }
        if self.desktopTypeId != nil {
            map["DesktopTypeId"] = self.desktopTypeId!
        }
        if self.gpuCount != nil {
            map["GpuCount"] = self.gpuCount!
        }
        if self.instanceTypeFamily != nil {
            map["InstanceTypeFamily"] = self.instanceTypeFamily!
        }
        if self.memorySize != nil {
            map["MemorySize"] = self.memorySize!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppliedScope") {
            self.appliedScope = dict["AppliedScope"] as! String
        }
        if dict.keys.contains("CpuCount") {
            self.cpuCount = dict["CpuCount"] as! Int32
        }
        if dict.keys.contains("DesktopIdForModify") {
            self.desktopIdForModify = dict["DesktopIdForModify"] as! String
        }
        if dict.keys.contains("DesktopTypeId") {
            self.desktopTypeId = dict["DesktopTypeId"] as! String
        }
        if dict.keys.contains("GpuCount") {
            self.gpuCount = dict["GpuCount"] as! Double
        }
        if dict.keys.contains("InstanceTypeFamily") {
            self.instanceTypeFamily = dict["InstanceTypeFamily"] as! String
        }
        if dict.keys.contains("MemorySize") {
            self.memorySize = dict["MemorySize"] as! Int32
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDesktopTypesResponseBody : Tea.TeaModel {
    public class DesktopTypes : Tea.TeaModel {
        public var cpuCount: String?

        public var dataDiskSize: String?

        public var desktopTypeId: String?

        public var desktopTypeStatus: String?

        public var gpuCount: Double?

        public var gpuSpec: String?

        public var instanceTypeFamily: String?

        public var memorySize: String?

        public var systemDiskSize: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuCount != nil {
                map["CpuCount"] = self.cpuCount!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.desktopTypeId != nil {
                map["DesktopTypeId"] = self.desktopTypeId!
            }
            if self.desktopTypeStatus != nil {
                map["DesktopTypeStatus"] = self.desktopTypeStatus!
            }
            if self.gpuCount != nil {
                map["GpuCount"] = self.gpuCount!
            }
            if self.gpuSpec != nil {
                map["GpuSpec"] = self.gpuSpec!
            }
            if self.instanceTypeFamily != nil {
                map["InstanceTypeFamily"] = self.instanceTypeFamily!
            }
            if self.memorySize != nil {
                map["MemorySize"] = self.memorySize!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuCount") {
                self.cpuCount = dict["CpuCount"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! String
            }
            if dict.keys.contains("DesktopTypeId") {
                self.desktopTypeId = dict["DesktopTypeId"] as! String
            }
            if dict.keys.contains("DesktopTypeStatus") {
                self.desktopTypeStatus = dict["DesktopTypeStatus"] as! String
            }
            if dict.keys.contains("GpuCount") {
                self.gpuCount = dict["GpuCount"] as! Double
            }
            if dict.keys.contains("GpuSpec") {
                self.gpuSpec = dict["GpuSpec"] as! String
            }
            if dict.keys.contains("InstanceTypeFamily") {
                self.instanceTypeFamily = dict["InstanceTypeFamily"] as! String
            }
            if dict.keys.contains("MemorySize") {
                self.memorySize = dict["MemorySize"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! String
            }
        }
    }
    public var desktopTypes: [DescribeDesktopTypesResponseBody.DesktopTypes]?

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
        if self.desktopTypes != nil {
            var tmp : [Any] = []
            for k in self.desktopTypes! {
                tmp.append(k.toMap())
            }
            map["DesktopTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopTypes") {
            self.desktopTypes = dict["DesktopTypes"] as! [DescribeDesktopTypesResponseBody.DesktopTypes]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDesktopTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopTypesResponseBody?

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
            var model = DescribeDesktopTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDesktopsRequest : Tea.TeaModel {
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
    public var chargeType: String?

    public var desktopId: [String]?

    public var desktopName: String?

    public var desktopStatus: String?

    public var directoryId: String?

    public var endUserId: [String]?

    public var excludedEndUserId: [String]?

    public var expiredTime: String?

    public var filterDesktopGroup: Bool?

    public var groupId: String?

    public var managementFlag: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var officeSiteName: String?

    public var policyGroupId: String?

    public var protocolType: String?

    public var queryFotaUpdate: Bool?

    public var regionId: String?

    public var tag: [DescribeDesktopsRequest.Tag]?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.desktopStatus != nil {
            map["DesktopStatus"] = self.desktopStatus!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.excludedEndUserId != nil {
            map["ExcludedEndUserId"] = self.excludedEndUserId!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.filterDesktopGroup != nil {
            map["FilterDesktopGroup"] = self.filterDesktopGroup!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.managementFlag != nil {
            map["ManagementFlag"] = self.managementFlag!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.queryFotaUpdate != nil {
            map["QueryFotaUpdate"] = self.queryFotaUpdate!
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("DesktopStatus") {
            self.desktopStatus = dict["DesktopStatus"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("ExcludedEndUserId") {
            self.excludedEndUserId = dict["ExcludedEndUserId"] as! [String]
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("FilterDesktopGroup") {
            self.filterDesktopGroup = dict["FilterDesktopGroup"] as! Bool
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("ManagementFlag") {
            self.managementFlag = dict["ManagementFlag"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("QueryFotaUpdate") {
            self.queryFotaUpdate = dict["QueryFotaUpdate"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeDesktopsRequest.Tag]
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DescribeDesktopsResponseBody : Tea.TeaModel {
    public class Desktops : Tea.TeaModel {
        public class Disks : Tea.TeaModel {
            public var diskId: String?

            public var diskSize: Int32?

            public var diskType: String?

            public var performanceLevel: String?

            public override init() {
                super.init()
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
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskId") {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("PerformanceLevel") {
                    self.performanceLevel = dict["PerformanceLevel"] as! String
                }
            }
        }
        public class FotaUpdate : Tea.TeaModel {
            public var currentAppVersion: String?

            public var newAppVersion: String?

            public var releaseNote: String?

            public var size: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currentAppVersion != nil {
                    map["CurrentAppVersion"] = self.currentAppVersion!
                }
                if self.newAppVersion != nil {
                    map["NewAppVersion"] = self.newAppVersion!
                }
                if self.releaseNote != nil {
                    map["ReleaseNote"] = self.releaseNote!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentAppVersion") {
                    self.currentAppVersion = dict["CurrentAppVersion"] as! String
                }
                if dict.keys.contains("NewAppVersion") {
                    self.newAppVersion = dict["NewAppVersion"] as! String
                }
                if dict.keys.contains("ReleaseNote") {
                    self.releaseNote = dict["ReleaseNote"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
            }
        }
        public class Sessions : Tea.TeaModel {
            public var endUserId: String?

            public var establishmentTime: String?

            public var externalUserName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.establishmentTime != nil {
                    map["EstablishmentTime"] = self.establishmentTime!
                }
                if self.externalUserName != nil {
                    map["ExternalUserName"] = self.externalUserName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("EstablishmentTime") {
                    self.establishmentTime = dict["EstablishmentTime"] as! String
                }
                if dict.keys.contains("ExternalUserName") {
                    self.externalUserName = dict["ExternalUserName"] as! String
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
        public var bundleId: String?

        public var bundleName: String?

        public var chargeType: String?

        public var connectionStatus: String?

        public var cpu: Int32?

        public var creationTime: String?

        public var dataDiskCategory: String?

        public var dataDiskSize: String?

        public var desktopGroupId: String?

        public var desktopId: String?

        public var desktopName: String?

        public var desktopStatus: String?

        public var desktopType: String?

        public var directoryId: String?

        public var directoryType: String?

        public var disks: [DescribeDesktopsResponseBody.Desktops.Disks]?

        public var downgradeQuota: Int64?

        public var downgradedTimes: Int64?

        public var endUserIds: [String]?

        public var expiredTime: String?

        public var fotaUpdate: DescribeDesktopsResponseBody.Desktops.FotaUpdate?

        public var gpuCategory: Int64?

        public var gpuCount: Double?

        public var gpuDriverVersion: String?

        public var gpuSpec: String?

        public var hostName: String?

        public var imageId: String?

        public var managementFlag: String?

        public var memory: Int64?

        public var networkInterfaceId: String?

        public var networkInterfaceIp: String?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteType: String?

        public var officeSiteVpcType: String?

        public var osType: String?

        public var platform: String?

        public var policyGroupId: String?

        public var policyGroupName: String?

        public var progress: String?

        public var protocolType: String?

        public var sessionType: String?

        public var sessions: [DescribeDesktopsResponseBody.Desktops.Sessions]?

        public var startTime: String?

        public var systemDiskCategory: String?

        public var systemDiskSize: Int32?

        public var tags: [DescribeDesktopsResponseBody.Desktops.Tags]?

        public var volumeEncryptionEnabled: Bool?

        public var volumeEncryptionKey: String?

        public var zoneType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fotaUpdate?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bundleId != nil {
                map["BundleId"] = self.bundleId!
            }
            if self.bundleName != nil {
                map["BundleName"] = self.bundleName!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.desktopGroupId != nil {
                map["DesktopGroupId"] = self.desktopGroupId!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.desktopStatus != nil {
                map["DesktopStatus"] = self.desktopStatus!
            }
            if self.desktopType != nil {
                map["DesktopType"] = self.desktopType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryType != nil {
                map["DirectoryType"] = self.directoryType!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.downgradeQuota != nil {
                map["DowngradeQuota"] = self.downgradeQuota!
            }
            if self.downgradedTimes != nil {
                map["DowngradedTimes"] = self.downgradedTimes!
            }
            if self.endUserIds != nil {
                map["EndUserIds"] = self.endUserIds!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.fotaUpdate != nil {
                map["FotaUpdate"] = self.fotaUpdate?.toMap()
            }
            if self.gpuCategory != nil {
                map["GpuCategory"] = self.gpuCategory!
            }
            if self.gpuCount != nil {
                map["GpuCount"] = self.gpuCount!
            }
            if self.gpuDriverVersion != nil {
                map["GpuDriverVersion"] = self.gpuDriverVersion!
            }
            if self.gpuSpec != nil {
                map["GpuSpec"] = self.gpuSpec!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.managementFlag != nil {
                map["ManagementFlag"] = self.managementFlag!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.networkInterfaceIp != nil {
                map["NetworkInterfaceIp"] = self.networkInterfaceIp!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
            }
            if self.officeSiteVpcType != nil {
                map["OfficeSiteVpcType"] = self.officeSiteVpcType!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.policyGroupName != nil {
                map["PolicyGroupName"] = self.policyGroupName!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.sessions != nil {
                var tmp : [Any] = []
                for k in self.sessions! {
                    tmp.append(k.toMap())
                }
                map["Sessions"] = tmp
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.volumeEncryptionEnabled != nil {
                map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
            }
            if self.volumeEncryptionKey != nil {
                map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
            }
            if self.zoneType != nil {
                map["ZoneType"] = self.zoneType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BundleId") {
                self.bundleId = dict["BundleId"] as! String
            }
            if dict.keys.contains("BundleName") {
                self.bundleName = dict["BundleName"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ConnectionStatus") {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("DataDiskCategory") {
                self.dataDiskCategory = dict["DataDiskCategory"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! String
            }
            if dict.keys.contains("DesktopGroupId") {
                self.desktopGroupId = dict["DesktopGroupId"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DesktopStatus") {
                self.desktopStatus = dict["DesktopStatus"] as! String
            }
            if dict.keys.contains("DesktopType") {
                self.desktopType = dict["DesktopType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryType") {
                self.directoryType = dict["DirectoryType"] as! String
            }
            if dict.keys.contains("Disks") {
                self.disks = dict["Disks"] as! [DescribeDesktopsResponseBody.Desktops.Disks]
            }
            if dict.keys.contains("DowngradeQuota") {
                self.downgradeQuota = dict["DowngradeQuota"] as! Int64
            }
            if dict.keys.contains("DowngradedTimes") {
                self.downgradedTimes = dict["DowngradedTimes"] as! Int64
            }
            if dict.keys.contains("EndUserIds") {
                self.endUserIds = dict["EndUserIds"] as! [String]
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("FotaUpdate") {
                var model = DescribeDesktopsResponseBody.Desktops.FotaUpdate()
                model.fromMap(dict["FotaUpdate"] as! [String: Any])
                self.fotaUpdate = model
            }
            if dict.keys.contains("GpuCategory") {
                self.gpuCategory = dict["GpuCategory"] as! Int64
            }
            if dict.keys.contains("GpuCount") {
                self.gpuCount = dict["GpuCount"] as! Double
            }
            if dict.keys.contains("GpuDriverVersion") {
                self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
            }
            if dict.keys.contains("GpuSpec") {
                self.gpuSpec = dict["GpuSpec"] as! String
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ManagementFlag") {
                self.managementFlag = dict["ManagementFlag"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("NetworkInterfaceId") {
                self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
            }
            if dict.keys.contains("NetworkInterfaceIp") {
                self.networkInterfaceIp = dict["NetworkInterfaceIp"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("OfficeSiteType") {
                self.officeSiteType = dict["OfficeSiteType"] as! String
            }
            if dict.keys.contains("OfficeSiteVpcType") {
                self.officeSiteVpcType = dict["OfficeSiteVpcType"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("Platform") {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("PolicyGroupName") {
                self.policyGroupName = dict["PolicyGroupName"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("SessionType") {
                self.sessionType = dict["SessionType"] as! String
            }
            if dict.keys.contains("Sessions") {
                self.sessions = dict["Sessions"] as! [DescribeDesktopsResponseBody.Desktops.Sessions]
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("SystemDiskCategory") {
                self.systemDiskCategory = dict["SystemDiskCategory"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeDesktopsResponseBody.Desktops.Tags]
            }
            if dict.keys.contains("VolumeEncryptionEnabled") {
                self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
            }
            if dict.keys.contains("VolumeEncryptionKey") {
                self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
            }
            if dict.keys.contains("ZoneType") {
                self.zoneType = dict["ZoneType"] as! String
            }
        }
    }
    public var desktops: [DescribeDesktopsResponseBody.Desktops]?

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
        if self.desktops != nil {
            var tmp : [Any] = []
            for k in self.desktops! {
                tmp.append(k.toMap())
            }
            map["Desktops"] = tmp
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
        if dict.keys.contains("Desktops") {
            self.desktops = dict["Desktops"] as! [DescribeDesktopsResponseBody.Desktops]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopsResponseBody?

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
            var model = DescribeDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDesktopsInGroupRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var ignoreDeleted: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var payType: String?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.ignoreDeleted != nil {
            map["IgnoreDeleted"] = self.ignoreDeleted!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("IgnoreDeleted") {
            self.ignoreDeleted = dict["IgnoreDeleted"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDesktopsInGroupResponseBody : Tea.TeaModel {
    public class PaidDesktops : Tea.TeaModel {
        public var connectionStatus: String?

        public var desktopId: String?

        public var desktopName: String?

        public var desktopStatus: String?

        public var diskType: String?

        public var endUserId: String?

        public var endUserIds: [String]?

        public var endUserName: String?

        public var endUserNames: [String]?

        public var gpuDriverVersion: String?

        public var imageId: String?

        public var imageName: String?

        public var managementFlag: String?

        public var managementFlags: [String]?

        public var memberEniIp: String?

        public var osType: String?

        public var primaryEniIp: String?

        public var resetTime: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.desktopStatus != nil {
                map["DesktopStatus"] = self.desktopStatus!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.endUserIds != nil {
                map["EndUserIds"] = self.endUserIds!
            }
            if self.endUserName != nil {
                map["EndUserName"] = self.endUserName!
            }
            if self.endUserNames != nil {
                map["EndUserNames"] = self.endUserNames!
            }
            if self.gpuDriverVersion != nil {
                map["GpuDriverVersion"] = self.gpuDriverVersion!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.managementFlag != nil {
                map["ManagementFlag"] = self.managementFlag!
            }
            if self.managementFlags != nil {
                map["ManagementFlags"] = self.managementFlags!
            }
            if self.memberEniIp != nil {
                map["MemberEniIp"] = self.memberEniIp!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.primaryEniIp != nil {
                map["PrimaryEniIp"] = self.primaryEniIp!
            }
            if self.resetTime != nil {
                map["ResetTime"] = self.resetTime!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionStatus") {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DesktopStatus") {
                self.desktopStatus = dict["DesktopStatus"] as! String
            }
            if dict.keys.contains("DiskType") {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("EndUserIds") {
                self.endUserIds = dict["EndUserIds"] as! [String]
            }
            if dict.keys.contains("EndUserName") {
                self.endUserName = dict["EndUserName"] as! String
            }
            if dict.keys.contains("EndUserNames") {
                self.endUserNames = dict["EndUserNames"] as! [String]
            }
            if dict.keys.contains("GpuDriverVersion") {
                self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ManagementFlag") {
                self.managementFlag = dict["ManagementFlag"] as! String
            }
            if dict.keys.contains("ManagementFlags") {
                self.managementFlags = dict["ManagementFlags"] as! [String]
            }
            if dict.keys.contains("MemberEniIp") {
                self.memberEniIp = dict["MemberEniIp"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("PrimaryEniIp") {
                self.primaryEniIp = dict["PrimaryEniIp"] as! String
            }
            if dict.keys.contains("ResetTime") {
                self.resetTime = dict["ResetTime"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
        }
    }
    public class PostPaidDesktops : Tea.TeaModel {
        public var connectionStatus: String?

        public var createDuration: String?

        public var createTime: String?

        public var desktopId: String?

        public var desktopName: String?

        public var desktopStatus: String?

        public var diskType: String?

        public var endUserId: String?

        public var endUserIds: [String]?

        public var endUserName: String?

        public var endUserNames: [String]?

        public var gpuDriverVersion: String?

        public var imageId: String?

        public var imageName: String?

        public var managementFlag: String?

        public var managementFlags: [String]?

        public var memberEniIp: String?

        public var osType: String?

        public var primaryEniIp: String?

        public var releaseTime: String?

        public var resetTime: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.createDuration != nil {
                map["CreateDuration"] = self.createDuration!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.desktopStatus != nil {
                map["DesktopStatus"] = self.desktopStatus!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.endUserIds != nil {
                map["EndUserIds"] = self.endUserIds!
            }
            if self.endUserName != nil {
                map["EndUserName"] = self.endUserName!
            }
            if self.endUserNames != nil {
                map["EndUserNames"] = self.endUserNames!
            }
            if self.gpuDriverVersion != nil {
                map["GpuDriverVersion"] = self.gpuDriverVersion!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.managementFlag != nil {
                map["ManagementFlag"] = self.managementFlag!
            }
            if self.managementFlags != nil {
                map["ManagementFlags"] = self.managementFlags!
            }
            if self.memberEniIp != nil {
                map["MemberEniIp"] = self.memberEniIp!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.primaryEniIp != nil {
                map["PrimaryEniIp"] = self.primaryEniIp!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.resetTime != nil {
                map["ResetTime"] = self.resetTime!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionStatus") {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("CreateDuration") {
                self.createDuration = dict["CreateDuration"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DesktopStatus") {
                self.desktopStatus = dict["DesktopStatus"] as! String
            }
            if dict.keys.contains("DiskType") {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("EndUserIds") {
                self.endUserIds = dict["EndUserIds"] as! [String]
            }
            if dict.keys.contains("EndUserName") {
                self.endUserName = dict["EndUserName"] as! String
            }
            if dict.keys.contains("EndUserNames") {
                self.endUserNames = dict["EndUserNames"] as! [String]
            }
            if dict.keys.contains("GpuDriverVersion") {
                self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ManagementFlag") {
                self.managementFlag = dict["ManagementFlag"] as! String
            }
            if dict.keys.contains("ManagementFlags") {
                self.managementFlags = dict["ManagementFlags"] as! [String]
            }
            if dict.keys.contains("MemberEniIp") {
                self.memberEniIp = dict["MemberEniIp"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("PrimaryEniIp") {
                self.primaryEniIp = dict["PrimaryEniIp"] as! String
            }
            if dict.keys.contains("ReleaseTime") {
                self.releaseTime = dict["ReleaseTime"] as! String
            }
            if dict.keys.contains("ResetTime") {
                self.resetTime = dict["ResetTime"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
        }
    }
    public var nextToken: String?

    public var onlinePrePaidDesktopsCount: Int32?

    public var paidDesktops: [DescribeDesktopsInGroupResponseBody.PaidDesktops]?

    public var paidDesktopsCount: Int32?

    public var postPaidDesktops: [DescribeDesktopsInGroupResponseBody.PostPaidDesktops]?

    public var postPaidDesktopsCount: Int32?

    public var postPaidDesktopsTotalAmount: Int32?

    public var requestId: String?

    public var runningPrePaidDesktopsCount: Int32?

    public var stopedPrePaidDesktopsCount: Int32?

    public override init() {
        super.init()
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
        if self.onlinePrePaidDesktopsCount != nil {
            map["OnlinePrePaidDesktopsCount"] = self.onlinePrePaidDesktopsCount!
        }
        if self.paidDesktops != nil {
            var tmp : [Any] = []
            for k in self.paidDesktops! {
                tmp.append(k.toMap())
            }
            map["PaidDesktops"] = tmp
        }
        if self.paidDesktopsCount != nil {
            map["PaidDesktopsCount"] = self.paidDesktopsCount!
        }
        if self.postPaidDesktops != nil {
            var tmp : [Any] = []
            for k in self.postPaidDesktops! {
                tmp.append(k.toMap())
            }
            map["PostPaidDesktops"] = tmp
        }
        if self.postPaidDesktopsCount != nil {
            map["PostPaidDesktopsCount"] = self.postPaidDesktopsCount!
        }
        if self.postPaidDesktopsTotalAmount != nil {
            map["PostPaidDesktopsTotalAmount"] = self.postPaidDesktopsTotalAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runningPrePaidDesktopsCount != nil {
            map["RunningPrePaidDesktopsCount"] = self.runningPrePaidDesktopsCount!
        }
        if self.stopedPrePaidDesktopsCount != nil {
            map["StopedPrePaidDesktopsCount"] = self.stopedPrePaidDesktopsCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OnlinePrePaidDesktopsCount") {
            self.onlinePrePaidDesktopsCount = dict["OnlinePrePaidDesktopsCount"] as! Int32
        }
        if dict.keys.contains("PaidDesktops") {
            self.paidDesktops = dict["PaidDesktops"] as! [DescribeDesktopsInGroupResponseBody.PaidDesktops]
        }
        if dict.keys.contains("PaidDesktopsCount") {
            self.paidDesktopsCount = dict["PaidDesktopsCount"] as! Int32
        }
        if dict.keys.contains("PostPaidDesktops") {
            self.postPaidDesktops = dict["PostPaidDesktops"] as! [DescribeDesktopsInGroupResponseBody.PostPaidDesktops]
        }
        if dict.keys.contains("PostPaidDesktopsCount") {
            self.postPaidDesktopsCount = dict["PostPaidDesktopsCount"] as! Int32
        }
        if dict.keys.contains("PostPaidDesktopsTotalAmount") {
            self.postPaidDesktopsTotalAmount = dict["PostPaidDesktopsTotalAmount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunningPrePaidDesktopsCount") {
            self.runningPrePaidDesktopsCount = dict["RunningPrePaidDesktopsCount"] as! Int32
        }
        if dict.keys.contains("StopedPrePaidDesktopsCount") {
            self.stopedPrePaidDesktopsCount = dict["StopedPrePaidDesktopsCount"] as! Int32
        }
    }
}

public class DescribeDesktopsInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopsInGroupResponseBody?

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
            var model = DescribeDesktopsInGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDirectoriesRequest : Tea.TeaModel {
    public var directoryId: [String]?

    public var directoryStatus: String?

    public var directoryType: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.directoryStatus != nil {
            map["DirectoryStatus"] = self.directoryStatus!
        }
        if self.directoryType != nil {
            map["DirectoryType"] = self.directoryType!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! [String]
        }
        if dict.keys.contains("DirectoryStatus") {
            self.directoryStatus = dict["DirectoryStatus"] as! String
        }
        if dict.keys.contains("DirectoryType") {
            self.directoryType = dict["DirectoryType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeDirectoriesResponseBody : Tea.TeaModel {
    public class Directories : Tea.TeaModel {
        public class ADConnectors : Tea.TeaModel {
            public var ADConnectorAddress: String?

            public var connectorStatus: String?

            public var networkInterfaceId: String?

            public var specification: String?

            public var trustKey: String?

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
                if self.ADConnectorAddress != nil {
                    map["ADConnectorAddress"] = self.ADConnectorAddress!
                }
                if self.connectorStatus != nil {
                    map["ConnectorStatus"] = self.connectorStatus!
                }
                if self.networkInterfaceId != nil {
                    map["NetworkInterfaceId"] = self.networkInterfaceId!
                }
                if self.specification != nil {
                    map["Specification"] = self.specification!
                }
                if self.trustKey != nil {
                    map["TrustKey"] = self.trustKey!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ADConnectorAddress") {
                    self.ADConnectorAddress = dict["ADConnectorAddress"] as! String
                }
                if dict.keys.contains("ConnectorStatus") {
                    self.connectorStatus = dict["ConnectorStatus"] as! String
                }
                if dict.keys.contains("NetworkInterfaceId") {
                    self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
                }
                if dict.keys.contains("Specification") {
                    self.specification = dict["Specification"] as! String
                }
                if dict.keys.contains("TrustKey") {
                    self.trustKey = dict["TrustKey"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public class Logs : Tea.TeaModel {
            public var level: String?

            public var message: String?

            public var step: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.step != nil {
                    map["Step"] = self.step!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Step") {
                    self.step = dict["Step"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var ADConnectors: [DescribeDirectoriesResponseBody.Directories.ADConnectors]?

        public var creationTime: String?

        public var customSecurityGroupId: String?

        public var desktopAccessType: String?

        public var desktopVpcEndpoint: String?

        public var directoryId: String?

        public var directoryType: String?

        public var dnsAddress: [String]?

        public var dnsUserName: String?

        public var domainName: String?

        public var domainPassword: String?

        public var domainUserName: String?

        public var enableAdminAccess: Bool?

        public var enableCrossDesktopAccess: Bool?

        public var enableInternetAccess: Bool?

        public var fileSystemIds: [String]?

        public var logs: [DescribeDirectoriesResponseBody.Directories.Logs]?

        public var mfaEnabled: Bool?

        public var name: String?

        public var needVerifyLoginRisk: Bool?

        public var ouName: String?

        public var ssoEnabled: Bool?

        public var status: String?

        public var subDnsAddress: [String]?

        public var subDomainName: String?

        public var trustPassword: String?

        public var vSwitchIds: [String]?

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
            if self.ADConnectors != nil {
                var tmp : [Any] = []
                for k in self.ADConnectors! {
                    tmp.append(k.toMap())
                }
                map["ADConnectors"] = tmp
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.customSecurityGroupId != nil {
                map["CustomSecurityGroupId"] = self.customSecurityGroupId!
            }
            if self.desktopAccessType != nil {
                map["DesktopAccessType"] = self.desktopAccessType!
            }
            if self.desktopVpcEndpoint != nil {
                map["DesktopVpcEndpoint"] = self.desktopVpcEndpoint!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryType != nil {
                map["DirectoryType"] = self.directoryType!
            }
            if self.dnsAddress != nil {
                map["DnsAddress"] = self.dnsAddress!
            }
            if self.dnsUserName != nil {
                map["DnsUserName"] = self.dnsUserName!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainPassword != nil {
                map["DomainPassword"] = self.domainPassword!
            }
            if self.domainUserName != nil {
                map["DomainUserName"] = self.domainUserName!
            }
            if self.enableAdminAccess != nil {
                map["EnableAdminAccess"] = self.enableAdminAccess!
            }
            if self.enableCrossDesktopAccess != nil {
                map["EnableCrossDesktopAccess"] = self.enableCrossDesktopAccess!
            }
            if self.enableInternetAccess != nil {
                map["EnableInternetAccess"] = self.enableInternetAccess!
            }
            if self.fileSystemIds != nil {
                map["FileSystemIds"] = self.fileSystemIds!
            }
            if self.logs != nil {
                var tmp : [Any] = []
                for k in self.logs! {
                    tmp.append(k.toMap())
                }
                map["Logs"] = tmp
            }
            if self.mfaEnabled != nil {
                map["MfaEnabled"] = self.mfaEnabled!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.needVerifyLoginRisk != nil {
                map["NeedVerifyLoginRisk"] = self.needVerifyLoginRisk!
            }
            if self.ouName != nil {
                map["OuName"] = self.ouName!
            }
            if self.ssoEnabled != nil {
                map["SsoEnabled"] = self.ssoEnabled!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subDnsAddress != nil {
                map["SubDnsAddress"] = self.subDnsAddress!
            }
            if self.subDomainName != nil {
                map["SubDomainName"] = self.subDomainName!
            }
            if self.trustPassword != nil {
                map["TrustPassword"] = self.trustPassword!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ADConnectors") {
                self.ADConnectors = dict["ADConnectors"] as! [DescribeDirectoriesResponseBody.Directories.ADConnectors]
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("CustomSecurityGroupId") {
                self.customSecurityGroupId = dict["CustomSecurityGroupId"] as! String
            }
            if dict.keys.contains("DesktopAccessType") {
                self.desktopAccessType = dict["DesktopAccessType"] as! String
            }
            if dict.keys.contains("DesktopVpcEndpoint") {
                self.desktopVpcEndpoint = dict["DesktopVpcEndpoint"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryType") {
                self.directoryType = dict["DirectoryType"] as! String
            }
            if dict.keys.contains("DnsAddress") {
                self.dnsAddress = dict["DnsAddress"] as! [String]
            }
            if dict.keys.contains("DnsUserName") {
                self.dnsUserName = dict["DnsUserName"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainPassword") {
                self.domainPassword = dict["DomainPassword"] as! String
            }
            if dict.keys.contains("DomainUserName") {
                self.domainUserName = dict["DomainUserName"] as! String
            }
            if dict.keys.contains("EnableAdminAccess") {
                self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
            }
            if dict.keys.contains("EnableCrossDesktopAccess") {
                self.enableCrossDesktopAccess = dict["EnableCrossDesktopAccess"] as! Bool
            }
            if dict.keys.contains("EnableInternetAccess") {
                self.enableInternetAccess = dict["EnableInternetAccess"] as! Bool
            }
            if dict.keys.contains("FileSystemIds") {
                self.fileSystemIds = dict["FileSystemIds"] as! [String]
            }
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [DescribeDirectoriesResponseBody.Directories.Logs]
            }
            if dict.keys.contains("MfaEnabled") {
                self.mfaEnabled = dict["MfaEnabled"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedVerifyLoginRisk") {
                self.needVerifyLoginRisk = dict["NeedVerifyLoginRisk"] as! Bool
            }
            if dict.keys.contains("OuName") {
                self.ouName = dict["OuName"] as! String
            }
            if dict.keys.contains("SsoEnabled") {
                self.ssoEnabled = dict["SsoEnabled"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubDnsAddress") {
                self.subDnsAddress = dict["SubDnsAddress"] as! [String]
            }
            if dict.keys.contains("SubDomainName") {
                self.subDomainName = dict["SubDomainName"] as! String
            }
            if dict.keys.contains("TrustPassword") {
                self.trustPassword = dict["TrustPassword"] as! String
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var adHostname: String?

    public var directories: [DescribeDirectoriesResponseBody.Directories]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adHostname != nil {
            map["AdHostname"] = self.adHostname!
        }
        if self.directories != nil {
            var tmp : [Any] = []
            for k in self.directories! {
                tmp.append(k.toMap())
            }
            map["Directories"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdHostname") {
            self.adHostname = dict["AdHostname"] as! String
        }
        if dict.keys.contains("Directories") {
            self.directories = dict["Directories"] as! [DescribeDirectoriesResponseBody.Directories]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDirectoriesResponseBody?

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
            var model = DescribeDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrivesRequest : Tea.TeaModel {
    public var domainIds: [String]?

    public var regionId: String?

    public var resourceType: String?

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
        if self.domainIds != nil {
            map["DomainIds"] = self.domainIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainIds") {
            self.domainIds = dict["DomainIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeDrivesResponseBody : Tea.TeaModel {
    public class Drives : Tea.TeaModel {
        public class DesktopGroups : Tea.TeaModel {
            public var desktopGroupId: String?

            public var desktopGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.desktopGroupId != nil {
                    map["DesktopGroupId"] = self.desktopGroupId!
                }
                if self.desktopGroupName != nil {
                    map["DesktopGroupName"] = self.desktopGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DesktopGroupId") {
                    self.desktopGroupId = dict["DesktopGroupId"] as! String
                }
                if dict.keys.contains("DesktopGroupName") {
                    self.desktopGroupName = dict["DesktopGroupName"] as! String
                }
            }
        }
        public var aliUid: Int64?

        public var description_: String?

        public var desktopGroupCount: Int32?

        public var desktopGroups: [DescribeDrivesResponseBody.Drives.DesktopGroups]?

        public var domainId: String?

        public var driveId: String?

        public var enableProfileManagement: Bool?

        public var externalDomainId: String?

        public var externalDriveId: String?

        public var externalUserId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: String?

        public var name: String?

        public var profileRoaming: Bool?

        public var status: String?

        public var totalSize: Int64?

        public var type: String?

        public var usedSize: Int64?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.desktopGroupCount != nil {
                map["DesktopGroupCount"] = self.desktopGroupCount!
            }
            if self.desktopGroups != nil {
                var tmp : [Any] = []
                for k in self.desktopGroups! {
                    tmp.append(k.toMap())
                }
                map["DesktopGroups"] = tmp
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.driveId != nil {
                map["DriveId"] = self.driveId!
            }
            if self.enableProfileManagement != nil {
                map["EnableProfileManagement"] = self.enableProfileManagement!
            }
            if self.externalDomainId != nil {
                map["ExternalDomainId"] = self.externalDomainId!
            }
            if self.externalDriveId != nil {
                map["ExternalDriveId"] = self.externalDriveId!
            }
            if self.externalUserId != nil {
                map["ExternalUserId"] = self.externalUserId!
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
            if self.profileRoaming != nil {
                map["ProfileRoaming"] = self.profileRoaming!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.usedSize != nil {
                map["UsedSize"] = self.usedSize!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DesktopGroupCount") {
                self.desktopGroupCount = dict["DesktopGroupCount"] as! Int32
            }
            if dict.keys.contains("DesktopGroups") {
                self.desktopGroups = dict["DesktopGroups"] as! [DescribeDrivesResponseBody.Drives.DesktopGroups]
            }
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DriveId") {
                self.driveId = dict["DriveId"] as! String
            }
            if dict.keys.contains("EnableProfileManagement") {
                self.enableProfileManagement = dict["EnableProfileManagement"] as! Bool
            }
            if dict.keys.contains("ExternalDomainId") {
                self.externalDomainId = dict["ExternalDomainId"] as! String
            }
            if dict.keys.contains("ExternalDriveId") {
                self.externalDriveId = dict["ExternalDriveId"] as! String
            }
            if dict.keys.contains("ExternalUserId") {
                self.externalUserId = dict["ExternalUserId"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProfileRoaming") {
                self.profileRoaming = dict["ProfileRoaming"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UsedSize") {
                self.usedSize = dict["UsedSize"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var drives: [DescribeDrivesResponseBody.Drives]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.drives != nil {
            var tmp : [Any] = []
            for k in self.drives! {
                tmp.append(k.toMap())
            }
            map["Drives"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Drives") {
            self.drives = dict["Drives"] as! [DescribeDrivesResponseBody.Drives]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeDrivesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrivesResponseBody?

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
            var model = DescribeDrivesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowMetricRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var instanceType: String?

    public var metricType: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("MetricType") {
            self.metricType = dict["MetricType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeFlowMetricResponseBody : Tea.TeaModel {
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

public class DescribeFlowMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowMetricResponseBody?

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
            var model = DescribeFlowMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowStatisticRequest : Tea.TeaModel {
    public var desktopId: String?

    public var officeSiteId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var period: Int32?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeFlowStatisticResponseBody : Tea.TeaModel {
    public class DesktopFlowStatistic : Tea.TeaModel {
        public var desktopId: String?

        public var desktopName: String?

        public var flowIn: String?

        public var flowRank: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.flowIn != nil {
                map["FlowIn"] = self.flowIn!
            }
            if self.flowRank != nil {
                map["FlowRank"] = self.flowRank!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("FlowIn") {
                self.flowIn = dict["FlowIn"] as! String
            }
            if dict.keys.contains("FlowRank") {
                self.flowRank = dict["FlowRank"] as! Int32
            }
        }
    }
    public var desktopCount: Int32?

    public var desktopFlowStatistic: [DescribeFlowStatisticResponseBody.DesktopFlowStatistic]?

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
        if self.desktopCount != nil {
            map["DesktopCount"] = self.desktopCount!
        }
        if self.desktopFlowStatistic != nil {
            var tmp : [Any] = []
            for k in self.desktopFlowStatistic! {
                tmp.append(k.toMap())
            }
            map["DesktopFlowStatistic"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopCount") {
            self.desktopCount = dict["DesktopCount"] as! Int32
        }
        if dict.keys.contains("DesktopFlowStatistic") {
            self.desktopFlowStatistic = dict["DesktopFlowStatistic"] as! [DescribeFlowStatisticResponseBody.DesktopFlowStatistic]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFlowStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowStatisticResponseBody?

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
            var model = DescribeFlowStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFotaPendingDesktopsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var taskUid: String?

    public override init() {
        super.init()
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
        if self.taskUid != nil {
            map["TaskUid"] = self.taskUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskUid") {
            self.taskUid = dict["TaskUid"] as! String
        }
    }
}

public class DescribeFotaPendingDesktopsResponseBody : Tea.TeaModel {
    public class FotaPendingDesktops : Tea.TeaModel {
        public var currentAppVersion: String?

        public var desktopId: String?

        public var desktopName: String?

        public var fotaProject: String?

        public var officeSiteId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentAppVersion != nil {
                map["CurrentAppVersion"] = self.currentAppVersion!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.fotaProject != nil {
                map["FotaProject"] = self.fotaProject!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentAppVersion") {
                self.currentAppVersion = dict["CurrentAppVersion"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("FotaProject") {
                self.fotaProject = dict["FotaProject"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
        }
    }
    public var fotaPendingDesktops: [DescribeFotaPendingDesktopsResponseBody.FotaPendingDesktops]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fotaPendingDesktops != nil {
            var tmp : [Any] = []
            for k in self.fotaPendingDesktops! {
                tmp.append(k.toMap())
            }
            map["FotaPendingDesktops"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FotaPendingDesktops") {
            self.fotaPendingDesktops = dict["FotaPendingDesktops"] as! [DescribeFotaPendingDesktopsResponseBody.FotaPendingDesktops]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFotaPendingDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFotaPendingDesktopsResponseBody?

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
            var model = DescribeFotaPendingDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFotaTasksRequest : Tea.TeaModel {
    public var fotaStatus: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var taskUid: [String]?

    public var userStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fotaStatus != nil {
            map["FotaStatus"] = self.fotaStatus!
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
        if self.taskUid != nil {
            map["TaskUid"] = self.taskUid!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FotaStatus") {
            self.fotaStatus = dict["FotaStatus"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskUid") {
            self.taskUid = dict["TaskUid"] as! [String]
        }
        if dict.keys.contains("UserStatus") {
            self.userStatus = dict["UserStatus"] as! String
        }
    }
}

public class DescribeFotaTasksResponseBody : Tea.TeaModel {
    public class FotaTasks : Tea.TeaModel {
        public var appVersion: String?

        public var fotaProject: String?

        public var pendingDesktopCount: Int32?

        public var publishTime: String?

        public var releaseNote: String?

        public var size: Int32?

        public var status: String?

        public var taskUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.fotaProject != nil {
                map["FotaProject"] = self.fotaProject!
            }
            if self.pendingDesktopCount != nil {
                map["PendingDesktopCount"] = self.pendingDesktopCount!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.releaseNote != nil {
                map["ReleaseNote"] = self.releaseNote!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskUid != nil {
                map["TaskUid"] = self.taskUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("FotaProject") {
                self.fotaProject = dict["FotaProject"] as! String
            }
            if dict.keys.contains("PendingDesktopCount") {
                self.pendingDesktopCount = dict["PendingDesktopCount"] as! Int32
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("ReleaseNote") {
                self.releaseNote = dict["ReleaseNote"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskUid") {
                self.taskUid = dict["TaskUid"] as! String
            }
        }
    }
    public var fotaTasks: [DescribeFotaTasksResponseBody.FotaTasks]?

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
        if self.fotaTasks != nil {
            var tmp : [Any] = []
            for k in self.fotaTasks! {
                tmp.append(k.toMap())
            }
            map["FotaTasks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FotaTasks") {
            self.fotaTasks = dict["FotaTasks"] as! [DescribeFotaTasksResponseBody.FotaTasks]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFotaTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFotaTasksResponseBody?

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
            var model = DescribeFotaTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFrontVulPatchListRequest : Tea.TeaModel {
    public class VulInfo : Tea.TeaModel {
        public var desktopId: String?

        public var name: String?

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
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var operateType: String?

    public var regionId: String?

    public var type: String?

    public var vulInfo: [DescribeFrontVulPatchListRequest.VulInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vulInfo != nil {
            var tmp : [Any] = []
            for k in self.vulInfo! {
                tmp.append(k.toMap())
            }
            map["VulInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VulInfo") {
            self.vulInfo = dict["VulInfo"] as! [DescribeFrontVulPatchListRequest.VulInfo]
        }
    }
}

public class DescribeFrontVulPatchListResponseBody : Tea.TeaModel {
    public class FrontPatchList : Tea.TeaModel {
        public class PatchList : Tea.TeaModel {
            public var aliasName: String?

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
                if self.aliasName != nil {
                    map["AliasName"] = self.aliasName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliasName") {
                    self.aliasName = dict["AliasName"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var desktopId: String?

        public var patchList: [DescribeFrontVulPatchListResponseBody.FrontPatchList.PatchList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.patchList != nil {
                var tmp : [Any] = []
                for k in self.patchList! {
                    tmp.append(k.toMap())
                }
                map["PatchList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("PatchList") {
                self.patchList = dict["PatchList"] as! [DescribeFrontVulPatchListResponseBody.FrontPatchList.PatchList]
            }
        }
    }
    public var frontPatchList: [DescribeFrontVulPatchListResponseBody.FrontPatchList]?

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
        if self.frontPatchList != nil {
            var tmp : [Any] = []
            for k in self.frontPatchList! {
                tmp.append(k.toMap())
            }
            map["FrontPatchList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FrontPatchList") {
            self.frontPatchList = dict["FrontPatchList"] as! [DescribeFrontVulPatchListResponseBody.FrontPatchList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFrontVulPatchListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFrontVulPatchListResponseBody?

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
            var model = DescribeFrontVulPatchListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGroupedVulRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dealed: String?

    public var lang: String?

    public var necessity: String?

    public var officeSiteId: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.necessity != nil {
            map["Necessity"] = self.necessity!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Dealed") {
            self.dealed = dict["Dealed"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Necessity") {
            self.necessity = dict["Necessity"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeGroupedVulResponseBody : Tea.TeaModel {
    public class GroupedVulItems : Tea.TeaModel {
        public var aliasName: String?

        public var asapCount: Int32?

        public var gmtLast: String?

        public var handledCount: Int32?

        public var laterCount: Int32?

        public var name: String?

        public var nntfCount: Int32?

        public var tags: String?

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
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.asapCount != nil {
                map["AsapCount"] = self.asapCount!
            }
            if self.gmtLast != nil {
                map["GmtLast"] = self.gmtLast!
            }
            if self.handledCount != nil {
                map["HandledCount"] = self.handledCount!
            }
            if self.laterCount != nil {
                map["LaterCount"] = self.laterCount!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nntfCount != nil {
                map["NntfCount"] = self.nntfCount!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("AsapCount") {
                self.asapCount = dict["AsapCount"] as! Int32
            }
            if dict.keys.contains("GmtLast") {
                self.gmtLast = dict["GmtLast"] as! String
            }
            if dict.keys.contains("HandledCount") {
                self.handledCount = dict["HandledCount"] as! Int32
            }
            if dict.keys.contains("LaterCount") {
                self.laterCount = dict["LaterCount"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NntfCount") {
                self.nntfCount = dict["NntfCount"] as! Int32
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var groupedVulItems: [DescribeGroupedVulResponseBody.GroupedVulItems]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.groupedVulItems != nil {
            var tmp : [Any] = []
            for k in self.groupedVulItems! {
                tmp.append(k.toMap())
            }
            map["GroupedVulItems"] = tmp
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("GroupedVulItems") {
            self.groupedVulItems = dict["GroupedVulItems"] as! [DescribeGroupedVulResponseBody.GroupedVulItems]
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

public class DescribeGroupedVulResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupedVulResponseBody?

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
            var model = DescribeGroupedVulResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageModifiedRecordsRequest : Tea.TeaModel {
    public var desktopId: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeImageModifiedRecordsResponseBody : Tea.TeaModel {
    public class ImageModifiedRecords : Tea.TeaModel {
        public var imageId: String?

        public var imageName: String?

        public var newImageId: String?

        public var newImageName: String?

        public var status: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.newImageId != nil {
                map["NewImageId"] = self.newImageId!
            }
            if self.newImageName != nil {
                map["NewImageName"] = self.newImageName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("NewImageId") {
                self.newImageId = dict["NewImageId"] as! String
            }
            if dict.keys.contains("NewImageName") {
                self.newImageName = dict["NewImageName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var imageModifiedRecords: [DescribeImageModifiedRecordsResponseBody.ImageModifiedRecords]?

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
        if self.imageModifiedRecords != nil {
            var tmp : [Any] = []
            for k in self.imageModifiedRecords! {
                tmp.append(k.toMap())
            }
            map["ImageModifiedRecords"] = tmp
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
        if dict.keys.contains("ImageModifiedRecords") {
            self.imageModifiedRecords = dict["ImageModifiedRecords"] as! [DescribeImageModifiedRecordsResponseBody.ImageModifiedRecords]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeImageModifiedRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageModifiedRecordsResponseBody?

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
            var model = DescribeImageModifiedRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImagePermissionRequest : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeImagePermissionResponseBody : Tea.TeaModel {
    public var aliUids: [String]?

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
        if self.aliUids != nil {
            map["AliUids"] = self.aliUids!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUids") {
            self.aliUids = dict["AliUids"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImagePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImagePermissionResponseBody?

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
            var model = DescribeImagePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImagesRequest : Tea.TeaModel {
    public var desktopInstanceType: String?

    public var gpuCategory: Bool?

    public var gpuDriverVersion: String?

    public var imageId: [String]?

    public var imageStatus: String?

    public var imageType: String?

    public var languageType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var osType: String?

    public var protocolType: String?

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
        if self.desktopInstanceType != nil {
            map["DesktopInstanceType"] = self.desktopInstanceType!
        }
        if self.gpuCategory != nil {
            map["GpuCategory"] = self.gpuCategory!
        }
        if self.gpuDriverVersion != nil {
            map["GpuDriverVersion"] = self.gpuDriverVersion!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageStatus != nil {
            map["ImageStatus"] = self.imageStatus!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.languageType != nil {
            map["LanguageType"] = self.languageType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopInstanceType") {
            self.desktopInstanceType = dict["DesktopInstanceType"] as! String
        }
        if dict.keys.contains("GpuCategory") {
            self.gpuCategory = dict["GpuCategory"] as! Bool
        }
        if dict.keys.contains("GpuDriverVersion") {
            self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! [String]
        }
        if dict.keys.contains("ImageStatus") {
            self.imageStatus = dict["ImageStatus"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("LanguageType") {
            self.languageType = dict["LanguageType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var appVersion: String?

        public var creationTime: String?

        public var dataDiskSize: Int32?

        public var description_: String?

        public var gpuCategory: Bool?

        public var gpuDriverVersion: String?

        public var imageId: String?

        public var imageType: String?

        public var name: String?

        public var osType: String?

        public var progress: String?

        public var protocolType: String?

        public var sessionType: String?

        public var sharedCount: Int32?

        public var size: Int32?

        public var status: String?

        public var supportedLanguages: [String]?

        public var volumeEncryptionEnabled: Bool?

        public var volumeEncryptionKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gpuCategory != nil {
                map["GpuCategory"] = self.gpuCategory!
            }
            if self.gpuDriverVersion != nil {
                map["GpuDriverVersion"] = self.gpuDriverVersion!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.sharedCount != nil {
                map["SharedCount"] = self.sharedCount!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportedLanguages != nil {
                map["SupportedLanguages"] = self.supportedLanguages!
            }
            if self.volumeEncryptionEnabled != nil {
                map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
            }
            if self.volumeEncryptionKey != nil {
                map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GpuCategory") {
                self.gpuCategory = dict["GpuCategory"] as! Bool
            }
            if dict.keys.contains("GpuDriverVersion") {
                self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageType") {
                self.imageType = dict["ImageType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("SessionType") {
                self.sessionType = dict["SessionType"] as! String
            }
            if dict.keys.contains("SharedCount") {
                self.sharedCount = dict["SharedCount"] as! Int32
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupportedLanguages") {
                self.supportedLanguages = dict["SupportedLanguages"] as! [String]
            }
            if dict.keys.contains("VolumeEncryptionEnabled") {
                self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
            }
            if dict.keys.contains("VolumeEncryptionKey") {
                self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
            }
        }
    }
    public var images: [DescribeImagesResponseBody.Images]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            self.images = dict["Images"] as! [DescribeImagesResponseBody.Images]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImagesResponseBody?

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
            var model = DescribeImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInvocationsRequest : Tea.TeaModel {
    public var commandType: String?

    public var contentEncoding: String?

    public var desktopId: String?

    public var includeOutput: Bool?

    public var invokeId: String?

    public var invokeStatus: String?

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
        if self.commandType != nil {
            map["CommandType"] = self.commandType!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.includeOutput != nil {
            map["IncludeOutput"] = self.includeOutput!
        }
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.invokeStatus != nil {
            map["InvokeStatus"] = self.invokeStatus!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandType") {
            self.commandType = dict["CommandType"] as! String
        }
        if dict.keys.contains("ContentEncoding") {
            self.contentEncoding = dict["ContentEncoding"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("IncludeOutput") {
            self.includeOutput = dict["IncludeOutput"] as! Bool
        }
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("InvokeStatus") {
            self.invokeStatus = dict["InvokeStatus"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeInvocationsResponseBody : Tea.TeaModel {
    public class Invocations : Tea.TeaModel {
        public class InvokeDesktops : Tea.TeaModel {
            public var creationTime: String?

            public var desktopId: String?

            public var dropped: Int32?

            public var errorCode: String?

            public var errorInfo: String?

            public var exitCode: Int64?

            public var finishTime: String?

            public var invocationStatus: String?

            public var output: String?

            public var repeats: Int32?

            public var startTime: String?

            public var stopTime: String?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.desktopId != nil {
                    map["DesktopId"] = self.desktopId!
                }
                if self.dropped != nil {
                    map["Dropped"] = self.dropped!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorInfo != nil {
                    map["ErrorInfo"] = self.errorInfo!
                }
                if self.exitCode != nil {
                    map["ExitCode"] = self.exitCode!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.invocationStatus != nil {
                    map["InvocationStatus"] = self.invocationStatus!
                }
                if self.output != nil {
                    map["Output"] = self.output!
                }
                if self.repeats != nil {
                    map["Repeats"] = self.repeats!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.stopTime != nil {
                    map["StopTime"] = self.stopTime!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DesktopId") {
                    self.desktopId = dict["DesktopId"] as! String
                }
                if dict.keys.contains("Dropped") {
                    self.dropped = dict["Dropped"] as! Int32
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorInfo") {
                    self.errorInfo = dict["ErrorInfo"] as! String
                }
                if dict.keys.contains("ExitCode") {
                    self.exitCode = dict["ExitCode"] as! Int64
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("InvocationStatus") {
                    self.invocationStatus = dict["InvocationStatus"] as! String
                }
                if dict.keys.contains("Output") {
                    self.output = dict["Output"] as! String
                }
                if dict.keys.contains("Repeats") {
                    self.repeats = dict["Repeats"] as! Int32
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StopTime") {
                    self.stopTime = dict["StopTime"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var commandContent: String?

        public var commandType: String?

        public var creationTime: String?

        public var endUserId: String?

        public var invocationStatus: String?

        public var invokeDesktops: [DescribeInvocationsResponseBody.Invocations.InvokeDesktops]?

        public var invokeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandContent != nil {
                map["CommandContent"] = self.commandContent!
            }
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.invocationStatus != nil {
                map["InvocationStatus"] = self.invocationStatus!
            }
            if self.invokeDesktops != nil {
                var tmp : [Any] = []
                for k in self.invokeDesktops! {
                    tmp.append(k.toMap())
                }
                map["InvokeDesktops"] = tmp
            }
            if self.invokeId != nil {
                map["InvokeId"] = self.invokeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommandContent") {
                self.commandContent = dict["CommandContent"] as! String
            }
            if dict.keys.contains("CommandType") {
                self.commandType = dict["CommandType"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("InvocationStatus") {
                self.invocationStatus = dict["InvocationStatus"] as! String
            }
            if dict.keys.contains("InvokeDesktops") {
                self.invokeDesktops = dict["InvokeDesktops"] as! [DescribeInvocationsResponseBody.Invocations.InvokeDesktops]
            }
            if dict.keys.contains("InvokeId") {
                self.invokeId = dict["InvokeId"] as! String
            }
        }
    }
    public var invocations: [DescribeInvocationsResponseBody.Invocations]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invocations != nil {
            var tmp : [Any] = []
            for k in self.invocations! {
                tmp.append(k.toMap())
            }
            map["Invocations"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Invocations") {
            self.invocations = dict["Invocations"] as! [DescribeInvocationsResponseBody.Invocations]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvocationsResponseBody?

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
            var model = DescribeInvocationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKmsKeysRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeKmsKeysResponseBody : Tea.TeaModel {
    public class Keys : Tea.TeaModel {
        public var alias: String?

        public var arn: String?

        public var keyId: String?

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
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var authorizeStatus: String?

    public var keys: [DescribeKmsKeysResponseBody.Keys]?

    public var kmsServiceStatus: String?

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
        if self.authorizeStatus != nil {
            map["AuthorizeStatus"] = self.authorizeStatus!
        }
        if self.keys != nil {
            var tmp : [Any] = []
            for k in self.keys! {
                tmp.append(k.toMap())
            }
            map["Keys"] = tmp
        }
        if self.kmsServiceStatus != nil {
            map["KmsServiceStatus"] = self.kmsServiceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizeStatus") {
            self.authorizeStatus = dict["AuthorizeStatus"] as! String
        }
        if dict.keys.contains("Keys") {
            self.keys = dict["Keys"] as! [DescribeKmsKeysResponseBody.Keys]
        }
        if dict.keys.contains("KmsServiceStatus") {
            self.kmsServiceStatus = dict["KmsServiceStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeKmsKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKmsKeysResponseBody?

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
            var model = DescribeKmsKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNASFileSystemsRequest : Tea.TeaModel {
    public var fileSystemId: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeNASFileSystemsResponseBody : Tea.TeaModel {
    public class FileSystems : Tea.TeaModel {
        public var capacity: Int64?

        public var createTime: String?

        public var description_: String?

        public var encryptionEnabled: Bool?

        public var fileSystemId: String?

        public var fileSystemName: String?

        public var fileSystemStatus: String?

        public var fileSystemType: String?

        public var meteredSize: Int64?

        public var mountTargetDomain: String?

        public var mountTargetStatus: String?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var regionId: String?

        public var storageType: String?

        public var supportAcl: Bool?

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
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encryptionEnabled != nil {
                map["EncryptionEnabled"] = self.encryptionEnabled!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.fileSystemName != nil {
                map["FileSystemName"] = self.fileSystemName!
            }
            if self.fileSystemStatus != nil {
                map["FileSystemStatus"] = self.fileSystemStatus!
            }
            if self.fileSystemType != nil {
                map["FileSystemType"] = self.fileSystemType!
            }
            if self.meteredSize != nil {
                map["MeteredSize"] = self.meteredSize!
            }
            if self.mountTargetDomain != nil {
                map["MountTargetDomain"] = self.mountTargetDomain!
            }
            if self.mountTargetStatus != nil {
                map["MountTargetStatus"] = self.mountTargetStatus!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.supportAcl != nil {
                map["SupportAcl"] = self.supportAcl!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Capacity") {
                self.capacity = dict["Capacity"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EncryptionEnabled") {
                self.encryptionEnabled = dict["EncryptionEnabled"] as! Bool
            }
            if dict.keys.contains("FileSystemId") {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("FileSystemName") {
                self.fileSystemName = dict["FileSystemName"] as! String
            }
            if dict.keys.contains("FileSystemStatus") {
                self.fileSystemStatus = dict["FileSystemStatus"] as! String
            }
            if dict.keys.contains("FileSystemType") {
                self.fileSystemType = dict["FileSystemType"] as! String
            }
            if dict.keys.contains("MeteredSize") {
                self.meteredSize = dict["MeteredSize"] as! Int64
            }
            if dict.keys.contains("MountTargetDomain") {
                self.mountTargetDomain = dict["MountTargetDomain"] as! String
            }
            if dict.keys.contains("MountTargetStatus") {
                self.mountTargetStatus = dict["MountTargetStatus"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StorageType") {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("SupportAcl") {
                self.supportAcl = dict["SupportAcl"] as! Bool
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var fileSystems: [DescribeNASFileSystemsResponseBody.FileSystems]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystems != nil {
            var tmp : [Any] = []
            for k in self.fileSystems! {
                tmp.append(k.toMap())
            }
            map["FileSystems"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystems") {
            self.fileSystems = dict["FileSystems"] as! [DescribeNASFileSystemsResponseBody.FileSystems]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNASFileSystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNASFileSystemsResponseBody?

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
            var model = DescribeNASFileSystemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNetworkPackagesRequest : Tea.TeaModel {
    public var internetChargeType: String?

    public var maxResults: Int32?

    public var networkPackageId: [String]?

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
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! [String]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeNetworkPackagesResponseBody : Tea.TeaModel {
    public class NetworkPackages : Tea.TeaModel {
        public var bandwidth: Int32?

        public var createTime: String?

        public var eipAddresses: [String]?

        public var expiredTime: String?

        public var internetChargeType: String?

        public var networkPackageId: String?

        public var networkPackageStatus: String?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteVpcType: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.eipAddresses != nil {
                map["EipAddresses"] = self.eipAddresses!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.networkPackageId != nil {
                map["NetworkPackageId"] = self.networkPackageId!
            }
            if self.networkPackageStatus != nil {
                map["NetworkPackageStatus"] = self.networkPackageStatus!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteVpcType != nil {
                map["OfficeSiteVpcType"] = self.officeSiteVpcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EipAddresses") {
                self.eipAddresses = dict["EipAddresses"] as! [String]
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("InternetChargeType") {
                self.internetChargeType = dict["InternetChargeType"] as! String
            }
            if dict.keys.contains("NetworkPackageId") {
                self.networkPackageId = dict["NetworkPackageId"] as! String
            }
            if dict.keys.contains("NetworkPackageStatus") {
                self.networkPackageStatus = dict["NetworkPackageStatus"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("OfficeSiteVpcType") {
                self.officeSiteVpcType = dict["OfficeSiteVpcType"] as! String
            }
        }
    }
    public var networkPackages: [DescribeNetworkPackagesResponseBody.NetworkPackages]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkPackages != nil {
            var tmp : [Any] = []
            for k in self.networkPackages! {
                tmp.append(k.toMap())
            }
            map["NetworkPackages"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPackages") {
            self.networkPackages = dict["NetworkPackages"] as! [DescribeNetworkPackagesResponseBody.NetworkPackages]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNetworkPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNetworkPackagesResponseBody?

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
            var model = DescribeNetworkPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOfficeSitesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: [String]?

    public var officeSiteType: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.officeSiteType != nil {
            map["OfficeSiteType"] = self.officeSiteType!
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! [String]
        }
        if dict.keys.contains("OfficeSiteType") {
            self.officeSiteType = dict["OfficeSiteType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeOfficeSitesResponseBody : Tea.TeaModel {
    public class OfficeSites : Tea.TeaModel {
        public class ADConnectors : Tea.TeaModel {
            public var ADConnectorAddress: String?

            public var connectorStatus: String?

            public var networkInterfaceId: String?

            public var specification: String?

            public var trustKey: String?

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
                if self.ADConnectorAddress != nil {
                    map["ADConnectorAddress"] = self.ADConnectorAddress!
                }
                if self.connectorStatus != nil {
                    map["ConnectorStatus"] = self.connectorStatus!
                }
                if self.networkInterfaceId != nil {
                    map["NetworkInterfaceId"] = self.networkInterfaceId!
                }
                if self.specification != nil {
                    map["Specification"] = self.specification!
                }
                if self.trustKey != nil {
                    map["TrustKey"] = self.trustKey!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ADConnectorAddress") {
                    self.ADConnectorAddress = dict["ADConnectorAddress"] as! String
                }
                if dict.keys.contains("ConnectorStatus") {
                    self.connectorStatus = dict["ConnectorStatus"] as! String
                }
                if dict.keys.contains("NetworkInterfaceId") {
                    self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
                }
                if dict.keys.contains("Specification") {
                    self.specification = dict["Specification"] as! String
                }
                if dict.keys.contains("TrustKey") {
                    self.trustKey = dict["TrustKey"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public class Logs : Tea.TeaModel {
            public var level: String?

            public var message: String?

            public var step: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.step != nil {
                    map["Step"] = self.step!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Step") {
                    self.step = dict["Step"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var ADConnectors: [DescribeOfficeSitesResponseBody.OfficeSites.ADConnectors]?

        public var adHostname: String?

        public var bandwidth: Int32?

        public var cenId: String?

        public var cidrBlock: String?

        public var cloudBoxOfficeSite: Bool?

        public var creationTime: String?

        public var customSecurityGroupId: String?

        public var desktopAccessType: String?

        public var desktopCount: Int64?

        public var desktopVpcEndpoint: String?

        public var dnsAddress: [String]?

        public var dnsUserName: String?

        public var domainName: String?

        public var domainPassword: String?

        public var domainUserName: String?

        public var enableAdminAccess: Bool?

        public var enableCrossDesktopAccess: Bool?

        public var enableInternetAccess: Bool?

        public var fileSystemIds: [String]?

        public var logs: [DescribeOfficeSitesResponseBody.OfficeSites.Logs]?

        public var mfaEnabled: Bool?

        public var name: String?

        public var needVerifyLoginRisk: Bool?

        public var needVerifyZeroDevice: Bool?

        public var networkPackageId: String?

        public var officeSiteId: String?

        public var officeSiteType: String?

        public var ouName: String?

        public var protocolType: String?

        public var ssoEnabled: Bool?

        public var ssoType: String?

        public var status: String?

        public var subDnsAddress: [String]?

        public var subDomainName: String?

        public var trustPassword: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public var vpcType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ADConnectors != nil {
                var tmp : [Any] = []
                for k in self.ADConnectors! {
                    tmp.append(k.toMap())
                }
                map["ADConnectors"] = tmp
            }
            if self.adHostname != nil {
                map["AdHostname"] = self.adHostname!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.cidrBlock != nil {
                map["CidrBlock"] = self.cidrBlock!
            }
            if self.cloudBoxOfficeSite != nil {
                map["CloudBoxOfficeSite"] = self.cloudBoxOfficeSite!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.customSecurityGroupId != nil {
                map["CustomSecurityGroupId"] = self.customSecurityGroupId!
            }
            if self.desktopAccessType != nil {
                map["DesktopAccessType"] = self.desktopAccessType!
            }
            if self.desktopCount != nil {
                map["DesktopCount"] = self.desktopCount!
            }
            if self.desktopVpcEndpoint != nil {
                map["DesktopVpcEndpoint"] = self.desktopVpcEndpoint!
            }
            if self.dnsAddress != nil {
                map["DnsAddress"] = self.dnsAddress!
            }
            if self.dnsUserName != nil {
                map["DnsUserName"] = self.dnsUserName!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainPassword != nil {
                map["DomainPassword"] = self.domainPassword!
            }
            if self.domainUserName != nil {
                map["DomainUserName"] = self.domainUserName!
            }
            if self.enableAdminAccess != nil {
                map["EnableAdminAccess"] = self.enableAdminAccess!
            }
            if self.enableCrossDesktopAccess != nil {
                map["EnableCrossDesktopAccess"] = self.enableCrossDesktopAccess!
            }
            if self.enableInternetAccess != nil {
                map["EnableInternetAccess"] = self.enableInternetAccess!
            }
            if self.fileSystemIds != nil {
                map["FileSystemIds"] = self.fileSystemIds!
            }
            if self.logs != nil {
                var tmp : [Any] = []
                for k in self.logs! {
                    tmp.append(k.toMap())
                }
                map["Logs"] = tmp
            }
            if self.mfaEnabled != nil {
                map["MfaEnabled"] = self.mfaEnabled!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.needVerifyLoginRisk != nil {
                map["NeedVerifyLoginRisk"] = self.needVerifyLoginRisk!
            }
            if self.needVerifyZeroDevice != nil {
                map["NeedVerifyZeroDevice"] = self.needVerifyZeroDevice!
            }
            if self.networkPackageId != nil {
                map["NetworkPackageId"] = self.networkPackageId!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
            }
            if self.ouName != nil {
                map["OuName"] = self.ouName!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.ssoEnabled != nil {
                map["SsoEnabled"] = self.ssoEnabled!
            }
            if self.ssoType != nil {
                map["SsoType"] = self.ssoType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subDnsAddress != nil {
                map["SubDnsAddress"] = self.subDnsAddress!
            }
            if self.subDomainName != nil {
                map["SubDomainName"] = self.subDomainName!
            }
            if self.trustPassword != nil {
                map["TrustPassword"] = self.trustPassword!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcType != nil {
                map["VpcType"] = self.vpcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ADConnectors") {
                self.ADConnectors = dict["ADConnectors"] as! [DescribeOfficeSitesResponseBody.OfficeSites.ADConnectors]
            }
            if dict.keys.contains("AdHostname") {
                self.adHostname = dict["AdHostname"] as! String
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CidrBlock") {
                self.cidrBlock = dict["CidrBlock"] as! String
            }
            if dict.keys.contains("CloudBoxOfficeSite") {
                self.cloudBoxOfficeSite = dict["CloudBoxOfficeSite"] as! Bool
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("CustomSecurityGroupId") {
                self.customSecurityGroupId = dict["CustomSecurityGroupId"] as! String
            }
            if dict.keys.contains("DesktopAccessType") {
                self.desktopAccessType = dict["DesktopAccessType"] as! String
            }
            if dict.keys.contains("DesktopCount") {
                self.desktopCount = dict["DesktopCount"] as! Int64
            }
            if dict.keys.contains("DesktopVpcEndpoint") {
                self.desktopVpcEndpoint = dict["DesktopVpcEndpoint"] as! String
            }
            if dict.keys.contains("DnsAddress") {
                self.dnsAddress = dict["DnsAddress"] as! [String]
            }
            if dict.keys.contains("DnsUserName") {
                self.dnsUserName = dict["DnsUserName"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainPassword") {
                self.domainPassword = dict["DomainPassword"] as! String
            }
            if dict.keys.contains("DomainUserName") {
                self.domainUserName = dict["DomainUserName"] as! String
            }
            if dict.keys.contains("EnableAdminAccess") {
                self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
            }
            if dict.keys.contains("EnableCrossDesktopAccess") {
                self.enableCrossDesktopAccess = dict["EnableCrossDesktopAccess"] as! Bool
            }
            if dict.keys.contains("EnableInternetAccess") {
                self.enableInternetAccess = dict["EnableInternetAccess"] as! Bool
            }
            if dict.keys.contains("FileSystemIds") {
                self.fileSystemIds = dict["FileSystemIds"] as! [String]
            }
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [DescribeOfficeSitesResponseBody.OfficeSites.Logs]
            }
            if dict.keys.contains("MfaEnabled") {
                self.mfaEnabled = dict["MfaEnabled"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedVerifyLoginRisk") {
                self.needVerifyLoginRisk = dict["NeedVerifyLoginRisk"] as! Bool
            }
            if dict.keys.contains("NeedVerifyZeroDevice") {
                self.needVerifyZeroDevice = dict["NeedVerifyZeroDevice"] as! Bool
            }
            if dict.keys.contains("NetworkPackageId") {
                self.networkPackageId = dict["NetworkPackageId"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteType") {
                self.officeSiteType = dict["OfficeSiteType"] as! String
            }
            if dict.keys.contains("OuName") {
                self.ouName = dict["OuName"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("SsoEnabled") {
                self.ssoEnabled = dict["SsoEnabled"] as! Bool
            }
            if dict.keys.contains("SsoType") {
                self.ssoType = dict["SsoType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubDnsAddress") {
                self.subDnsAddress = dict["SubDnsAddress"] as! [String]
            }
            if dict.keys.contains("SubDomainName") {
                self.subDomainName = dict["SubDomainName"] as! String
            }
            if dict.keys.contains("TrustPassword") {
                self.trustPassword = dict["TrustPassword"] as! String
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcType") {
                self.vpcType = dict["VpcType"] as! String
            }
        }
    }
    public var nextToken: String?

    public var officeSites: [DescribeOfficeSitesResponseBody.OfficeSites]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSites != nil {
            var tmp : [Any] = []
            for k in self.officeSites! {
                tmp.append(k.toMap())
            }
            map["OfficeSites"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSites") {
            self.officeSites = dict["OfficeSites"] as! [DescribeOfficeSitesResponseBody.OfficeSites]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOfficeSitesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOfficeSitesResponseBody?

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
            var model = DescribeOfficeSitesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var policyGroupId: [String]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribePolicyGroupsResponseBody : Tea.TeaModel {
    public class DescribePolicyGroups : Tea.TeaModel {
        public class AuthorizeAccessPolicyRules : Tea.TeaModel {
            public var cidrIp: String?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidrIp != nil {
                    map["CidrIp"] = self.cidrIp!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CidrIp") {
                    self.cidrIp = dict["CidrIp"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public class AuthorizeSecurityPolicyRules : Tea.TeaModel {
            public var cidrIp: String?

            public var description_: String?

            public var ipProtocol: String?

            public var policy: String?

            public var portRange: String?

            public var priority: String?

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
                if self.cidrIp != nil {
                    map["CidrIp"] = self.cidrIp!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ipProtocol != nil {
                    map["IpProtocol"] = self.ipProtocol!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                if self.portRange != nil {
                    map["PortRange"] = self.portRange!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CidrIp") {
                    self.cidrIp = dict["CidrIp"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("IpProtocol") {
                    self.ipProtocol = dict["IpProtocol"] as! String
                }
                if dict.keys.contains("Policy") {
                    self.policy = dict["Policy"] as! String
                }
                if dict.keys.contains("PortRange") {
                    self.portRange = dict["PortRange"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class ClientTypes : Tea.TeaModel {
            public var clientType: String?

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
                if self.clientType != nil {
                    map["ClientType"] = self.clientType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientType") {
                    self.clientType = dict["ClientType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class UsbSupplyRedirectRule : Tea.TeaModel {
            public var description_: String?

            public var deviceClass: String?

            public var deviceSubclass: String?

            public var productId: String?

            public var usbRedirectType: Int64?

            public var usbRuleType: Int64?

            public var vendorId: String?

            public override init() {
                super.init()
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
                if self.deviceClass != nil {
                    map["DeviceClass"] = self.deviceClass!
                }
                if self.deviceSubclass != nil {
                    map["DeviceSubclass"] = self.deviceSubclass!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.usbRedirectType != nil {
                    map["UsbRedirectType"] = self.usbRedirectType!
                }
                if self.usbRuleType != nil {
                    map["UsbRuleType"] = self.usbRuleType!
                }
                if self.vendorId != nil {
                    map["VendorId"] = self.vendorId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DeviceClass") {
                    self.deviceClass = dict["DeviceClass"] as! String
                }
                if dict.keys.contains("DeviceSubclass") {
                    self.deviceSubclass = dict["DeviceSubclass"] as! String
                }
                if dict.keys.contains("ProductId") {
                    self.productId = dict["ProductId"] as! String
                }
                if dict.keys.contains("UsbRedirectType") {
                    self.usbRedirectType = dict["UsbRedirectType"] as! Int64
                }
                if dict.keys.contains("UsbRuleType") {
                    self.usbRuleType = dict["UsbRuleType"] as! Int64
                }
                if dict.keys.contains("VendorId") {
                    self.vendorId = dict["VendorId"] as! String
                }
            }
        }
        public var appContentProtection: String?

        public var authorizeAccessPolicyRules: [DescribePolicyGroupsResponseBody.DescribePolicyGroups.AuthorizeAccessPolicyRules]?

        public var authorizeSecurityPolicyRules: [DescribePolicyGroupsResponseBody.DescribePolicyGroups.AuthorizeSecurityPolicyRules]?

        public var cameraRedirect: String?

        public var clientTypes: [DescribePolicyGroupsResponseBody.DescribePolicyGroups.ClientTypes]?

        public var clipboard: String?

        public var domainList: String?

        public var edsCount: Int32?

        public var gpuAcceleration: String?

        public var html5Access: String?

        public var html5FileTransfer: String?

        public var localDrive: String?

        public var name: String?

        public var netRedirect: String?

        public var policyGroupId: String?

        public var policyGroupType: String?

        public var policyStatus: String?

        public var preemptLogin: String?

        public var preemptLoginUsers: [String]?

        public var printerRedirection: String?

        public var recordContent: String?

        public var recordContentExpires: Int64?

        public var recording: String?

        public var recordingEndTime: String?

        public var recordingExpires: Int64?

        public var recordingFps: Int64?

        public var recordingStartTime: String?

        public var remoteCoordinate: String?

        public var usbRedirect: String?

        public var usbSupplyRedirectRule: [DescribePolicyGroupsResponseBody.DescribePolicyGroups.UsbSupplyRedirectRule]?

        public var visualQuality: String?

        public var watermark: String?

        public var watermarkCustomText: String?

        public var watermarkTransparency: String?

        public var watermarkType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appContentProtection != nil {
                map["AppContentProtection"] = self.appContentProtection!
            }
            if self.authorizeAccessPolicyRules != nil {
                var tmp : [Any] = []
                for k in self.authorizeAccessPolicyRules! {
                    tmp.append(k.toMap())
                }
                map["AuthorizeAccessPolicyRules"] = tmp
            }
            if self.authorizeSecurityPolicyRules != nil {
                var tmp : [Any] = []
                for k in self.authorizeSecurityPolicyRules! {
                    tmp.append(k.toMap())
                }
                map["AuthorizeSecurityPolicyRules"] = tmp
            }
            if self.cameraRedirect != nil {
                map["CameraRedirect"] = self.cameraRedirect!
            }
            if self.clientTypes != nil {
                var tmp : [Any] = []
                for k in self.clientTypes! {
                    tmp.append(k.toMap())
                }
                map["ClientTypes"] = tmp
            }
            if self.clipboard != nil {
                map["Clipboard"] = self.clipboard!
            }
            if self.domainList != nil {
                map["DomainList"] = self.domainList!
            }
            if self.edsCount != nil {
                map["EdsCount"] = self.edsCount!
            }
            if self.gpuAcceleration != nil {
                map["GpuAcceleration"] = self.gpuAcceleration!
            }
            if self.html5Access != nil {
                map["Html5Access"] = self.html5Access!
            }
            if self.html5FileTransfer != nil {
                map["Html5FileTransfer"] = self.html5FileTransfer!
            }
            if self.localDrive != nil {
                map["LocalDrive"] = self.localDrive!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.netRedirect != nil {
                map["NetRedirect"] = self.netRedirect!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.policyGroupType != nil {
                map["PolicyGroupType"] = self.policyGroupType!
            }
            if self.policyStatus != nil {
                map["PolicyStatus"] = self.policyStatus!
            }
            if self.preemptLogin != nil {
                map["PreemptLogin"] = self.preemptLogin!
            }
            if self.preemptLoginUsers != nil {
                map["PreemptLoginUsers"] = self.preemptLoginUsers!
            }
            if self.printerRedirection != nil {
                map["PrinterRedirection"] = self.printerRedirection!
            }
            if self.recordContent != nil {
                map["RecordContent"] = self.recordContent!
            }
            if self.recordContentExpires != nil {
                map["RecordContentExpires"] = self.recordContentExpires!
            }
            if self.recording != nil {
                map["Recording"] = self.recording!
            }
            if self.recordingEndTime != nil {
                map["RecordingEndTime"] = self.recordingEndTime!
            }
            if self.recordingExpires != nil {
                map["RecordingExpires"] = self.recordingExpires!
            }
            if self.recordingFps != nil {
                map["RecordingFps"] = self.recordingFps!
            }
            if self.recordingStartTime != nil {
                map["RecordingStartTime"] = self.recordingStartTime!
            }
            if self.remoteCoordinate != nil {
                map["RemoteCoordinate"] = self.remoteCoordinate!
            }
            if self.usbRedirect != nil {
                map["UsbRedirect"] = self.usbRedirect!
            }
            if self.usbSupplyRedirectRule != nil {
                var tmp : [Any] = []
                for k in self.usbSupplyRedirectRule! {
                    tmp.append(k.toMap())
                }
                map["UsbSupplyRedirectRule"] = tmp
            }
            if self.visualQuality != nil {
                map["VisualQuality"] = self.visualQuality!
            }
            if self.watermark != nil {
                map["Watermark"] = self.watermark!
            }
            if self.watermarkCustomText != nil {
                map["WatermarkCustomText"] = self.watermarkCustomText!
            }
            if self.watermarkTransparency != nil {
                map["WatermarkTransparency"] = self.watermarkTransparency!
            }
            if self.watermarkType != nil {
                map["WatermarkType"] = self.watermarkType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppContentProtection") {
                self.appContentProtection = dict["AppContentProtection"] as! String
            }
            if dict.keys.contains("AuthorizeAccessPolicyRules") {
                self.authorizeAccessPolicyRules = dict["AuthorizeAccessPolicyRules"] as! [DescribePolicyGroupsResponseBody.DescribePolicyGroups.AuthorizeAccessPolicyRules]
            }
            if dict.keys.contains("AuthorizeSecurityPolicyRules") {
                self.authorizeSecurityPolicyRules = dict["AuthorizeSecurityPolicyRules"] as! [DescribePolicyGroupsResponseBody.DescribePolicyGroups.AuthorizeSecurityPolicyRules]
            }
            if dict.keys.contains("CameraRedirect") {
                self.cameraRedirect = dict["CameraRedirect"] as! String
            }
            if dict.keys.contains("ClientTypes") {
                self.clientTypes = dict["ClientTypes"] as! [DescribePolicyGroupsResponseBody.DescribePolicyGroups.ClientTypes]
            }
            if dict.keys.contains("Clipboard") {
                self.clipboard = dict["Clipboard"] as! String
            }
            if dict.keys.contains("DomainList") {
                self.domainList = dict["DomainList"] as! String
            }
            if dict.keys.contains("EdsCount") {
                self.edsCount = dict["EdsCount"] as! Int32
            }
            if dict.keys.contains("GpuAcceleration") {
                self.gpuAcceleration = dict["GpuAcceleration"] as! String
            }
            if dict.keys.contains("Html5Access") {
                self.html5Access = dict["Html5Access"] as! String
            }
            if dict.keys.contains("Html5FileTransfer") {
                self.html5FileTransfer = dict["Html5FileTransfer"] as! String
            }
            if dict.keys.contains("LocalDrive") {
                self.localDrive = dict["LocalDrive"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NetRedirect") {
                self.netRedirect = dict["NetRedirect"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("PolicyGroupType") {
                self.policyGroupType = dict["PolicyGroupType"] as! String
            }
            if dict.keys.contains("PolicyStatus") {
                self.policyStatus = dict["PolicyStatus"] as! String
            }
            if dict.keys.contains("PreemptLogin") {
                self.preemptLogin = dict["PreemptLogin"] as! String
            }
            if dict.keys.contains("PreemptLoginUsers") {
                self.preemptLoginUsers = dict["PreemptLoginUsers"] as! [String]
            }
            if dict.keys.contains("PrinterRedirection") {
                self.printerRedirection = dict["PrinterRedirection"] as! String
            }
            if dict.keys.contains("RecordContent") {
                self.recordContent = dict["RecordContent"] as! String
            }
            if dict.keys.contains("RecordContentExpires") {
                self.recordContentExpires = dict["RecordContentExpires"] as! Int64
            }
            if dict.keys.contains("Recording") {
                self.recording = dict["Recording"] as! String
            }
            if dict.keys.contains("RecordingEndTime") {
                self.recordingEndTime = dict["RecordingEndTime"] as! String
            }
            if dict.keys.contains("RecordingExpires") {
                self.recordingExpires = dict["RecordingExpires"] as! Int64
            }
            if dict.keys.contains("RecordingFps") {
                self.recordingFps = dict["RecordingFps"] as! Int64
            }
            if dict.keys.contains("RecordingStartTime") {
                self.recordingStartTime = dict["RecordingStartTime"] as! String
            }
            if dict.keys.contains("RemoteCoordinate") {
                self.remoteCoordinate = dict["RemoteCoordinate"] as! String
            }
            if dict.keys.contains("UsbRedirect") {
                self.usbRedirect = dict["UsbRedirect"] as! String
            }
            if dict.keys.contains("UsbSupplyRedirectRule") {
                self.usbSupplyRedirectRule = dict["UsbSupplyRedirectRule"] as! [DescribePolicyGroupsResponseBody.DescribePolicyGroups.UsbSupplyRedirectRule]
            }
            if dict.keys.contains("VisualQuality") {
                self.visualQuality = dict["VisualQuality"] as! String
            }
            if dict.keys.contains("Watermark") {
                self.watermark = dict["Watermark"] as! String
            }
            if dict.keys.contains("WatermarkCustomText") {
                self.watermarkCustomText = dict["WatermarkCustomText"] as! String
            }
            if dict.keys.contains("WatermarkTransparency") {
                self.watermarkTransparency = dict["WatermarkTransparency"] as! String
            }
            if dict.keys.contains("WatermarkType") {
                self.watermarkType = dict["WatermarkType"] as! String
            }
        }
    }
    public var describePolicyGroups: [DescribePolicyGroupsResponseBody.DescribePolicyGroups]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.describePolicyGroups != nil {
            var tmp : [Any] = []
            for k in self.describePolicyGroups! {
                tmp.append(k.toMap())
            }
            map["DescribePolicyGroups"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DescribePolicyGroups") {
            self.describePolicyGroups = dict["DescribePolicyGroups"] as! [DescribePolicyGroupsResponseBody.DescribePolicyGroups]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePolicyGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyGroupsResponseBody?

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
            var model = DescribePolicyGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [DescribeRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScanTaskProgressRequest : Tea.TeaModel {
    public var regionId: String?

    public var taskId: Int64?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class DescribeScanTaskProgressResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var requestId: String?

    public var taskStatus: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
    }
}

public class DescribeScanTaskProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScanTaskProgressResponseBody?

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
            var model = DescribeScanTaskProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecurityEventOperationStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public var securityEventId: [String]?

    public var taskId: Int64?

    public override init() {
        super.init()
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
        if self.securityEventId != nil {
            map["SecurityEventId"] = self.securityEventId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityEventId") {
            self.securityEventId = dict["SecurityEventId"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class DescribeSecurityEventOperationStatusResponseBody : Tea.TeaModel {
    public class SecurityEventOperationStatuses : Tea.TeaModel {
        public var errorCode: String?

        public var securityEventId: Int64?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.securityEventId != nil {
                map["SecurityEventId"] = self.securityEventId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("SecurityEventId") {
                self.securityEventId = dict["SecurityEventId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityEventOperationStatuses: [DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatuses]?

    public var taskStatus: String?

    public override init() {
        super.init()
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
        if self.securityEventOperationStatuses != nil {
            var tmp : [Any] = []
            for k in self.securityEventOperationStatuses! {
                tmp.append(k.toMap())
            }
            map["SecurityEventOperationStatuses"] = tmp
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityEventOperationStatuses") {
            self.securityEventOperationStatuses = dict["SecurityEventOperationStatuses"] as! [DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatuses]
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
    }
}

public class DescribeSecurityEventOperationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityEventOperationStatusResponseBody?

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
            var model = DescribeSecurityEventOperationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecurityEventOperationsRequest : Tea.TeaModel {
    public var regionId: String?

    public var securityEventId: Int64?

    public override init() {
        super.init()
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
        if self.securityEventId != nil {
            map["SecurityEventId"] = self.securityEventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityEventId") {
            self.securityEventId = dict["SecurityEventId"] as! Int64
        }
    }
}

public class DescribeSecurityEventOperationsResponseBody : Tea.TeaModel {
    public class SecurityEventOperations : Tea.TeaModel {
        public var operationCode: String?

        public var operationParams: String?

        public var userCanOperate: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operationCode != nil {
                map["OperationCode"] = self.operationCode!
            }
            if self.operationParams != nil {
                map["OperationParams"] = self.operationParams!
            }
            if self.userCanOperate != nil {
                map["UserCanOperate"] = self.userCanOperate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperationCode") {
                self.operationCode = dict["OperationCode"] as! String
            }
            if dict.keys.contains("OperationParams") {
                self.operationParams = dict["OperationParams"] as! String
            }
            if dict.keys.contains("UserCanOperate") {
                self.userCanOperate = dict["UserCanOperate"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var securityEventOperations: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperations]?

    public override init() {
        super.init()
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
        if self.securityEventOperations != nil {
            var tmp : [Any] = []
            for k in self.securityEventOperations! {
                tmp.append(k.toMap())
            }
            map["SecurityEventOperations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityEventOperations") {
            self.securityEventOperations = dict["SecurityEventOperations"] as! [DescribeSecurityEventOperationsResponseBody.SecurityEventOperations]
        }
    }
}

public class DescribeSecurityEventOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityEventOperationsResponseBody?

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
            var model = DescribeSecurityEventOperationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSnapshotsRequest : Tea.TeaModel {
    public var desktopId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
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
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class DescribeSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public var creationTime: String?

        public var description_: String?

        public var desktopId: String?

        public var progress: String?

        public var protocolType: String?

        public var remainTime: Int32?

        public var snapshotId: String?

        public var snapshotName: String?

        public var snapshotType: String?

        public var sourceDiskSize: String?

        public var sourceDiskType: String?

        public var status: String?

        public var volumeEncryptionEnabled: Bool?

        public var volumeEncryptionKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.remainTime != nil {
                map["RemainTime"] = self.remainTime!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.snapshotName != nil {
                map["SnapshotName"] = self.snapshotName!
            }
            if self.snapshotType != nil {
                map["SnapshotType"] = self.snapshotType!
            }
            if self.sourceDiskSize != nil {
                map["SourceDiskSize"] = self.sourceDiskSize!
            }
            if self.sourceDiskType != nil {
                map["SourceDiskType"] = self.sourceDiskType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.volumeEncryptionEnabled != nil {
                map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
            }
            if self.volumeEncryptionKey != nil {
                map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("RemainTime") {
                self.remainTime = dict["RemainTime"] as! Int32
            }
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SnapshotName") {
                self.snapshotName = dict["SnapshotName"] as! String
            }
            if dict.keys.contains("SnapshotType") {
                self.snapshotType = dict["SnapshotType"] as! String
            }
            if dict.keys.contains("SourceDiskSize") {
                self.sourceDiskSize = dict["SourceDiskSize"] as! String
            }
            if dict.keys.contains("SourceDiskType") {
                self.sourceDiskType = dict["SourceDiskType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VolumeEncryptionEnabled") {
                self.volumeEncryptionEnabled = dict["VolumeEncryptionEnabled"] as! Bool
            }
            if dict.keys.contains("VolumeEncryptionKey") {
                self.volumeEncryptionKey = dict["VolumeEncryptionKey"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var snapshots: [DescribeSnapshotsResponseBody.Snapshots]?

    public override init() {
        super.init()
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
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") {
            self.snapshots = dict["Snapshots"] as! [DescribeSnapshotsResponseBody.Snapshots]
        }
    }
}

public class DescribeSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSnapshotsResponseBody?

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
            var model = DescribeSnapshotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSuspEventOverviewRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSuspEventOverviewResponseBody : Tea.TeaModel {
    public var remindCount: Int32?

    public var requestId: String?

    public var seriousCount: Int32?

    public var suspiciousCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.remindCount != nil {
            map["RemindCount"] = self.remindCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.seriousCount != nil {
            map["SeriousCount"] = self.seriousCount!
        }
        if self.suspiciousCount != nil {
            map["SuspiciousCount"] = self.suspiciousCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemindCount") {
            self.remindCount = dict["RemindCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SeriousCount") {
            self.seriousCount = dict["SeriousCount"] as! Int32
        }
        if dict.keys.contains("SuspiciousCount") {
            self.suspiciousCount = dict["SuspiciousCount"] as! Int32
        }
    }
}

public class DescribeSuspEventOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSuspEventOverviewResponseBody?

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
            var model = DescribeSuspEventOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSuspEventQuaraFilesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var officeSiteId: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeSuspEventQuaraFilesResponseBody : Tea.TeaModel {
    public class QuaraFiles : Tea.TeaModel {
        public var desktopId: String?

        public var desktopName: String?

        public var eventName: String?

        public var eventType: String?

        public var id: Int32?

        public var md5: String?

        public var modifyTime: String?

        public var path: String?

        public var status: String?

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
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("EventName") {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("EventType") {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var quaraFiles: [DescribeSuspEventQuaraFilesResponseBody.QuaraFiles]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.quaraFiles != nil {
            var tmp : [Any] = []
            for k in self.quaraFiles! {
                tmp.append(k.toMap())
            }
            map["QuaraFiles"] = tmp
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QuaraFiles") {
            self.quaraFiles = dict["QuaraFiles"] as! [DescribeSuspEventQuaraFilesResponseBody.QuaraFiles]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSuspEventQuaraFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSuspEventQuaraFilesResponseBody?

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
            var model = DescribeSuspEventQuaraFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSuspEventsRequest : Tea.TeaModel {
    public var alarmUniqueInfo: String?

    public var currentPage: Int32?

    public var dealed: String?

    public var lang: String?

    public var levels: String?

    public var officeSiteId: String?

    public var pageSize: Int32?

    public var parentEventType: String?

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
        if self.alarmUniqueInfo != nil {
            map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.levels != nil {
            map["Levels"] = self.levels!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentEventType != nil {
            map["ParentEventType"] = self.parentEventType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmUniqueInfo") {
            self.alarmUniqueInfo = dict["AlarmUniqueInfo"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Dealed") {
            self.dealed = dict["Dealed"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Levels") {
            self.levels = dict["Levels"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentEventType") {
            self.parentEventType = dict["ParentEventType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSuspEventsResponseBody : Tea.TeaModel {
    public class SuspEvents : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var name: String?

            public var nameDisplay: String?

            public var type: String?

            public var value: String?

            public var valueDisplay: String?

            public override init() {
                super.init()
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
                if self.nameDisplay != nil {
                    map["NameDisplay"] = self.nameDisplay!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueDisplay != nil {
                    map["ValueDisplay"] = self.valueDisplay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NameDisplay") {
                    self.nameDisplay = dict["NameDisplay"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueDisplay") {
                    self.valueDisplay = dict["ValueDisplay"] as! String
                }
            }
        }
        public var alarmEventName: String?

        public var alarmEventNameDisplay: String?

        public var alarmEventType: String?

        public var alarmEventTypeDisplay: String?

        public var alarmUniqueInfo: String?

        public var canBeDealOnLine: String?

        public var canCancelFault: Bool?

        public var dataSource: String?

        public var desc: String?

        public var desktopId: String?

        public var desktopName: String?

        public var details: [DescribeSuspEventsResponseBody.SuspEvents.Details]?

        public var eventStatus: Int32?

        public var eventSubType: String?

        public var id: Int64?

        public var lastTime: String?

        public var level: String?

        public var name: String?

        public var occurrenceTime: String?

        public var operateErrorCode: String?

        public var operateMsg: String?

        public var uniqueInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmEventName != nil {
                map["AlarmEventName"] = self.alarmEventName!
            }
            if self.alarmEventNameDisplay != nil {
                map["AlarmEventNameDisplay"] = self.alarmEventNameDisplay!
            }
            if self.alarmEventType != nil {
                map["AlarmEventType"] = self.alarmEventType!
            }
            if self.alarmEventTypeDisplay != nil {
                map["AlarmEventTypeDisplay"] = self.alarmEventTypeDisplay!
            }
            if self.alarmUniqueInfo != nil {
                map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
            }
            if self.canBeDealOnLine != nil {
                map["CanBeDealOnLine"] = self.canBeDealOnLine!
            }
            if self.canCancelFault != nil {
                map["CanCancelFault"] = self.canCancelFault!
            }
            if self.dataSource != nil {
                map["DataSource"] = self.dataSource!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.eventStatus != nil {
                map["EventStatus"] = self.eventStatus!
            }
            if self.eventSubType != nil {
                map["EventSubType"] = self.eventSubType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.occurrenceTime != nil {
                map["OccurrenceTime"] = self.occurrenceTime!
            }
            if self.operateErrorCode != nil {
                map["OperateErrorCode"] = self.operateErrorCode!
            }
            if self.operateMsg != nil {
                map["OperateMsg"] = self.operateMsg!
            }
            if self.uniqueInfo != nil {
                map["UniqueInfo"] = self.uniqueInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmEventName") {
                self.alarmEventName = dict["AlarmEventName"] as! String
            }
            if dict.keys.contains("AlarmEventNameDisplay") {
                self.alarmEventNameDisplay = dict["AlarmEventNameDisplay"] as! String
            }
            if dict.keys.contains("AlarmEventType") {
                self.alarmEventType = dict["AlarmEventType"] as! String
            }
            if dict.keys.contains("AlarmEventTypeDisplay") {
                self.alarmEventTypeDisplay = dict["AlarmEventTypeDisplay"] as! String
            }
            if dict.keys.contains("AlarmUniqueInfo") {
                self.alarmUniqueInfo = dict["AlarmUniqueInfo"] as! String
            }
            if dict.keys.contains("CanBeDealOnLine") {
                self.canBeDealOnLine = dict["CanBeDealOnLine"] as! String
            }
            if dict.keys.contains("CanCancelFault") {
                self.canCancelFault = dict["CanCancelFault"] as! Bool
            }
            if dict.keys.contains("DataSource") {
                self.dataSource = dict["DataSource"] as! String
            }
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("Details") {
                self.details = dict["Details"] as! [DescribeSuspEventsResponseBody.SuspEvents.Details]
            }
            if dict.keys.contains("EventStatus") {
                self.eventStatus = dict["EventStatus"] as! Int32
            }
            if dict.keys.contains("EventSubType") {
                self.eventSubType = dict["EventSubType"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LastTime") {
                self.lastTime = dict["LastTime"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OccurrenceTime") {
                self.occurrenceTime = dict["OccurrenceTime"] as! String
            }
            if dict.keys.contains("OperateErrorCode") {
                self.operateErrorCode = dict["OperateErrorCode"] as! String
            }
            if dict.keys.contains("OperateMsg") {
                self.operateMsg = dict["OperateMsg"] as! String
            }
            if dict.keys.contains("UniqueInfo") {
                self.uniqueInfo = dict["UniqueInfo"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: String?

    public var requestId: String?

    public var suspEvents: [DescribeSuspEventsResponseBody.SuspEvents]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.suspEvents != nil {
            var tmp : [Any] = []
            for k in self.suspEvents! {
                tmp.append(k.toMap())
            }
            map["SuspEvents"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuspEvents") {
            self.suspEvents = dict["SuspEvents"] as! [DescribeSuspEventsResponseBody.SuspEvents]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSuspEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSuspEventsResponseBody?

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
            var model = DescribeSuspEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserConnectionRecordsRequest : Tea.TeaModel {
    public var connectDurationFrom: Int64?

    public var connectDurationTo: Int64?

    public var connectEndTimeFrom: Int64?

    public var connectEndTimeTo: Int64?

    public var connectStartTimeFrom: Int64?

    public var connectStartTimeTo: Int64?

    public var desktopGroupId: String?

    public var desktopId: String?

    public var endUserId: String?

    public var endUserType: String?

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
        if self.connectDurationFrom != nil {
            map["ConnectDurationFrom"] = self.connectDurationFrom!
        }
        if self.connectDurationTo != nil {
            map["ConnectDurationTo"] = self.connectDurationTo!
        }
        if self.connectEndTimeFrom != nil {
            map["ConnectEndTimeFrom"] = self.connectEndTimeFrom!
        }
        if self.connectEndTimeTo != nil {
            map["ConnectEndTimeTo"] = self.connectEndTimeTo!
        }
        if self.connectStartTimeFrom != nil {
            map["ConnectStartTimeFrom"] = self.connectStartTimeFrom!
        }
        if self.connectStartTimeTo != nil {
            map["ConnectStartTimeTo"] = self.connectStartTimeTo!
        }
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.endUserType != nil {
            map["EndUserType"] = self.endUserType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectDurationFrom") {
            self.connectDurationFrom = dict["ConnectDurationFrom"] as! Int64
        }
        if dict.keys.contains("ConnectDurationTo") {
            self.connectDurationTo = dict["ConnectDurationTo"] as! Int64
        }
        if dict.keys.contains("ConnectEndTimeFrom") {
            self.connectEndTimeFrom = dict["ConnectEndTimeFrom"] as! Int64
        }
        if dict.keys.contains("ConnectEndTimeTo") {
            self.connectEndTimeTo = dict["ConnectEndTimeTo"] as! Int64
        }
        if dict.keys.contains("ConnectStartTimeFrom") {
            self.connectStartTimeFrom = dict["ConnectStartTimeFrom"] as! Int64
        }
        if dict.keys.contains("ConnectStartTimeTo") {
            self.connectStartTimeTo = dict["ConnectStartTimeTo"] as! Int64
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("EndUserType") {
            self.endUserType = dict["EndUserType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeUserConnectionRecordsResponseBody : Tea.TeaModel {
    public class ConnectionRecords : Tea.TeaModel {
        public var connectDuration: String?

        public var connectEndTime: String?

        public var connectStartTime: String?

        public var connectionRecordId: String?

        public var desktopId: String?

        public var desktopName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectDuration != nil {
                map["ConnectDuration"] = self.connectDuration!
            }
            if self.connectEndTime != nil {
                map["ConnectEndTime"] = self.connectEndTime!
            }
            if self.connectStartTime != nil {
                map["ConnectStartTime"] = self.connectStartTime!
            }
            if self.connectionRecordId != nil {
                map["ConnectionRecordId"] = self.connectionRecordId!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectDuration") {
                self.connectDuration = dict["ConnectDuration"] as! String
            }
            if dict.keys.contains("ConnectEndTime") {
                self.connectEndTime = dict["ConnectEndTime"] as! String
            }
            if dict.keys.contains("ConnectStartTime") {
                self.connectStartTime = dict["ConnectStartTime"] as! String
            }
            if dict.keys.contains("ConnectionRecordId") {
                self.connectionRecordId = dict["ConnectionRecordId"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
        }
    }
    public var connectionRecords: [DescribeUserConnectionRecordsResponseBody.ConnectionRecords]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionRecords != nil {
            var tmp : [Any] = []
            for k in self.connectionRecords! {
                tmp.append(k.toMap())
            }
            map["ConnectionRecords"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionRecords") {
            self.connectionRecords = dict["ConnectionRecords"] as! [DescribeUserConnectionRecordsResponseBody.ConnectionRecords]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUserConnectionRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserConnectionRecordsResponseBody?

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
            var model = DescribeUserConnectionRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsersInGroupRequest : Tea.TeaModel {
    public var connectState: Int32?

    public var desktopGroupId: String?

    public var endUserId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orgId: String?

    public var queryUserDetail: Bool?

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
        if self.connectState != nil {
            map["ConnectState"] = self.connectState!
        }
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.queryUserDetail != nil {
            map["QueryUserDetail"] = self.queryUserDetail!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectState") {
            self.connectState = dict["ConnectState"] as! Int32
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrgId") {
            self.orgId = dict["OrgId"] as! String
        }
        if dict.keys.contains("QueryUserDetail") {
            self.queryUserDetail = dict["QueryUserDetail"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeUsersInGroupResponseBody : Tea.TeaModel {
    public class EndUsers : Tea.TeaModel {
        public class ExternalInfo : Tea.TeaModel {
            public var externalName: String?

            public var jobNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalName != nil {
                    map["ExternalName"] = self.externalName!
                }
                if self.jobNumber != nil {
                    map["JobNumber"] = self.jobNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExternalName") {
                    self.externalName = dict["ExternalName"] as! String
                }
                if dict.keys.contains("JobNumber") {
                    self.jobNumber = dict["JobNumber"] as! String
                }
            }
        }
        public class UserSetPropertiesModels : Tea.TeaModel {
            public class PropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PropertyValue") {
                        self.propertyValue = dict["PropertyValue"] as! String
                    }
                    if dict.keys.contains("PropertyValueId") {
                        self.propertyValueId = dict["PropertyValueId"] as! Int64
                    }
                }
            }
            public var propertyId: Int64?

            public var propertyKey: String?

            public var propertyType: Int32?

            public var propertyValues: [DescribeUsersInGroupResponseBody.EndUsers.UserSetPropertiesModels.PropertyValues]?

            public var userId: Int64?

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
                if self.propertyId != nil {
                    map["PropertyId"] = self.propertyId!
                }
                if self.propertyKey != nil {
                    map["PropertyKey"] = self.propertyKey!
                }
                if self.propertyType != nil {
                    map["PropertyType"] = self.propertyType!
                }
                if self.propertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.propertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["PropertyValues"] = tmp
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
                if dict.keys.contains("PropertyId") {
                    self.propertyId = dict["PropertyId"] as! Int64
                }
                if dict.keys.contains("PropertyKey") {
                    self.propertyKey = dict["PropertyKey"] as! String
                }
                if dict.keys.contains("PropertyType") {
                    self.propertyType = dict["PropertyType"] as! Int32
                }
                if dict.keys.contains("PropertyValues") {
                    self.propertyValues = dict["PropertyValues"] as! [DescribeUsersInGroupResponseBody.EndUsers.UserSetPropertiesModels.PropertyValues]
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var connectionStatus: String?

        public var desktopId: String?

        public var desktopName: String?

        public var displayName: String?

        public var endUserEmail: String?

        public var endUserId: String?

        public var endUserName: String?

        public var endUserPhone: String?

        public var endUserRemark: String?

        public var endUserType: String?

        public var externalInfo: DescribeUsersInGroupResponseBody.EndUsers.ExternalInfo?

        public var userDesktopId: String?

        public var userSetPropertiesModels: [DescribeUsersInGroupResponseBody.EndUsers.UserSetPropertiesModels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.externalInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.endUserEmail != nil {
                map["EndUserEmail"] = self.endUserEmail!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.endUserName != nil {
                map["EndUserName"] = self.endUserName!
            }
            if self.endUserPhone != nil {
                map["EndUserPhone"] = self.endUserPhone!
            }
            if self.endUserRemark != nil {
                map["EndUserRemark"] = self.endUserRemark!
            }
            if self.endUserType != nil {
                map["EndUserType"] = self.endUserType!
            }
            if self.externalInfo != nil {
                map["ExternalInfo"] = self.externalInfo?.toMap()
            }
            if self.userDesktopId != nil {
                map["UserDesktopId"] = self.userDesktopId!
            }
            if self.userSetPropertiesModels != nil {
                var tmp : [Any] = []
                for k in self.userSetPropertiesModels! {
                    tmp.append(k.toMap())
                }
                map["UserSetPropertiesModels"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionStatus") {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EndUserEmail") {
                self.endUserEmail = dict["EndUserEmail"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("EndUserName") {
                self.endUserName = dict["EndUserName"] as! String
            }
            if dict.keys.contains("EndUserPhone") {
                self.endUserPhone = dict["EndUserPhone"] as! String
            }
            if dict.keys.contains("EndUserRemark") {
                self.endUserRemark = dict["EndUserRemark"] as! String
            }
            if dict.keys.contains("EndUserType") {
                self.endUserType = dict["EndUserType"] as! String
            }
            if dict.keys.contains("ExternalInfo") {
                var model = DescribeUsersInGroupResponseBody.EndUsers.ExternalInfo()
                model.fromMap(dict["ExternalInfo"] as! [String: Any])
                self.externalInfo = model
            }
            if dict.keys.contains("UserDesktopId") {
                self.userDesktopId = dict["UserDesktopId"] as! String
            }
            if dict.keys.contains("UserSetPropertiesModels") {
                self.userSetPropertiesModels = dict["UserSetPropertiesModels"] as! [DescribeUsersInGroupResponseBody.EndUsers.UserSetPropertiesModels]
            }
        }
    }
    public var endUsers: [DescribeUsersInGroupResponseBody.EndUsers]?

    public var nextToken: String?

    public var onlineUsersCount: Int32?

    public var requestId: String?

    public var usersCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUsers != nil {
            var tmp : [Any] = []
            for k in self.endUsers! {
                tmp.append(k.toMap())
            }
            map["EndUsers"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.onlineUsersCount != nil {
            map["OnlineUsersCount"] = self.onlineUsersCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.usersCount != nil {
            map["UsersCount"] = self.usersCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUsers") {
            self.endUsers = dict["EndUsers"] as! [DescribeUsersInGroupResponseBody.EndUsers]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OnlineUsersCount") {
            self.onlineUsersCount = dict["OnlineUsersCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsersCount") {
            self.usersCount = dict["UsersCount"] as! Int32
        }
    }
}

public class DescribeUsersInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersInGroupResponseBody?

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
            var model = DescribeUsersInGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsersPasswordRequest : Tea.TeaModel {
    public var desktopId: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeUsersPasswordResponseBody : Tea.TeaModel {
    public class DesktopUsers : Tea.TeaModel {
        public var displayName: String?

        public var endUserId: String?

        public var password: String?

        public override init() {
            super.init()
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
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
        }
    }
    public var desktopUsers: [DescribeUsersPasswordResponseBody.DesktopUsers]?

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
        if self.desktopUsers != nil {
            var tmp : [Any] = []
            for k in self.desktopUsers! {
                tmp.append(k.toMap())
            }
            map["DesktopUsers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopUsers") {
            self.desktopUsers = dict["DesktopUsers"] as! [DescribeUsersPasswordResponseBody.DesktopUsers]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUsersPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersPasswordResponseBody?

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
            var model = DescribeUsersPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVirtualMFADevicesRequest : Tea.TeaModel {
    public var endUserId: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

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
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeVirtualMFADevicesResponseBody : Tea.TeaModel {
    public class VirtualMFADevices : Tea.TeaModel {
        public var consecutiveFails: Int32?

        public var directoryId: String?

        public var endUserId: String?

        public var gmtEnabled: String?

        public var gmtUnlock: String?

        public var officeSiteId: String?

        public var serialNumber: String?

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
            if self.consecutiveFails != nil {
                map["ConsecutiveFails"] = self.consecutiveFails!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.gmtEnabled != nil {
                map["GmtEnabled"] = self.gmtEnabled!
            }
            if self.gmtUnlock != nil {
                map["GmtUnlock"] = self.gmtUnlock!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsecutiveFails") {
                self.consecutiveFails = dict["ConsecutiveFails"] as! Int32
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("GmtEnabled") {
                self.gmtEnabled = dict["GmtEnabled"] as! String
            }
            if dict.keys.contains("GmtUnlock") {
                self.gmtUnlock = dict["GmtUnlock"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var virtualMFADevices: [DescribeVirtualMFADevicesResponseBody.VirtualMFADevices]?

    public override init() {
        super.init()
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
        if self.virtualMFADevices != nil {
            var tmp : [Any] = []
            for k in self.virtualMFADevices! {
                tmp.append(k.toMap())
            }
            map["VirtualMFADevices"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualMFADevices") {
            self.virtualMFADevices = dict["VirtualMFADevices"] as! [DescribeVirtualMFADevicesResponseBody.VirtualMFADevices]
        }
    }
}

public class DescribeVirtualMFADevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualMFADevicesResponseBody?

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
            var model = DescribeVirtualMFADevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVulDetailsRequest : Tea.TeaModel {
    public var aliasName: String?

    public var lang: String?

    public var name: String?

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
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("AliasName") {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeVulDetailsResponseBody : Tea.TeaModel {
    public class Cves : Tea.TeaModel {
        public var cveId: String?

        public var cvssScore: String?

        public var summary: String?

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
            if self.cveId != nil {
                map["CveId"] = self.cveId!
            }
            if self.cvssScore != nil {
                map["CvssScore"] = self.cvssScore!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CveId") {
                self.cveId = dict["CveId"] as! String
            }
            if dict.keys.contains("CvssScore") {
                self.cvssScore = dict["CvssScore"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var cves: [DescribeVulDetailsResponseBody.Cves]?

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
        if self.cves != nil {
            var tmp : [Any] = []
            for k in self.cves! {
                tmp.append(k.toMap())
            }
            map["Cves"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cves") {
            self.cves = dict["Cves"] as! [DescribeVulDetailsResponseBody.Cves]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVulDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVulDetailsResponseBody?

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
            var model = DescribeVulDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVulListRequest : Tea.TeaModel {
    public var aliasName: String?

    public var currentPage: Int32?

    public var dealed: String?

    public var lang: String?

    public var name: String?

    public var necessity: String?

    public var officeSiteId: String?

    public var pageSize: Int32?

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
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.necessity != nil {
            map["Necessity"] = self.necessity!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("AliasName") {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Dealed") {
            self.dealed = dict["Dealed"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Necessity") {
            self.necessity = dict["Necessity"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeVulListResponseBody : Tea.TeaModel {
    public class VulRecords : Tea.TeaModel {
        public class ExtendContentJson : Tea.TeaModel {
            public class RpmEntityList : Tea.TeaModel {
                public var fullVersion: String?

                public var matchDetail: String?

                public var name: String?

                public var path: String?

                public var updateCmd: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fullVersion != nil {
                        map["FullVersion"] = self.fullVersion!
                    }
                    if self.matchDetail != nil {
                        map["MatchDetail"] = self.matchDetail!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.updateCmd != nil {
                        map["UpdateCmd"] = self.updateCmd!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FullVersion") {
                        self.fullVersion = dict["FullVersion"] as! String
                    }
                    if dict.keys.contains("MatchDetail") {
                        self.matchDetail = dict["MatchDetail"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("UpdateCmd") {
                        self.updateCmd = dict["UpdateCmd"] as! String
                    }
                }
            }
            public var rpmEntityList: [DescribeVulListResponseBody.VulRecords.ExtendContentJson.RpmEntityList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rpmEntityList != nil {
                    var tmp : [Any] = []
                    for k in self.rpmEntityList! {
                        tmp.append(k.toMap())
                    }
                    map["RpmEntityList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RpmEntityList") {
                    self.rpmEntityList = dict["RpmEntityList"] as! [DescribeVulListResponseBody.VulRecords.ExtendContentJson.RpmEntityList]
                }
            }
        }
        public var aliasName: String?

        public var desktopId: String?

        public var desktopName: String?

        public var extendContentJson: DescribeVulListResponseBody.VulRecords.ExtendContentJson?

        public var firstTs: Int64?

        public var lastTs: Int64?

        public var modifyTs: Int64?

        public var name: String?

        public var necessity: String?

        public var online: Bool?

        public var osVersion: String?

        public var related: String?

        public var repairTs: Int64?

        public var resultCode: String?

        public var resultMessage: String?

        public var status: Int32?

        public var tag: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extendContentJson?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.extendContentJson != nil {
                map["ExtendContentJson"] = self.extendContentJson?.toMap()
            }
            if self.firstTs != nil {
                map["FirstTs"] = self.firstTs!
            }
            if self.lastTs != nil {
                map["LastTs"] = self.lastTs!
            }
            if self.modifyTs != nil {
                map["ModifyTs"] = self.modifyTs!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.necessity != nil {
                map["Necessity"] = self.necessity!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.osVersion != nil {
                map["OsVersion"] = self.osVersion!
            }
            if self.related != nil {
                map["Related"] = self.related!
            }
            if self.repairTs != nil {
                map["RepairTs"] = self.repairTs!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.resultMessage != nil {
                map["ResultMessage"] = self.resultMessage!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("ExtendContentJson") {
                var model = DescribeVulListResponseBody.VulRecords.ExtendContentJson()
                model.fromMap(dict["ExtendContentJson"] as! [String: Any])
                self.extendContentJson = model
            }
            if dict.keys.contains("FirstTs") {
                self.firstTs = dict["FirstTs"] as! Int64
            }
            if dict.keys.contains("LastTs") {
                self.lastTs = dict["LastTs"] as! Int64
            }
            if dict.keys.contains("ModifyTs") {
                self.modifyTs = dict["ModifyTs"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Necessity") {
                self.necessity = dict["Necessity"] as! String
            }
            if dict.keys.contains("Online") {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("OsVersion") {
                self.osVersion = dict["OsVersion"] as! String
            }
            if dict.keys.contains("Related") {
                self.related = dict["Related"] as! String
            }
            if dict.keys.contains("RepairTs") {
                self.repairTs = dict["RepairTs"] as! Int64
            }
            if dict.keys.contains("ResultCode") {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("ResultMessage") {
                self.resultMessage = dict["ResultMessage"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var vulRecords: [DescribeVulListResponseBody.VulRecords]?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vulRecords != nil {
            var tmp : [Any] = []
            for k in self.vulRecords! {
                tmp.append(k.toMap())
            }
            map["VulRecords"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
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
        if dict.keys.contains("VulRecords") {
            self.vulRecords = dict["VulRecords"] as! [DescribeVulListResponseBody.VulRecords]
        }
    }
}

public class DescribeVulListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVulListResponseBody?

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
            var model = DescribeVulListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVulOverviewRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeVulOverviewResponseBody : Tea.TeaModel {
    public var asapCount: Int32?

    public var laterCount: Int32?

    public var nntfCount: Int32?

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
        if self.asapCount != nil {
            map["AsapCount"] = self.asapCount!
        }
        if self.laterCount != nil {
            map["LaterCount"] = self.laterCount!
        }
        if self.nntfCount != nil {
            map["NntfCount"] = self.nntfCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsapCount") {
            self.asapCount = dict["AsapCount"] as! Int32
        }
        if dict.keys.contains("LaterCount") {
            self.laterCount = dict["LaterCount"] as! Int32
        }
        if dict.keys.contains("NntfCount") {
            self.nntfCount = dict["NntfCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVulOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVulOverviewResponseBody?

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
            var model = DescribeVulOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var regionId: String?

    public var zoneType: String?

    public override init() {
        super.init()
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
        if self.zoneType != nil {
            map["ZoneType"] = self.zoneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneType") {
            self.zoneType = dict["ZoneType"] as! String
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var requestId: String?

    public var zones: [DescribeZonesResponseBody.Zones]?

    public override init() {
        super.init()
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
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") {
            self.zones = dict["Zones"] as! [DescribeZonesResponseBody.Zones]
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

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
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachCenRequest : Tea.TeaModel {
    public var officeSiteId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DetachCenResponseBody : Tea.TeaModel {
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

public class DetachCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachCenResponseBody?

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
            var model = DetachCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableDesktopsInGroupRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var desktopIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopIds != nil {
            map["DesktopIds"] = self.desktopIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopIds") {
            self.desktopIds = dict["DesktopIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisableDesktopsInGroupResponseBody : Tea.TeaModel {
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

public class DisableDesktopsInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableDesktopsInGroupResponseBody?

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
            var model = DisableDesktopsInGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateNetworkPackageRequest : Tea.TeaModel {
    public var networkPackageId: String?

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
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DissociateNetworkPackageResponseBody : Tea.TeaModel {
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

public class DissociateNetworkPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateNetworkPackageResponseBody?

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
            var model = DissociateNetworkPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportClientEventsRequest : Tea.TeaModel {
    public var desktopId: String?

    public var desktopName: String?

    public var endTime: String?

    public var endUserId: String?

    public var eventType: String?

    public var eventTypes: [String]?

    public var maxResults: Int32?

    public var officeSiteId: String?

    public var officeSiteName: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.eventTypes != nil {
            map["EventTypes"] = self.eventTypes!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("EventTypes") {
            self.eventTypes = dict["EventTypes"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ExportClientEventsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var url: String?

    public override init() {
        super.init()
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
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class ExportClientEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportClientEventsResponseBody?

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
            var model = ExportClientEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportDesktopGroupInfoRequest : Tea.TeaModel {
    public var chargeType: String?

    public var desktopGroupId: [String]?

    public var desktopGroupName: String?

    public var endUserId: [String]?

    public var expiredTime: String?

    public var langType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var policyGroupId: String?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopGroupName != nil {
            map["DesktopGroupName"] = self.desktopGroupName!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.langType != nil {
            map["LangType"] = self.langType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! [String]
        }
        if dict.keys.contains("DesktopGroupName") {
            self.desktopGroupName = dict["DesktopGroupName"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("LangType") {
            self.langType = dict["LangType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ExportDesktopGroupInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var url: String?

    public override init() {
        super.init()
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
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class ExportDesktopGroupInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportDesktopGroupInfoResponseBody?

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
            var model = ExportDesktopGroupInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportDesktopListInfoRequest : Tea.TeaModel {
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
    public var chargeType: String?

    public var desktopId: [String]?

    public var desktopName: String?

    public var desktopStatus: String?

    public var endUserId: [String]?

    public var expiredTime: String?

    public var groupId: String?

    public var langType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var policyGroupId: String?

    public var regionId: String?

    public var tag: [ExportDesktopListInfoRequest.Tag]?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.desktopStatus != nil {
            map["DesktopStatus"] = self.desktopStatus!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.langType != nil {
            map["LangType"] = self.langType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("DesktopStatus") {
            self.desktopStatus = dict["DesktopStatus"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("LangType") {
            self.langType = dict["LangType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ExportDesktopListInfoRequest.Tag]
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ExportDesktopListInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var url: String?

    public override init() {
        super.init()
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
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class ExportDesktopListInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportDesktopListInfoResponseBody?

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
            var model = ExportDesktopListInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var desktopId: String?

    public var endUserId: String?

    public var ownerId: Int64?

    public var password: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public var taskStatus: String?

    public var ticket: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class GetConnectionTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionTicketResponseBody?

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
            var model = GetConnectionTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDesktopGroupDetailRequest : Tea.TeaModel {
    public var desktopGroupId: String?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDesktopGroupDetailResponseBody : Tea.TeaModel {
    public class Desktops : Tea.TeaModel {
        public class TimerInfos : Tea.TeaModel {
            public var cronExpression: String?

            public var forced: Bool?

            public var status: Int32?

            public var timerType: Int32?

            public override init() {
                super.init()
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
                if self.forced != nil {
                    map["Forced"] = self.forced!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timerType != nil {
                    map["TimerType"] = self.timerType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CronExpression") {
                    self.cronExpression = dict["CronExpression"] as! String
                }
                if dict.keys.contains("Forced") {
                    self.forced = dict["Forced"] as! Bool
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TimerType") {
                    self.timerType = dict["TimerType"] as! Int32
                }
            }
        }
        public var allowAutoSetup: Int32?

        public var allowBufferCount: Int32?

        public var bindAmount: Int32?

        public var comments: String?

        public var connectDuration: Int64?

        public var cpu: Int32?

        public var creationTime: String?

        public var creator: String?

        public var dataDiskCategory: String?

        public var dataDiskSize: String?

        public var desktopGroupId: String?

        public var desktopGroupName: String?

        public var directoryId: String?

        public var directoryType: String?

        public var expiredTime: String?

        public var gpuCount: Double?

        public var gpuSpec: String?

        public var idleDisconnectDuration: Int64?

        public var keepDuration: Int64?

        public var loadPolicy: Int32?

        public var maxDesktopsCount: Int32?

        public var memory: Int64?

        public var minDesktopsCount: Int32?

        public var nasFileSystemID: String?

        public var nasFileSystemName: String?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteType: String?

        public var ownBundleId: String?

        public var ownBundleName: String?

        public var ownType: Int32?

        public var payType: String?

        public var policyGroupId: String?

        public var policyGroupName: String?

        public var profileFollowSwitch: Bool?

        public var ratioThreshold: Double?

        public var resType: Int32?

        public var resetType: Int32?

        public var status: Int32?

        public var stopDuration: Int64?

        public var systemDiskCategory: String?

        public var systemDiskSize: Int32?

        public var timerInfos: [GetDesktopGroupDetailResponseBody.Desktops.TimerInfos]?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowAutoSetup != nil {
                map["AllowAutoSetup"] = self.allowAutoSetup!
            }
            if self.allowBufferCount != nil {
                map["AllowBufferCount"] = self.allowBufferCount!
            }
            if self.bindAmount != nil {
                map["BindAmount"] = self.bindAmount!
            }
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.connectDuration != nil {
                map["ConnectDuration"] = self.connectDuration!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.desktopGroupId != nil {
                map["DesktopGroupId"] = self.desktopGroupId!
            }
            if self.desktopGroupName != nil {
                map["DesktopGroupName"] = self.desktopGroupName!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryType != nil {
                map["DirectoryType"] = self.directoryType!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gpuCount != nil {
                map["GpuCount"] = self.gpuCount!
            }
            if self.gpuSpec != nil {
                map["GpuSpec"] = self.gpuSpec!
            }
            if self.idleDisconnectDuration != nil {
                map["IdleDisconnectDuration"] = self.idleDisconnectDuration!
            }
            if self.keepDuration != nil {
                map["KeepDuration"] = self.keepDuration!
            }
            if self.loadPolicy != nil {
                map["LoadPolicy"] = self.loadPolicy!
            }
            if self.maxDesktopsCount != nil {
                map["MaxDesktopsCount"] = self.maxDesktopsCount!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.minDesktopsCount != nil {
                map["MinDesktopsCount"] = self.minDesktopsCount!
            }
            if self.nasFileSystemID != nil {
                map["NasFileSystemID"] = self.nasFileSystemID!
            }
            if self.nasFileSystemName != nil {
                map["NasFileSystemName"] = self.nasFileSystemName!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
            }
            if self.ownBundleId != nil {
                map["OwnBundleId"] = self.ownBundleId!
            }
            if self.ownBundleName != nil {
                map["OwnBundleName"] = self.ownBundleName!
            }
            if self.ownType != nil {
                map["OwnType"] = self.ownType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.policyGroupName != nil {
                map["PolicyGroupName"] = self.policyGroupName!
            }
            if self.profileFollowSwitch != nil {
                map["ProfileFollowSwitch"] = self.profileFollowSwitch!
            }
            if self.ratioThreshold != nil {
                map["RatioThreshold"] = self.ratioThreshold!
            }
            if self.resType != nil {
                map["ResType"] = self.resType!
            }
            if self.resetType != nil {
                map["ResetType"] = self.resetType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stopDuration != nil {
                map["StopDuration"] = self.stopDuration!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.timerInfos != nil {
                var tmp : [Any] = []
                for k in self.timerInfos! {
                    tmp.append(k.toMap())
                }
                map["TimerInfos"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowAutoSetup") {
                self.allowAutoSetup = dict["AllowAutoSetup"] as! Int32
            }
            if dict.keys.contains("AllowBufferCount") {
                self.allowBufferCount = dict["AllowBufferCount"] as! Int32
            }
            if dict.keys.contains("BindAmount") {
                self.bindAmount = dict["BindAmount"] as! Int32
            }
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("ConnectDuration") {
                self.connectDuration = dict["ConnectDuration"] as! Int64
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("DataDiskCategory") {
                self.dataDiskCategory = dict["DataDiskCategory"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! String
            }
            if dict.keys.contains("DesktopGroupId") {
                self.desktopGroupId = dict["DesktopGroupId"] as! String
            }
            if dict.keys.contains("DesktopGroupName") {
                self.desktopGroupName = dict["DesktopGroupName"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryType") {
                self.directoryType = dict["DirectoryType"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GpuCount") {
                self.gpuCount = dict["GpuCount"] as! Double
            }
            if dict.keys.contains("GpuSpec") {
                self.gpuSpec = dict["GpuSpec"] as! String
            }
            if dict.keys.contains("IdleDisconnectDuration") {
                self.idleDisconnectDuration = dict["IdleDisconnectDuration"] as! Int64
            }
            if dict.keys.contains("KeepDuration") {
                self.keepDuration = dict["KeepDuration"] as! Int64
            }
            if dict.keys.contains("LoadPolicy") {
                self.loadPolicy = dict["LoadPolicy"] as! Int32
            }
            if dict.keys.contains("MaxDesktopsCount") {
                self.maxDesktopsCount = dict["MaxDesktopsCount"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("MinDesktopsCount") {
                self.minDesktopsCount = dict["MinDesktopsCount"] as! Int32
            }
            if dict.keys.contains("NasFileSystemID") {
                self.nasFileSystemID = dict["NasFileSystemID"] as! String
            }
            if dict.keys.contains("NasFileSystemName") {
                self.nasFileSystemName = dict["NasFileSystemName"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("OfficeSiteType") {
                self.officeSiteType = dict["OfficeSiteType"] as! String
            }
            if dict.keys.contains("OwnBundleId") {
                self.ownBundleId = dict["OwnBundleId"] as! String
            }
            if dict.keys.contains("OwnBundleName") {
                self.ownBundleName = dict["OwnBundleName"] as! String
            }
            if dict.keys.contains("OwnType") {
                self.ownType = dict["OwnType"] as! Int32
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("PolicyGroupName") {
                self.policyGroupName = dict["PolicyGroupName"] as! String
            }
            if dict.keys.contains("ProfileFollowSwitch") {
                self.profileFollowSwitch = dict["ProfileFollowSwitch"] as! Bool
            }
            if dict.keys.contains("RatioThreshold") {
                self.ratioThreshold = dict["RatioThreshold"] as! Double
            }
            if dict.keys.contains("ResType") {
                self.resType = dict["ResType"] as! Int32
            }
            if dict.keys.contains("ResetType") {
                self.resetType = dict["ResetType"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StopDuration") {
                self.stopDuration = dict["StopDuration"] as! Int64
            }
            if dict.keys.contains("SystemDiskCategory") {
                self.systemDiskCategory = dict["SystemDiskCategory"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
            if dict.keys.contains("TimerInfos") {
                self.timerInfos = dict["TimerInfos"] as! [GetDesktopGroupDetailResponseBody.Desktops.TimerInfos]
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
        }
    }
    public var desktops: GetDesktopGroupDetailResponseBody.Desktops?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.desktops?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktops != nil {
            map["Desktops"] = self.desktops?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desktops") {
            var model = GetDesktopGroupDetailResponseBody.Desktops()
            model.fromMap(dict["Desktops"] as! [String: Any])
            self.desktops = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDesktopGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDesktopGroupDetailResponseBody?

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
            var model = GetDesktopGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOfficeSiteSsoStatusRequest : Tea.TeaModel {
    public var officeSiteId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetOfficeSiteSsoStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var ssoStatus: Bool?

    public override init() {
        super.init()
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
        if self.ssoStatus != nil {
            map["SsoStatus"] = self.ssoStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SsoStatus") {
            self.ssoStatus = dict["SsoStatus"] as! Bool
        }
    }
}

public class GetOfficeSiteSsoStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOfficeSiteSsoStatusResponseBody?

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
            var model = GetOfficeSiteSsoStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSpMetadataRequest : Tea.TeaModel {
    public var directoryId: String?

    public var officeSiteId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetSpMetadataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var spMetadata: String?

    public override init() {
        super.init()
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
        if self.spMetadata != nil {
            map["SpMetadata"] = self.spMetadata!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpMetadata") {
            self.spMetadata = dict["SpMetadata"] as! String
        }
    }
}

public class GetSpMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpMetadataResponseBody?

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
            var model = GetSpMetadataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HandleSecurityEventsRequest : Tea.TeaModel {
    public class SecurityEvent : Tea.TeaModel {
        public var desktopId: String?

        public var securityEventId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.securityEventId != nil {
                map["SecurityEventId"] = self.securityEventId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("SecurityEventId") {
                self.securityEventId = dict["SecurityEventId"] as! String
            }
        }
    }
    public var operationCode: String?

    public var operationParams: String?

    public var regionId: String?

    public var securityEvent: [HandleSecurityEventsRequest.SecurityEvent]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationCode != nil {
            map["OperationCode"] = self.operationCode!
        }
        if self.operationParams != nil {
            map["OperationParams"] = self.operationParams!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityEvent != nil {
            var tmp : [Any] = []
            for k in self.securityEvent! {
                tmp.append(k.toMap())
            }
            map["SecurityEvent"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationCode") {
            self.operationCode = dict["OperationCode"] as! String
        }
        if dict.keys.contains("OperationParams") {
            self.operationParams = dict["OperationParams"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityEvent") {
            self.securityEvent = dict["SecurityEvent"] as! [HandleSecurityEventsRequest.SecurityEvent]
        }
    }
}

public class HandleSecurityEventsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: Int64?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class HandleSecurityEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HandleSecurityEventsResponseBody?

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
            var model = HandleSecurityEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDirectoryUsersRequest : Tea.TeaModel {
    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var OUPath: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.OUPath != nil {
            map["OUPath"] = self.OUPath!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OUPath") {
            self.OUPath = dict["OUPath"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListDirectoryUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var displayName: String?

        public var endUser: String?

        public override init() {
            super.init()
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
            if self.endUser != nil {
                map["EndUser"] = self.endUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EndUser") {
                self.endUser = dict["EndUser"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var users: [ListDirectoryUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [ListDirectoryUsersResponseBody.Users]
        }
    }
}

public class ListDirectoryUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDirectoryUsersResponseBody?

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
            var model = ListDirectoryUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOfficeSiteOverviewRequest : Tea.TeaModel {
    public var forceRefresh: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: [String]?

    public var queryRange: Int32?

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
        if self.forceRefresh != nil {
            map["ForceRefresh"] = self.forceRefresh!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.queryRange != nil {
            map["QueryRange"] = self.queryRange!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForceRefresh") {
            self.forceRefresh = dict["ForceRefresh"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! [String]
        }
        if dict.keys.contains("QueryRange") {
            self.queryRange = dict["QueryRange"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOfficeSiteOverviewResponseBody : Tea.TeaModel {
    public class OfficeSiteOverviewResults : Tea.TeaModel {
        public var hasExpiredEdsCount: Int32?

        public var hasExpiredEdsCountForGroup: Int32?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteStatus: String?

        public var regionId: String?

        public var runningEdsCount: Int32?

        public var runningEdsCountForGroup: Int32?

        public var totalEdsCount: Int32?

        public var totalEdsCountForGroup: Int32?

        public var vpcType: String?

        public var willExpiredEdsCount: Int32?

        public var willExpiredEdsCountForGroup: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasExpiredEdsCount != nil {
                map["HasExpiredEdsCount"] = self.hasExpiredEdsCount!
            }
            if self.hasExpiredEdsCountForGroup != nil {
                map["HasExpiredEdsCountForGroup"] = self.hasExpiredEdsCountForGroup!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteStatus != nil {
                map["OfficeSiteStatus"] = self.officeSiteStatus!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.runningEdsCount != nil {
                map["RunningEdsCount"] = self.runningEdsCount!
            }
            if self.runningEdsCountForGroup != nil {
                map["RunningEdsCountForGroup"] = self.runningEdsCountForGroup!
            }
            if self.totalEdsCount != nil {
                map["TotalEdsCount"] = self.totalEdsCount!
            }
            if self.totalEdsCountForGroup != nil {
                map["TotalEdsCountForGroup"] = self.totalEdsCountForGroup!
            }
            if self.vpcType != nil {
                map["VpcType"] = self.vpcType!
            }
            if self.willExpiredEdsCount != nil {
                map["WillExpiredEdsCount"] = self.willExpiredEdsCount!
            }
            if self.willExpiredEdsCountForGroup != nil {
                map["WillExpiredEdsCountForGroup"] = self.willExpiredEdsCountForGroup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasExpiredEdsCount") {
                self.hasExpiredEdsCount = dict["HasExpiredEdsCount"] as! Int32
            }
            if dict.keys.contains("HasExpiredEdsCountForGroup") {
                self.hasExpiredEdsCountForGroup = dict["HasExpiredEdsCountForGroup"] as! Int32
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteName") {
                self.officeSiteName = dict["OfficeSiteName"] as! String
            }
            if dict.keys.contains("OfficeSiteStatus") {
                self.officeSiteStatus = dict["OfficeSiteStatus"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RunningEdsCount") {
                self.runningEdsCount = dict["RunningEdsCount"] as! Int32
            }
            if dict.keys.contains("RunningEdsCountForGroup") {
                self.runningEdsCountForGroup = dict["RunningEdsCountForGroup"] as! Int32
            }
            if dict.keys.contains("TotalEdsCount") {
                self.totalEdsCount = dict["TotalEdsCount"] as! Int32
            }
            if dict.keys.contains("TotalEdsCountForGroup") {
                self.totalEdsCountForGroup = dict["TotalEdsCountForGroup"] as! Int32
            }
            if dict.keys.contains("VpcType") {
                self.vpcType = dict["VpcType"] as! String
            }
            if dict.keys.contains("WillExpiredEdsCount") {
                self.willExpiredEdsCount = dict["WillExpiredEdsCount"] as! Int32
            }
            if dict.keys.contains("WillExpiredEdsCountForGroup") {
                self.willExpiredEdsCountForGroup = dict["WillExpiredEdsCountForGroup"] as! Int32
            }
        }
    }
    public var nextToken: String?

    public var officeSiteOverviewResults: [ListOfficeSiteOverviewResponseBody.OfficeSiteOverviewResults]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteOverviewResults != nil {
            var tmp : [Any] = []
            for k in self.officeSiteOverviewResults! {
                tmp.append(k.toMap())
            }
            map["OfficeSiteOverviewResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteOverviewResults") {
            self.officeSiteOverviewResults = dict["OfficeSiteOverviewResults"] as! [ListOfficeSiteOverviewResponseBody.OfficeSiteOverviewResults]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOfficeSiteOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOfficeSiteOverviewResponseBody?

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
            var model = ListOfficeSiteOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOfficeSiteUsersRequest : Tea.TeaModel {
    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var OUPath: String?

    public var officeSiteId: String?

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
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.OUPath != nil {
            map["OUPath"] = self.OUPath!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OUPath") {
            self.OUPath = dict["OUPath"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOfficeSiteUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var displayName: String?

        public var endUser: String?

        public override init() {
            super.init()
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
            if self.endUser != nil {
                map["EndUser"] = self.endUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EndUser") {
                self.endUser = dict["EndUser"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var users: [ListOfficeSiteUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [ListOfficeSiteUsersResponseBody.Users]
        }
    }
}

public class ListOfficeSiteUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOfficeSiteUsersResponseBody?

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
            var model = ListOfficeSiteUsersResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var maxResults: Int32?

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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
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
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            self.tagResources = dict["TagResources"] as! [ListTagResourcesResponseBody.TagResources]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserAdOrganizationUnitsRequest : Tea.TeaModel {
    public var officeSiteId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListUserAdOrganizationUnitsResponseBody : Tea.TeaModel {
    public class OUNames : Tea.TeaModel {
        public var OUName: String?

        public var officeSiteId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.OUName != nil {
                map["OUName"] = self.OUName!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OUName") {
                self.OUName = dict["OUName"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
        }
    }
    public var OUNames: [ListUserAdOrganizationUnitsResponseBody.OUNames]?

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
        if self.OUNames != nil {
            var tmp : [Any] = []
            for k in self.OUNames! {
                tmp.append(k.toMap())
            }
            map["OUNames"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OUNames") {
            self.OUNames = dict["OUNames"] as! [ListUserAdOrganizationUnitsResponseBody.OUNames]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserAdOrganizationUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserAdOrganizationUnitsResponseBody?

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
            var model = ListUserAdOrganizationUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockVirtualMFADeviceRequest : Tea.TeaModel {
    public var regionId: String?

    public var serialNumber: String?

    public override init() {
        super.init()
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
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class LockVirtualMFADeviceResponseBody : Tea.TeaModel {
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

public class LockVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockVirtualMFADeviceResponseBody?

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
            var model = LockVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyADConnectorDirectoryRequest : Tea.TeaModel {
    public var adHostname: String?

    public var directoryId: String?

    public var directoryName: String?

    public var dnsAddress: [String]?

    public var domainName: String?

    public var domainPassword: String?

    public var domainUserName: String?

    public var mfaEnabled: Bool?

    public var OUName: String?

    public var regionId: String?

    public var subDomainDnsAddress: [String]?

    public var subDomainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adHostname != nil {
            map["AdHostname"] = self.adHostname!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.directoryName != nil {
            map["DirectoryName"] = self.directoryName!
        }
        if self.dnsAddress != nil {
            map["DnsAddress"] = self.dnsAddress!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainPassword != nil {
            map["DomainPassword"] = self.domainPassword!
        }
        if self.domainUserName != nil {
            map["DomainUserName"] = self.domainUserName!
        }
        if self.mfaEnabled != nil {
            map["MfaEnabled"] = self.mfaEnabled!
        }
        if self.OUName != nil {
            map["OUName"] = self.OUName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subDomainDnsAddress != nil {
            map["SubDomainDnsAddress"] = self.subDomainDnsAddress!
        }
        if self.subDomainName != nil {
            map["SubDomainName"] = self.subDomainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdHostname") {
            self.adHostname = dict["AdHostname"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("DirectoryName") {
            self.directoryName = dict["DirectoryName"] as! String
        }
        if dict.keys.contains("DnsAddress") {
            self.dnsAddress = dict["DnsAddress"] as! [String]
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainPassword") {
            self.domainPassword = dict["DomainPassword"] as! String
        }
        if dict.keys.contains("DomainUserName") {
            self.domainUserName = dict["DomainUserName"] as! String
        }
        if dict.keys.contains("MfaEnabled") {
            self.mfaEnabled = dict["MfaEnabled"] as! Bool
        }
        if dict.keys.contains("OUName") {
            self.OUName = dict["OUName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubDomainDnsAddress") {
            self.subDomainDnsAddress = dict["SubDomainDnsAddress"] as! [String]
        }
        if dict.keys.contains("SubDomainName") {
            self.subDomainName = dict["SubDomainName"] as! String
        }
    }
}

public class ModifyADConnectorDirectoryResponseBody : Tea.TeaModel {
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

public class ModifyADConnectorDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyADConnectorDirectoryResponseBody?

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
            var model = ModifyADConnectorDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyADConnectorOfficeSiteRequest : Tea.TeaModel {
    public var adHostname: String?

    public var dnsAddress: [String]?

    public var domainName: String?

    public var domainPassword: String?

    public var domainUserName: String?

    public var mfaEnabled: Bool?

    public var OUName: String?

    public var officeSiteId: String?

    public var officeSiteName: String?

    public var regionId: String?

    public var subDomainDnsAddress: [String]?

    public var subDomainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adHostname != nil {
            map["AdHostname"] = self.adHostname!
        }
        if self.dnsAddress != nil {
            map["DnsAddress"] = self.dnsAddress!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainPassword != nil {
            map["DomainPassword"] = self.domainPassword!
        }
        if self.domainUserName != nil {
            map["DomainUserName"] = self.domainUserName!
        }
        if self.mfaEnabled != nil {
            map["MfaEnabled"] = self.mfaEnabled!
        }
        if self.OUName != nil {
            map["OUName"] = self.OUName!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subDomainDnsAddress != nil {
            map["SubDomainDnsAddress"] = self.subDomainDnsAddress!
        }
        if self.subDomainName != nil {
            map["SubDomainName"] = self.subDomainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdHostname") {
            self.adHostname = dict["AdHostname"] as! String
        }
        if dict.keys.contains("DnsAddress") {
            self.dnsAddress = dict["DnsAddress"] as! [String]
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainPassword") {
            self.domainPassword = dict["DomainPassword"] as! String
        }
        if dict.keys.contains("DomainUserName") {
            self.domainUserName = dict["DomainUserName"] as! String
        }
        if dict.keys.contains("MfaEnabled") {
            self.mfaEnabled = dict["MfaEnabled"] as! Bool
        }
        if dict.keys.contains("OUName") {
            self.OUName = dict["OUName"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubDomainDnsAddress") {
            self.subDomainDnsAddress = dict["SubDomainDnsAddress"] as! [String]
        }
        if dict.keys.contains("SubDomainName") {
            self.subDomainName = dict["SubDomainName"] as! String
        }
    }
}

public class ModifyADConnectorOfficeSiteResponseBody : Tea.TeaModel {
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

public class ModifyADConnectorOfficeSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyADConnectorOfficeSiteResponseBody?

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
            var model = ModifyADConnectorOfficeSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyBundleRequest : Tea.TeaModel {
    public var bundleId: String?

    public var bundleName: String?

    public var description_: String?

    public var imageId: String?

    public var language: String?

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
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.bundleName != nil {
            map["BundleName"] = self.bundleName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("BundleName") {
            self.bundleName = dict["BundleName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyBundleResponseBody : Tea.TeaModel {
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

public class ModifyBundleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBundleResponseBody?

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
            var model = ModifyBundleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCloudDrivePermissionRequest : Tea.TeaModel {
    public var cdsId: String?

    public var downloadEndUserIds: [String]?

    public var downloadUploadEndUserIds: [String]?

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
        if self.cdsId != nil {
            map["CdsId"] = self.cdsId!
        }
        if self.downloadEndUserIds != nil {
            map["DownloadEndUserIds"] = self.downloadEndUserIds!
        }
        if self.downloadUploadEndUserIds != nil {
            map["DownloadUploadEndUserIds"] = self.downloadUploadEndUserIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CdsId") {
            self.cdsId = dict["CdsId"] as! String
        }
        if dict.keys.contains("DownloadEndUserIds") {
            self.downloadEndUserIds = dict["DownloadEndUserIds"] as! [String]
        }
        if dict.keys.contains("DownloadUploadEndUserIds") {
            self.downloadUploadEndUserIds = dict["DownloadUploadEndUserIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyCloudDrivePermissionResponseBody : Tea.TeaModel {
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

public class ModifyCloudDrivePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCloudDrivePermissionResponseBody?

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
            var model = ModifyCloudDrivePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyCustomizedListHeadersRequest : Tea.TeaModel {
    public class Headers : Tea.TeaModel {
        public var displayType: String?

        public var headerKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayType != nil {
                map["DisplayType"] = self.displayType!
            }
            if self.headerKey != nil {
                map["HeaderKey"] = self.headerKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayType") {
                self.displayType = dict["DisplayType"] as! String
            }
            if dict.keys.contains("HeaderKey") {
                self.headerKey = dict["HeaderKey"] as! String
            }
        }
    }
    public var headers: [ModifyCustomizedListHeadersRequest.Headers]?

    public var listType: String?

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
        if self.headers != nil {
            var tmp : [Any] = []
            for k in self.headers! {
                tmp.append(k.toMap())
            }
            map["Headers"] = tmp
        }
        if self.listType != nil {
            map["ListType"] = self.listType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Headers") {
            self.headers = dict["Headers"] as! [ModifyCustomizedListHeadersRequest.Headers]
        }
        if dict.keys.contains("ListType") {
            self.listType = dict["ListType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyCustomizedListHeadersResponseBody : Tea.TeaModel {
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

public class ModifyCustomizedListHeadersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCustomizedListHeadersResponseBody?

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
            var model = ModifyCustomizedListHeadersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDesktopChargeTypeRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var chargeType: String?

    public var desktopId: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public var promotionId: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDesktopChargeTypeResponseBody : Tea.TeaModel {
    public var desktopId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
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
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDesktopChargeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDesktopChargeTypeResponseBody?

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
            var model = ModifyDesktopChargeTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDesktopGroupRequest : Tea.TeaModel {
    public var allowAutoSetup: Int32?

    public var allowBufferCount: Int32?

    public var bindAmount: Int64?

    public var classify: String?

    public var comments: String?

    public var connectDuration: Int64?

    public var desktopGroupId: String?

    public var desktopGroupName: String?

    public var disableSessionConfig: Bool?

    public var fileSystemId: String?

    public var idleDisconnectDuration: Int64?

    public var imageId: String?

    public var keepDuration: Int64?

    public var loadPolicy: Int64?

    public var maxDesktopsCount: Int32?

    public var minDesktopsCount: Int32?

    public var ownBundleId: String?

    public var policyGroupId: String?

    public var profileFollowSwitch: Bool?

    public var ratioThreshold: Double?

    public var regionId: String?

    public var resetType: Int64?

    public var scaleStrategyId: String?

    public var stopDuration: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowAutoSetup != nil {
            map["AllowAutoSetup"] = self.allowAutoSetup!
        }
        if self.allowBufferCount != nil {
            map["AllowBufferCount"] = self.allowBufferCount!
        }
        if self.bindAmount != nil {
            map["BindAmount"] = self.bindAmount!
        }
        if self.classify != nil {
            map["Classify"] = self.classify!
        }
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.connectDuration != nil {
            map["ConnectDuration"] = self.connectDuration!
        }
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopGroupName != nil {
            map["DesktopGroupName"] = self.desktopGroupName!
        }
        if self.disableSessionConfig != nil {
            map["DisableSessionConfig"] = self.disableSessionConfig!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.idleDisconnectDuration != nil {
            map["IdleDisconnectDuration"] = self.idleDisconnectDuration!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.keepDuration != nil {
            map["KeepDuration"] = self.keepDuration!
        }
        if self.loadPolicy != nil {
            map["LoadPolicy"] = self.loadPolicy!
        }
        if self.maxDesktopsCount != nil {
            map["MaxDesktopsCount"] = self.maxDesktopsCount!
        }
        if self.minDesktopsCount != nil {
            map["MinDesktopsCount"] = self.minDesktopsCount!
        }
        if self.ownBundleId != nil {
            map["OwnBundleId"] = self.ownBundleId!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.profileFollowSwitch != nil {
            map["ProfileFollowSwitch"] = self.profileFollowSwitch!
        }
        if self.ratioThreshold != nil {
            map["RatioThreshold"] = self.ratioThreshold!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetType != nil {
            map["ResetType"] = self.resetType!
        }
        if self.scaleStrategyId != nil {
            map["ScaleStrategyId"] = self.scaleStrategyId!
        }
        if self.stopDuration != nil {
            map["StopDuration"] = self.stopDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowAutoSetup") {
            self.allowAutoSetup = dict["AllowAutoSetup"] as! Int32
        }
        if dict.keys.contains("AllowBufferCount") {
            self.allowBufferCount = dict["AllowBufferCount"] as! Int32
        }
        if dict.keys.contains("BindAmount") {
            self.bindAmount = dict["BindAmount"] as! Int64
        }
        if dict.keys.contains("Classify") {
            self.classify = dict["Classify"] as! String
        }
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("ConnectDuration") {
            self.connectDuration = dict["ConnectDuration"] as! Int64
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopGroupName") {
            self.desktopGroupName = dict["DesktopGroupName"] as! String
        }
        if dict.keys.contains("DisableSessionConfig") {
            self.disableSessionConfig = dict["DisableSessionConfig"] as! Bool
        }
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("IdleDisconnectDuration") {
            self.idleDisconnectDuration = dict["IdleDisconnectDuration"] as! Int64
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("KeepDuration") {
            self.keepDuration = dict["KeepDuration"] as! Int64
        }
        if dict.keys.contains("LoadPolicy") {
            self.loadPolicy = dict["LoadPolicy"] as! Int64
        }
        if dict.keys.contains("MaxDesktopsCount") {
            self.maxDesktopsCount = dict["MaxDesktopsCount"] as! Int32
        }
        if dict.keys.contains("MinDesktopsCount") {
            self.minDesktopsCount = dict["MinDesktopsCount"] as! Int32
        }
        if dict.keys.contains("OwnBundleId") {
            self.ownBundleId = dict["OwnBundleId"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("ProfileFollowSwitch") {
            self.profileFollowSwitch = dict["ProfileFollowSwitch"] as! Bool
        }
        if dict.keys.contains("RatioThreshold") {
            self.ratioThreshold = dict["RatioThreshold"] as! Double
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResetType") {
            self.resetType = dict["ResetType"] as! Int64
        }
        if dict.keys.contains("ScaleStrategyId") {
            self.scaleStrategyId = dict["ScaleStrategyId"] as! String
        }
        if dict.keys.contains("StopDuration") {
            self.stopDuration = dict["StopDuration"] as! Int64
        }
    }
}

public class ModifyDesktopGroupResponseBody : Tea.TeaModel {
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

public class ModifyDesktopGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDesktopGroupResponseBody?

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
            var model = ModifyDesktopGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDesktopHostNameRequest : Tea.TeaModel {
    public var desktopId: String?

    public var newHostName: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.newHostName != nil {
            map["NewHostName"] = self.newHostName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("NewHostName") {
            self.newHostName = dict["NewHostName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDesktopHostNameResponseBody : Tea.TeaModel {
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

public class ModifyDesktopHostNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDesktopHostNameResponseBody?

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
            var model = ModifyDesktopHostNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDesktopNameRequest : Tea.TeaModel {
    public var desktopId: String?

    public var newDesktopName: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.newDesktopName != nil {
            map["NewDesktopName"] = self.newDesktopName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("NewDesktopName") {
            self.newDesktopName = dict["NewDesktopName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDesktopNameResponseBody : Tea.TeaModel {
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

public class ModifyDesktopNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDesktopNameResponseBody?

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
            var model = ModifyDesktopNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDesktopSpecRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var desktopId: String?

    public var desktopType: String?

    public var promotionId: String?

    public var regionId: String?

    public var rootDiskSizeGib: Int32?

    public var userDiskPerformanceLevel: String?

    public var userDiskSizeGib: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopType != nil {
            map["DesktopType"] = self.desktopType!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rootDiskSizeGib != nil {
            map["RootDiskSizeGib"] = self.rootDiskSizeGib!
        }
        if self.userDiskPerformanceLevel != nil {
            map["UserDiskPerformanceLevel"] = self.userDiskPerformanceLevel!
        }
        if self.userDiskSizeGib != nil {
            map["UserDiskSizeGib"] = self.userDiskSizeGib!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("DesktopType") {
            self.desktopType = dict["DesktopType"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RootDiskSizeGib") {
            self.rootDiskSizeGib = dict["RootDiskSizeGib"] as! Int32
        }
        if dict.keys.contains("UserDiskPerformanceLevel") {
            self.userDiskPerformanceLevel = dict["UserDiskPerformanceLevel"] as! String
        }
        if dict.keys.contains("UserDiskSizeGib") {
            self.userDiskSizeGib = dict["UserDiskSizeGib"] as! Int32
        }
    }
}

public class ModifyDesktopSpecResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDesktopSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDesktopSpecResponseBody?

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
            var model = ModifyDesktopSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDesktopsPolicyGroupRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var policyGroupId: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDesktopsPolicyGroupResponseBody : Tea.TeaModel {
    public class ModifyResults : Tea.TeaModel {
        public var code: String?

        public var desktopId: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var modifyResults: [ModifyDesktopsPolicyGroupResponseBody.ModifyResults]?

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
        if self.modifyResults != nil {
            var tmp : [Any] = []
            for k in self.modifyResults! {
                tmp.append(k.toMap())
            }
            map["ModifyResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModifyResults") {
            self.modifyResults = dict["ModifyResults"] as! [ModifyDesktopsPolicyGroupResponseBody.ModifyResults]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDesktopsPolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDesktopsPolicyGroupResponseBody?

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
            var model = ModifyDesktopsPolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDiskSpecRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var desktopId: String?

    public var promotionId: String?

    public var regionId: String?

    public var rootDiskPerformanceLevel: String?

    public var userDiskPerformanceLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rootDiskPerformanceLevel != nil {
            map["RootDiskPerformanceLevel"] = self.rootDiskPerformanceLevel!
        }
        if self.userDiskPerformanceLevel != nil {
            map["UserDiskPerformanceLevel"] = self.userDiskPerformanceLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RootDiskPerformanceLevel") {
            self.rootDiskPerformanceLevel = dict["RootDiskPerformanceLevel"] as! String
        }
        if dict.keys.contains("UserDiskPerformanceLevel") {
            self.userDiskPerformanceLevel = dict["UserDiskPerformanceLevel"] as! String
        }
    }
}

public class ModifyDiskSpecResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDiskSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskSpecResponseBody?

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
            var model = ModifyDiskSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyEntitlementRequest : Tea.TeaModel {
    public var desktopId: String?

    public var endUserId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyEntitlementResponseBody : Tea.TeaModel {
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

public class ModifyEntitlementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyEntitlementResponseBody?

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
            var model = ModifyEntitlementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyImageAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var imageId: String?

    public var name: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyImageAttributeResponseBody : Tea.TeaModel {
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

public class ModifyImageAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyImageAttributeResponseBody?

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
            var model = ModifyImageAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyImagePermissionRequest : Tea.TeaModel {
    public var addAccount: [Int64]?

    public var imageId: String?

    public var regionId: String?

    public var removeAccount: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addAccount != nil {
            map["AddAccount"] = self.addAccount!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.removeAccount != nil {
            map["RemoveAccount"] = self.removeAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddAccount") {
            self.addAccount = dict["AddAccount"] as! [Int64]
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RemoveAccount") {
            self.removeAccount = dict["RemoveAccount"] as! [Int64]
        }
    }
}

public class ModifyImagePermissionResponseBody : Tea.TeaModel {
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

public class ModifyImagePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyImagePermissionResponseBody?

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
            var model = ModifyImagePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNASDefaultMountTargetRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var mountTargetDomain: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("MountTargetDomain") {
            self.mountTargetDomain = dict["MountTargetDomain"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyNASDefaultMountTargetResponseBody : Tea.TeaModel {
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

public class ModifyNASDefaultMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNASDefaultMountTargetResponseBody?

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
            var model = ModifyNASDefaultMountTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNetworkPackageBandwidthRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var bandwidth: Int32?

    public var networkPackageId: String?

    public var promotionId: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyNetworkPackageBandwidthResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyNetworkPackageBandwidthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNetworkPackageBandwidthResponseBody?

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
            var model = ModifyNetworkPackageBandwidthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNetworkPackageEnabledRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var networkPackageId: String?

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
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyNetworkPackageEnabledResponseBody : Tea.TeaModel {
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

public class ModifyNetworkPackageEnabledResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNetworkPackageEnabledResponseBody?

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
            var model = ModifyNetworkPackageEnabledResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyOfficeSiteAttributeRequest : Tea.TeaModel {
    public var desktopAccessType: String?

    public var needVerifyLoginRisk: Bool?

    public var needVerifyZeroDevice: Bool?

    public var officeSiteId: String?

    public var officeSiteName: String?

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
        if self.desktopAccessType != nil {
            map["DesktopAccessType"] = self.desktopAccessType!
        }
        if self.needVerifyLoginRisk != nil {
            map["NeedVerifyLoginRisk"] = self.needVerifyLoginRisk!
        }
        if self.needVerifyZeroDevice != nil {
            map["NeedVerifyZeroDevice"] = self.needVerifyZeroDevice!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.officeSiteName != nil {
            map["OfficeSiteName"] = self.officeSiteName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopAccessType") {
            self.desktopAccessType = dict["DesktopAccessType"] as! String
        }
        if dict.keys.contains("NeedVerifyLoginRisk") {
            self.needVerifyLoginRisk = dict["NeedVerifyLoginRisk"] as! Bool
        }
        if dict.keys.contains("NeedVerifyZeroDevice") {
            self.needVerifyZeroDevice = dict["NeedVerifyZeroDevice"] as! Bool
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OfficeSiteName") {
            self.officeSiteName = dict["OfficeSiteName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyOfficeSiteAttributeResponseBody : Tea.TeaModel {
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

public class ModifyOfficeSiteAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOfficeSiteAttributeResponseBody?

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
            var model = ModifyOfficeSiteAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyOfficeSiteCrossDesktopAccessRequest : Tea.TeaModel {
    public var enableCrossDesktopAccess: Bool?

    public var officeSiteId: String?

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
        if self.enableCrossDesktopAccess != nil {
            map["EnableCrossDesktopAccess"] = self.enableCrossDesktopAccess!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableCrossDesktopAccess") {
            self.enableCrossDesktopAccess = dict["EnableCrossDesktopAccess"] as! Bool
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyOfficeSiteCrossDesktopAccessResponseBody : Tea.TeaModel {
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

public class ModifyOfficeSiteCrossDesktopAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOfficeSiteCrossDesktopAccessResponseBody?

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
            var model = ModifyOfficeSiteCrossDesktopAccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyOfficeSiteMfaEnabledRequest : Tea.TeaModel {
    public var mfaEnabled: Bool?

    public var officeSiteId: String?

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
        if self.mfaEnabled != nil {
            map["MfaEnabled"] = self.mfaEnabled!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MfaEnabled") {
            self.mfaEnabled = dict["MfaEnabled"] as! Bool
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyOfficeSiteMfaEnabledResponseBody : Tea.TeaModel {
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

public class ModifyOfficeSiteMfaEnabledResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOfficeSiteMfaEnabledResponseBody?

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
            var model = ModifyOfficeSiteMfaEnabledResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyOperateVulRequest : Tea.TeaModel {
    public class VulInfo : Tea.TeaModel {
        public var desktopId: String?

        public var name: String?

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
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var operateType: String?

    public var reason: String?

    public var regionId: String?

    public var type: String?

    public var vulInfo: [ModifyOperateVulRequest.VulInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vulInfo != nil {
            var tmp : [Any] = []
            for k in self.vulInfo! {
                tmp.append(k.toMap())
            }
            map["VulInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VulInfo") {
            self.vulInfo = dict["VulInfo"] as! [ModifyOperateVulRequest.VulInfo]
        }
    }
}

public class ModifyOperateVulResponseBody : Tea.TeaModel {
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

public class ModifyOperateVulResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOperateVulResponseBody?

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
            var model = ModifyOperateVulResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyGroupRequest : Tea.TeaModel {
    public class AuthorizeAccessPolicyRule : Tea.TeaModel {
        public var cidrIp: String?

        public var description_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrIp != nil {
                map["CidrIp"] = self.cidrIp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrIp") {
                self.cidrIp = dict["CidrIp"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
        }
    }
    public class AuthorizeSecurityPolicyRule : Tea.TeaModel {
        public var cidrIp: String?

        public var description_: String?

        public var ipProtocol: String?

        public var policy: String?

        public var portRange: String?

        public var priority: String?

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
            if self.cidrIp != nil {
                map["CidrIp"] = self.cidrIp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ipProtocol != nil {
                map["IpProtocol"] = self.ipProtocol!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrIp") {
                self.cidrIp = dict["CidrIp"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IpProtocol") {
                self.ipProtocol = dict["IpProtocol"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("PortRange") {
                self.portRange = dict["PortRange"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class ClientType : Tea.TeaModel {
        public var clientType: String?

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
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class RevokeAccessPolicyRule : Tea.TeaModel {
        public var cidrIp: String?

        public var description_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrIp != nil {
                map["CidrIp"] = self.cidrIp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrIp") {
                self.cidrIp = dict["CidrIp"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
        }
    }
    public class RevokeSecurityPolicyRule : Tea.TeaModel {
        public var cidrIp: String?

        public var description_: String?

        public var ipProtocol: String?

        public var policy: String?

        public var portRange: String?

        public var priority: String?

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
            if self.cidrIp != nil {
                map["CidrIp"] = self.cidrIp!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ipProtocol != nil {
                map["IpProtocol"] = self.ipProtocol!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.portRange != nil {
                map["PortRange"] = self.portRange!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrIp") {
                self.cidrIp = dict["CidrIp"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IpProtocol") {
                self.ipProtocol = dict["IpProtocol"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("PortRange") {
                self.portRange = dict["PortRange"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class UsbSupplyRedirectRule : Tea.TeaModel {
        public var description_: String?

        public var deviceClass: String?

        public var deviceSubclass: String?

        public var productId: String?

        public var usbRedirectType: Int64?

        public var usbRuleType: Int64?

        public var vendorId: String?

        public override init() {
            super.init()
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
            if self.deviceClass != nil {
                map["DeviceClass"] = self.deviceClass!
            }
            if self.deviceSubclass != nil {
                map["DeviceSubclass"] = self.deviceSubclass!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.usbRedirectType != nil {
                map["UsbRedirectType"] = self.usbRedirectType!
            }
            if self.usbRuleType != nil {
                map["UsbRuleType"] = self.usbRuleType!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceClass") {
                self.deviceClass = dict["DeviceClass"] as! String
            }
            if dict.keys.contains("DeviceSubclass") {
                self.deviceSubclass = dict["DeviceSubclass"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("UsbRedirectType") {
                self.usbRedirectType = dict["UsbRedirectType"] as! Int64
            }
            if dict.keys.contains("UsbRuleType") {
                self.usbRuleType = dict["UsbRuleType"] as! Int64
            }
            if dict.keys.contains("VendorId") {
                self.vendorId = dict["VendorId"] as! String
            }
        }
    }
    public var appContentProtection: String?

    public var authorizeAccessPolicyRule: [ModifyPolicyGroupRequest.AuthorizeAccessPolicyRule]?

    public var authorizeSecurityPolicyRule: [ModifyPolicyGroupRequest.AuthorizeSecurityPolicyRule]?

    public var cameraRedirect: String?

    public var clientType: [ModifyPolicyGroupRequest.ClientType]?

    public var clipboard: String?

    public var domainList: String?

    public var gpuAcceleration: String?

    public var html5Access: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var name: String?

    public var netRedirect: String?

    public var policyGroupId: String?

    public var preemptLogin: String?

    public var preemptLoginUser: [String]?

    public var printerRedirection: String?

    public var recordContent: String?

    public var recordContentExpires: Int64?

    public var recording: String?

    public var recordingEndTime: String?

    public var recordingExpires: Int64?

    public var recordingFps: Int64?

    public var recordingStartTime: String?

    public var regionId: String?

    public var remoteCoordinate: String?

    public var revokeAccessPolicyRule: [ModifyPolicyGroupRequest.RevokeAccessPolicyRule]?

    public var revokeSecurityPolicyRule: [ModifyPolicyGroupRequest.RevokeSecurityPolicyRule]?

    public var usbRedirect: String?

    public var usbSupplyRedirectRule: [ModifyPolicyGroupRequest.UsbSupplyRedirectRule]?

    public var visualQuality: String?

    public var watermark: String?

    public var watermarkTransparency: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appContentProtection != nil {
            map["AppContentProtection"] = self.appContentProtection!
        }
        if self.authorizeAccessPolicyRule != nil {
            var tmp : [Any] = []
            for k in self.authorizeAccessPolicyRule! {
                tmp.append(k.toMap())
            }
            map["AuthorizeAccessPolicyRule"] = tmp
        }
        if self.authorizeSecurityPolicyRule != nil {
            var tmp : [Any] = []
            for k in self.authorizeSecurityPolicyRule! {
                tmp.append(k.toMap())
            }
            map["AuthorizeSecurityPolicyRule"] = tmp
        }
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clientType != nil {
            var tmp : [Any] = []
            for k in self.clientType! {
                tmp.append(k.toMap())
            }
            map["ClientType"] = tmp
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.domainList != nil {
            map["DomainList"] = self.domainList!
        }
        if self.gpuAcceleration != nil {
            map["GpuAcceleration"] = self.gpuAcceleration!
        }
        if self.html5Access != nil {
            map["Html5Access"] = self.html5Access!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netRedirect != nil {
            map["NetRedirect"] = self.netRedirect!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.preemptLogin != nil {
            map["PreemptLogin"] = self.preemptLogin!
        }
        if self.preemptLoginUser != nil {
            map["PreemptLoginUser"] = self.preemptLoginUser!
        }
        if self.printerRedirection != nil {
            map["PrinterRedirection"] = self.printerRedirection!
        }
        if self.recordContent != nil {
            map["RecordContent"] = self.recordContent!
        }
        if self.recordContentExpires != nil {
            map["RecordContentExpires"] = self.recordContentExpires!
        }
        if self.recording != nil {
            map["Recording"] = self.recording!
        }
        if self.recordingEndTime != nil {
            map["RecordingEndTime"] = self.recordingEndTime!
        }
        if self.recordingExpires != nil {
            map["RecordingExpires"] = self.recordingExpires!
        }
        if self.recordingFps != nil {
            map["RecordingFps"] = self.recordingFps!
        }
        if self.recordingStartTime != nil {
            map["RecordingStartTime"] = self.recordingStartTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remoteCoordinate != nil {
            map["RemoteCoordinate"] = self.remoteCoordinate!
        }
        if self.revokeAccessPolicyRule != nil {
            var tmp : [Any] = []
            for k in self.revokeAccessPolicyRule! {
                tmp.append(k.toMap())
            }
            map["RevokeAccessPolicyRule"] = tmp
        }
        if self.revokeSecurityPolicyRule != nil {
            var tmp : [Any] = []
            for k in self.revokeSecurityPolicyRule! {
                tmp.append(k.toMap())
            }
            map["RevokeSecurityPolicyRule"] = tmp
        }
        if self.usbRedirect != nil {
            map["UsbRedirect"] = self.usbRedirect!
        }
        if self.usbSupplyRedirectRule != nil {
            var tmp : [Any] = []
            for k in self.usbSupplyRedirectRule! {
                tmp.append(k.toMap())
            }
            map["UsbSupplyRedirectRule"] = tmp
        }
        if self.visualQuality != nil {
            map["VisualQuality"] = self.visualQuality!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        if self.watermarkTransparency != nil {
            map["WatermarkTransparency"] = self.watermarkTransparency!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppContentProtection") {
            self.appContentProtection = dict["AppContentProtection"] as! String
        }
        if dict.keys.contains("AuthorizeAccessPolicyRule") {
            self.authorizeAccessPolicyRule = dict["AuthorizeAccessPolicyRule"] as! [ModifyPolicyGroupRequest.AuthorizeAccessPolicyRule]
        }
        if dict.keys.contains("AuthorizeSecurityPolicyRule") {
            self.authorizeSecurityPolicyRule = dict["AuthorizeSecurityPolicyRule"] as! [ModifyPolicyGroupRequest.AuthorizeSecurityPolicyRule]
        }
        if dict.keys.contains("CameraRedirect") {
            self.cameraRedirect = dict["CameraRedirect"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! [ModifyPolicyGroupRequest.ClientType]
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("DomainList") {
            self.domainList = dict["DomainList"] as! String
        }
        if dict.keys.contains("GpuAcceleration") {
            self.gpuAcceleration = dict["GpuAcceleration"] as! String
        }
        if dict.keys.contains("Html5Access") {
            self.html5Access = dict["Html5Access"] as! String
        }
        if dict.keys.contains("Html5FileTransfer") {
            self.html5FileTransfer = dict["Html5FileTransfer"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetRedirect") {
            self.netRedirect = dict["NetRedirect"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("PreemptLogin") {
            self.preemptLogin = dict["PreemptLogin"] as! String
        }
        if dict.keys.contains("PreemptLoginUser") {
            self.preemptLoginUser = dict["PreemptLoginUser"] as! [String]
        }
        if dict.keys.contains("PrinterRedirection") {
            self.printerRedirection = dict["PrinterRedirection"] as! String
        }
        if dict.keys.contains("RecordContent") {
            self.recordContent = dict["RecordContent"] as! String
        }
        if dict.keys.contains("RecordContentExpires") {
            self.recordContentExpires = dict["RecordContentExpires"] as! Int64
        }
        if dict.keys.contains("Recording") {
            self.recording = dict["Recording"] as! String
        }
        if dict.keys.contains("RecordingEndTime") {
            self.recordingEndTime = dict["RecordingEndTime"] as! String
        }
        if dict.keys.contains("RecordingExpires") {
            self.recordingExpires = dict["RecordingExpires"] as! Int64
        }
        if dict.keys.contains("RecordingFps") {
            self.recordingFps = dict["RecordingFps"] as! Int64
        }
        if dict.keys.contains("RecordingStartTime") {
            self.recordingStartTime = dict["RecordingStartTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RemoteCoordinate") {
            self.remoteCoordinate = dict["RemoteCoordinate"] as! String
        }
        if dict.keys.contains("RevokeAccessPolicyRule") {
            self.revokeAccessPolicyRule = dict["RevokeAccessPolicyRule"] as! [ModifyPolicyGroupRequest.RevokeAccessPolicyRule]
        }
        if dict.keys.contains("RevokeSecurityPolicyRule") {
            self.revokeSecurityPolicyRule = dict["RevokeSecurityPolicyRule"] as! [ModifyPolicyGroupRequest.RevokeSecurityPolicyRule]
        }
        if dict.keys.contains("UsbRedirect") {
            self.usbRedirect = dict["UsbRedirect"] as! String
        }
        if dict.keys.contains("UsbSupplyRedirectRule") {
            self.usbSupplyRedirectRule = dict["UsbSupplyRedirectRule"] as! [ModifyPolicyGroupRequest.UsbSupplyRedirectRule]
        }
        if dict.keys.contains("VisualQuality") {
            self.visualQuality = dict["VisualQuality"] as! String
        }
        if dict.keys.contains("Watermark") {
            self.watermark = dict["Watermark"] as! String
        }
        if dict.keys.contains("WatermarkTransparency") {
            self.watermarkTransparency = dict["WatermarkTransparency"] as! String
        }
        if dict.keys.contains("WatermarkType") {
            self.watermarkType = dict["WatermarkType"] as! String
        }
    }
}

public class ModifyPolicyGroupResponseBody : Tea.TeaModel {
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

public class ModifyPolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyGroupResponseBody?

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
            var model = ModifyPolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserEntitlementRequest : Tea.TeaModel {
    public var authorizeDesktopId: [String]?

    public var endUserId: [String]?

    public var regionId: String?

    public var revokeDesktopId: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizeDesktopId != nil {
            map["AuthorizeDesktopId"] = self.authorizeDesktopId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.revokeDesktopId != nil {
            map["RevokeDesktopId"] = self.revokeDesktopId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizeDesktopId") {
            self.authorizeDesktopId = dict["AuthorizeDesktopId"] as! [String]
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RevokeDesktopId") {
            self.revokeDesktopId = dict["RevokeDesktopId"] as! [String]
        }
    }
}

public class ModifyUserEntitlementResponseBody : Tea.TeaModel {
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

public class ModifyUserEntitlementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserEntitlementResponseBody?

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
            var model = ModifyUserEntitlementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserToDesktopGroupRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var newEndUserIds: [String]?

    public var oldEndUserIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.newEndUserIds != nil {
            map["NewEndUserIds"] = self.newEndUserIds!
        }
        if self.oldEndUserIds != nil {
            map["OldEndUserIds"] = self.oldEndUserIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("NewEndUserIds") {
            self.newEndUserIds = dict["NewEndUserIds"] as! [String]
        }
        if dict.keys.contains("OldEndUserIds") {
            self.oldEndUserIds = dict["OldEndUserIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyUserToDesktopGroupResponseBody : Tea.TeaModel {
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

public class ModifyUserToDesktopGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserToDesktopGroupResponseBody?

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
            var model = ModifyUserToDesktopGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateVulsRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var operateType: String?

    public var precondition: Int32?

    public var reason: String?

    public var regionId: String?

    public var type: String?

    public var vulName: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.precondition != nil {
            map["Precondition"] = self.precondition!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vulName != nil {
            map["VulName"] = self.vulName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("Precondition") {
            self.precondition = dict["Precondition"] as! Int32
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VulName") {
            self.vulName = dict["VulName"] as! [String]
        }
    }
}

public class OperateVulsResponseBody : Tea.TeaModel {
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

public class OperateVulsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateVulsResponseBody?

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
            var model = OperateVulsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebootDesktopsRequest : Tea.TeaModel {
    public var desktopId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RebootDesktopsResponseBody : Tea.TeaModel {
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

public class RebootDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootDesktopsResponseBody?

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
            var model = RebootDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebuildDesktopsRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var imageId: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RebuildDesktopsResponseBody : Tea.TeaModel {
    public class RebuildResults : Tea.TeaModel {
        public var code: String?

        public var desktopId: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var rebuildResults: [RebuildDesktopsResponseBody.RebuildResults]?

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
        if self.rebuildResults != nil {
            var tmp : [Any] = []
            for k in self.rebuildResults! {
                tmp.append(k.toMap())
            }
            map["RebuildResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RebuildResults") {
            self.rebuildResults = dict["RebuildResults"] as! [RebuildDesktopsResponseBody.RebuildResults]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RebuildDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebuildDesktopsResponseBody?

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
            var model = RebuildDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserFromDesktopGroupRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var desktopGroupIds: [String]?

    public var endUserIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopGroupIds != nil {
            map["DesktopGroupIds"] = self.desktopGroupIds!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopGroupIds") {
            self.desktopGroupIds = dict["DesktopGroupIds"] as! [String]
        }
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RemoveUserFromDesktopGroupResponseBody : Tea.TeaModel {
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

public class RemoveUserFromDesktopGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserFromDesktopGroupResponseBody?

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
            var model = RemoveUserFromDesktopGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewDesktopsRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var desktopId: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public var promotionId: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RenewDesktopsResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewDesktopsResponseBody?

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
            var model = RenewDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewNetworkPackagesRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var networkPackageId: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public var promotionId: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.networkPackageId != nil {
            map["NetworkPackageId"] = self.networkPackageId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("NetworkPackageId") {
            self.networkPackageId = dict["NetworkPackageId"] as! [String]
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RenewNetworkPackagesResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewNetworkPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewNetworkPackagesResponseBody?

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
            var model = RenewNetworkPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetDesktopsRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var desktopId: [String]?

    public var imageId: String?

    public var payType: String?

    public var regionId: String?

    public var resetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetType != nil {
            map["ResetType"] = self.resetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResetType") {
            self.resetType = dict["ResetType"] as! String
        }
    }
}

public class ResetDesktopsResponseBody : Tea.TeaModel {
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

public class ResetDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetDesktopsResponseBody?

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
            var model = ResetDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetNASDefaultMountTargetRequest : Tea.TeaModel {
    public var fileSystemId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResetNASDefaultMountTargetResponseBody : Tea.TeaModel {
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

public class ResetNASDefaultMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetNASDefaultMountTargetResponseBody?

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
            var model = ResetNASDefaultMountTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetSnapshotRequest : Tea.TeaModel {
    public var regionId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
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
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class ResetSnapshotResponseBody : Tea.TeaModel {
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

public class ResetSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetSnapshotResponseBody?

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
            var model = ResetSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeCoordinatePrivilegeRequest : Tea.TeaModel {
    public var coId: String?

    public var endUserId: String?

    public var regionId: String?

    public var userType: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coId != nil {
            map["CoId"] = self.coId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoId") {
            self.coId = dict["CoId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class RevokeCoordinatePrivilegeResponseBody : Tea.TeaModel {
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

public class RevokeCoordinatePrivilegeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeCoordinatePrivilegeResponseBody?

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
            var model = RevokeCoordinatePrivilegeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RollbackSuspEventQuaraFileRequest : Tea.TeaModel {
    public var desktopId: String?

    public var quaraFieldId: Int32?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.quaraFieldId != nil {
            map["QuaraFieldId"] = self.quaraFieldId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("QuaraFieldId") {
            self.quaraFieldId = dict["QuaraFieldId"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RollbackSuspEventQuaraFileResponseBody : Tea.TeaModel {
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

public class RollbackSuspEventQuaraFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackSuspEventQuaraFileResponseBody?

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
            var model = RollbackSuspEventQuaraFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCommandRequest : Tea.TeaModel {
    public var commandContent: String?

    public var contentEncoding: String?

    public var desktopId: [String]?

    public var regionId: String?

    public var timeout: Int64?

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
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandContent") {
            self.commandContent = dict["CommandContent"] as! String
        }
        if dict.keys.contains("ContentEncoding") {
            self.contentEncoding = dict["ContentEncoding"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class RunCommandResponseBody : Tea.TeaModel {
    public var invokeId: String?

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
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCommandResponseBody?

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
            var model = RunCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendVerifyCodeRequest : Tea.TeaModel {
    public var extraInfo: String?

    public var regionId: String?

    public var verifyCodeAction: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.verifyCodeAction != nil {
            map["VerifyCodeAction"] = self.verifyCodeAction!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraInfo") {
            self.extraInfo = dict["ExtraInfo"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VerifyCodeAction") {
            self.verifyCodeAction = dict["VerifyCodeAction"] as! String
        }
    }
}

public class SendVerifyCodeResponseBody : Tea.TeaModel {
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

public class SendVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVerifyCodeResponseBody?

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
            var model = SendVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDesktopGroupTimerRequest : Tea.TeaModel {
    public var cronExpression: String?

    public var desktopGroupId: String?

    public var force: Bool?

    public var regionId: String?

    public var resetType: Int32?

    public var timerType: Int32?

    public override init() {
        super.init()
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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetType != nil {
            map["ResetType"] = self.resetType!
        }
        if self.timerType != nil {
            map["TimerType"] = self.timerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResetType") {
            self.resetType = dict["ResetType"] as! Int32
        }
        if dict.keys.contains("TimerType") {
            self.timerType = dict["TimerType"] as! Int32
        }
    }
}

public class SetDesktopGroupTimerResponseBody : Tea.TeaModel {
    public var desktopGroupId: String?

    public var orderIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("OrderIds") {
            self.orderIds = dict["OrderIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetDesktopGroupTimerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDesktopGroupTimerResponseBody?

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
            var model = SetDesktopGroupTimerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDesktopGroupTimerStatusRequest : Tea.TeaModel {
    public var desktopGroupId: String?

    public var regionId: String?

    public var status: Int32?

    public var timerType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timerType != nil {
            map["TimerType"] = self.timerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TimerType") {
            self.timerType = dict["TimerType"] as! Int32
        }
    }
}

public class SetDesktopGroupTimerStatusResponseBody : Tea.TeaModel {
    public var desktopGroupId: String?

    public var orderIds: [String]?

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
        if self.desktopGroupId != nil {
            map["DesktopGroupId"] = self.desktopGroupId!
        }
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopGroupId") {
            self.desktopGroupId = dict["DesktopGroupId"] as! String
        }
        if dict.keys.contains("OrderIds") {
            self.orderIds = dict["OrderIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetDesktopGroupTimerStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDesktopGroupTimerStatusResponseBody?

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
            var model = SetDesktopGroupTimerStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetIdpMetadataRequest : Tea.TeaModel {
    public var directoryId: String?

    public var idpMetadata: String?

    public var officeSiteId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.idpMetadata != nil {
            map["IdpMetadata"] = self.idpMetadata!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("IdpMetadata") {
            self.idpMetadata = dict["IdpMetadata"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetIdpMetadataResponseBody : Tea.TeaModel {
    public var idpEntityId: String?

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
        if self.idpEntityId != nil {
            map["IdpEntityId"] = self.idpEntityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdpEntityId") {
            self.idpEntityId = dict["IdpEntityId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetIdpMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetIdpMetadataResponseBody?

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
            var model = SetIdpMetadataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetOfficeSiteSsoStatusRequest : Tea.TeaModel {
    public var enableSso: Bool?

    public var officeSiteId: String?

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
        if self.enableSso != nil {
            map["EnableSso"] = self.enableSso!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableSso") {
            self.enableSso = dict["EnableSso"] as! Bool
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetOfficeSiteSsoStatusResponseBody : Tea.TeaModel {
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

public class SetOfficeSiteSsoStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetOfficeSiteSsoStatusResponseBody?

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
            var model = SetOfficeSiteSsoStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDesktopsRequest : Tea.TeaModel {
    public var desktopId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartDesktopsResponseBody : Tea.TeaModel {
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

public class StartDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDesktopsResponseBody?

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
            var model = StartDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartVirusScanTaskRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var officeSiteId: [String]?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartVirusScanTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scanTaskId: Int64?

    public override init() {
        super.init()
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
        if self.scanTaskId != nil {
            map["ScanTaskId"] = self.scanTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanTaskId") {
            self.scanTaskId = dict["ScanTaskId"] as! Int64
        }
    }
}

public class StartVirusScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartVirusScanTaskResponseBody?

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
            var model = StartVirusScanTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDesktopsRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var regionId: String?

    public var stoppedMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stoppedMode != nil {
            map["StoppedMode"] = self.stoppedMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StoppedMode") {
            self.stoppedMode = dict["StoppedMode"] as! String
        }
    }
}

public class StopDesktopsResponseBody : Tea.TeaModel {
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

public class StopDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDesktopsResponseBody?

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
            var model = StopDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopInvocationRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var invokeId: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopInvocationResponseBody : Tea.TeaModel {
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

public class StopInvocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInvocationResponseBody?

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
            var model = StopInvocationResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockVirtualMFADeviceRequest : Tea.TeaModel {
    public var regionId: String?

    public var serialNumber: String?

    public override init() {
        super.init()
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
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class UnlockVirtualMFADeviceResponseBody : Tea.TeaModel {
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

public class UnlockVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockVirtualMFADeviceResponseBody?

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
            var model = UnlockVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFotaTaskRequest : Tea.TeaModel {
    public var regionId: String?

    public var taskUid: String?

    public var userStatus: String?

    public override init() {
        super.init()
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
        if self.taskUid != nil {
            map["TaskUid"] = self.taskUid!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskUid") {
            self.taskUid = dict["TaskUid"] as! String
        }
        if dict.keys.contains("UserStatus") {
            self.userStatus = dict["UserStatus"] as! String
        }
    }
}

public class UpdateFotaTaskResponseBody : Tea.TeaModel {
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

public class UpdateFotaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFotaTaskResponseBody?

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
            var model = UpdateFotaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadImageRequest : Tea.TeaModel {
    public var dataDiskSize: Int32?

    public var description_: String?

    public var enableSecurityCheck: Bool?

    public var gpuCategory: Bool?

    public var gpuDriverType: String?

    public var imageName: String?

    public var licenseType: String?

    public var osType: String?

    public var ossObjectPath: String?

    public var protocolType: String?

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
        if self.dataDiskSize != nil {
            map["DataDiskSize"] = self.dataDiskSize!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableSecurityCheck != nil {
            map["EnableSecurityCheck"] = self.enableSecurityCheck!
        }
        if self.gpuCategory != nil {
            map["GpuCategory"] = self.gpuCategory!
        }
        if self.gpuDriverType != nil {
            map["GpuDriverType"] = self.gpuDriverType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.licenseType != nil {
            map["LicenseType"] = self.licenseType!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ossObjectPath != nil {
            map["OssObjectPath"] = self.ossObjectPath!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataDiskSize") {
            self.dataDiskSize = dict["DataDiskSize"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableSecurityCheck") {
            self.enableSecurityCheck = dict["EnableSecurityCheck"] as! Bool
        }
        if dict.keys.contains("GpuCategory") {
            self.gpuCategory = dict["GpuCategory"] as! Bool
        }
        if dict.keys.contains("GpuDriverType") {
            self.gpuDriverType = dict["GpuDriverType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("LicenseType") {
            self.licenseType = dict["LicenseType"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OssObjectPath") {
            self.ossObjectPath = dict["OssObjectPath"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UploadImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UploadImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadImageResponseBody?

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
            var model = UploadImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyCenRequest : Tea.TeaModel {
    public var cenId: String?

    public var cenOwnerId: Int64?

    public var cidrBlock: String?

    public var regionId: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.cidrBlock != nil {
            map["CidrBlock"] = self.cidrBlock!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CenOwnerId") {
            self.cenOwnerId = dict["CenOwnerId"] as! Int64
        }
        if dict.keys.contains("CidrBlock") {
            self.cidrBlock = dict["CidrBlock"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class VerifyCenResponseBody : Tea.TeaModel {
    public class RouteEntries : Tea.TeaModel {
        public var destinationCidrBlock: String?

        public var nextHopInstanceId: String?

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
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            if self.nextHopInstanceId != nil {
                map["NextHopInstanceId"] = self.nextHopInstanceId!
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
            if dict.keys.contains("DestinationCidrBlock") {
                self.destinationCidrBlock = dict["DestinationCidrBlock"] as! String
            }
            if dict.keys.contains("NextHopInstanceId") {
                self.nextHopInstanceId = dict["NextHopInstanceId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var cidrBlocks: [String]?

    public var requestId: String?

    public var routeEntries: [VerifyCenResponseBody.RouteEntries]?

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
        if self.cidrBlocks != nil {
            map["CidrBlocks"] = self.cidrBlocks!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.routeEntries != nil {
            var tmp : [Any] = []
            for k in self.routeEntries! {
                tmp.append(k.toMap())
            }
            map["RouteEntries"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CidrBlocks") {
            self.cidrBlocks = dict["CidrBlocks"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RouteEntries") {
            self.routeEntries = dict["RouteEntries"] as! [VerifyCenResponseBody.RouteEntries]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class VerifyCenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyCenResponseBody?

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
            var model = VerifyCenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
