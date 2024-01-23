import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcceptResourceShareInvitationRequest : Tea.TeaModel {
    public var resourceShareInvitationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceShareInvitationId != nil {
            map["ResourceShareInvitationId"] = self.resourceShareInvitationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceShareInvitationId") && dict["ResourceShareInvitationId"] != nil {
            self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
        }
    }
}

public class AcceptResourceShareInvitationResponseBody : Tea.TeaModel {
    public class ResourceShareInvitation : Tea.TeaModel {
        public class AcceptInvitationFailedDetails : Tea.TeaModel {
            public var associateType: String?

            public var resourceId: String?

            public var resourceType: String?

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
                if self.associateType != nil {
                    map["AssociateType"] = self.associateType!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusMessage != nil {
                    map["StatusMessage"] = self.statusMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssociateType") && dict["AssociateType"] != nil {
                    self.associateType = dict["AssociateType"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                    self.statusMessage = dict["StatusMessage"] as! String
                }
            }
        }
        public var acceptInvitationFailedDetails: [AcceptResourceShareInvitationResponseBody.ResourceShareInvitation.AcceptInvitationFailedDetails]?

        public var createTime: String?

        public var receiverAccountId: String?

        public var resourceShareId: String?

        public var resourceShareInvitationId: String?

        public var resourceShareName: String?

