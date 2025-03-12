import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddHotspotFileRequest : Tea.TeaModel {
    public var fileName: String?

    public var sceneId: String?

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
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class AddHotspotFileResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddHotspotFileResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: [String: Any]?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddHotspotFileResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
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

public class AddHotspotFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddHotspotFileResponseBody?

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
            var model = AddHotspotFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddMosaicsRequest : Tea.TeaModel {
    public var markPosition: String?

    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.markPosition != nil {
            map["MarkPosition"] = self.markPosition!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MarkPosition") {
            self.markPosition = dict["MarkPosition"] as! String
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class AddMosaicsResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddMosaicsResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddMosaicsResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class AddMosaicsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMosaicsResponseBody?

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
            var model = AddMosaicsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddProjectRequest : Tea.TeaModel {
    public var businessId: Int64?

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
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessId") {
            self.businessId = dict["BusinessId"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class AddProjectResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddProjectResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var id: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.id != nil {
            map["Id"] = self.id!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddProjectResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
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

public class AddProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddProjectResponseBody?

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
            var model = AddProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddRelativePositionRequest : Tea.TeaModel {
    public var relativePosition: String?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.relativePosition != nil {
            map["RelativePosition"] = self.relativePosition!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RelativePosition") {
            self.relativePosition = dict["RelativePosition"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class AddRelativePositionResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddRelativePositionResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddRelativePositionResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class AddRelativePositionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRelativePositionResponseBody?

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
            var model = AddRelativePositionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddRoomPlanRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class AddRoomPlanResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var callback: String?

        public var dir: String?

        public var expire: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Callback") {
                self.callback = dict["Callback"] as! String
            }
            if dict.keys.contains("Dir") {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddRoomPlanResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: AddRoomPlanResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddRoomPlanResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = AddRoomPlanResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class AddRoomPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRoomPlanResponseBody?

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
            var model = AddRoomPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddSceneRequest : Tea.TeaModel {
    public var customerUid: String?

    public var name: String?

    public var projectId: String?

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
        if self.customerUid != nil {
            map["CustomerUid"] = self.customerUid!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerUid") {
            self.customerUid = dict["CustomerUid"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class AddSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var id: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.id != nil {
            map["Id"] = self.id!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
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

public class AddSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSceneResponseBody?

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
            var model = AddSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddSubSceneRequest : Tea.TeaModel {
    public var name: String?

    public var sceneId: String?

    public var uploadType: String?

    public override init() {
        super.init()
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("UploadType") {
            self.uploadType = dict["UploadType"] as! String
        }
    }
}

public class AddSubSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: AddSubSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var id: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.id != nil {
            map["Id"] = self.id!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = AddSubSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
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

public class AddSubSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSubSceneResponseBody?

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
            var model = AddSubSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckUserPropertyRequest : Tea.TeaModel {
    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class CheckUserPropertyResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: CheckUserPropertyResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var match: Bool?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.match != nil {
            map["Match"] = self.match!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = CheckUserPropertyResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Match") {
            self.match = dict["Match"] as! Bool
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

public class CheckUserPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUserPropertyResponseBody?

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
            var model = CheckUserPropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopySceneRequest : Tea.TeaModel {
    public var projectId: String?

    public var sceneId: String?

    public var sceneName: String?

    public override init() {
        super.init()
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
    }
}

public class CopySceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var accessDeniedDetail: CopySceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: CopySceneResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = CopySceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = CopySceneResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CopySceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopySceneResponseBody?

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
            var model = CopySceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUploadPolicyRequest : Tea.TeaModel {
    public var option: String?

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
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Option") {
            self.option = dict["Option"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateUploadPolicyResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var callback: String?

        public var dir: String?

        public var expire: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Callback") {
                self.callback = dict["Callback"] as! String
            }
            if dict.keys.contains("Dir") {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var accessDeniedDetail: CreateUploadPolicyResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: CreateUploadPolicyResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = CreateUploadPolicyResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = CreateUploadPolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CreateUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUploadPolicyResponseBody?

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
            var model = CreateUploadPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetailProjectRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DetailProjectResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: DetailProjectResponseBody.AccessDeniedDetail?

    public var businessId: Int64?

    public var businessName: String?

    public var code: Int64?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var id: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var success: Bool?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.businessName != nil {
            map["BusinessName"] = self.businessName!
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DetailProjectResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("BusinessId") {
            self.businessId = dict["BusinessId"] as! Int64
        }
        if dict.keys.contains("BusinessName") {
            self.businessName = dict["BusinessName"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DetailProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailProjectResponseBody?

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
            var model = DetailProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetailSceneRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DetailSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Captures : Tea.TeaModel {
        public var title: String?

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
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public class FloorPlans : Tea.TeaModel {
        public var colorMapUrl: String?

        public var floorLabel: String?

        public var floorName: String?

        public var miniMapUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.colorMapUrl != nil {
                map["ColorMapUrl"] = self.colorMapUrl!
            }
            if self.floorLabel != nil {
                map["FloorLabel"] = self.floorLabel!
            }
            if self.floorName != nil {
                map["FloorName"] = self.floorName!
            }
            if self.miniMapUrl != nil {
                map["MiniMapUrl"] = self.miniMapUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ColorMapUrl") {
                self.colorMapUrl = dict["ColorMapUrl"] as! String
            }
            if dict.keys.contains("FloorLabel") {
                self.floorLabel = dict["FloorLabel"] as! String
            }
            if dict.keys.contains("FloorName") {
                self.floorName = dict["FloorName"] as! String
            }
            if dict.keys.contains("MiniMapUrl") {
                self.miniMapUrl = dict["MiniMapUrl"] as! String
            }
        }
    }
    public var accessDeniedDetail: DetailSceneResponseBody.AccessDeniedDetail?

    public var captures: [DetailSceneResponseBody.Captures]?

    public var code: Int64?

    public var coverUrl: String?

    public var floorPlans: [DetailSceneResponseBody.FloorPlans]?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var id: String?

    public var message: String?

    public var name: String?

    public var previewToken: String?

    public var published: Bool?

    public var requestId: String?

    public var sourceNum: Int64?

    public var status: String?

    public var statusName: String?

    public var subSceneNum: Int64?

    public var success: Bool?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.captures != nil {
            var tmp : [Any] = []
            for k in self.captures! {
                tmp.append(k.toMap())
            }
            map["Captures"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.floorPlans != nil {
            var tmp : [Any] = []
            for k in self.floorPlans! {
                tmp.append(k.toMap())
            }
            map["FloorPlans"] = tmp
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        if self.published != nil {
            map["Published"] = self.published!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceNum != nil {
            map["SourceNum"] = self.sourceNum!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusName != nil {
            map["StatusName"] = self.statusName!
        }
        if self.subSceneNum != nil {
            map["SubSceneNum"] = self.subSceneNum!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DetailSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Captures") {
            var tmp : [DetailSceneResponseBody.Captures] = []
            for v in dict["Captures"] as! [Any] {
                var model = DetailSceneResponseBody.Captures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.captures = tmp
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("CoverUrl") {
            self.coverUrl = dict["CoverUrl"] as! String
        }
        if dict.keys.contains("FloorPlans") {
            var tmp : [DetailSceneResponseBody.FloorPlans] = []
            for v in dict["FloorPlans"] as! [Any] {
                var model = DetailSceneResponseBody.FloorPlans()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.floorPlans = tmp
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
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
        if dict.keys.contains("Published") {
            self.published = dict["Published"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceNum") {
            self.sourceNum = dict["SourceNum"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusName") {
            self.statusName = dict["StatusName"] as! String
        }
        if dict.keys.contains("SubSceneNum") {
            self.subSceneNum = dict["SubSceneNum"] as! Int64
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DetailSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailSceneResponseBody?

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
            var model = DetailSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetailSubSceneRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DetailSubSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: DetailSubSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var coverUrl: String?

    public var cubemapPath: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var id: String?

    public var imageUrl: String?

    public var layoutData: String?

    public var message: String?

    public var name: String?

    public var originUrl: String?

    public var position: String?

    public var requestId: String?

    public var resourceId: String?

    public var status: Int64?

    public var success: Bool?

    public var type: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.cubemapPath != nil {
            map["CubemapPath"] = self.cubemapPath!
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
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.layoutData != nil {
            map["LayoutData"] = self.layoutData!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.originUrl != nil {
            map["OriginUrl"] = self.originUrl!
        }
        if self.position != nil {
            map["Position"] = self.position!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DetailSubSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("CoverUrl") {
            self.coverUrl = dict["CoverUrl"] as! String
        }
        if dict.keys.contains("CubemapPath") {
            self.cubemapPath = dict["CubemapPath"] as! String
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
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("LayoutData") {
            self.layoutData = dict["LayoutData"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OriginUrl") {
            self.originUrl = dict["OriginUrl"] as! String
        }
        if dict.keys.contains("Position") {
            self.position = dict["Position"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class DetailSubSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailSubSceneResponseBody?

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
            var model = DetailSubSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DropProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DropProjectResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: DropProjectResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DropProjectResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class DropProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DropProjectResponseBody?

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
            var model = DropProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DropSceneRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DropSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: DropSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DropSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class DropSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DropSceneResponseBody?

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
            var model = DropSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DropSubSceneRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DropSubSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: DropSubSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DropSubSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class DropSubSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DropSubSceneResponseBody?

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
            var model = DropSubSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnDataRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetConnDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class List : Tea.TeaModel {
        public var id: String?

        public var mapId: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mapId != nil {
                map["MapId"] = self.mapId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MapId") {
                self.mapId = dict["MapId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetConnDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var extend: String?

    public var list: [GetConnDataResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetConnDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Extend") {
            self.extend = dict["Extend"] as! String
        }
        if dict.keys.contains("List") {
            var tmp : [GetConnDataResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = GetConnDataResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
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
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetConnDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnDataResponseBody?

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
            var model = GetConnDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCopySceneTaskStatusRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetCopySceneTaskStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var progress: Int64?

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
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetCopySceneTaskStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetCopySceneTaskStatusResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetCopySceneTaskStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetCopySceneTaskStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetCopySceneTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCopySceneTaskStatusResponseBody?

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
            var model = GetCopySceneTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotspotConfigRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Bool?

    public var previewToken: String?

    public var type: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int64
        }
    }
}

public class GetHotspotConfigResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetHotspotConfigResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetHotspotConfigResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

public class GetHotspotConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotConfigResponseBody?

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
            var model = GetHotspotConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotspotSceneDataRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Bool?

    public var previewToken: String?

    public var type: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int64
        }
    }
}

public class GetHotspotSceneDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var modelToken: String?

        public var previewData: String?

        public var previewToken: String?

        public var sceneType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelToken != nil {
                map["ModelToken"] = self.modelToken!
            }
            if self.previewData != nil {
                map["PreviewData"] = self.previewData!
            }
            if self.previewToken != nil {
                map["PreviewToken"] = self.previewToken!
            }
            if self.sceneType != nil {
                map["SceneType"] = self.sceneType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModelToken") {
                self.modelToken = dict["ModelToken"] as! String
            }
            if dict.keys.contains("PreviewData") {
                self.previewData = dict["PreviewData"] as! String
            }
            if dict.keys.contains("PreviewToken") {
                self.previewToken = dict["PreviewToken"] as! String
            }
            if dict.keys.contains("SceneType") {
                self.sceneType = dict["SceneType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetHotspotSceneDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetHotspotSceneDataResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetHotspotSceneDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetHotspotSceneDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetHotspotSceneDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotSceneDataResponseBody?

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
            var model = GetHotspotSceneDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotspotTagRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Bool?

    public var previewToken: String?

    public var subSceneUuid: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        if self.subSceneUuid != nil {
            map["SubSceneUuid"] = self.subSceneUuid!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
        if dict.keys.contains("SubSceneUuid") {
            self.subSceneUuid = dict["SubSceneUuid"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetHotspotTagResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetHotspotTagResponseBody.AccessDeniedDetail?

    public var data: String?

    public var errMessage: String?

    public var objectString: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.objectString != nil {
            map["ObjectString"] = self.objectString!
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
            var model = GetHotspotTagResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ObjectString") {
            self.objectString = dict["ObjectString"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetHotspotTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotTagResponseBody?

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
            var model = GetHotspotTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLayoutDataRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class GetLayoutDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetLayoutDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetLayoutDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

public class GetLayoutDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLayoutDataResponseBody?

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
            var model = GetLayoutDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOriginLayoutDataRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class GetOriginLayoutDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetOriginLayoutDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetOriginLayoutDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

public class GetOriginLayoutDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOriginLayoutDataResponseBody?

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
            var model = GetOriginLayoutDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOssPolicyRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class GetOssPolicyResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetOssPolicyResponseBody.AccessDeniedDetail?

    public var accessId: String?

    public var callback: String?

    public var code: Int64?

    public var dir: String?

    public var expire: String?

    public var host: String?

    public var message: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dir != nil {
            map["Dir"] = self.dir!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetOssPolicyResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Dir") {
            self.dir = dict["Dir"] as! String
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOssPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssPolicyResponseBody?

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
            var model = GetOssPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPackSceneTaskStatusRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetPackSceneTaskStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var progress: Int64?

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
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetPackSceneTaskStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetPackSceneTaskStatusResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetPackSceneTaskStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetPackSceneTaskStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetPackSceneTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPackSceneTaskStatusResponseBody?

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
            var model = GetPackSceneTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRectifyImageRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class GetRectifyImageResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetRectifyImageResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetRectifyImageResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetRectifyImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRectifyImageResponseBody?

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
            var model = GetRectifyImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSceneBuildTaskStatusRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetSceneBuildTaskStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetSceneBuildTaskStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var errorCode: String?

    public var errorMsg: String?

    public var message: String?

    public var requestId: String?

    public var sceneId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetSceneBuildTaskStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetSceneBuildTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSceneBuildTaskStatusResponseBody?

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
            var model = GetSceneBuildTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetScenePackUrlRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetScenePackUrlResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var expire: String?

        public var url: String?

        public var valid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.valid != nil {
                map["Valid"] = self.valid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Valid") {
                self.valid = dict["Valid"] as! Bool
            }
        }
    }
    public var accessDeniedDetail: GetScenePackUrlResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetScenePackUrlResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetScenePackUrlResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetScenePackUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetScenePackUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScenePackUrlResponseBody?

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
            var model = GetScenePackUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetScenePreviewDataRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Bool?

    public var previewToken: String?

    public var showTag: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        if self.showTag != nil {
            map["ShowTag"] = self.showTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
        if dict.keys.contains("ShowTag") {
            self.showTag = dict["ShowTag"] as! Bool
        }
    }
}

public class GetScenePreviewDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class Model : Tea.TeaModel {
            public class PanoList : Tea.TeaModel {
                public class Position : Tea.TeaModel {
                    public var rotation: [Double]?

                    public var spot: [Double]?

                    public var viewpoint: [Double]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rotation != nil {
                            map["Rotation"] = self.rotation!
                        }
                        if self.spot != nil {
                            map["Spot"] = self.spot!
                        }
                        if self.viewpoint != nil {
                            map["Viewpoint"] = self.viewpoint!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Rotation") {
                            self.rotation = dict["Rotation"] as! [Double]
                        }
                        if dict.keys.contains("Spot") {
                            self.spot = dict["Spot"] as! [Double]
                        }
                        if dict.keys.contains("Viewpoint") {
                            self.viewpoint = dict["Viewpoint"] as! [Double]
                        }
                    }
                }
                public var curRoomPicList: [String]?

                public var enabled: Bool?

                public var floorIdx: String?

                public var id: String?

                public var mainImage: Bool?

                public var neighbours: [String]?

                public var position: GetScenePreviewDataResponseBody.Data.Model.PanoList.Position?

                public var rawName: String?

                public var resource: String?

                public var roomIdx: String?

                public var subSceneId: String?

                public var token: String?

                public var virtualId: String?

                public var virtualName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.position?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.curRoomPicList != nil {
                        map["CurRoomPicList"] = self.curRoomPicList!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.floorIdx != nil {
                        map["FloorIdx"] = self.floorIdx!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.mainImage != nil {
                        map["MainImage"] = self.mainImage!
                    }
                    if self.neighbours != nil {
                        map["Neighbours"] = self.neighbours!
                    }
                    if self.position != nil {
                        map["Position"] = self.position?.toMap()
                    }
                    if self.rawName != nil {
                        map["RawName"] = self.rawName!
                    }
                    if self.resource != nil {
                        map["Resource"] = self.resource!
                    }
                    if self.roomIdx != nil {
                        map["RoomIdx"] = self.roomIdx!
                    }
                    if self.subSceneId != nil {
                        map["SubSceneId"] = self.subSceneId!
                    }
                    if self.token != nil {
                        map["Token"] = self.token!
                    }
                    if self.virtualId != nil {
                        map["VirtualId"] = self.virtualId!
                    }
                    if self.virtualName != nil {
                        map["VirtualName"] = self.virtualName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CurRoomPicList") {
                        self.curRoomPicList = dict["CurRoomPicList"] as! [String]
                    }
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("FloorIdx") {
                        self.floorIdx = dict["FloorIdx"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("MainImage") {
                        self.mainImage = dict["MainImage"] as! Bool
                    }
                    if dict.keys.contains("Neighbours") {
                        self.neighbours = dict["Neighbours"] as! [String]
                    }
                    if dict.keys.contains("Position") {
                        var model = GetScenePreviewDataResponseBody.Data.Model.PanoList.Position()
                        model.fromMap(dict["Position"] as! [String: Any])
                        self.position = model
                    }
                    if dict.keys.contains("RawName") {
                        self.rawName = dict["RawName"] as! String
                    }
                    if dict.keys.contains("Resource") {
                        self.resource = dict["Resource"] as! String
                    }
                    if dict.keys.contains("RoomIdx") {
                        self.roomIdx = dict["RoomIdx"] as! String
                    }
                    if dict.keys.contains("SubSceneId") {
                        self.subSceneId = dict["SubSceneId"] as! String
                    }
                    if dict.keys.contains("Token") {
                        self.token = dict["Token"] as! String
                    }
                    if dict.keys.contains("VirtualId") {
                        self.virtualId = dict["VirtualId"] as! String
                    }
                    if dict.keys.contains("VirtualName") {
                        self.virtualName = dict["VirtualName"] as! String
                    }
                }
            }
            public var modelPath: String?

            public var panoList: [GetScenePreviewDataResponseBody.Data.Model.PanoList]?

            public var textureModelPath: String?

            public var texturePanoPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelPath != nil {
                    map["ModelPath"] = self.modelPath!
                }
                if self.panoList != nil {
                    var tmp : [Any] = []
                    for k in self.panoList! {
                        tmp.append(k.toMap())
                    }
                    map["PanoList"] = tmp
                }
                if self.textureModelPath != nil {
                    map["TextureModelPath"] = self.textureModelPath!
                }
                if self.texturePanoPath != nil {
                    map["TexturePanoPath"] = self.texturePanoPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModelPath") {
                    self.modelPath = dict["ModelPath"] as! String
                }
                if dict.keys.contains("PanoList") {
                    var tmp : [GetScenePreviewDataResponseBody.Data.Model.PanoList] = []
                    for v in dict["PanoList"] as! [Any] {
                        var model = GetScenePreviewDataResponseBody.Data.Model.PanoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.panoList = tmp
                }
                if dict.keys.contains("TextureModelPath") {
                    self.textureModelPath = dict["TextureModelPath"] as! String
                }
                if dict.keys.contains("TexturePanoPath") {
                    self.texturePanoPath = dict["TexturePanoPath"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public class ButtonConfig : Tea.TeaModel {
                    public var customText: String?

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
                        if self.customText != nil {
                            map["CustomText"] = self.customText!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CustomText") {
                            self.customText = dict["CustomText"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var backgroundColor: String?

                public var buttonConfig: GetScenePreviewDataResponseBody.Data.Tags.Config.ButtonConfig?

                public var content: String?

                public var formImgSize: [Int64]?

                public var formJumpType: Bool?

                public var formSelectImgType: String?

                public var images: [String]?

                public var isTagVisibleBy3d: Bool?

                public var link: String?

                public var panoId: String?

                public var position: [Double]?

                public var positionPanoCube: [Double]?

                public var relatedPanoIds: [String]?

                public var sceneId: Int64?

                public var title: String?

                public var video: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.buttonConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backgroundColor != nil {
                        map["BackgroundColor"] = self.backgroundColor!
                    }
                    if self.buttonConfig != nil {
                        map["ButtonConfig"] = self.buttonConfig?.toMap()
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.formImgSize != nil {
                        map["FormImgSize"] = self.formImgSize!
                    }
                    if self.formJumpType != nil {
                        map["FormJumpType"] = self.formJumpType!
                    }
                    if self.formSelectImgType != nil {
                        map["FormSelectImgType"] = self.formSelectImgType!
                    }
                    if self.images != nil {
                        map["Images"] = self.images!
                    }
                    if self.isTagVisibleBy3d != nil {
                        map["IsTagVisibleBy3d"] = self.isTagVisibleBy3d!
                    }
                    if self.link != nil {
                        map["Link"] = self.link!
                    }
                    if self.panoId != nil {
                        map["PanoId"] = self.panoId!
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    if self.positionPanoCube != nil {
                        map["PositionPanoCube"] = self.positionPanoCube!
                    }
                    if self.relatedPanoIds != nil {
                        map["RelatedPanoIds"] = self.relatedPanoIds!
                    }
                    if self.sceneId != nil {
                        map["SceneId"] = self.sceneId!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.video != nil {
                        map["Video"] = self.video!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BackgroundColor") {
                        self.backgroundColor = dict["BackgroundColor"] as! String
                    }
                    if dict.keys.contains("ButtonConfig") {
                        var model = GetScenePreviewDataResponseBody.Data.Tags.Config.ButtonConfig()
                        model.fromMap(dict["ButtonConfig"] as! [String: Any])
                        self.buttonConfig = model
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("FormImgSize") {
                        self.formImgSize = dict["FormImgSize"] as! [Int64]
                    }
                    if dict.keys.contains("FormJumpType") {
                        self.formJumpType = dict["FormJumpType"] as! Bool
                    }
                    if dict.keys.contains("FormSelectImgType") {
                        self.formSelectImgType = dict["FormSelectImgType"] as! String
                    }
                    if dict.keys.contains("Images") {
                        self.images = dict["Images"] as! [String]
                    }
                    if dict.keys.contains("IsTagVisibleBy3d") {
                        self.isTagVisibleBy3d = dict["IsTagVisibleBy3d"] as! Bool
                    }
                    if dict.keys.contains("Link") {
                        self.link = dict["Link"] as! String
                    }
                    if dict.keys.contains("PanoId") {
                        self.panoId = dict["PanoId"] as! String
                    }
                    if dict.keys.contains("Position") {
                        self.position = dict["Position"] as! [Double]
                    }
                    if dict.keys.contains("PositionPanoCube") {
                        self.positionPanoCube = dict["PositionPanoCube"] as! [Double]
                    }
                    if dict.keys.contains("RelatedPanoIds") {
                        self.relatedPanoIds = dict["RelatedPanoIds"] as! [String]
                    }
                    if dict.keys.contains("SceneId") {
                        self.sceneId = dict["SceneId"] as! Int64
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Video") {
                        self.video = dict["Video"] as! String
                    }
                }
            }
            public var config: GetScenePreviewDataResponseBody.Data.Tags.Config?

            public var id: String?

            public var position: [Double]?

            public var positionPanoCube: [Double]?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.config?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["Config"] = self.config?.toMap()
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.position != nil {
                    map["Position"] = self.position!
                }
                if self.positionPanoCube != nil {
                    map["PositionPanoCube"] = self.positionPanoCube!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Config") {
                    var model = GetScenePreviewDataResponseBody.Data.Tags.Config()
                    model.fromMap(dict["Config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Position") {
                    self.position = dict["Position"] as! [Double]
                }
                if dict.keys.contains("PositionPanoCube") {
                    self.positionPanoCube = dict["PositionPanoCube"] as! [Double]
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var model: GetScenePreviewDataResponseBody.Data.Model?

        public var tags: [GetScenePreviewDataResponseBody.Data.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.model?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model?.toMap()
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
            if dict.keys.contains("Model") {
                var model = GetScenePreviewDataResponseBody.Data.Model()
                model.fromMap(dict["Model"] as! [String: Any])
                self.model = model
            }
            if dict.keys.contains("Tags") {
                var tmp : [GetScenePreviewDataResponseBody.Data.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetScenePreviewDataResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var accessDeniedDetail: GetScenePreviewDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetScenePreviewDataResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetScenePreviewDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetScenePreviewDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetScenePreviewDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScenePreviewDataResponseBody?

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
            var model = GetScenePreviewDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetScenePreviewInfoRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Bool?

    public var modelToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.modelToken != nil {
            map["ModelToken"] = self.modelToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("ModelToken") {
            self.modelToken = dict["ModelToken"] as! String
        }
    }
}

public class GetScenePreviewInfoResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var modelPath: String?

        public var panoList: String?

        public var textureModelPath: String?

        public var texturePanoPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelPath != nil {
                map["ModelPath"] = self.modelPath!
            }
            if self.panoList != nil {
                map["PanoList"] = self.panoList!
            }
            if self.textureModelPath != nil {
                map["TextureModelPath"] = self.textureModelPath!
            }
            if self.texturePanoPath != nil {
                map["TexturePanoPath"] = self.texturePanoPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModelPath") {
                self.modelPath = dict["ModelPath"] as! String
            }
            if dict.keys.contains("PanoList") {
                self.panoList = dict["PanoList"] as! String
            }
            if dict.keys.contains("TextureModelPath") {
                self.textureModelPath = dict["TextureModelPath"] as! String
            }
            if dict.keys.contains("TexturePanoPath") {
                self.texturePanoPath = dict["TexturePanoPath"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetScenePreviewInfoResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetScenePreviewInfoResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetScenePreviewInfoResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetScenePreviewInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetScenePreviewInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScenePreviewInfoResponseBody?

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
            var model = GetScenePreviewInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetScenePreviewResourceRequest : Tea.TeaModel {
    public var draft: Bool?

    public var previewToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.draft != nil {
            map["Draft"] = self.draft!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Draft") {
            self.draft = dict["Draft"] as! Bool
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
    }
}

public class GetScenePreviewResourceResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class ResourceDirectory : Tea.TeaModel {
            public var hotspotTagConfig: String?

            public var modelConfig: String?

            public var orthomapConfig: String?

            public var rootPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hotspotTagConfig != nil {
                    map["HotspotTagConfig"] = self.hotspotTagConfig!
                }
                if self.modelConfig != nil {
                    map["ModelConfig"] = self.modelConfig!
                }
                if self.orthomapConfig != nil {
                    map["OrthomapConfig"] = self.orthomapConfig!
                }
                if self.rootPath != nil {
                    map["RootPath"] = self.rootPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HotspotTagConfig") {
                    self.hotspotTagConfig = dict["HotspotTagConfig"] as! String
                }
                if dict.keys.contains("ModelConfig") {
                    self.modelConfig = dict["ModelConfig"] as! String
                }
                if dict.keys.contains("OrthomapConfig") {
                    self.orthomapConfig = dict["OrthomapConfig"] as! String
                }
                if dict.keys.contains("RootPath") {
                    self.rootPath = dict["RootPath"] as! String
                }
            }
        }
        public var name: String?

        public var resourceDirectory: GetScenePreviewResourceResponseBody.Data.ResourceDirectory?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceDirectory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceDirectory != nil {
                map["ResourceDirectory"] = self.resourceDirectory?.toMap()
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceDirectory") {
                var model = GetScenePreviewResourceResponseBody.Data.ResourceDirectory()
                model.fromMap(dict["ResourceDirectory"] as! [String: Any])
                self.resourceDirectory = model
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetScenePreviewResourceResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetScenePreviewResourceResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetScenePreviewResourceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetScenePreviewResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetScenePreviewResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScenePreviewResourceResponseBody?

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
            var model = GetScenePreviewResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSingleConnDataRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class GetSingleConnDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class List : Tea.TeaModel {
        public var id: String?

        public var mapId: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mapId != nil {
                map["MapId"] = self.mapId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MapId") {
                self.mapId = dict["MapId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetSingleConnDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var list: [GetSingleConnDataResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetSingleConnDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("List") {
            var tmp : [GetSingleConnDataResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = GetSingleConnDataResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
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
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetSingleConnDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSingleConnDataResponseBody?

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
            var model = GetSingleConnDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSourcePackStatusRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetSourcePackStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var progress: Int64?

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
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetSourcePackStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: GetSourcePackStatusResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetSourcePackStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = GetSourcePackStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetSourcePackStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSourcePackStatusResponseBody?

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
            var model = GetSourcePackStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubSceneTaskStatusRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class GetSubSceneTaskStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class List : Tea.TeaModel {
        public var errorCode: String?

        public var errorMsg: String?

        public var id: String?

        public var sceneId: String?

        public var status: String?

        public var subSceneId: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subSceneId != nil {
                map["SubSceneId"] = self.subSceneId!
            }
            if self.type != nil {
                map["Type"] = self.type!
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
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubSceneId") {
                self.subSceneId = dict["SubSceneId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetSubSceneTaskStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var list: [GetSubSceneTaskStatusResponseBody.List]?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetSubSceneTaskStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("List") {
            var tmp : [GetSubSceneTaskStatusResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = GetSubSceneTaskStatusResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
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

public class GetSubSceneTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubSceneTaskStatusResponseBody?

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
            var model = GetSubSceneTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskStatusRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTaskStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetTaskStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var errorCode: String?

    public var errorMsg: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetTaskStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatusResponseBody?

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
            var model = GetTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWindowConfigRequest : Tea.TeaModel {
    public var previewToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
    }
}

public class GetWindowConfigResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetWindowConfigResponseBody.AccessDeniedDetail?

    public var data: [String: Any]?

    public var errMessage: String?

    public var objectString: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.objectString != nil {
            map["ObjectString"] = self.objectString!
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
            var model = GetWindowConfigResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ObjectString") {
            self.objectString = dict["ObjectString"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetWindowConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWindowConfigResponseBody?

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
            var model = GetWindowConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LabelBuildRequest : Tea.TeaModel {
    public var mode: String?

    public var modelStyle: String?

    public var optimizeWallWidth: String?

    public var planStyle: String?

    public var sceneId: String?

    public var wallHeight: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.modelStyle != nil {
            map["ModelStyle"] = self.modelStyle!
        }
        if self.optimizeWallWidth != nil {
            map["OptimizeWallWidth"] = self.optimizeWallWidth!
        }
        if self.planStyle != nil {
            map["PlanStyle"] = self.planStyle!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.wallHeight != nil {
            map["WallHeight"] = self.wallHeight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("ModelStyle") {
            self.modelStyle = dict["ModelStyle"] as! String
        }
        if dict.keys.contains("OptimizeWallWidth") {
            self.optimizeWallWidth = dict["OptimizeWallWidth"] as! String
        }
        if dict.keys.contains("PlanStyle") {
            self.planStyle = dict["PlanStyle"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("WallHeight") {
            self.wallHeight = dict["WallHeight"] as! Int64
        }
    }
}

public class LabelBuildResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: LabelBuildResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = LabelBuildResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class LabelBuildResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LabelBuildResponseBody?

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
            var model = LabelBuildResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LinkImageRequest : Tea.TeaModel {
    public var cameraHeight: Int32?

    public var fileName: String?

    public var platform: String?

    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraHeight != nil {
            map["CameraHeight"] = self.cameraHeight!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraHeight") {
            self.cameraHeight = dict["CameraHeight"] as! Int32
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class LinkImageResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: LinkImageResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var resourceId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = LinkImageResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class LinkImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LinkImageResponseBody?

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
            var model = LinkImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectRequest : Tea.TeaModel {
    public var name: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class List : Tea.TeaModel {
        public var businessId: Int64?

        public var businessName: String?

        public var createTime: Int64?

        public var id: String?

        public var modifiedTime: Int64?

        public var name: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessId") {
                self.businessId = dict["BusinessId"] as! Int64
            }
            if dict.keys.contains("BusinessName") {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var accessDeniedDetail: ListProjectResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var count: Int64?

    public var currentPage: Int64?

    public var hasNext: Bool?

    public var list: [ListProjectResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var totalPage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.hasNext != nil {
            map["HasNext"] = self.hasNext!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = ListProjectResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("HasNext") {
            self.hasNext = dict["HasNext"] as! Bool
        }
        if dict.keys.contains("List") {
            var tmp : [ListProjectResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListProjectResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
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
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class ListProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectResponseBody?

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
            var model = ListProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSceneRequest : Tea.TeaModel {
    public var name: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class List : Tea.TeaModel {
        public var coverUrl: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: String?

        public var name: String?

        public var previewToken: String?

        public var published: Bool?

        public var sourceNum: Int64?

        public var status: String?

        public var statusName: String?

        public var subSceneNum: Int64?

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
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
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
            if self.previewToken != nil {
                map["PreviewToken"] = self.previewToken!
            }
            if self.published != nil {
                map["Published"] = self.published!
            }
            if self.sourceNum != nil {
                map["SourceNum"] = self.sourceNum!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusName != nil {
                map["StatusName"] = self.statusName!
            }
            if self.subSceneNum != nil {
                map["SubSceneNum"] = self.subSceneNum!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoverUrl") {
                self.coverUrl = dict["CoverUrl"] as! String
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
            if dict.keys.contains("PreviewToken") {
                self.previewToken = dict["PreviewToken"] as! String
            }
            if dict.keys.contains("Published") {
                self.published = dict["Published"] as! Bool
            }
            if dict.keys.contains("SourceNum") {
                self.sourceNum = dict["SourceNum"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusName") {
                self.statusName = dict["StatusName"] as! String
            }
            if dict.keys.contains("SubSceneNum") {
                self.subSceneNum = dict["SubSceneNum"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accessDeniedDetail: ListSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var count: Int64?

    public var currentPage: Int64?

    public var hasNext: Bool?

    public var list: [ListSceneResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var totalPage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.hasNext != nil {
            map["HasNext"] = self.hasNext!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = ListSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("HasNext") {
            self.hasNext = dict["HasNext"] as! Bool
        }
        if dict.keys.contains("List") {
            var tmp : [ListSceneResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListSceneResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
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
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class ListSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSceneResponseBody?

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
            var model = ListSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSubSceneRequest : Tea.TeaModel {
    public var pageNum: Int64?

    public var pageSize: Int64?

    public var sceneId: String?

    public var showLayoutData: Bool?

    public var sortField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.showLayoutData != nil {
            map["ShowLayoutData"] = self.showLayoutData!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("ShowLayoutData") {
            self.showLayoutData = dict["ShowLayoutData"] as! Bool
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
    }
}

public class ListSubSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class List : Tea.TeaModel {
        public var baseImageUrl: String?

        public var coverUrl: String?

        public var cubemapPath: String?

        public var deleted: Bool?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: String?

        public var layoutData: String?

        public var name: String?

        public var originUrl: String?

        public var resourceId: String?

        public var resourceName: String?

        public var status: Int64?

        public var type: String?

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
            if self.baseImageUrl != nil {
                map["BaseImageUrl"] = self.baseImageUrl!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.cubemapPath != nil {
                map["CubemapPath"] = self.cubemapPath!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
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
            if self.layoutData != nil {
                map["LayoutData"] = self.layoutData!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.originUrl != nil {
                map["OriginUrl"] = self.originUrl!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaseImageUrl") {
                self.baseImageUrl = dict["BaseImageUrl"] as! String
            }
            if dict.keys.contains("CoverUrl") {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("CubemapPath") {
                self.cubemapPath = dict["CubemapPath"] as! String
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
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
            if dict.keys.contains("LayoutData") {
                self.layoutData = dict["LayoutData"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OriginUrl") {
                self.originUrl = dict["OriginUrl"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var accessDeniedDetail: ListSubSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var count: Int64?

    public var currentPage: Int64?

    public var hasNext: Bool?

    public var list: [ListSubSceneResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var totalPage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.hasNext != nil {
            map["HasNext"] = self.hasNext!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = ListSubSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("HasNext") {
            self.hasNext = dict["HasNext"] as! Bool
        }
        if dict.keys.contains("List") {
            var tmp : [ListSubSceneResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListSubSceneResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
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
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class ListSubSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubSceneResponseBody?

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
            var model = ListSubSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OptimizeRightAngleRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class OptimizeRightAngleResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: OptimizeRightAngleResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = OptimizeRightAngleResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class OptimizeRightAngleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OptimizeRightAngleResponseBody?

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
            var model = OptimizeRightAngleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PackSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class PackSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var accessDeniedDetail: PackSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: PackSceneResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = PackSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = PackSceneResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PackSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PackSceneResponseBody?

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
            var model = PackSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PackSourceRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class PackSourceResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var accessDeniedDetail: PackSourceResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var data: PackSourceResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = PackSourceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = PackSourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PackSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PackSourceResponseBody?

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
            var model = PackSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PredImageRequest : Tea.TeaModel {
    public var correctVertical: Bool?

    public var countDetectDoor: Int64?

    public var detectDoor: Bool?

    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.correctVertical != nil {
            map["CorrectVertical"] = self.correctVertical!
        }
        if self.countDetectDoor != nil {
            map["CountDetectDoor"] = self.countDetectDoor!
        }
        if self.detectDoor != nil {
            map["DetectDoor"] = self.detectDoor!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorrectVertical") {
            self.correctVertical = dict["CorrectVertical"] as! Bool
        }
        if dict.keys.contains("CountDetectDoor") {
            self.countDetectDoor = dict["CountDetectDoor"] as! Int64
        }
        if dict.keys.contains("DetectDoor") {
            self.detectDoor = dict["DetectDoor"] as! Bool
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class PredImageResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: PredImageResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = PredImageResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class PredImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PredImageResponseBody?

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
            var model = PredImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PredictionWallLineRequest : Tea.TeaModel {
    public var cameraHeight: Int64?

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
        if self.cameraHeight != nil {
            map["CameraHeight"] = self.cameraHeight!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraHeight") {
            self.cameraHeight = dict["CameraHeight"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class PredictionWallLineResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: PredictionWallLineResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var subSceneId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = PredictionWallLineResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class PredictionWallLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PredictionWallLineResponseBody?

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
            var model = PredictionWallLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishHotspotRequest : Tea.TeaModel {
    public var paramTag: String?

    public var subSceneUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramTag != nil {
            map["ParamTag"] = self.paramTag!
        }
        if self.subSceneUuid != nil {
            map["SubSceneUuid"] = self.subSceneUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamTag") {
            self.paramTag = dict["ParamTag"] as! String
        }
        if dict.keys.contains("SubSceneUuid") {
            self.subSceneUuid = dict["SubSceneUuid"] as! String
        }
    }
}

public class PublishHotspotResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: PublishHotspotResponseBody.AccessDeniedDetail?

    public var data: [String: Any]?

    public var errMessage: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
            var model = PublishHotspotResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PublishHotspotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishHotspotResponseBody?

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
            var model = PublishHotspotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishHotspotConfigRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class PublishHotspotConfigResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: PublishHotspotConfigResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = PublishHotspotConfigResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class PublishHotspotConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishHotspotConfigResponseBody?

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
            var model = PublishHotspotConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishSceneRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class PublishSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: PublishSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var previewUrl: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.previewUrl != nil {
            map["PreviewUrl"] = self.previewUrl!
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
            var model = PublishSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PreviewUrl") {
            self.previewUrl = dict["PreviewUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PublishSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishSceneResponseBody?

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
            var model = PublishSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishStatusRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class PublishStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: PublishStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public var syncStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.syncStatus != nil {
            map["SyncStatus"] = self.syncStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = PublishStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("SyncStatus") {
            self.syncStatus = dict["SyncStatus"] as! String
        }
    }
}

public class PublishStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishStatusResponseBody?

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
            var model = PublishStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoveryOriginImageRequest : Tea.TeaModel {
    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class RecoveryOriginImageResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: RecoveryOriginImageResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = RecoveryOriginImageResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class RecoveryOriginImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryOriginImageResponseBody?

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
            var model = RecoveryOriginImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RectVerticalRequest : Tea.TeaModel {
    public var countDetectDoor: Int32?

    public var detectDoor: Bool?

    public var subSceneId: String?

    public var verticalRect: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.countDetectDoor != nil {
            map["CountDetectDoor"] = self.countDetectDoor!
        }
        if self.detectDoor != nil {
            map["DetectDoor"] = self.detectDoor!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        if self.verticalRect != nil {
            map["VerticalRect"] = self.verticalRect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountDetectDoor") {
            self.countDetectDoor = dict["CountDetectDoor"] as! Int32
        }
        if dict.keys.contains("DetectDoor") {
            self.detectDoor = dict["DetectDoor"] as! Bool
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
        if dict.keys.contains("VerticalRect") {
            self.verticalRect = dict["VerticalRect"] as! String
        }
    }
}

public class RectVerticalResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: RectVerticalResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = RectVerticalResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class RectVerticalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RectVerticalResponseBody?

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
            var model = RectVerticalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RectifyImageRequest : Tea.TeaModel {
    public var cameraHeight: Int64?

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
        if self.cameraHeight != nil {
            map["CameraHeight"] = self.cameraHeight!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraHeight") {
            self.cameraHeight = dict["CameraHeight"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class RectifyImageResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: RectifyImageResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var subSceneId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = RectifyImageResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class RectifyImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RectifyImageResponseBody?

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
            var model = RectifyImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RollbackSubSceneRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class RollbackSubSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: RollbackSubSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = RollbackSubSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class RollbackSubSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackSubSceneResponseBody?

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
            var model = RollbackSubSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveHotspotConfigRequest : Tea.TeaModel {
    public var paramTag: String?

    public var previewToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramTag != nil {
            map["ParamTag"] = self.paramTag!
        }
        if self.previewToken != nil {
            map["PreviewToken"] = self.previewToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamTag") {
            self.paramTag = dict["ParamTag"] as! String
        }
        if dict.keys.contains("PreviewToken") {
            self.previewToken = dict["PreviewToken"] as! String
        }
    }
}

public class SaveHotspotConfigResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: SaveHotspotConfigResponseBody.AccessDeniedDetail?

    public var errMessage: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
            var model = SaveHotspotConfigResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveHotspotConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveHotspotConfigResponseBody?

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
            var model = SaveHotspotConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveHotspotTagRequest : Tea.TeaModel {
    public var paramTag: String?

    public var subSceneUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramTag != nil {
            map["ParamTag"] = self.paramTag!
        }
        if self.subSceneUuid != nil {
            map["SubSceneUuid"] = self.subSceneUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamTag") {
            self.paramTag = dict["ParamTag"] as! String
        }
        if dict.keys.contains("SubSceneUuid") {
            self.subSceneUuid = dict["SubSceneUuid"] as! String
        }
    }
}

public class SaveHotspotTagResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: SaveHotspotTagResponseBody.AccessDeniedDetail?

    public var errMessage: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
            var model = SaveHotspotTagResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveHotspotTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveHotspotTagResponseBody?

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
            var model = SaveHotspotTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveHotspotTagListRequest : Tea.TeaModel {
    public var hotspotListJson: String?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotspotListJson != nil {
            map["HotspotListJson"] = self.hotspotListJson!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HotspotListJson") {
            self.hotspotListJson = dict["HotspotListJson"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class SaveHotspotTagListResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: SaveHotspotTagListResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = SaveHotspotTagListResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class SaveHotspotTagListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveHotspotTagListResponseBody?

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
            var model = SaveHotspotTagListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveMinimapRequest : Tea.TeaModel {
    public var data: String?

    public var sceneId: String?

    public override init() {
        super.init()
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class SaveMinimapResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: SaveMinimapResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = SaveMinimapResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class SaveMinimapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveMinimapResponseBody?

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
            var model = SaveMinimapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveModelConfigRequest : Tea.TeaModel {
    public var data: String?

    public var sceneId: String?

    public override init() {
        super.init()
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class SaveModelConfigResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: SaveModelConfigResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = SaveModelConfigResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class SaveModelConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveModelConfigResponseBody?

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
            var model = SaveModelConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScenePublishRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class ScenePublishResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: ScenePublishResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var previewUrl: String?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.previewUrl != nil {
            map["PreviewUrl"] = self.previewUrl!
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
            var model = ScenePublishResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PreviewUrl") {
            self.previewUrl = dict["PreviewUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ScenePublishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScenePublishResponseBody?

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
            var model = ScenePublishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TempPreviewRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class TempPreviewResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: TempPreviewResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var previewUrl: String?

    public var requestId: String?

    public var sceneId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.previewUrl != nil {
            map["PreviewUrl"] = self.previewUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = TempPreviewResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PreviewUrl") {
            self.previewUrl = dict["PreviewUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TempPreviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TempPreviewResponseBody?

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
            var model = TempPreviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TempPreviewStatusRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class TempPreviewStatusResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: TempPreviewStatusResponseBody.AccessDeniedDetail?

    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = TempPreviewStatusResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TempPreviewStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TempPreviewStatusResponseBody?

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
            var model = TempPreviewStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConnDataRequest : Tea.TeaModel {
    public var connData: String?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connData != nil {
            map["ConnData"] = self.connData!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnData") {
            self.connData = dict["ConnData"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class UpdateConnDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: UpdateConnDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = UpdateConnDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class UpdateConnDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConnDataResponseBody?

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
            var model = UpdateConnDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLayoutDataRequest : Tea.TeaModel {
    public var layoutData: String?

    public var subSceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.layoutData != nil {
            map["LayoutData"] = self.layoutData!
        }
        if self.subSceneId != nil {
            map["SubSceneId"] = self.subSceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LayoutData") {
            self.layoutData = dict["LayoutData"] as! String
        }
        if dict.keys.contains("SubSceneId") {
            self.subSceneId = dict["SubSceneId"] as! String
        }
    }
}

public class UpdateLayoutDataResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: UpdateLayoutDataResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = UpdateLayoutDataResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class UpdateLayoutDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLayoutDataResponseBody?

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
            var model = UpdateLayoutDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var businessId: String?

    public var id: String?

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
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessId") {
            self.businessId = dict["BusinessId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: UpdateProjectResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = UpdateProjectResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSceneRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
    }
}

public class UpdateSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: UpdateSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = UpdateSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class UpdateSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSceneResponseBody?

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
            var model = UpdateSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSubSceneRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var viewPoint: [Double]?

    public override init() {
        super.init()
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
        if self.viewPoint != nil {
            map["ViewPoint"] = self.viewPoint!
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
        if dict.keys.contains("ViewPoint") {
            self.viewPoint = dict["ViewPoint"] as! [Double]
        }
    }
}

public class UpdateSubSceneShrinkRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var viewPointShrink: String?

    public override init() {
        super.init()
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
        if self.viewPointShrink != nil {
            map["ViewPoint"] = self.viewPointShrink!
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
        if dict.keys.contains("ViewPoint") {
            self.viewPointShrink = dict["ViewPoint"] as! String
        }
    }
}

public class UpdateSubSceneResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: UpdateSubSceneResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = UpdateSubSceneResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class UpdateSubSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubSceneResponseBody?

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
            var model = UpdateSubSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSubSceneSeqRequest : Tea.TeaModel {
    public var sceneId: String?

    public var sortSubSceneIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sortSubSceneIds != nil {
            map["SortSubSceneIds"] = self.sortSubSceneIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SortSubSceneIds") {
            self.sortSubSceneIds = dict["SortSubSceneIds"] as! [String]
        }
    }
}

public class UpdateSubSceneSeqShrinkRequest : Tea.TeaModel {
    public var sceneId: String?

    public var sortSubSceneIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sortSubSceneIdsShrink != nil {
            map["SortSubSceneIds"] = self.sortSubSceneIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SortSubSceneIds") {
            self.sortSubSceneIdsShrink = dict["SortSubSceneIds"] as! String
        }
    }
}

public class UpdateSubSceneSeqResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: UpdateSubSceneSeqResponseBody.AccessDeniedDetail?

    public var code: Int64?

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
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AccessDeniedDetail") {
            var model = UpdateSubSceneSeqResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
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

public class UpdateSubSceneSeqResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubSceneSeqResponseBody?

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
            var model = UpdateSubSceneSeqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
