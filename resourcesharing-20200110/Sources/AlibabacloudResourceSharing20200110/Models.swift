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
        if dict.keys.contains("ResourceShareInvitationId") {
            self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
        }
    }
}

public class AcceptResourceShareInvitationResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ReceiverAccountId") {
                self.receiverAccountId = dict["ReceiverAccountId"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareInvitationId") {
                self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("SenderAccountId") {
                self.senderAccountId = dict["SenderAccountId"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareInvitation") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var resourceShareId: String?

    public var resources: [AssociateResourceShareRequest.Resources]?

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
        if dict.keys.contains("ResourceShareId") {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [AssociateResourceShareRequest.Resources]
        }
        if dict.keys.contains("Targets") {
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationStatus") {
                self.associationStatus = dict["AssociationStatus"] as! String
            }
            if dict.keys.contains("AssociationStatusMessage") {
                self.associationStatusMessage = dict["AssociationStatusMessage"] as! String
            }
            if dict.keys.contains("AssociationType") {
                self.associationType = dict["AssociationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareAssociations") {
            self.resourceShareAssociations = dict["ResourceShareAssociations"] as! [AssociateResourceShareResponseBody.ResourceShareAssociations]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AssociateResourceShareResponseBody()
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
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var allowExternalTargets: Bool?

    public var resourceShareName: String?

    public var resources: [CreateResourceShareRequest.Resources]?

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
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowExternalTargets") {
            self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
        }
        if dict.keys.contains("ResourceShareName") {
            self.resourceShareName = dict["ResourceShareName"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [CreateResourceShareRequest.Resources]
        }
        if dict.keys.contains("Targets") {
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
            if dict.keys.contains("AllowExternalTargets") {
                self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("ResourceShareOwner") {
                self.resourceShareOwner = dict["ResourceShareOwner"] as! String
            }
            if dict.keys.contains("ResourceShareStatus") {
                self.resourceShareStatus = dict["ResourceShareStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShare") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ResourceShareId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AcceptLanguage") {
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
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
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
        if dict.keys.contains("ResourceOwner") {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareId") {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [DisassociateResourceShareRequest.Resources]
        }
        if dict.keys.contains("Targets") {
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationStatus") {
                self.associationStatus = dict["AssociationStatus"] as! String
            }
            if dict.keys.contains("AssociationStatusMessage") {
                self.associationStatusMessage = dict["AssociationStatusMessage"] as! String
            }
            if dict.keys.contains("AssociationType") {
                self.associationType = dict["AssociationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareAssociations") {
            self.resourceShareAssociations = dict["ResourceShareAssociations"] as! [DisassociateResourceShareResponseBody.ResourceShareAssociations]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisassociateResourceShareResponseBody()
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableSharingWithResourceDirectoryResponseBody()
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
        if dict.keys.contains("AssociationStatus") {
            self.associationStatus = dict["AssociationStatus"] as! String
        }
        if dict.keys.contains("AssociationType") {
            self.associationType = dict["AssociationType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceShareIds") {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
    }
}

public class ListResourceShareAssociationsResponseBody : Tea.TeaModel {
    public class ResourceShareAssociations : Tea.TeaModel {
        public var associationStatus: String?

        public var associationStatusMessage: String?

        public var associationType: String?

        public var createTime: String?

        public var entityId: String?

        public var entityType: String?

        public var external: Bool?

        public var resourceShareId: String?

        public var resourceShareName: String?

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
            if self.external != nil {
                map["External"] = self.external!
            }
            if self.resourceShareId != nil {
                map["ResourceShareId"] = self.resourceShareId!
            }
            if self.resourceShareName != nil {
                map["ResourceShareName"] = self.resourceShareName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociationStatus") {
                self.associationStatus = dict["AssociationStatus"] as! String
            }
            if dict.keys.contains("AssociationStatusMessage") {
                self.associationStatusMessage = dict["AssociationStatusMessage"] as! String
            }
            if dict.keys.contains("AssociationType") {
                self.associationType = dict["AssociationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("External") {
                self.external = dict["External"] as! Bool
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareAssociations") {
            self.resourceShareAssociations = dict["ResourceShareAssociations"] as! [ListResourceShareAssociationsResponseBody.ResourceShareAssociations]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceShareIds") {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceShareInvitationIds") {
            self.resourceShareInvitationIds = dict["ResourceShareInvitationIds"] as! [String]
        }
    }
}

public class ListResourceShareInvitationsResponseBody : Tea.TeaModel {
    public class ResourceShareInvitations : Tea.TeaModel {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ReceiverAccountId") {
                self.receiverAccountId = dict["ReceiverAccountId"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareInvitationId") {
                self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("SenderAccountId") {
                self.senderAccountId = dict["SenderAccountId"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareInvitations") {
            self.resourceShareInvitations = dict["ResourceShareInvitations"] as! [ListResourceShareInvitationsResponseBody.ResourceShareInvitations]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceShareInvitationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceSharesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceOwner") {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareIds") {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceShareName") {
            self.resourceShareName = dict["ResourceShareName"] as! String
        }
        if dict.keys.contains("ResourceShareStatus") {
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
            if dict.keys.contains("AllowExternalTargets") {
                self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("ResourceShareOwner") {
                self.resourceShareOwner = dict["ResourceShareOwner"] as! String
            }
            if dict.keys.contains("ResourceShareStatus") {
                self.resourceShareStatus = dict["ResourceShareStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShares") {
            self.resourceShares = dict["ResourceShares"] as! [ListResourceSharesResponseBody.ResourceShares]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceOwner") {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareIds") {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Target") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ResourceStatusMessage") {
                self.resourceStatusMessage = dict["ResourceStatusMessage"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SharedResources") {
            self.sharedResources = dict["SharedResources"] as! [ListSharedResourcesResponseBody.SharedResources]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwner") {
            self.resourceOwner = dict["ResourceOwner"] as! String
        }
        if dict.keys.contains("ResourceShareIds") {
            self.resourceShareIds = dict["ResourceShareIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Targets") {
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("External") {
                self.external = dict["External"] as! Bool
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SharedTargets") {
            self.sharedTargets = dict["SharedTargets"] as! [ListSharedTargetsResponseBody.SharedTargets]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ResourceShareInvitationId") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ReceiverAccountId") {
                self.receiverAccountId = dict["ReceiverAccountId"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareInvitationId") {
                self.resourceShareInvitationId = dict["ResourceShareInvitationId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("SenderAccountId") {
                self.senderAccountId = dict["SenderAccountId"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShareInvitation") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AllowExternalTargets") {
            self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
        }
        if dict.keys.contains("ResourceShareId") {
            self.resourceShareId = dict["ResourceShareId"] as! String
        }
        if dict.keys.contains("ResourceShareName") {
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
            if dict.keys.contains("AllowExternalTargets") {
                self.allowExternalTargets = dict["AllowExternalTargets"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceShareId") {
                self.resourceShareId = dict["ResourceShareId"] as! String
            }
            if dict.keys.contains("ResourceShareName") {
                self.resourceShareName = dict["ResourceShareName"] as! String
            }
            if dict.keys.contains("ResourceShareOwner") {
                self.resourceShareOwner = dict["ResourceShareOwner"] as! String
            }
            if dict.keys.contains("ResourceShareStatus") {
                self.resourceShareStatus = dict["ResourceShareStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceShare") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateResourceShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