        public var senderAccountId: String?

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
            if self.acceptInvitationFailedDetails != nil {
                var tmp : [Any] = []
                for k in self.acceptInvitationFailedDetails! {
                    tmp.append(k.toMap())
                }
                map["AcceptInvitationFailedDetails"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.receiverAccountId != nil {
                map["ReceiverAccountId"] = self.receiverAccountId!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareInvitationId != nil {
                map["ResourceShareInvitationId"] = self.resourceShareInvitationId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.senderAccountId != nil {
                map["SenderAccountId"] = self.senderAccountId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptInvitationFailedDetails") && dict["AcceptInvitationFailedDetails"] != nil {
                var tmp : [AcceptResourceShareInvitationResponseBody.ResourceShareInvitation.AcceptInvitationFailedDetails] = []
                for v in dict["AcceptInvitationFailedDetails"] as! [Any] {
                    var model = AcceptResourceShareInvitationResponseBody.ResourceShareInvitation.AcceptInvitationFailedDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.acceptInvitationFailedDetails = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ReceiverAccountId") && dict["ReceiverAccountId"] != nil {
                self.receiverAccountId = dict["ReceiverAccountId"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareInvitationId") && dict["ResourceShareInvitationId"] != nil {
                self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("SenderAccountId") && dict["SenderAccountId"] != nil {
                self.senderAccountId = dict["SenderAccountId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceShareInvitation: AcceptResourceShareInvitationResponseBody.ResourceShareInvitation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceShareInvitation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceShareInvitation != nil {
            map["ResourceShareInvitation"] = self.resourceShareInvitation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareInvitation") && dict["ResourceShareInvitation"] != nil {
            var model = AcceptResourceShareInvitationResponseBody.ResourceShareInvitation()
            model.fromMap(dict["ResourceShareInvitation"] as! [String: Any])
            self.resourceShareInvitation = model
        }
    }
}

public class AcceptResourceShareInvitationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptResourceShareInvitationResponseBody?

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
            var model = AcceptResourceShareInvitationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateResourceShareRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
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
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public class TargetProperties : Tea.TeaModel {
        public var property: String?

        public var targetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.property != nil {
                map["Property"] = self.property!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Property") && dict["Property"] != nil {
                self.property = dict["Property"] as! String
            }
            if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
                self.targetId = dict["TargetId"] as! String
            }
        }
    }
    public var permissionNames: [String]?

    public var resourceShareId: String?

    public var resources: [AssociateResourceShareRequest.Resources]?

    public var targetProperties: [AssociateResourceShareRequest.TargetProperties]?

    public var targets: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissionNames != nil {
            map["PermissionNames"] = self.permissionNames!
        }
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.targetProperties != nil {
            var tmp : [Any] = []
            for k in self.targetProperties! {
                tmp.append(k.toMap())
            }
            map["TargetProperties"] = tmp
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PermissionNames") && dict["PermissionNames"] != nil {
            self.permissionNames = dict["PermissionNames"] as! [String]
        }
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [AssociateResourceShareRequest.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = AssociateResourceShareRequest.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("TargetProperties") && dict["TargetProperties"] != nil {
            var tmp : [AssociateResourceShareRequest.TargetProperties] = []
            for v in dict["TargetProperties"] as! [Any] {
                var model = AssociateResourceShareRequest.TargetProperties()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetProperties = tmp
        }
        if dict.keys.contains("Targets") && dict["Targets"] != nil {
            self.targets = dict["Targets"] as! [String]
        }
    }
}

public class AssociateResourceShareResponseBody : Tea.TeaModel {
    public class ResourceShareAssociations : Tea.TeaModel {
        public var associationStatus: String?

        public var associationStatusMessage: String?

        public var associationType: String?

        public var createTime: String?

        public var entityId: String?

        public var entityType: String?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var targetProperty: String?

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
            if self.associationStatus != nil {
                map["AssociationStatus"] = self.associationStatus!
            }
            if self.associationStatusMessage != nil {
                map["AssociationStatusMessage"] = self.associationStatusMessage!
            }
            if self.associationType != nil {
                map["AssociationType"] = self.associationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.targetProperty != nil {
                map["TargetProperty"] = self.targetProperty!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationStatus") && dict["AssociationStatus"] != nil {
                self.associationStatus = dict["AssociationStatus"] as! String
            }
            if dict.keys.contains("AssociationStatusMessage") && dict["AssociationStatusMessage"] != nil {
                self.associationStatusMessage = dict["AssociationStatusMessage"] as! String
            }
            if dict.keys.contains("AssociationType") && dict["AssociationType"] != nil {
                self.associationType = dict["AssociationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("TargetProperty") && dict["TargetProperty"] != nil {
                self.targetProperty = dict["TargetProperty"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceShareAssociations: [AssociateResourceShareResponseBody.ResourceShareAssociations]?

    public override init() {
        super.init()
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
        if self.resourceShareAssociations != nil {
            var tmp : [Any] = []
            for k in self.resourceShareAssociations! {
                tmp.append(k.toMap())
            }
            map["ResourceShareAssociations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareAssociations") && dict["ResourceShareAssociations"] != nil {
            var tmp : [AssociateResourceShareResponseBody.ResourceShareAssociations] = []
            for v in dict["ResourceShareAssociations"] as! [Any] {
                var model = AssociateResourceShareResponseBody.ResourceShareAssociations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceShareAssociations = tmp
        }
    }
}

public class AssociateResourceShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateResourceShareResponseBody?

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
            var model = AssociateResourceShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateResourceSharePermissionRequest : Tea.TeaModel {
    public var permissionName: String?

    public var replace: Bool?

    public var resourceShareId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissionName != nil {
            map["PermissionName"] = self.permissionName!
        }
        if self.replace != nil {
            map["Replace"] = self.replace!
        }
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
            self.permissionName = dict["PermissionName"] as! String
        }
        if dict.keys.contains("Replace") && dict["Replace"] != nil {
            self.replace = dict["Replace"] as! Bool
        }
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
    }
}

public class AssociateResourceSharePermissionResponseBody : Tea.TeaModel {
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

public class AssociateResourceSharePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateResourceSharePermissionResponseBody?

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
            var model = AssociateResourceSharePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckSharingWithResourceDirectoryStatusResponseBody : Tea.TeaModel {
    public var enableSharingWithRd: Bool?

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
        if self.enableSharingWithRd != nil {
            map["EnableSharingWithRd"] = self.enableSharingWithRd!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableSharingWithRd") && dict["EnableSharingWithRd"] != nil {
            self.enableSharingWithRd = dict["EnableSharingWithRd"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckSharingWithResourceDirectoryStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSharingWithResourceDirectoryStatusResponseBody?

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
            var model = CheckSharingWithResourceDirectoryStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceShareRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
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
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public class TargetProperties : Tea.TeaModel {
        public var property: String?

        public var targetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.property != nil {
                map["Property"] = self.property!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Property") && dict["Property"] != nil {
                self.property = dict["Property"] as! String
            }
            if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
                self.targetId = dict["TargetId"] as! String
            }
        }
    }
    public var allowExternalTargets: Bool?

    public var permissionNames: [String]?

    public var resourceShareName: String?

    public var resources: [CreateResourceShareRequest.Resources]?

    public var targetProperties: [CreateResourceShareRequest.TargetProperties]?

    public var targets: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowExternalTargets != nil {
            map["AllowExternalTargets"] = self.allowExternalTargets!
        }
        if self.permissionNames != nil {
            map["PermissionNames"] = self.permissionNames!
        }
        if self.resourceShareName != nil {
            map["ResourceShareName"] = self.resourceShareName!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.targetProperties != nil {
            var tmp : [Any] = []
            for k in self.targetProperties! {
                tmp.append(k.toMap())
            }
            map["TargetProperties"] = tmp
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowExternalTargets") && dict["AllowExternalTargets"] != nil {
            self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
        }
        if dict.keys.contains("PermissionNames") && dict["PermissionNames"] != nil {
            self.permissionNames = dict["PermissionNames"] as! [String]
        }
        if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
            self.resourceShareName = dict["ResourceShareName"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [CreateResourceShareRequest.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = CreateResourceShareRequest.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("TargetProperties") && dict["TargetProperties"] != nil {
            var tmp : [CreateResourceShareRequest.TargetProperties] = []
            for v in dict["TargetProperties"] as! [Any] {
                var model = CreateResourceShareRequest.TargetProperties()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetProperties = tmp
        }
        if dict.keys.contains("Targets") && dict["Targets"] != nil {
            self.targets = dict["Targets"] as! [String]
        }
    }
}

public class CreateResourceShareResponseBody : Tea.TeaModel {
    public class ResourceShare : Tea.TeaModel {
        public var allowExternalTargets: Bool?

        public var createTime: String?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var resourceShareOwner: String?

        public var resourceShareStatus: String?

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
            if self.allowExternalTargets != nil {
                map["AllowExternalTargets"] = self.allowExternalTargets!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.resourceShareOwner != nil {
                map["ResourceShareOwner"] = self.resourceShareOwner!
            }
            if self.resourceShareStatus != nil {
                map["ResourceShareStatus"] = self.resourceShareStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowExternalTargets") && dict["AllowExternalTargets"] != nil {
                self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("ResourceShareOwner") && dict["ResourceShareOwner"] != nil {
                self.resourceShareOwner = dict["ResourceShareOwner"] as! String
            }
            if dict.keys.contains("ResourceShareStatus") && dict["ResourceShareStatus"] != nil {
                self.resourceShareStatus = dict["ResourceShareStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceShare: CreateResourceShareResponseBody.ResourceShare?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceShare?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceShare != nil {
            map["ResourceShare"] = self.resourceShare?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShare") && dict["ResourceShare"] != nil {
            var model = CreateResourceShareResponseBody.ResourceShare()
            model.fromMap(dict["ResourceShare"] as! [String: Any])
            self.resourceShare = model
        }
    }
}

public class CreateResourceShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceShareResponseBody?

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
            var model = CreateResourceShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceShareRequest : Tea.TeaModel {
    public var resourceShareId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
    }
}

public class DeleteResourceShareResponseBody : Tea.TeaModel {
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

public class DeleteResourceShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceShareResponseBody?

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
            var model = DeleteResourceShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
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
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
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
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociateResourceShareRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
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
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var resourceOwner: String?

    public var resourceShareId: String?

    public var resources: [DisassociateResourceShareRequest.Resources]?

    public var targets: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceOwner != nil {
            map["ResourceOwner"] = self.resourceOwner!
        }
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [DisassociateResourceShareRequest.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = DisassociateResourceShareRequest.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("Targets") && dict["Targets"] != nil {
            self.targets = dict["Targets"] as! [String]
        }
    }
}

public class DisassociateResourceShareResponseBody : Tea.TeaModel {
    public class ResourceShareAssociations : Tea.TeaModel {
        public var associationStatus: String?

        public var associationStatusMessage: String?

        public var associationType: String?

        public var createTime: String?

        public var entityId: String?

        public var entityType: String?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var targetProperty: String?

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
            if self.associationStatus != nil {
                map["AssociationStatus"] = self.associationStatus!
            }
            if self.associationStatusMessage != nil {
                map["AssociationStatusMessage"] = self.associationStatusMessage!
            }
            if self.associationType != nil {
                map["AssociationType"] = self.associationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.targetProperty != nil {
                map["TargetProperty"] = self.targetProperty!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationStatus") && dict["AssociationStatus"] != nil {
                self.associationStatus = dict["AssociationStatus"] as! String
            }
            if dict.keys.contains("AssociationStatusMessage") && dict["AssociationStatusMessage"] != nil {
                self.associationStatusMessage = dict["AssociationStatusMessage"] as! String
            }
            if dict.keys.contains("AssociationType") && dict["AssociationType"] != nil {
                self.associationType = dict["AssociationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("TargetProperty") && dict["TargetProperty"] != nil {
                self.targetProperty = dict["TargetProperty"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceShareAssociations: [DisassociateResourceShareResponseBody.ResourceShareAssociations]?

    public override init() {
        super.init()
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
        if self.resourceShareAssociations != nil {
            var tmp : [Any] = []
            for k in self.resourceShareAssociations! {
                tmp.append(k.toMap())
            }
            map["ResourceShareAssociations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareAssociations") && dict["ResourceShareAssociations"] != nil {
            var tmp : [DisassociateResourceShareResponseBody.ResourceShareAssociations] = []
            for v in dict["ResourceShareAssociations"] as! [Any] {
                var model = DisassociateResourceShareResponseBody.ResourceShareAssociations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceShareAssociations = tmp
        }
    }
}

public class DisassociateResourceShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateResourceShareResponseBody?

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
            var model = DisassociateResourceShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociateResourceSharePermissionRequest : Tea.TeaModel {
    public var permissionName: String?

    public var resourceShareId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissionName != nil {
            map["PermissionName"] = self.permissionName!
        }
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
            self.permissionName = dict["PermissionName"] as! String
        }
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
    }
}

public class DisassociateResourceSharePermissionResponseBody : Tea.TeaModel {
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

public class DisassociateResourceSharePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateResourceSharePermissionResponseBody?

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
            var model = DisassociateResourceSharePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableSharingWithResourceDirectoryResponseBody : Tea.TeaModel {
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

public class EnableSharingWithResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSharingWithResourceDirectoryResponseBody?

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
            var model = EnableSharingWithResourceDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPermissionRequest : Tea.TeaModel {
    public var permissionName: String?

    public var permissionVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissionName != nil {
            map["PermissionName"] = self.permissionName!
        }
        if self.permissionVersion != nil {
            map["PermissionVersion"] = self.permissionVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
            self.permissionName = dict["PermissionName"] as! String
        }
        if dict.keys.contains("PermissionVersion") && dict["PermissionVersion"] != nil {
            self.permissionVersion = dict["PermissionVersion"] as! String
        }
    }
}

public class GetPermissionResponseBody : Tea.TeaModel {
    public class Permission : Tea.TeaModel {
        public var createTime: String?

        public var defaultPermission: Bool?

        public var defaultVersion: Bool?

        public var permission: String?

        public var permissionName: String?

        public var permissionVersion: String?

        public var resourceType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultPermission != nil {
                map["DefaultPermission"] = self.defaultPermission!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            if self.permissionName != nil {
                map["PermissionName"] = self.permissionName!
            }
            if self.permissionVersion != nil {
                map["PermissionVersion"] = self.permissionVersion!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultPermission") && dict["DefaultPermission"] != nil {
                self.defaultPermission = dict["DefaultPermission"] as! Bool
            }
            if dict.keys.contains("DefaultVersion") && dict["DefaultVersion"] != nil {
                self.defaultVersion = dict["DefaultVersion"] as! Bool
            }
            if dict.keys.contains("Permission") && dict["Permission"] != nil {
                self.permission = dict["Permission"] as! String
            }
            if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
                self.permissionName = dict["PermissionName"] as! String
            }
            if dict.keys.contains("PermissionVersion") && dict["PermissionVersion"] != nil {
                self.permissionVersion = dict["PermissionVersion"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var permission: GetPermissionResponseBody.Permission?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.permission?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permission != nil {
            map["Permission"] = self.permission?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permission") && dict["Permission"] != nil {
            var model = GetPermissionResponseBody.Permission()
            model.fromMap(dict["Permission"] as! [String: Any])
            self.permission = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPermissionResponseBody?

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
            var model = GetPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPermissionVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var permissionName: String?

    public override init() {
        super.init()
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
        if self.permissionName != nil {
            map["PermissionName"] = self.permissionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
            self.permissionName = dict["PermissionName"] as! String
        }
    }
}

public class ListPermissionVersionsResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var createTime: String?

        public var defaultPermission: Bool?

        public var defaultVersion: Bool?

        public var permissionName: String?

        public var permissionVersion: String?

        public var resourceType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultPermission != nil {
                map["DefaultPermission"] = self.defaultPermission!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.permissionName != nil {
                map["PermissionName"] = self.permissionName!
            }
            if self.permissionVersion != nil {
                map["PermissionVersion"] = self.permissionVersion!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultPermission") && dict["DefaultPermission"] != nil {
                self.defaultPermission = dict["DefaultPermission"] as! Bool
            }
            if dict.keys.contains("DefaultVersion") && dict["DefaultVersion"] != nil {
                self.defaultVersion = dict["DefaultVersion"] as! Bool
            }
            if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
                self.permissionName = dict["PermissionName"] as! String
            }
            if dict.keys.contains("PermissionVersion") && dict["PermissionVersion"] != nil {
                self.permissionVersion = dict["PermissionVersion"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var permissions: [ListPermissionVersionsResponseBody.Permissions]?

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
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            var tmp : [ListPermissionVersionsResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = ListPermissionVersionsResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPermissionVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPermissionVersionsResponseBody?

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
            var model = ListPermissionVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPermissionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListPermissionsResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var createTime: String?

        public var defaultPermission: Bool?

        public var defaultVersion: Bool?

        public var permissionName: String?

        public var permissionVersion: String?

        public var resourceType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultPermission != nil {
                map["DefaultPermission"] = self.defaultPermission!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.permissionName != nil {
                map["PermissionName"] = self.permissionName!
            }
            if self.permissionVersion != nil {
                map["PermissionVersion"] = self.permissionVersion!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultPermission") && dict["DefaultPermission"] != nil {
                self.defaultPermission = dict["DefaultPermission"] as! Bool
            }
            if dict.keys.contains("DefaultVersion") && dict["DefaultVersion"] != nil {
                self.defaultVersion = dict["DefaultVersion"] as! Bool
            }
            if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
                self.permissionName = dict["PermissionName"] as! String
            }
            if dict.keys.contains("PermissionVersion") && dict["PermissionVersion"] != nil {
                self.permissionVersion = dict["PermissionVersion"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var permissions: [ListPermissionsResponseBody.Permissions]?

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
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            var tmp : [ListPermissionsResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = ListPermissionsResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPermissionsResponseBody?

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
            var model = ListPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceShareAssociationsRequest : Tea.TeaModel {
    public var associationStatus: String?

    public var associationType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceId: String?

    public var resourceShareIds: [String]?

    public var target: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.associationStatus != nil {
            map["AssociationStatus"] = self.associationStatus!
        }
        if self.associationType != nil {
            map["AssociationType"] = self.associationType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceShareIds != nil {
            map["ResourceShareIds"] = self.resourceShareIds!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssociationStatus") && dict["AssociationStatus"] != nil {
            self.associationStatus = dict["AssociationStatus"] as! String
        }
        if dict.keys.contains("AssociationType") && dict["AssociationType"] != nil {
            self.associationType = dict["AssociationType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceShareIds") && dict["ResourceShareIds"] != nil {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("Target") && dict["Target"] != nil {
            self.target = dict["Target"] as! String
        }
    }
}

public class ListResourceShareAssociationsResponseBody : Tea.TeaModel {
    public class ResourceShareAssociations : Tea.TeaModel {
        public class AssociationFailedDetails : Tea.TeaModel {
            public var associateType: String?

            public var entityId: String?

            public var entityType: String?

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
                if self.associateType != nil {
                    map["AssociateType"] = self.associateType!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusMessage != nil {
                    map["StatusMessage"] = self.statusMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssociateType") && dict["AssociateType"] != nil {
                    self.associateType = dict["AssociateType"] as! String
                }
                if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                    self.entityId = dict["EntityId"] as! String
                }
                if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                    self.entityType = dict["EntityType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                    self.statusMessage = dict["StatusMessage"] as! String
                }
            }
        }
        public var associationFailedDetails: [ListResourceShareAssociationsResponseBody.ResourceShareAssociations.AssociationFailedDetails]?

        public var associationStatus: String?

        public var associationStatusMessage: String?

        public var associationType: String?

        public var createTime: String?

        public var entityId: String?

        public var entityType: String?

        public var external: Bool?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var targetProperty: String?

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
            if self.associationFailedDetails != nil {
                var tmp : [Any] = []
                for k in self.associationFailedDetails! {
                    tmp.append(k.toMap())
                }
                map["AssociationFailedDetails"] = tmp
            }
            if self.associationStatus != nil {
                map["AssociationStatus"] = self.associationStatus!
            }
            if self.associationStatusMessage != nil {
                map["AssociationStatusMessage"] = self.associationStatusMessage!
            }
            if self.associationType != nil {
                map["AssociationType"] = self.associationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.external != nil {
                map["External"] = self.external!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.targetProperty != nil {
                map["TargetProperty"] = self.targetProperty!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationFailedDetails") && dict["AssociationFailedDetails"] != nil {
                var tmp : [ListResourceShareAssociationsResponseBody.ResourceShareAssociations.AssociationFailedDetails] = []
                for v in dict["AssociationFailedDetails"] as! [Any] {
                    var model = ListResourceShareAssociationsResponseBody.ResourceShareAssociations.AssociationFailedDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.associationFailedDetails = tmp
            }
            if dict.keys.contains("AssociationStatus") && dict["AssociationStatus"] != nil {
                self.associationStatus = dict["AssociationStatus"] as! String
            }
            if dict.keys.contains("AssociationStatusMessage") && dict["AssociationStatusMessage"] != nil {
                self.associationStatusMessage = dict["AssociationStatusMessage"] as! String
            }
            if dict.keys.contains("AssociationType") && dict["AssociationType"] != nil {
                self.associationType = dict["AssociationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("External") && dict["External"] != nil {
                self.external = dict["External"] as! Bool
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("TargetProperty") && dict["TargetProperty"] != nil {
                self.targetProperty = dict["TargetProperty"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceShareAssociations: [ListResourceShareAssociationsResponseBody.ResourceShareAssociations]?

    public override init() {
        super.init()
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
        if self.resourceShareAssociations != nil {
            var tmp : [Any] = []
            for k in self.resourceShareAssociations! {
                tmp.append(k.toMap())
            }
            map["ResourceShareAssociations"] = tmp
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
        if dict.keys.contains("ResourceShareAssociations") && dict["ResourceShareAssociations"] != nil {
            var tmp : [ListResourceShareAssociationsResponseBody.ResourceShareAssociations] = []
            for v in dict["ResourceShareAssociations"] as! [Any] {
                var model = ListResourceShareAssociationsResponseBody.ResourceShareAssociations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceShareAssociations = tmp
        }
    }
}

public class ListResourceShareAssociationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceShareAssociationsResponseBody?

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
            var model = ListResourceShareAssociationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceShareInvitationsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceShareIds: [String]?

    public var resourceShareInvitationIds: [String]?

    public override init() {
        super.init()
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
        if self.resourceShareIds != nil {
            map["ResourceShareIds"] = self.resourceShareIds!
        }
        if self.resourceShareInvitationIds != nil {
            map["ResourceShareInvitationIds"] = self.resourceShareInvitationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceShareIds") && dict["ResourceShareIds"] != nil {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceShareInvitationIds") && dict["ResourceShareInvitationIds"] != nil {
            self.resourceShareInvitationIds = dict["ResourceShareInvitationIds"] as! [String]
        }
    }
}

public class ListResourceShareInvitationsResponseBody : Tea.TeaModel {
    public class ResourceShareInvitations : Tea.TeaModel {
        public class InvitationFailedDetails : Tea.TeaModel {
            public var associateType: String?

            public var resourceId: String?

            public var resourceType: String?

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
                if self.associateType != nil {
                    map["AssociateType"] = self.associateType!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusMessage != nil {
                    map["StatusMessage"] = self.statusMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssociateType") && dict["AssociateType"] != nil {
                    self.associateType = dict["AssociateType"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                    self.statusMessage = dict["StatusMessage"] as! String
                }
            }
        }
        public var createTime: String?

        public var invitationFailedDetails: [ListResourceShareInvitationsResponseBody.ResourceShareInvitations.InvitationFailedDetails]?

        public var receiverAccountId: String?

        public var resourceShareId: String?

        public var resourceShareInvitationId: String?

        public var resourceShareName: String?

        public var senderAccountId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.invitationFailedDetails != nil {
                var tmp : [Any] = []
                for k in self.invitationFailedDetails! {
                    tmp.append(k.toMap())
                }
                map["InvitationFailedDetails"] = tmp
            }
            if self.receiverAccountId != nil {
                map["ReceiverAccountId"] = self.receiverAccountId!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareInvitationId != nil {
                map["ResourceShareInvitationId"] = self.resourceShareInvitationId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.senderAccountId != nil {
                map["SenderAccountId"] = self.senderAccountId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InvitationFailedDetails") && dict["InvitationFailedDetails"] != nil {
                var tmp : [ListResourceShareInvitationsResponseBody.ResourceShareInvitations.InvitationFailedDetails] = []
                for v in dict["InvitationFailedDetails"] as! [Any] {
                    var model = ListResourceShareInvitationsResponseBody.ResourceShareInvitations.InvitationFailedDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.invitationFailedDetails = tmp
            }
            if dict.keys.contains("ReceiverAccountId") && dict["ReceiverAccountId"] != nil {
                self.receiverAccountId = dict["ReceiverAccountId"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareInvitationId") && dict["ResourceShareInvitationId"] != nil {
                self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("SenderAccountId") && dict["SenderAccountId"] != nil {
                self.senderAccountId = dict["SenderAccountId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceShareInvitations: [ListResourceShareInvitationsResponseBody.ResourceShareInvitations]?

    public override init() {
        super.init()
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
        if self.resourceShareInvitations != nil {
            var tmp : [Any] = []
            for k in self.resourceShareInvitations! {
                tmp.append(k.toMap())
            }
            map["ResourceShareInvitations"] = tmp
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
        if dict.keys.contains("ResourceShareInvitations") && dict["ResourceShareInvitations"] != nil {
            var tmp : [ListResourceShareInvitationsResponseBody.ResourceShareInvitations] = []
            for v in dict["ResourceShareInvitations"] as! [Any] {
                var model = ListResourceShareInvitationsResponseBody.ResourceShareInvitations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceShareInvitations = tmp
        }
    }
}

public class ListResourceShareInvitationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceShareInvitationsResponseBody?

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
            var model = ListResourceShareInvitationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceSharePermissionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceOwner: String?

    public var resourceShareId: String?

    public override init() {
        super.init()
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
        if self.resourceOwner != nil {
            map["ResourceOwner"] = self.resourceOwner!
        }
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
    }
}

public class ListResourceSharePermissionsResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var createTime: String?

        public var defaultPermission: Bool?

        public var defaultVersion: Bool?

        public var permissionName: String?

        public var permissionVersion: String?

        public var resourceType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultPermission != nil {
                map["DefaultPermission"] = self.defaultPermission!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.permissionName != nil {
                map["PermissionName"] = self.permissionName!
            }
            if self.permissionVersion != nil {
                map["PermissionVersion"] = self.permissionVersion!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultPermission") && dict["DefaultPermission"] != nil {
                self.defaultPermission = dict["DefaultPermission"] as! Bool
            }
            if dict.keys.contains("DefaultVersion") && dict["DefaultVersion"] != nil {
                self.defaultVersion = dict["DefaultVersion"] as! Bool
            }
            if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
                self.permissionName = dict["PermissionName"] as! String
            }
            if dict.keys.contains("PermissionVersion") && dict["PermissionVersion"] != nil {
                self.permissionVersion = dict["PermissionVersion"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var permissions: [ListResourceSharePermissionsResponseBody.Permissions]?

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
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            var tmp : [ListResourceSharePermissionsResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = ListResourceSharePermissionsResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListResourceSharePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceSharePermissionsResponseBody?

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
            var model = ListResourceSharePermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceSharesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var permissionName: String?

    public var resourceOwner: String?

    public var resourceShareIds: [String]?

    public var resourceShareName: String?

    public var resourceShareStatus: String?

    public override init() {
        super.init()
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
        if self.permissionName != nil {
            map["PermissionName"] = self.permissionName!
        }
        if self.resourceOwner != nil {
            map["ResourceOwner"] = self.resourceOwner!
        }
        if self.resourceShareIds != nil {
            map["ResourceShareIds"] = self.resourceShareIds!
        }
        if self.resourceShareName != nil {
            map["ResourceShareName"] = self.resourceShareName!
        }
        if self.resourceShareStatus != nil {
            map["ResourceShareStatus"] = self.resourceShareStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PermissionName") && dict["PermissionName"] != nil {
            self.permissionName = dict["PermissionName"] as! String
        }
        if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareIds") && dict["ResourceShareIds"] != nil {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
            self.resourceShareName = dict["ResourceShareName"] as! String
        }
        if dict.keys.contains("ResourceShareStatus") && dict["ResourceShareStatus"] != nil {
            self.resourceShareStatus = dict["ResourceShareStatus"] as! String
        }
    }
}

public class ListResourceSharesResponseBody : Tea.TeaModel {
    public class ResourceShares : Tea.TeaModel {
        public var allowExternalTargets: Bool?

        public var createTime: String?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var resourceShareOwner: String?

        public var resourceShareStatus: String?

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
            if self.allowExternalTargets != nil {
                map["AllowExternalTargets"] = self.allowExternalTargets!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.resourceShareOwner != nil {
                map["ResourceShareOwner"] = self.resourceShareOwner!
            }
            if self.resourceShareStatus != nil {
                map["ResourceShareStatus"] = self.resourceShareStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowExternalTargets") && dict["AllowExternalTargets"] != nil {
                self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("ResourceShareOwner") && dict["ResourceShareOwner"] != nil {
                self.resourceShareOwner = dict["ResourceShareOwner"] as! String
            }
            if dict.keys.contains("ResourceShareStatus") && dict["ResourceShareStatus"] != nil {
                self.resourceShareStatus = dict["ResourceShareStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceShares: [ListResourceSharesResponseBody.ResourceShares]?

    public override init() {
        super.init()
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
        if self.resourceShares != nil {
            var tmp : [Any] = []
            for k in self.resourceShares! {
                tmp.append(k.toMap())
            }
            map["ResourceShares"] = tmp
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
        if dict.keys.contains("ResourceShares") && dict["ResourceShares"] != nil {
            var tmp : [ListResourceSharesResponseBody.ResourceShares] = []
            for v in dict["ResourceShares"] as! [Any] {
                var model = ListResourceSharesResponseBody.ResourceShares()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceShares = tmp
        }
    }
}

public class ListResourceSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceSharesResponseBody?

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
            var model = ListResourceSharesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSharedResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceIds: [String]?

    public var resourceOwner: String?

    public var resourceShareIds: [String]?

    public var resourceType: String?

    public var target: String?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceOwner != nil {
            map["ResourceOwner"] = self.resourceOwner!
        }
        if self.resourceShareIds != nil {
            map["ResourceShareIds"] = self.resourceShareIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceIds") && dict["ResourceIds"] != nil {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareIds") && dict["ResourceShareIds"] != nil {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Target") && dict["Target"] != nil {
            self.target = dict["Target"] as! String
        }
    }
}

public class ListSharedResourcesResponseBody : Tea.TeaModel {
    public class SharedResources : Tea.TeaModel {
        public var createTime: String?

        public var resourceId: String?

        public var resourceShareId: String?

        public var resourceStatus: String?

        public var resourceStatusMessage: String?

        public var resourceType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceStatusMessage != nil {
                map["ResourceStatusMessage"] = self.resourceStatusMessage!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceStatus") && dict["ResourceStatus"] != nil {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ResourceStatusMessage") && dict["ResourceStatusMessage"] != nil {
                self.resourceStatusMessage = dict["ResourceStatusMessage"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var sharedResources: [ListSharedResourcesResponseBody.SharedResources]?

    public override init() {
        super.init()
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
        if self.sharedResources != nil {
            var tmp : [Any] = []
            for k in self.sharedResources! {
                tmp.append(k.toMap())
            }
            map["SharedResources"] = tmp
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
        if dict.keys.contains("SharedResources") && dict["SharedResources"] != nil {
            var tmp : [ListSharedResourcesResponseBody.SharedResources] = []
            for v in dict["SharedResources"] as! [Any] {
                var model = ListSharedResourcesResponseBody.SharedResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sharedResources = tmp
        }
    }
}

public class ListSharedResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSharedResourcesResponseBody?

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
            var model = ListSharedResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSharedTargetsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceId: String?

    public var resourceOwner: String?

    public var resourceShareIds: [String]?

    public var resourceType: String?

    public var targets: [String]?

    public override init() {
        super.init()
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
        if self.resourceOwner != nil {
            map["ResourceOwner"] = self.resourceOwner!
        }
        if self.resourceShareIds != nil {
            map["ResourceShareIds"] = self.resourceShareIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareIds") && dict["ResourceShareIds"] != nil {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Targets") && dict["Targets"] != nil {
            self.targets = dict["Targets"] as! [String]
        }
    }
}

public class ListSharedTargetsResponseBody : Tea.TeaModel {
    public class SharedTargets : Tea.TeaModel {
        public var createTime: String?

        public var external: Bool?

        public var resourceShareId: String?

        public var targetId: String?

        public var targetProperty: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.external != nil {
                map["External"] = self.external!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetProperty != nil {
                map["TargetProperty"] = self.targetProperty!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("External") && dict["External"] != nil {
                self.external = dict["External"] as! Bool
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetProperty") && dict["TargetProperty"] != nil {
                self.targetProperty = dict["TargetProperty"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var sharedTargets: [ListSharedTargetsResponseBody.SharedTargets]?

    public override init() {
        super.init()
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
        if self.sharedTargets != nil {
            var tmp : [Any] = []
            for k in self.sharedTargets! {
                tmp.append(k.toMap())
            }
            map["SharedTargets"] = tmp
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
        if dict.keys.contains("SharedTargets") && dict["SharedTargets"] != nil {
            var tmp : [ListSharedTargetsResponseBody.SharedTargets] = []
            for v in dict["SharedTargets"] as! [Any] {
                var model = ListSharedTargetsResponseBody.SharedTargets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sharedTargets = tmp
        }
    }
}

public class ListSharedTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSharedTargetsResponseBody?

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
            var model = ListSharedTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RejectResourceShareInvitationRequest : Tea.TeaModel {
    public var resourceShareInvitationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceShareInvitationId != nil {
            map["ResourceShareInvitationId"] = self.resourceShareInvitationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceShareInvitationId") && dict["ResourceShareInvitationId"] != nil {
            self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
        }
    }
}

public class RejectResourceShareInvitationResponseBody : Tea.TeaModel {
    public class ResourceShareInvitation : Tea.TeaModel {
        public var createTime: String?

        public var receiverAccountId: String?

        public var resourceShareId: String?

        public var resourceShareInvitationId: String?

        public var resourceShareName: String?

        public var senderAccountId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.receiverAccountId != nil {
                map["ReceiverAccountId"] = self.receiverAccountId!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareInvitationId != nil {
                map["ResourceShareInvitationId"] = self.resourceShareInvitationId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.senderAccountId != nil {
                map["SenderAccountId"] = self.senderAccountId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ReceiverAccountId") && dict["ReceiverAccountId"] != nil {
                self.receiverAccountId = dict["ReceiverAccountId"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareInvitationId") && dict["ResourceShareInvitationId"] != nil {
                self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("SenderAccountId") && dict["SenderAccountId"] != nil {
                self.senderAccountId = dict["SenderAccountId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceShareInvitation: RejectResourceShareInvitationResponseBody.ResourceShareInvitation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceShareInvitation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceShareInvitation != nil {
            map["ResourceShareInvitation"] = self.resourceShareInvitation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareInvitation") && dict["ResourceShareInvitation"] != nil {
            var model = RejectResourceShareInvitationResponseBody.ResourceShareInvitation()
            model.fromMap(dict["ResourceShareInvitation"] as! [String: Any])
            self.resourceShareInvitation = model
        }
    }
}

public class RejectResourceShareInvitationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RejectResourceShareInvitationResponseBody?

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
            var model = RejectResourceShareInvitationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceShareRequest : Tea.TeaModel {
    public var allowExternalTargets: Bool?

    public var resourceShareId: String?

    public var resourceShareName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowExternalTargets != nil {
            map["AllowExternalTargets"] = self.allowExternalTargets!
        }
        if self.resourceShareId != nil {
            map["ResourceShareId"] = self.resourceShareId!
        }
        if self.resourceShareName != nil {
            map["ResourceShareName"] = self.resourceShareName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowExternalTargets") && dict["AllowExternalTargets"] != nil {
            self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
        }
        if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
        if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
            self.resourceShareName = dict["ResourceShareName"] as! String
        }
    }
}

public class UpdateResourceShareResponseBody : Tea.TeaModel {
    public class ResourceShare : Tea.TeaModel {
        public var allowExternalTargets: Bool?

        public var createTime: String?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var resourceShareOwner: String?

        public var resourceShareStatus: String?

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
            if self.allowExternalTargets != nil {
                map["AllowExternalTargets"] = self.allowExternalTargets!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.resourceShareOwner != nil {
                map["ResourceShareOwner"] = self.resourceShareOwner!
            }
            if self.resourceShareStatus != nil {
                map["ResourceShareStatus"] = self.resourceShareStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowExternalTargets") && dict["AllowExternalTargets"] != nil {
                self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceShareId") && dict["ResourceShareId"] != nil {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") && dict["ResourceShareName"] != nil {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("ResourceShareOwner") && dict["ResourceShareOwner"] != nil {
                self.resourceShareOwner = dict["ResourceShareOwner"] as! String
            }
            if dict.keys.contains("ResourceShareStatus") && dict["ResourceShareStatus"] != nil {
                self.resourceShareStatus = dict["ResourceShareStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceShare: UpdateResourceShareResponseBody.ResourceShare?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceShare?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceShare != nil {
            map["ResourceShare"] = self.resourceShare?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShare") && dict["ResourceShare"] != nil {
            var model = UpdateResourceShareResponseBody.ResourceShare()
            model.fromMap(dict["ResourceShare"] as! [String: Any])
            self.resourceShare = model
        }
    }
}

public class UpdateResourceShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceShareResponseBody?

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
            var model = UpdateResourceShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
