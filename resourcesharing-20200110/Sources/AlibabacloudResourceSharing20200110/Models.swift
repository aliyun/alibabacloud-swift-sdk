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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceShareInvitationId"] as? String {
            self.resourceShareInvitationId = value
        }
    }
}

public class AcceptResourceShareInvitationResponseBody : Tea.TeaModel {
    public class ResourceShareInvitation : Tea.TeaModel {
        public class AcceptInvitationFailedDetails : Tea.TeaModel {
            public var associateType: String?

            public var failureDescription: String?

            public var failureReason: String?

            public var operationType: String?

            public var resourceArn: String?

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
                if self.failureDescription != nil {
                    map["FailureDescription"] = self.failureDescription!
                }
                if self.failureReason != nil {
                    map["FailureReason"] = self.failureReason!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssociateType"] as? String {
                    self.associateType = value
                }
                if let value = dict["FailureDescription"] as? String {
                    self.failureDescription = value
                }
                if let value = dict["FailureReason"] as? String {
                    self.failureReason = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusMessage"] as? String {
                    self.statusMessage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AcceptInvitationFailedDetails"] as? [Any?] {
                var tmp : [AcceptResourceShareInvitationResponseBody.ResourceShareInvitation.AcceptInvitationFailedDetails] = []
                for v in value {
                    if v != nil {
                        var model = AcceptResourceShareInvitationResponseBody.ResourceShareInvitation.AcceptInvitationFailedDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.acceptInvitationFailedDetails = tmp
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ReceiverAccountId"] as? String {
                self.receiverAccountId = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareInvitationId"] as? String {
                self.resourceShareInvitationId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["SenderAccountId"] as? String {
                self.senderAccountId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShareInvitation"] as? [String: Any?] {
            var model = AcceptResourceShareInvitationResponseBody.ResourceShareInvitation()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AcceptResourceShareInvitationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateResourceShareRequest : Tea.TeaModel {
    public class ResourceProperties : Tea.TeaModel {
        public var property: String?

        public var resourceArn: String?

        public override init() {
            super.init()
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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Property"] as? String {
                self.property = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Property"] as? String {
                self.property = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
        }
    }
    public var permissionNames: [String]?

    public var resourceArns: [String]?

    public var resourceProperties: [AssociateResourceShareRequest.ResourceProperties]?

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
        if self.resourceArns != nil {
            map["ResourceArns"] = self.resourceArns!
        }
        if self.resourceProperties != nil {
            var tmp : [Any] = []
            for k in self.resourceProperties! {
                tmp.append(k.toMap())
            }
            map["ResourceProperties"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PermissionNames"] as? [String] {
            self.permissionNames = value
        }
        if let value = dict["ResourceArns"] as? [String] {
            self.resourceArns = value
        }
        if let value = dict["ResourceProperties"] as? [Any?] {
            var tmp : [AssociateResourceShareRequest.ResourceProperties] = []
            for v in value {
                if v != nil {
                    var model = AssociateResourceShareRequest.ResourceProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceProperties = tmp
        }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [AssociateResourceShareRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = AssociateResourceShareRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["TargetProperties"] as? [Any?] {
            var tmp : [AssociateResourceShareRequest.TargetProperties] = []
            for v in value {
                if v != nil {
                    var model = AssociateResourceShareRequest.TargetProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targetProperties = tmp
        }
        if let value = dict["Targets"] as? [String] {
            self.targets = value
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

        public var resourceArn: String?

        public var resourceProperty: String?

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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            if self.resourceProperty != nil {
                map["ResourceProperty"] = self.resourceProperty!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssociationStatus"] as? String {
                self.associationStatus = value
            }
            if let value = dict["AssociationStatusMessage"] as? String {
                self.associationStatusMessage = value
            }
            if let value = dict["AssociationType"] as? String {
                self.associationType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
            if let value = dict["ResourceProperty"] as? String {
                self.resourceProperty = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["TargetProperty"] as? String {
                self.targetProperty = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShareAssociations"] as? [Any?] {
            var tmp : [AssociateResourceShareResponseBody.ResourceShareAssociations] = []
            for v in value {
                if v != nil {
                    var model = AssociateResourceShareResponseBody.ResourceShareAssociations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssociateResourceShareResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PermissionName"] as? String {
            self.permissionName = value
        }
        if let value = dict["Replace"] as? Bool {
            self.replace = value
        }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssociateResourceSharePermissionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableSharingWithRd"] as? Bool {
            self.enableSharingWithRd = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckSharingWithResourceDirectoryStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceShareRequest : Tea.TeaModel {
    public class ResourceProperties : Tea.TeaModel {
        public var property: String?

        public var resourceArn: String?

        public override init() {
            super.init()
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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Property"] as? String {
                self.property = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Property"] as? String {
                self.property = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
        }
    }
    public var allowExternalTargets: Bool?

    public var permissionNames: [String]?

    public var resourceArns: [String]?

    public var resourceGroupId: String?

    public var resourceProperties: [CreateResourceShareRequest.ResourceProperties]?

    public var resourceShareName: String?

    public var resources: [CreateResourceShareRequest.Resources]?

    public var tag: [CreateResourceShareRequest.Tag]?

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
        if self.resourceArns != nil {
            map["ResourceArns"] = self.resourceArns!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceProperties != nil {
            var tmp : [Any] = []
            for k in self.resourceProperties! {
                tmp.append(k.toMap())
            }
            map["ResourceProperties"] = tmp
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowExternalTargets"] as? Bool {
            self.allowExternalTargets = value
        }
        if let value = dict["PermissionNames"] as? [String] {
            self.permissionNames = value
        }
        if let value = dict["ResourceArns"] as? [String] {
            self.resourceArns = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceProperties"] as? [Any?] {
            var tmp : [CreateResourceShareRequest.ResourceProperties] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceShareRequest.ResourceProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceProperties = tmp
        }
        if let value = dict["ResourceShareName"] as? String {
            self.resourceShareName = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [CreateResourceShareRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceShareRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateResourceShareRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceShareRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TargetProperties"] as? [Any?] {
            var tmp : [CreateResourceShareRequest.TargetProperties] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceShareRequest.TargetProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targetProperties = tmp
        }
        if let value = dict["Targets"] as? [String] {
            self.targets = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowExternalTargets"] as? Bool {
                self.allowExternalTargets = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["ResourceShareOwner"] as? String {
                self.resourceShareOwner = value
            }
            if let value = dict["ResourceShareStatus"] as? String {
                self.resourceShareStatus = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShare"] as? [String: Any?] {
            var model = CreateResourceShareResponseBody.ResourceShare()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateResourceShareResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteResourceShareResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var resourceArns: [String]?

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
        if self.resourceArns != nil {
            map["ResourceArns"] = self.resourceArns!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceArns"] as? [String] {
            self.resourceArns = value
        }
        if let value = dict["ResourceOwner"] as? String {
            self.resourceOwner = value
        }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [DisassociateResourceShareRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = DisassociateResourceShareRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["Targets"] as? [String] {
            self.targets = value
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

        public var resourceArn: String?

        public var resourceProperty: String?

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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            if self.resourceProperty != nil {
                map["ResourceProperty"] = self.resourceProperty!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssociationStatus"] as? String {
                self.associationStatus = value
            }
            if let value = dict["AssociationStatusMessage"] as? String {
                self.associationStatusMessage = value
            }
            if let value = dict["AssociationType"] as? String {
                self.associationType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
            if let value = dict["ResourceProperty"] as? String {
                self.resourceProperty = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["TargetProperty"] as? String {
                self.targetProperty = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShareAssociations"] as? [Any?] {
            var tmp : [DisassociateResourceShareResponseBody.ResourceShareAssociations] = []
            for v in value {
                if v != nil {
                    var model = DisassociateResourceShareResponseBody.ResourceShareAssociations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisassociateResourceShareResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PermissionName"] as? String {
            self.permissionName = value
        }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisassociateResourceSharePermissionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableSharingWithResourceDirectoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PermissionName"] as? String {
            self.permissionName = value
        }
        if let value = dict["PermissionVersion"] as? String {
            self.permissionVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultPermission"] as? Bool {
                self.defaultPermission = value
            }
            if let value = dict["DefaultVersion"] as? Bool {
                self.defaultVersion = value
            }
            if let value = dict["Permission"] as? String {
                self.permission = value
            }
            if let value = dict["PermissionName"] as? String {
                self.permissionName = value
            }
            if let value = dict["PermissionVersion"] as? String {
                self.permissionVersion = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Permission"] as? [String: Any?] {
            var model = GetPermissionResponseBody.Permission()
            model.fromMap(value)
            self.permission = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPermissionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PermissionName"] as? String {
            self.permissionName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultPermission"] as? Bool {
                self.defaultPermission = value
            }
            if let value = dict["DefaultVersion"] as? Bool {
                self.defaultVersion = value
            }
            if let value = dict["PermissionName"] as? String {
                self.permissionName = value
            }
            if let value = dict["PermissionVersion"] as? String {
                self.permissionVersion = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Permissions"] as? [Any?] {
            var tmp : [ListPermissionVersionsResponseBody.Permissions] = []
            for v in value {
                if v != nil {
                    var model = ListPermissionVersionsResponseBody.Permissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPermissionVersionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultPermission"] as? Bool {
                self.defaultPermission = value
            }
            if let value = dict["DefaultVersion"] as? Bool {
                self.defaultVersion = value
            }
            if let value = dict["PermissionName"] as? String {
                self.permissionName = value
            }
            if let value = dict["PermissionVersion"] as? String {
                self.permissionVersion = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Permissions"] as? [Any?] {
            var tmp : [ListPermissionsResponseBody.Permissions] = []
            for v in value {
                if v != nil {
                    var model = ListPermissionsResponseBody.Permissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceShareAssociationsRequest : Tea.TeaModel {
    public var associationStatus: String?

    public var associationType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceArn: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssociationStatus"] as? String {
            self.associationStatus = value
        }
        if let value = dict["AssociationType"] as? String {
            self.associationType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceShareIds"] as? [String] {
            self.resourceShareIds = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class ListResourceShareAssociationsResponseBody : Tea.TeaModel {
    public class ResourceShareAssociations : Tea.TeaModel {
        public class AssociationFailedDetails : Tea.TeaModel {
            public var associateType: String?

            public var entityId: String?

            public var entityType: String?

            public var failureDescription: String?

            public var failureReason: String?

            public var operationType: String?

            public var resourceArn: String?

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
                if self.failureDescription != nil {
                    map["FailureDescription"] = self.failureDescription!
                }
                if self.failureReason != nil {
                    map["FailureReason"] = self.failureReason!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
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
                if let value = dict["AssociateType"] as? String {
                    self.associateType = value
                }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["EntityType"] as? String {
                    self.entityType = value
                }
                if let value = dict["FailureDescription"] as? String {
                    self.failureDescription = value
                }
                if let value = dict["FailureReason"] as? String {
                    self.failureReason = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusMessage"] as? String {
                    self.statusMessage = value
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

        public var resourceArn: String?

        public var resourceProperty: String?

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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            if self.resourceProperty != nil {
                map["ResourceProperty"] = self.resourceProperty!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssociationFailedDetails"] as? [Any?] {
                var tmp : [ListResourceShareAssociationsResponseBody.ResourceShareAssociations.AssociationFailedDetails] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceShareAssociationsResponseBody.ResourceShareAssociations.AssociationFailedDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.associationFailedDetails = tmp
            }
            if let value = dict["AssociationStatus"] as? String {
                self.associationStatus = value
            }
            if let value = dict["AssociationStatusMessage"] as? String {
                self.associationStatusMessage = value
            }
            if let value = dict["AssociationType"] as? String {
                self.associationType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["External"] as? Bool {
                self.external = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
            if let value = dict["ResourceProperty"] as? String {
                self.resourceProperty = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["TargetProperty"] as? String {
                self.targetProperty = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShareAssociations"] as? [Any?] {
            var tmp : [ListResourceShareAssociationsResponseBody.ResourceShareAssociations] = []
            for v in value {
                if v != nil {
                    var model = ListResourceShareAssociationsResponseBody.ResourceShareAssociations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListResourceShareAssociationsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceShareIds"] as? [String] {
            self.resourceShareIds = value
        }
        if let value = dict["ResourceShareInvitationIds"] as? [String] {
            self.resourceShareInvitationIds = value
        }
    }
}

public class ListResourceShareInvitationsResponseBody : Tea.TeaModel {
    public class ResourceShareInvitations : Tea.TeaModel {
        public class InvitationFailedDetails : Tea.TeaModel {
            public var associateType: String?

            public var failureDescription: String?

            public var failureReason: String?

            public var operationType: String?

            public var resourceArn: String?

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
                if self.failureDescription != nil {
                    map["FailureDescription"] = self.failureDescription!
                }
                if self.failureReason != nil {
                    map["FailureReason"] = self.failureReason!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.resourceArn != nil {
                    map["ResourceArn"] = self.resourceArn!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssociateType"] as? String {
                    self.associateType = value
                }
                if let value = dict["FailureDescription"] as? String {
                    self.failureDescription = value
                }
                if let value = dict["FailureReason"] as? String {
                    self.failureReason = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["ResourceArn"] as? String {
                    self.resourceArn = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusMessage"] as? String {
                    self.statusMessage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["InvitationFailedDetails"] as? [Any?] {
                var tmp : [ListResourceShareInvitationsResponseBody.ResourceShareInvitations.InvitationFailedDetails] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceShareInvitationsResponseBody.ResourceShareInvitations.InvitationFailedDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.invitationFailedDetails = tmp
            }
            if let value = dict["ReceiverAccountId"] as? String {
                self.receiverAccountId = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareInvitationId"] as? String {
                self.resourceShareInvitationId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["SenderAccountId"] as? String {
                self.senderAccountId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShareInvitations"] as? [Any?] {
            var tmp : [ListResourceShareInvitationsResponseBody.ResourceShareInvitations] = []
            for v in value {
                if v != nil {
                    var model = ListResourceShareInvitationsResponseBody.ResourceShareInvitations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListResourceShareInvitationsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceOwner"] as? String {
            self.resourceOwner = value
        }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultPermission"] as? Bool {
                self.defaultPermission = value
            }
            if let value = dict["DefaultVersion"] as? Bool {
                self.defaultVersion = value
            }
            if let value = dict["PermissionName"] as? String {
                self.permissionName = value
            }
            if let value = dict["PermissionVersion"] as? String {
                self.permissionVersion = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Permissions"] as? [Any?] {
            var tmp : [ListResourceSharePermissionsResponseBody.Permissions] = []
            for v in value {
                if v != nil {
                    var model = ListResourceSharePermissionsResponseBody.Permissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListResourceSharePermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceSharesRequest : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var permissionName: String?

    public var resourceGroupId: String?

    public var resourceOwner: String?

    public var resourceShareIds: [String]?

    public var resourceShareName: String?

    public var resourceShareStatus: String?

    public var tag: [ListResourceSharesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PermissionName"] as? String {
            self.permissionName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwner"] as? String {
            self.resourceOwner = value
        }
        if let value = dict["ResourceShareIds"] as? [String] {
            self.resourceShareIds = value
        }
        if let value = dict["ResourceShareName"] as? String {
            self.resourceShareName = value
        }
        if let value = dict["ResourceShareStatus"] as? String {
            self.resourceShareStatus = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListResourceSharesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListResourceSharesRequest.Tag()
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

public class ListResourceSharesResponseBody : Tea.TeaModel {
    public class ResourceShares : Tea.TeaModel {
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
        public var allowExternalTargets: Bool?

        public var createTime: String?

        public var resourceGroupId: String?

        public var resourceShareId: String?

        public var resourceShareName: String?

        public var resourceShareOwner: String?

        public var resourceShareStatus: String?

        public var tags: [ListResourceSharesResponseBody.ResourceShares.Tags]?

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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowExternalTargets"] as? Bool {
                self.allowExternalTargets = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["ResourceShareOwner"] as? String {
                self.resourceShareOwner = value
            }
            if let value = dict["ResourceShareStatus"] as? String {
                self.resourceShareStatus = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListResourceSharesResponseBody.ResourceShares.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceSharesResponseBody.ResourceShares.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShares"] as? [Any?] {
            var tmp : [ListResourceSharesResponseBody.ResourceShares] = []
            for v in value {
                if v != nil {
                    var model = ListResourceSharesResponseBody.ResourceShares()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListResourceSharesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSharedResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceArns: [String]?

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
        if self.resourceArns != nil {
            map["ResourceArns"] = self.resourceArns!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceArns"] as? [String] {
            self.resourceArns = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceOwner"] as? String {
            self.resourceOwner = value
        }
        if let value = dict["ResourceShareIds"] as? [String] {
            self.resourceShareIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class ListSharedResourcesResponseBody : Tea.TeaModel {
    public class SharedResources : Tea.TeaModel {
        public var createTime: String?

        public var resourceArn: String?

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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceStatus"] as? String {
                self.resourceStatus = value
            }
            if let value = dict["ResourceStatusMessage"] as? String {
                self.resourceStatusMessage = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SharedResources"] as? [Any?] {
            var tmp : [ListSharedResourcesResponseBody.SharedResources] = []
            for v in value {
                if v != nil {
                    var model = ListSharedResourcesResponseBody.SharedResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSharedResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSharedTargetsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceArn: String?

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
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceOwner"] as? String {
            self.resourceOwner = value
        }
        if let value = dict["ResourceShareIds"] as? [String] {
            self.resourceShareIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Targets"] as? [String] {
            self.targets = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["External"] as? Bool {
                self.external = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetProperty"] as? String {
                self.targetProperty = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SharedTargets"] as? [Any?] {
            var tmp : [ListSharedTargetsResponseBody.SharedTargets] = []
            for v in value {
                if v != nil {
                    var model = ListSharedTargetsResponseBody.SharedTargets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSharedTargetsResponseBody()
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
        public class TagResource : Tea.TeaModel {
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
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
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
            map["TagResources"] = self.tagResources?.toMap()
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
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceShareInvitationId"] as? String {
            self.resourceShareInvitationId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ReceiverAccountId"] as? String {
                self.receiverAccountId = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareInvitationId"] as? String {
                self.resourceShareInvitationId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["SenderAccountId"] as? String {
                self.senderAccountId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShareInvitation"] as? [String: Any?] {
            var model = RejectResourceShareInvitationResponseBody.ResourceShareInvitation()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RejectResourceShareInvitationResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowExternalTargets"] as? Bool {
            self.allowExternalTargets = value
        }
        if let value = dict["ResourceShareId"] as? String {
            self.resourceShareId = value
        }
        if let value = dict["ResourceShareName"] as? String {
            self.resourceShareName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowExternalTargets"] as? Bool {
                self.allowExternalTargets = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ResourceShareId"] as? String {
                self.resourceShareId = value
            }
            if let value = dict["ResourceShareName"] as? String {
                self.resourceShareName = value
            }
            if let value = dict["ResourceShareOwner"] as? String {
                self.resourceShareOwner = value
            }
            if let value = dict["ResourceShareStatus"] as? String {
                self.resourceShareStatus = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceShare"] as? [String: Any?] {
            var model = UpdateResourceShareResponseBody.ResourceShare()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateResourceShareResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
