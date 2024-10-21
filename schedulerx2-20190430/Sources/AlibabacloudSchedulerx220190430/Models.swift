import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchDeleteJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobIdList") {
            self.jobIdList = dict["JobIdList"] as! [Int64]
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchDeleteJobsResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: BatchDeleteJobsResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = BatchDeleteJobsResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class BatchDeleteJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteJobsResponseBody?

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
            var model = BatchDeleteJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteRouteStrategyRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobIdList") {
            self.jobIdList = dict["JobIdList"] as! [Int64]
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchDeleteRouteStrategyResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: BatchDeleteRouteStrategyResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = BatchDeleteRouteStrategyResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class BatchDeleteRouteStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteRouteStrategyResponseBody?

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
            var model = BatchDeleteRouteStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDisableJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobIdList") {
            self.jobIdList = dict["JobIdList"] as! [Int64]
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchDisableJobsResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: BatchDisableJobsResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = BatchDisableJobsResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class BatchDisableJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDisableJobsResponseBody?

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
            var model = BatchDisableJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchEnableJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobIdList") {
            self.jobIdList = dict["JobIdList"] as! [Int64]
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchEnableJobsResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: BatchEnableJobsResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = BatchEnableJobsResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class BatchEnableJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchEnableJobsResponseBody?

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
            var model = BatchEnableJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppGroupRequest : Tea.TeaModel {
    public var appKey: String?

    public var appName: String?

    public var appType: Int32?

    public var appVersion: Int32?

    public var description_: String?

    public var enableLog: Bool?

    public var groupId: String?

    public var maxJobs: Int32?

    public var monitorConfigJson: String?

    public var monitorContactsJson: String?

    public var namespace: String?

    public var namespaceName: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var scheduleBusyWorkers: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableLog != nil {
            map["EnableLog"] = self.enableLog!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxJobs != nil {
            map["MaxJobs"] = self.maxJobs!
        }
        if self.monitorConfigJson != nil {
            map["MonitorConfigJson"] = self.monitorConfigJson!
        }
        if self.monitorContactsJson != nil {
            map["MonitorContactsJson"] = self.monitorContactsJson!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scheduleBusyWorkers != nil {
            map["ScheduleBusyWorkers"] = self.scheduleBusyWorkers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! Int32
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableLog") {
            self.enableLog = dict["EnableLog"] as! Bool
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxJobs") {
            self.maxJobs = dict["MaxJobs"] as! Int32
        }
        if dict.keys.contains("MonitorConfigJson") {
            self.monitorConfigJson = dict["MonitorConfigJson"] as! String
        }
        if dict.keys.contains("MonitorContactsJson") {
            self.monitorContactsJson = dict["MonitorContactsJson"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScheduleBusyWorkers") {
            self.scheduleBusyWorkers = dict["ScheduleBusyWorkers"] as! Bool
        }
    }
}

public class CreateAppGroupResponseBody : Tea.TeaModel {
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
        public var appGroupId: Int64?

        public var appKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appGroupId != nil {
                map["AppGroupId"] = self.appGroupId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppGroupId") {
                self.appGroupId = dict["AppGroupId"] as! Int64
            }
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
        }
    }
    public var accessDeniedDetail: CreateAppGroupResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: CreateAppGroupResponseBody.Data?

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
            var model = CreateAppGroupResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateAppGroupResponseBody.Data()
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

public class CreateAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppGroupResponseBody?

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
            var model = CreateAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class ContactInfo : Tea.TeaModel {
        public var ding: String?

        public var userMail: String?

        public var userName: String?

        public var userPhone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ding != nil {
                map["Ding"] = self.ding!
            }
            if self.userMail != nil {
                map["UserMail"] = self.userMail!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userPhone != nil {
                map["UserPhone"] = self.userPhone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ding") {
                self.ding = dict["Ding"] as! String
            }
            if dict.keys.contains("UserMail") {
                self.userMail = dict["UserMail"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserPhone") {
                self.userPhone = dict["UserPhone"] as! String
            }
        }
    }
    public var attemptInterval: Int32?

    public var calendar: String?

    public var className: String?

    public var consumerSize: Int32?

    public var contactInfo: [CreateJobRequest.ContactInfo]?

    public var content: String?

    public var dataOffset: Int32?

    public var description_: String?

    public var dispatcherSize: Int32?

    public var executeMode: String?

    public var failEnable: Bool?

    public var failTimes: Int32?

    public var groupId: String?

    public var jobType: String?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var missWorkerEnable: Bool?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var pageSize: Int32?

    public var parameters: String?

    public var queueSize: Int32?

    public var regionId: String?

    public var sendChannel: String?

    public var status: Int32?

    public var successNoticeEnable: Bool?

    public var taskAttemptInterval: Int32?

    public var taskMaxAttempt: Int32?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timeout: Int64?

    public var timeoutEnable: Bool?

    public var timeoutKillEnable: Bool?

    public var timezone: String?

    public var XAttrs: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.consumerSize != nil {
            map["ConsumerSize"] = self.consumerSize!
        }
        if self.contactInfo != nil {
            var tmp : [Any] = []
            for k in self.contactInfo! {
                tmp.append(k.toMap())
            }
            map["ContactInfo"] = tmp
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.dataOffset != nil {
            map["DataOffset"] = self.dataOffset!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dispatcherSize != nil {
            map["DispatcherSize"] = self.dispatcherSize!
        }
        if self.executeMode != nil {
            map["ExecuteMode"] = self.executeMode!
        }
        if self.failEnable != nil {
            map["FailEnable"] = self.failEnable!
        }
        if self.failTimes != nil {
            map["FailTimes"] = self.failTimes!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.maxAttempt != nil {
            map["MaxAttempt"] = self.maxAttempt!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.missWorkerEnable != nil {
            map["MissWorkerEnable"] = self.missWorkerEnable!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.queueSize != nil {
            map["QueueSize"] = self.queueSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sendChannel != nil {
            map["SendChannel"] = self.sendChannel!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.successNoticeEnable != nil {
            map["SuccessNoticeEnable"] = self.successNoticeEnable!
        }
        if self.taskAttemptInterval != nil {
            map["TaskAttemptInterval"] = self.taskAttemptInterval!
        }
        if self.taskMaxAttempt != nil {
            map["TaskMaxAttempt"] = self.taskMaxAttempt!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.timeoutEnable != nil {
            map["TimeoutEnable"] = self.timeoutEnable!
        }
        if self.timeoutKillEnable != nil {
            map["TimeoutKillEnable"] = self.timeoutKillEnable!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.XAttrs != nil {
            map["XAttrs"] = self.XAttrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttemptInterval") {
            self.attemptInterval = dict["AttemptInterval"] as! Int32
        }
        if dict.keys.contains("Calendar") {
            self.calendar = dict["Calendar"] as! String
        }
        if dict.keys.contains("ClassName") {
            self.className = dict["ClassName"] as! String
        }
        if dict.keys.contains("ConsumerSize") {
            self.consumerSize = dict["ConsumerSize"] as! Int32
        }
        if dict.keys.contains("ContactInfo") {
            var tmp : [CreateJobRequest.ContactInfo] = []
            for v in dict["ContactInfo"] as! [Any] {
                var model = CreateJobRequest.ContactInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contactInfo = tmp
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DataOffset") {
            self.dataOffset = dict["DataOffset"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DispatcherSize") {
            self.dispatcherSize = dict["DispatcherSize"] as! Int32
        }
        if dict.keys.contains("ExecuteMode") {
            self.executeMode = dict["ExecuteMode"] as! String
        }
        if dict.keys.contains("FailEnable") {
            self.failEnable = dict["FailEnable"] as! Bool
        }
        if dict.keys.contains("FailTimes") {
            self.failTimes = dict["FailTimes"] as! Int32
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("MaxAttempt") {
            self.maxAttempt = dict["MaxAttempt"] as! Int32
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int32
        }
        if dict.keys.contains("MissWorkerEnable") {
            self.missWorkerEnable = dict["MissWorkerEnable"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("QueueSize") {
            self.queueSize = dict["QueueSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SendChannel") {
            self.sendChannel = dict["SendChannel"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SuccessNoticeEnable") {
            self.successNoticeEnable = dict["SuccessNoticeEnable"] as! Bool
        }
        if dict.keys.contains("TaskAttemptInterval") {
            self.taskAttemptInterval = dict["TaskAttemptInterval"] as! Int32
        }
        if dict.keys.contains("TaskMaxAttempt") {
            self.taskMaxAttempt = dict["TaskMaxAttempt"] as! Int32
        }
        if dict.keys.contains("TimeExpression") {
            self.timeExpression = dict["TimeExpression"] as! String
        }
        if dict.keys.contains("TimeType") {
            self.timeType = dict["TimeType"] as! Int32
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int64
        }
        if dict.keys.contains("TimeoutEnable") {
            self.timeoutEnable = dict["TimeoutEnable"] as! Bool
        }
        if dict.keys.contains("TimeoutKillEnable") {
            self.timeoutKillEnable = dict["TimeoutKillEnable"] as! Bool
        }
        if dict.keys.contains("Timezone") {
            self.timezone = dict["Timezone"] as! String
        }
        if dict.keys.contains("XAttrs") {
            self.XAttrs = dict["XAttrs"] as! String
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
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
        public var jobId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: CreateJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: CreateJobResponseBody.Data?

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
            var model = CreateJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateJobResponseBody.Data()
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

public class CreateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobResponseBody?

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
            var model = CreateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
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
        public var namespaceUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespaceUid != nil {
                map["NamespaceUid"] = self.namespaceUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NamespaceUid") {
                self.namespaceUid = dict["NamespaceUid"] as! String
            }
        }
    }
    public var accessDeniedDetail: CreateNamespaceResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: CreateNamespaceResponseBody.Data?

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
            var model = CreateNamespaceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateNamespaceResponseBody.Data()
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

public class CreateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNamespaceResponseBody?

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
            var model = CreateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRouteStrategyRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var name: String?

    public var namespace: String?

    public var regionId: String?

    public var status: Int32?

    public var strategyContent: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("StrategyContent") {
            self.strategyContent = dict["StrategyContent"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class CreateRouteStrategyResponseBody : Tea.TeaModel {
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

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
        }
    }
    public var accessDeniedDetail: CreateRouteStrategyResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: CreateRouteStrategyResponseBody.Data?

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
            var model = CreateRouteStrategyResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateRouteStrategyResponseBody.Data()
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

public class CreateRouteStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRouteStrategyResponseBody?

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
            var model = CreateRouteStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkflowRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var maxConcurrency: Int32?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timezone: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TimeExpression") {
            self.timeExpression = dict["TimeExpression"] as! String
        }
        if dict.keys.contains("TimeType") {
            self.timeType = dict["TimeType"] as! Int32
        }
        if dict.keys.contains("Timezone") {
            self.timezone = dict["Timezone"] as! String
        }
    }
}

public class CreateWorkflowResponseBody : Tea.TeaModel {
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
        public var workflowId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workflowId != nil {
                map["WorkflowId"] = self.workflowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WorkflowId") {
                self.workflowId = dict["WorkflowId"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: CreateWorkflowResponseBody.AccessDeniedDetail?

    public var code: String?

    public var data: CreateWorkflowResponseBody.Data?

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
            var model = CreateWorkflowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateWorkflowResponseBody.Data()
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

public class CreateWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkflowResponseBody?

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
            var model = CreateWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppGroupRequest : Tea.TeaModel {
    public var deleteJobs: Bool?

    public var groupId: String?

    public var namespace: String?

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
        if self.deleteJobs != nil {
            map["DeleteJobs"] = self.deleteJobs!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteJobs") {
            self.deleteJobs = dict["DeleteJobs"] as! Bool
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAppGroupResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DeleteAppGroupResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DeleteAppGroupResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DeleteAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppGroupResponseBody?

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
            var model = DeleteAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteJobRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteJobResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DeleteJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DeleteJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DeleteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobResponseBody?

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
            var model = DeleteJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRouteStrategyRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteRouteStrategyResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DeleteRouteStrategyResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DeleteRouteStrategyResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DeleteRouteStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRouteStrategyResponseBody?

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
            var model = DeleteRouteStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class DeleteWorkflowResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DeleteWorkflowResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DeleteWorkflowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DeleteWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkflowResponseBody?

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
            var model = DeleteWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
    public var code: Int32?

    public var message: String?

    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Regions") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class DesignateWorkersRequest : Tea.TeaModel {
    public var designateType: Int32?

    public var groupId: String?

    public var jobId: Int64?

    public var labels: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var transferable: Bool?

    public var workers: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.transferable != nil {
            map["Transferable"] = self.transferable!
        }
        if self.workers != nil {
            map["Workers"] = self.workers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesignateType") {
            self.designateType = dict["DesignateType"] as! Int32
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Transferable") {
            self.transferable = dict["Transferable"] as! Bool
        }
        if dict.keys.contains("Workers") {
            self.workers = dict["Workers"] as! String
        }
    }
}

public class DesignateWorkersResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DesignateWorkersResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DesignateWorkersResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DesignateWorkersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DesignateWorkersResponseBody?

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
            var model = DesignateWorkersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableJobRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisableJobResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DisableJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DisableJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DisableJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableJobResponseBody?

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
            var model = DisableJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class DisableWorkflowResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: DisableWorkflowResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = DisableWorkflowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class DisableWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableWorkflowResponseBody?

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
            var model = DisableWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableJobRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class EnableJobResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: EnableJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = EnableJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class EnableJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableJobResponseBody?

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
            var model = EnableJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class EnableWorkflowResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: EnableWorkflowResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = EnableWorkflowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class EnableWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWorkflowResponseBody?

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
            var model = EnableWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteJobRequest : Tea.TeaModel {
    public var checkJobStatus: Bool?

    public var designateType: Int32?

    public var groupId: String?

    public var instanceParameters: String?

    public var jobId: Int64?

    public var label: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var worker: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkJobStatus != nil {
            map["CheckJobStatus"] = self.checkJobStatus!
        }
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceParameters != nil {
            map["InstanceParameters"] = self.instanceParameters!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.worker != nil {
            map["Worker"] = self.worker!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckJobStatus") {
            self.checkJobStatus = dict["CheckJobStatus"] as! Bool
        }
        if dict.keys.contains("DesignateType") {
            self.designateType = dict["DesignateType"] as! Int32
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceParameters") {
            self.instanceParameters = dict["InstanceParameters"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Worker") {
            self.worker = dict["Worker"] as! String
        }
    }
}

public class ExecuteJobResponseBody : Tea.TeaModel {
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
        public var jobInstanceId: Int64?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobInstanceId") {
                self.jobInstanceId = dict["JobInstanceId"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: ExecuteJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ExecuteJobResponseBody.Data?

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
            var model = ExecuteJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ExecuteJobResponseBody.Data()
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

public class ExecuteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteJobResponseBody?

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
            var model = ExecuteJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceParameters: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceParameters != nil {
            map["InstanceParameters"] = self.instanceParameters!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceParameters") {
            self.instanceParameters = dict["InstanceParameters"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class ExecuteWorkflowResponseBody : Tea.TeaModel {
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
        public var wfInstanceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wfInstanceId != nil {
                map["WfInstanceId"] = self.wfInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WfInstanceId") {
                self.wfInstanceId = dict["WfInstanceId"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: ExecuteWorkflowResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ExecuteWorkflowResponseBody.Data?

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
            var model = ExecuteWorkflowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ExecuteWorkflowResponseBody.Data()
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

public class ExecuteWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteWorkflowResponseBody?

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
            var model = ExecuteWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetAppGroupResponseBody : Tea.TeaModel {
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
        public var appKey: String?

        public var appName: String?

        public var appVersion: String?

        public var curJobs: Int32?

        public var description_: String?

        public var groupId: String?

        public var maxJobs: Int32?

        public var monitorConfigJson: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.curJobs != nil {
                map["CurJobs"] = self.curJobs!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.maxJobs != nil {
                map["MaxJobs"] = self.maxJobs!
            }
            if self.monitorConfigJson != nil {
                map["MonitorConfigJson"] = self.monitorConfigJson!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CurJobs") {
                self.curJobs = dict["CurJobs"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("MaxJobs") {
                self.maxJobs = dict["MaxJobs"] as! Int32
            }
            if dict.keys.contains("MonitorConfigJson") {
                self.monitorConfigJson = dict["MonitorConfigJson"] as! String
            }
        }
    }
    public var accessDeniedDetail: GetAppGroupResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetAppGroupResponseBody.Data?

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
            var model = GetAppGroupResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetAppGroupResponseBody.Data()
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

public class GetAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppGroupResponseBody?

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
            var model = GetAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobInfoRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobName: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetJobInfoResponseBody : Tea.TeaModel {
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
        public class JobConfigInfo : Tea.TeaModel {
            public class JobMonitorInfo : Tea.TeaModel {
                public class ContactInfo : Tea.TeaModel {
                    public var ding: String?

                    public var userMail: String?

                    public var userName: String?

                    public var userPhone: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ding != nil {
                            map["Ding"] = self.ding!
                        }
                        if self.userMail != nil {
                            map["UserMail"] = self.userMail!
                        }
                        if self.userName != nil {
                            map["UserName"] = self.userName!
                        }
                        if self.userPhone != nil {
                            map["UserPhone"] = self.userPhone!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Ding") {
                            self.ding = dict["Ding"] as! String
                        }
                        if dict.keys.contains("UserMail") {
                            self.userMail = dict["UserMail"] as! String
                        }
                        if dict.keys.contains("UserName") {
                            self.userName = dict["UserName"] as! String
                        }
                        if dict.keys.contains("UserPhone") {
                            self.userPhone = dict["UserPhone"] as! String
                        }
                    }
                }
                public class MonitorConfig : Tea.TeaModel {
                    public var failEnable: Bool?

                    public var missWorkerEnable: Bool?

                    public var sendChannel: String?

                    public var timeout: Int64?

                    public var timeoutEnable: Bool?

                    public var timeoutKillEnable: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failEnable != nil {
                            map["FailEnable"] = self.failEnable!
                        }
                        if self.missWorkerEnable != nil {
                            map["MissWorkerEnable"] = self.missWorkerEnable!
                        }
                        if self.sendChannel != nil {
                            map["SendChannel"] = self.sendChannel!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        if self.timeoutEnable != nil {
                            map["TimeoutEnable"] = self.timeoutEnable!
                        }
                        if self.timeoutKillEnable != nil {
                            map["TimeoutKillEnable"] = self.timeoutKillEnable!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FailEnable") {
                            self.failEnable = dict["FailEnable"] as! Bool
                        }
                        if dict.keys.contains("MissWorkerEnable") {
                            self.missWorkerEnable = dict["MissWorkerEnable"] as! Bool
                        }
                        if dict.keys.contains("SendChannel") {
                            self.sendChannel = dict["SendChannel"] as! String
                        }
                        if dict.keys.contains("Timeout") {
                            self.timeout = dict["Timeout"] as! Int64
                        }
                        if dict.keys.contains("TimeoutEnable") {
                            self.timeoutEnable = dict["TimeoutEnable"] as! Bool
                        }
                        if dict.keys.contains("TimeoutKillEnable") {
                            self.timeoutKillEnable = dict["TimeoutKillEnable"] as! Bool
                        }
                    }
                }
                public var contactInfo: [GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.ContactInfo]?

                public var monitorConfig: GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.MonitorConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.monitorConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contactInfo != nil {
                        var tmp : [Any] = []
                        for k in self.contactInfo! {
                            tmp.append(k.toMap())
                        }
                        map["ContactInfo"] = tmp
                    }
                    if self.monitorConfig != nil {
                        map["MonitorConfig"] = self.monitorConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ContactInfo") {
                        var tmp : [GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.ContactInfo] = []
                        for v in dict["ContactInfo"] as! [Any] {
                            var model = GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.ContactInfo()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.contactInfo = tmp
                    }
                    if dict.keys.contains("MonitorConfig") {
                        var model = GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.MonitorConfig()
                        model.fromMap(dict["MonitorConfig"] as! [String: Any])
                        self.monitorConfig = model
                    }
                }
            }
            public class MapTaskXAttrs : Tea.TeaModel {
                public var consumerSize: Int32?

                public var dispatcherSize: Int32?

                public var pageSize: Int32?

                public var queueSize: Int32?

                public var taskAttemptInterval: Int32?

                public var taskMaxAttempt: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.consumerSize != nil {
                        map["ConsumerSize"] = self.consumerSize!
                    }
                    if self.dispatcherSize != nil {
                        map["DispatcherSize"] = self.dispatcherSize!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.queueSize != nil {
                        map["QueueSize"] = self.queueSize!
                    }
                    if self.taskAttemptInterval != nil {
                        map["TaskAttemptInterval"] = self.taskAttemptInterval!
                    }
                    if self.taskMaxAttempt != nil {
                        map["TaskMaxAttempt"] = self.taskMaxAttempt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConsumerSize") {
                        self.consumerSize = dict["ConsumerSize"] as! Int32
                    }
                    if dict.keys.contains("DispatcherSize") {
                        self.dispatcherSize = dict["DispatcherSize"] as! Int32
                    }
                    if dict.keys.contains("PageSize") {
                        self.pageSize = dict["PageSize"] as! Int32
                    }
                    if dict.keys.contains("QueueSize") {
                        self.queueSize = dict["QueueSize"] as! Int32
                    }
                    if dict.keys.contains("TaskAttemptInterval") {
                        self.taskAttemptInterval = dict["TaskAttemptInterval"] as! Int32
                    }
                    if dict.keys.contains("TaskMaxAttempt") {
                        self.taskMaxAttempt = dict["TaskMaxAttempt"] as! Int32
                    }
                }
            }
            public class TimeConfig : Tea.TeaModel {
                public var calendar: String?

                public var dataOffset: Int32?

                public var timeExpression: String?

                public var timeType: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.calendar != nil {
                        map["Calendar"] = self.calendar!
                    }
                    if self.dataOffset != nil {
                        map["DataOffset"] = self.dataOffset!
                    }
                    if self.timeExpression != nil {
                        map["TimeExpression"] = self.timeExpression!
                    }
                    if self.timeType != nil {
                        map["TimeType"] = self.timeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Calendar") {
                        self.calendar = dict["Calendar"] as! String
                    }
                    if dict.keys.contains("DataOffset") {
                        self.dataOffset = dict["DataOffset"] as! Int32
                    }
                    if dict.keys.contains("TimeExpression") {
                        self.timeExpression = dict["TimeExpression"] as! String
                    }
                    if dict.keys.contains("TimeType") {
                        self.timeType = dict["TimeType"] as! Int32
                    }
                }
            }
            public var attemptInterval: Int32?

            public var className: String?

            public var content: String?

            public var description_: String?

            public var executeMode: String?

            public var jarUrl: String?

            public var jobId: Int64?

            public var jobMonitorInfo: GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo?

            public var jobType: String?

            public var mapTaskXAttrs: GetJobInfoResponseBody.Data.JobConfigInfo.MapTaskXAttrs?

            public var maxAttempt: Int32?

            public var maxConcurrency: String?

            public var name: String?

            public var parameters: String?

            public var status: Int32?

            public var timeConfig: GetJobInfoResponseBody.Data.JobConfigInfo.TimeConfig?

            public var XAttrs: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.jobMonitorInfo?.validate()
                try self.mapTaskXAttrs?.validate()
                try self.timeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attemptInterval != nil {
                    map["AttemptInterval"] = self.attemptInterval!
                }
                if self.className != nil {
                    map["ClassName"] = self.className!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.executeMode != nil {
                    map["ExecuteMode"] = self.executeMode!
                }
                if self.jarUrl != nil {
                    map["JarUrl"] = self.jarUrl!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobMonitorInfo != nil {
                    map["JobMonitorInfo"] = self.jobMonitorInfo?.toMap()
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.mapTaskXAttrs != nil {
                    map["MapTaskXAttrs"] = self.mapTaskXAttrs?.toMap()
                }
                if self.maxAttempt != nil {
                    map["MaxAttempt"] = self.maxAttempt!
                }
                if self.maxConcurrency != nil {
                    map["MaxConcurrency"] = self.maxConcurrency!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeConfig != nil {
                    map["TimeConfig"] = self.timeConfig?.toMap()
                }
                if self.XAttrs != nil {
                    map["XAttrs"] = self.XAttrs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttemptInterval") {
                    self.attemptInterval = dict["AttemptInterval"] as! Int32
                }
                if dict.keys.contains("ClassName") {
                    self.className = dict["ClassName"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ExecuteMode") {
                    self.executeMode = dict["ExecuteMode"] as! String
                }
                if dict.keys.contains("JarUrl") {
                    self.jarUrl = dict["JarUrl"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! Int64
                }
                if dict.keys.contains("JobMonitorInfo") {
                    var model = GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo()
                    model.fromMap(dict["JobMonitorInfo"] as! [String: Any])
                    self.jobMonitorInfo = model
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("MapTaskXAttrs") {
                    var model = GetJobInfoResponseBody.Data.JobConfigInfo.MapTaskXAttrs()
                    model.fromMap(dict["MapTaskXAttrs"] as! [String: Any])
                    self.mapTaskXAttrs = model
                }
                if dict.keys.contains("MaxAttempt") {
                    self.maxAttempt = dict["MaxAttempt"] as! Int32
                }
                if dict.keys.contains("MaxConcurrency") {
                    self.maxConcurrency = dict["MaxConcurrency"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TimeConfig") {
                    var model = GetJobInfoResponseBody.Data.JobConfigInfo.TimeConfig()
                    model.fromMap(dict["TimeConfig"] as! [String: Any])
                    self.timeConfig = model
                }
                if dict.keys.contains("XAttrs") {
                    self.XAttrs = dict["XAttrs"] as! String
                }
            }
        }
        public var jobConfigInfo: GetJobInfoResponseBody.Data.JobConfigInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobConfigInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobConfigInfo != nil {
                map["JobConfigInfo"] = self.jobConfigInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobConfigInfo") {
                var model = GetJobInfoResponseBody.Data.JobConfigInfo()
                model.fromMap(dict["JobConfigInfo"] as! [String: Any])
                self.jobConfigInfo = model
            }
        }
    }
    public var accessDeniedDetail: GetJobInfoResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetJobInfoResponseBody.Data?

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
            var model = GetJobInfoResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetJobInfoResponseBody.Data()
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

public class GetJobInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobInfoResponseBody?

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
            var model = GetJobInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobInstanceId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("JobInstanceId") {
            self.jobInstanceId = dict["JobInstanceId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetJobInstanceResponseBody : Tea.TeaModel {
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
        public class JobInstanceDetail : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var executor: String?

            public var instanceId: Int64?

            public var jobId: Int64?

            public var jobName: String?

            public var parameters: String?

            public var progress: String?

            public var result: String?

            public var scheduleTime: String?

            public var startTime: String?

            public var status: Int32?

            public var timeType: Int32?

            public var traceId: String?

            public var triggerType: Int32?

            public var workAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.traceId != nil {
                    map["TraceId"] = self.traceId!
                }
                if self.triggerType != nil {
                    map["TriggerType"] = self.triggerType!
                }
                if self.workAddr != nil {
                    map["WorkAddr"] = self.workAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataTime") {
                    self.dataTime = dict["DataTime"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Executor") {
                    self.executor = dict["Executor"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! Int64
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! Int64
                }
                if dict.keys.contains("JobName") {
                    self.jobName = dict["JobName"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! String
                }
                if dict.keys.contains("ScheduleTime") {
                    self.scheduleTime = dict["ScheduleTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TimeType") {
                    self.timeType = dict["TimeType"] as! Int32
                }
                if dict.keys.contains("TraceId") {
                    self.traceId = dict["TraceId"] as! String
                }
                if dict.keys.contains("TriggerType") {
                    self.triggerType = dict["TriggerType"] as! Int32
                }
                if dict.keys.contains("WorkAddr") {
                    self.workAddr = dict["WorkAddr"] as! String
                }
            }
        }
        public var jobInstanceDetail: GetJobInstanceResponseBody.Data.JobInstanceDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobInstanceDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInstanceDetail != nil {
                map["JobInstanceDetail"] = self.jobInstanceDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobInstanceDetail") {
                var model = GetJobInstanceResponseBody.Data.JobInstanceDetail()
                model.fromMap(dict["JobInstanceDetail"] as! [String: Any])
                self.jobInstanceDetail = model
            }
        }
    }
    public var accessDeniedDetail: GetJobInstanceResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetJobInstanceResponseBody.Data?

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
            var model = GetJobInstanceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetJobInstanceResponseBody.Data()
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

public class GetJobInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobInstanceResponseBody?

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
            var model = GetJobInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobInstanceListRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTimestamp: Int64?

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
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class GetJobInstanceListResponseBody : Tea.TeaModel {
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
        public class JobInstanceDetails : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var executor: String?

            public var instanceId: Int64?

            public var jobId: Int64?

            public var progress: String?

            public var result: String?

            public var scheduleTime: String?

            public var startTime: String?

            public var status: Int32?

            public var timeType: Int32?

            public var triggerType: Int32?

            public var workAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.triggerType != nil {
                    map["TriggerType"] = self.triggerType!
                }
                if self.workAddr != nil {
                    map["WorkAddr"] = self.workAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataTime") {
                    self.dataTime = dict["DataTime"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Executor") {
                    self.executor = dict["Executor"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! Int64
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! Int64
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! String
                }
                if dict.keys.contains("ScheduleTime") {
                    self.scheduleTime = dict["ScheduleTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TimeType") {
                    self.timeType = dict["TimeType"] as! Int32
                }
                if dict.keys.contains("TriggerType") {
                    self.triggerType = dict["TriggerType"] as! Int32
                }
                if dict.keys.contains("WorkAddr") {
                    self.workAddr = dict["WorkAddr"] as! String
                }
            }
        }
        public var jobInstanceDetails: [GetJobInstanceListResponseBody.Data.JobInstanceDetails]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInstanceDetails != nil {
                var tmp : [Any] = []
                for k in self.jobInstanceDetails! {
                    tmp.append(k.toMap())
                }
                map["JobInstanceDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobInstanceDetails") {
                var tmp : [GetJobInstanceListResponseBody.Data.JobInstanceDetails] = []
                for v in dict["JobInstanceDetails"] as! [Any] {
                    var model = GetJobInstanceListResponseBody.Data.JobInstanceDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobInstanceDetails = tmp
            }
        }
    }
    public var accessDeniedDetail: GetJobInstanceListResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetJobInstanceListResponseBody.Data?

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
            var model = GetJobInstanceListResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetJobInstanceListResponseBody.Data()
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

public class GetJobInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobInstanceListResponseBody?

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
            var model = GetJobInstanceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLogRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var groupId: String?

    public var jobId: String?

    public var jobInstanceId: String?

    public var keyword: String?

    public var line: Int32?

    public var namespace: String?

    public var namespaceSource: String?

    public var offset: Int32?

    public var regionId: String?

    public var reverse: Bool?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobInstanceId") {
            self.jobInstanceId = dict["JobInstanceId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Line") {
            self.line = dict["Line"] as! Int32
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("StartTimestamp") {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
        }
    }
}

public class GetLogResponseBody : Tea.TeaModel {
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
        public var logs: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [String]
            }
        }
    }
    public var accessDeniedDetail: GetLogResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetLogResponseBody.Data?

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
            var model = GetLogResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetLogResponseBody.Data()
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

public class GetLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogResponseBody?

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
            var model = GetLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOverviewRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var groupId: String?

    public var metricType: Int32?

    public var namespace: String?

    public var namespaceSource: String?

    public var operate: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.operate != nil {
            map["Operate"] = self.operate!
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
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MetricType") {
            self.metricType = dict["MetricType"] as! Int32
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("Operate") {
            self.operate = dict["Operate"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetOverviewResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: GetOverviewResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = GetOverviewResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class GetOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOverviewResponseBody?

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
            var model = GetOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkFlowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class GetWorkFlowResponseBody : Tea.TeaModel {
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
        public class WorkFlowInfo : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var status: String?

            public var timeExpression: String?

            public var timeType: String?

            public var workflowId: Int64?

            public override init() {
                super.init()
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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeExpression != nil {
                    map["TimeExpression"] = self.timeExpression!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.workflowId != nil {
                    map["WorkflowId"] = self.workflowId!
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
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TimeExpression") {
                    self.timeExpression = dict["TimeExpression"] as! String
                }
                if dict.keys.contains("TimeType") {
                    self.timeType = dict["TimeType"] as! String
                }
                if dict.keys.contains("WorkflowId") {
                    self.workflowId = dict["WorkflowId"] as! Int64
                }
            }
        }
        public class WorkFlowNodeInfo : Tea.TeaModel {
            public class Edges : Tea.TeaModel {
                public var source: Int64?

                public var target: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.target != nil {
                        map["Target"] = self.target!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! Int64
                    }
                    if dict.keys.contains("Target") {
                        self.target = dict["Target"] as! Int64
                    }
                }
            }
            public class Nodes : Tea.TeaModel {
                public var id: Int64?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                }
            }
            public var edges: [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Edges]?

            public var nodes: [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Nodes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.edges != nil {
                    var tmp : [Any] = []
                    for k in self.edges! {
                        tmp.append(k.toMap())
                    }
                    map["Edges"] = tmp
                }
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Edges") {
                    var tmp : [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Edges] = []
                    for v in dict["Edges"] as! [Any] {
                        var model = GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Edges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.edges = tmp
                }
                if dict.keys.contains("Nodes") {
                    var tmp : [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Nodes] = []
                    for v in dict["Nodes"] as! [Any] {
                        var model = GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Nodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nodes = tmp
                }
            }
        }
        public var workFlowInfo: GetWorkFlowResponseBody.Data.WorkFlowInfo?

        public var workFlowNodeInfo: GetWorkFlowResponseBody.Data.WorkFlowNodeInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.workFlowInfo?.validate()
            try self.workFlowNodeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workFlowInfo != nil {
                map["WorkFlowInfo"] = self.workFlowInfo?.toMap()
            }
            if self.workFlowNodeInfo != nil {
                map["WorkFlowNodeInfo"] = self.workFlowNodeInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WorkFlowInfo") {
                var model = GetWorkFlowResponseBody.Data.WorkFlowInfo()
                model.fromMap(dict["WorkFlowInfo"] as! [String: Any])
                self.workFlowInfo = model
            }
            if dict.keys.contains("WorkFlowNodeInfo") {
                var model = GetWorkFlowResponseBody.Data.WorkFlowNodeInfo()
                model.fromMap(dict["WorkFlowNodeInfo"] as! [String: Any])
                self.workFlowNodeInfo = model
            }
        }
    }
    public var accessDeniedDetail: GetWorkFlowResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetWorkFlowResponseBody.Data?

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
            var model = GetWorkFlowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetWorkFlowResponseBody.Data()
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

public class GetWorkFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkFlowResponseBody?

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
            var model = GetWorkFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkerListRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetWorkerListResponseBody : Tea.TeaModel {
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
        public class WorkerInfos : Tea.TeaModel {
            public var ip: String?

            public var label: String?

            public var port: Int32?

            public var starter: String?

            public var version: String?

            public var workerAddress: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.starter != nil {
                    map["Starter"] = self.starter!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.workerAddress != nil {
                    map["WorkerAddress"] = self.workerAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Starter") {
                    self.starter = dict["Starter"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("WorkerAddress") {
                    self.workerAddress = dict["WorkerAddress"] as! String
                }
            }
        }
        public var workerInfos: [GetWorkerListResponseBody.Data.WorkerInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workerInfos != nil {
                var tmp : [Any] = []
                for k in self.workerInfos! {
                    tmp.append(k.toMap())
                }
                map["WorkerInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WorkerInfos") {
                var tmp : [GetWorkerListResponseBody.Data.WorkerInfos] = []
                for v in dict["WorkerInfos"] as! [Any] {
                    var model = GetWorkerListResponseBody.Data.WorkerInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.workerInfos = tmp
            }
        }
    }
    public var accessDeniedDetail: GetWorkerListResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetWorkerListResponseBody.Data?

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
            var model = GetWorkerListResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetWorkerListResponseBody.Data()
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

public class GetWorkerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkerListResponseBody?

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
            var model = GetWorkerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkflowInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var wfInstanceId: Int64?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wfInstanceId != nil {
            map["WfInstanceId"] = self.wfInstanceId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WfInstanceId") {
            self.wfInstanceId = dict["WfInstanceId"] as! Int64
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class GetWorkflowInstanceResponseBody : Tea.TeaModel {
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
        public class WfInstanceDag : Tea.TeaModel {
            public class Edges : Tea.TeaModel {
                public var source: Int64?

                public var target: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.target != nil {
                        map["Target"] = self.target!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! Int64
                    }
                    if dict.keys.contains("Target") {
                        self.target = dict["Target"] as! Int64
                    }
                }
            }
            public class Nodes : Tea.TeaModel {
                public var attempt: Int32?

                public var dataTime: String?

                public var endTime: String?

                public var jobId: Int64?

                public var jobInstanceId: Int64?

                public var jobName: String?

                public var result: String?

                public var scheduleTime: String?

                public var startTime: String?

                public var status: Int32?

                public var workAddr: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attempt != nil {
                        map["Attempt"] = self.attempt!
                    }
                    if self.dataTime != nil {
                        map["DataTime"] = self.dataTime!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.jobId != nil {
                        map["JobId"] = self.jobId!
                    }
                    if self.jobInstanceId != nil {
                        map["JobInstanceId"] = self.jobInstanceId!
                    }
                    if self.jobName != nil {
                        map["JobName"] = self.jobName!
                    }
                    if self.result != nil {
                        map["Result"] = self.result!
                    }
                    if self.scheduleTime != nil {
                        map["ScheduleTime"] = self.scheduleTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.workAddr != nil {
                        map["WorkAddr"] = self.workAddr!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attempt") {
                        self.attempt = dict["Attempt"] as! Int32
                    }
                    if dict.keys.contains("DataTime") {
                        self.dataTime = dict["DataTime"] as! String
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("JobId") {
                        self.jobId = dict["JobId"] as! Int64
                    }
                    if dict.keys.contains("JobInstanceId") {
                        self.jobInstanceId = dict["JobInstanceId"] as! Int64
                    }
                    if dict.keys.contains("JobName") {
                        self.jobName = dict["JobName"] as! String
                    }
                    if dict.keys.contains("Result") {
                        self.result = dict["Result"] as! String
                    }
                    if dict.keys.contains("ScheduleTime") {
                        self.scheduleTime = dict["ScheduleTime"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("WorkAddr") {
                        self.workAddr = dict["WorkAddr"] as! String
                    }
                }
            }
            public var edges: [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Edges]?

            public var nodes: [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Nodes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.edges != nil {
                    var tmp : [Any] = []
                    for k in self.edges! {
                        tmp.append(k.toMap())
                    }
                    map["Edges"] = tmp
                }
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Edges") {
                    var tmp : [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Edges] = []
                    for v in dict["Edges"] as! [Any] {
                        var model = GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Edges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.edges = tmp
                }
                if dict.keys.contains("Nodes") {
                    var tmp : [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Nodes] = []
                    for v in dict["Nodes"] as! [Any] {
                        var model = GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Nodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nodes = tmp
                }
            }
        }
        public class WfInstanceInfo : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var scheduleTime: String?

            public var startTime: String?

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
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataTime") {
                    self.dataTime = dict["DataTime"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ScheduleTime") {
                    self.scheduleTime = dict["ScheduleTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var wfInstanceDag: GetWorkflowInstanceResponseBody.Data.WfInstanceDag?

        public var wfInstanceInfo: GetWorkflowInstanceResponseBody.Data.WfInstanceInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.wfInstanceDag?.validate()
            try self.wfInstanceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wfInstanceDag != nil {
                map["WfInstanceDag"] = self.wfInstanceDag?.toMap()
            }
            if self.wfInstanceInfo != nil {
                map["WfInstanceInfo"] = self.wfInstanceInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WfInstanceDag") {
                var model = GetWorkflowInstanceResponseBody.Data.WfInstanceDag()
                model.fromMap(dict["WfInstanceDag"] as! [String: Any])
                self.wfInstanceDag = model
            }
            if dict.keys.contains("WfInstanceInfo") {
                var model = GetWorkflowInstanceResponseBody.Data.WfInstanceInfo()
                model.fromMap(dict["WfInstanceInfo"] as! [String: Any])
                self.wfInstanceInfo = model
            }
        }
    }
    public var accessDeniedDetail: GetWorkflowInstanceResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: GetWorkflowInstanceResponseBody.Data?

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
            var model = GetWorkflowInstanceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetWorkflowInstanceResponseBody.Data()
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

public class GetWorkflowInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkflowInstanceResponseBody?

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
            var model = GetWorkflowInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantPermissionRequest : Tea.TeaModel {
    public var grantOption: Bool?

    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

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
        if self.grantOption != nil {
            map["GrantOption"] = self.grantOption!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("GrantOption") {
            self.grantOption = dict["GrantOption"] as! Bool
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GrantPermissionResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: GrantPermissionResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = GrantPermissionResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class GrantPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantPermissionResponseBody?

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
            var model = GrantPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var appGroupName: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.appGroupName != nil {
            map["AppGroupName"] = self.appGroupName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppGroupName") {
            self.appGroupName = dict["AppGroupName"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
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
        public class AppGroups : Tea.TeaModel {
            public var appGroupId: Int64?

            public var appKey: String?

            public var appName: String?

            public var appVersion: Int32?

            public var description_: String?

            public var groupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appGroupId != nil {
                    map["AppGroupId"] = self.appGroupId!
                }
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppGroupId") {
                    self.appGroupId = dict["AppGroupId"] as! Int64
                }
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppVersion") {
                    self.appVersion = dict["AppVersion"] as! Int32
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
            }
        }
        public var appGroups: [ListGroupsResponseBody.Data.AppGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appGroups != nil {
                var tmp : [Any] = []
                for k in self.appGroups! {
                    tmp.append(k.toMap())
                }
                map["AppGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppGroups") {
                var tmp : [ListGroupsResponseBody.Data.AppGroups] = []
                for v in dict["AppGroups"] as! [Any] {
                    var model = ListGroupsResponseBody.Data.AppGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appGroups = tmp
            }
        }
    }
    public var accessDeniedDetail: ListGroupsResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ListGroupsResponseBody.Data?

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
            var model = ListGroupsResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListGroupsResponseBody.Data()
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

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

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
            var model = ListGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobName: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
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
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
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
        public class Jobs : Tea.TeaModel {
            public class JobMonitorInfo : Tea.TeaModel {
                public class ContactInfo : Tea.TeaModel {
                    public var ding: String?

                    public var userMail: String?

                    public var userName: String?

                    public var userPhone: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ding != nil {
                            map["Ding"] = self.ding!
                        }
                        if self.userMail != nil {
                            map["UserMail"] = self.userMail!
                        }
                        if self.userName != nil {
                            map["UserName"] = self.userName!
                        }
                        if self.userPhone != nil {
                            map["UserPhone"] = self.userPhone!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Ding") {
                            self.ding = dict["Ding"] as! String
                        }
                        if dict.keys.contains("UserMail") {
                            self.userMail = dict["UserMail"] as! String
                        }
                        if dict.keys.contains("UserName") {
                            self.userName = dict["UserName"] as! String
                        }
                        if dict.keys.contains("UserPhone") {
                            self.userPhone = dict["UserPhone"] as! String
                        }
                    }
                }
                public class MonitorConfig : Tea.TeaModel {
                    public var failEnable: Bool?

                    public var missWorkerEnable: Bool?

                    public var sendChannel: String?

                    public var timeout: Int64?

                    public var timeoutEnable: Bool?

                    public var timeoutKillEnable: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failEnable != nil {
                            map["FailEnable"] = self.failEnable!
                        }
                        if self.missWorkerEnable != nil {
                            map["MissWorkerEnable"] = self.missWorkerEnable!
                        }
                        if self.sendChannel != nil {
                            map["SendChannel"] = self.sendChannel!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        if self.timeoutEnable != nil {
                            map["TimeoutEnable"] = self.timeoutEnable!
                        }
                        if self.timeoutKillEnable != nil {
                            map["TimeoutKillEnable"] = self.timeoutKillEnable!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FailEnable") {
                            self.failEnable = dict["FailEnable"] as! Bool
                        }
                        if dict.keys.contains("MissWorkerEnable") {
                            self.missWorkerEnable = dict["MissWorkerEnable"] as! Bool
                        }
                        if dict.keys.contains("SendChannel") {
                            self.sendChannel = dict["SendChannel"] as! String
                        }
                        if dict.keys.contains("Timeout") {
                            self.timeout = dict["Timeout"] as! Int64
                        }
                        if dict.keys.contains("TimeoutEnable") {
                            self.timeoutEnable = dict["TimeoutEnable"] as! Bool
                        }
                        if dict.keys.contains("TimeoutKillEnable") {
                            self.timeoutKillEnable = dict["TimeoutKillEnable"] as! Bool
                        }
                    }
                }
                public var contactInfo: [ListJobsResponseBody.Data.Jobs.JobMonitorInfo.ContactInfo]?

                public var monitorConfig: ListJobsResponseBody.Data.Jobs.JobMonitorInfo.MonitorConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.monitorConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contactInfo != nil {
                        var tmp : [Any] = []
                        for k in self.contactInfo! {
                            tmp.append(k.toMap())
                        }
                        map["ContactInfo"] = tmp
                    }
                    if self.monitorConfig != nil {
                        map["MonitorConfig"] = self.monitorConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ContactInfo") {
                        var tmp : [ListJobsResponseBody.Data.Jobs.JobMonitorInfo.ContactInfo] = []
                        for v in dict["ContactInfo"] as! [Any] {
                            var model = ListJobsResponseBody.Data.Jobs.JobMonitorInfo.ContactInfo()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.contactInfo = tmp
                    }
                    if dict.keys.contains("MonitorConfig") {
                        var model = ListJobsResponseBody.Data.Jobs.JobMonitorInfo.MonitorConfig()
                        model.fromMap(dict["MonitorConfig"] as! [String: Any])
                        self.monitorConfig = model
                    }
                }
            }
            public class MapTaskXAttrs : Tea.TeaModel {
                public var consumerSize: Int32?

                public var dispatcherSize: Int32?

                public var pageSize: Int32?

                public var queueSize: Int32?

                public var taskAttemptInterval: Int32?

                public var taskMaxAttempt: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.consumerSize != nil {
                        map["ConsumerSize"] = self.consumerSize!
                    }
                    if self.dispatcherSize != nil {
                        map["DispatcherSize"] = self.dispatcherSize!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.queueSize != nil {
                        map["QueueSize"] = self.queueSize!
                    }
                    if self.taskAttemptInterval != nil {
                        map["TaskAttemptInterval"] = self.taskAttemptInterval!
                    }
                    if self.taskMaxAttempt != nil {
                        map["TaskMaxAttempt"] = self.taskMaxAttempt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConsumerSize") {
                        self.consumerSize = dict["ConsumerSize"] as! Int32
                    }
                    if dict.keys.contains("DispatcherSize") {
                        self.dispatcherSize = dict["DispatcherSize"] as! Int32
                    }
                    if dict.keys.contains("PageSize") {
                        self.pageSize = dict["PageSize"] as! Int32
                    }
                    if dict.keys.contains("QueueSize") {
                        self.queueSize = dict["QueueSize"] as! Int32
                    }
                    if dict.keys.contains("TaskAttemptInterval") {
                        self.taskAttemptInterval = dict["TaskAttemptInterval"] as! Int32
                    }
                    if dict.keys.contains("TaskMaxAttempt") {
                        self.taskMaxAttempt = dict["TaskMaxAttempt"] as! Int32
                    }
                }
            }
            public class TimeConfig : Tea.TeaModel {
                public var calendar: String?

                public var dataOffset: Int32?

                public var timeExpression: String?

                public var timeType: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.calendar != nil {
                        map["Calendar"] = self.calendar!
                    }
                    if self.dataOffset != nil {
                        map["DataOffset"] = self.dataOffset!
                    }
                    if self.timeExpression != nil {
                        map["TimeExpression"] = self.timeExpression!
                    }
                    if self.timeType != nil {
                        map["TimeType"] = self.timeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Calendar") {
                        self.calendar = dict["Calendar"] as! String
                    }
                    if dict.keys.contains("DataOffset") {
                        self.dataOffset = dict["DataOffset"] as! Int32
                    }
                    if dict.keys.contains("TimeExpression") {
                        self.timeExpression = dict["TimeExpression"] as! String
                    }
                    if dict.keys.contains("TimeType") {
                        self.timeType = dict["TimeType"] as! Int32
                    }
                }
            }
            public var attemptInterval: Int32?

            public var className: String?

            public var content: String?

            public var description_: String?

            public var executeMode: String?

            public var jarUrl: String?

            public var jobId: Int64?

            public var jobMonitorInfo: ListJobsResponseBody.Data.Jobs.JobMonitorInfo?

            public var jobType: String?

            public var mapTaskXAttrs: ListJobsResponseBody.Data.Jobs.MapTaskXAttrs?

            public var maxAttempt: Int32?

            public var maxConcurrency: String?

            public var name: String?

            public var parameters: String?

            public var status: Int32?

            public var timeConfig: ListJobsResponseBody.Data.Jobs.TimeConfig?

            public var XAttrs: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.jobMonitorInfo?.validate()
                try self.mapTaskXAttrs?.validate()
                try self.timeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attemptInterval != nil {
                    map["AttemptInterval"] = self.attemptInterval!
                }
                if self.className != nil {
                    map["ClassName"] = self.className!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.executeMode != nil {
                    map["ExecuteMode"] = self.executeMode!
                }
                if self.jarUrl != nil {
                    map["JarUrl"] = self.jarUrl!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobMonitorInfo != nil {
                    map["JobMonitorInfo"] = self.jobMonitorInfo?.toMap()
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.mapTaskXAttrs != nil {
                    map["MapTaskXAttrs"] = self.mapTaskXAttrs?.toMap()
                }
                if self.maxAttempt != nil {
                    map["MaxAttempt"] = self.maxAttempt!
                }
                if self.maxConcurrency != nil {
                    map["MaxConcurrency"] = self.maxConcurrency!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeConfig != nil {
                    map["TimeConfig"] = self.timeConfig?.toMap()
                }
                if self.XAttrs != nil {
                    map["XAttrs"] = self.XAttrs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttemptInterval") {
                    self.attemptInterval = dict["AttemptInterval"] as! Int32
                }
                if dict.keys.contains("ClassName") {
                    self.className = dict["ClassName"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ExecuteMode") {
                    self.executeMode = dict["ExecuteMode"] as! String
                }
                if dict.keys.contains("JarUrl") {
                    self.jarUrl = dict["JarUrl"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! Int64
                }
                if dict.keys.contains("JobMonitorInfo") {
                    var model = ListJobsResponseBody.Data.Jobs.JobMonitorInfo()
                    model.fromMap(dict["JobMonitorInfo"] as! [String: Any])
                    self.jobMonitorInfo = model
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("MapTaskXAttrs") {
                    var model = ListJobsResponseBody.Data.Jobs.MapTaskXAttrs()
                    model.fromMap(dict["MapTaskXAttrs"] as! [String: Any])
                    self.mapTaskXAttrs = model
                }
                if dict.keys.contains("MaxAttempt") {
                    self.maxAttempt = dict["MaxAttempt"] as! Int32
                }
                if dict.keys.contains("MaxConcurrency") {
                    self.maxConcurrency = dict["MaxConcurrency"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TimeConfig") {
                    var model = ListJobsResponseBody.Data.Jobs.TimeConfig()
                    model.fromMap(dict["TimeConfig"] as! [String: Any])
                    self.timeConfig = model
                }
                if dict.keys.contains("XAttrs") {
                    self.XAttrs = dict["XAttrs"] as! String
                }
            }
        }
        public var jobs: [ListJobsResponseBody.Data.Jobs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobs != nil {
                var tmp : [Any] = []
                for k in self.jobs! {
                    tmp.append(k.toMap())
                }
                map["Jobs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Jobs") {
                var tmp : [ListJobsResponseBody.Data.Jobs] = []
                for v in dict["Jobs"] as! [Any] {
                    var model = ListJobsResponseBody.Data.Jobs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobs = tmp
            }
        }
    }
    public var accessDeniedDetail: ListJobsResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ListJobsResponseBody.Data?

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
            var model = ListJobsResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListJobsResponseBody.Data()
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

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

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
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNamespacesRequest : Tea.TeaModel {
    public var namespace: String?

    public var namespaceName: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListNamespacesResponseBody : Tea.TeaModel {
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
        public class Namespaces : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var UId: String?

            public override init() {
                super.init()
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
                if self.UId != nil {
                    map["UId"] = self.UId!
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
                if dict.keys.contains("UId") {
                    self.UId = dict["UId"] as! String
                }
            }
        }
        public var namespaces: [ListNamespacesResponseBody.Data.Namespaces]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespaces != nil {
                var tmp : [Any] = []
                for k in self.namespaces! {
                    tmp.append(k.toMap())
                }
                map["Namespaces"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Namespaces") {
                var tmp : [ListNamespacesResponseBody.Data.Namespaces] = []
                for v in dict["Namespaces"] as! [Any] {
                    var model = ListNamespacesResponseBody.Data.Namespaces()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.namespaces = tmp
            }
        }
    }
    public var accessDeniedDetail: ListNamespacesResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ListNamespacesResponseBody.Data?

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
            var model = ListNamespacesResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListNamespacesResponseBody.Data()
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

public class ListNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespacesResponseBody?

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
            var model = ListNamespacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkflowInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! String
        }
    }
}

public class ListWorkflowInstanceResponseBody : Tea.TeaModel {
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
        public class WfInstanceInfos : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var scheduleTime: String?

            public var startTime: String?

            public var status: Int32?

            public var wfInstanceId: Int64?

            public var workflowId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.wfInstanceId != nil {
                    map["WfInstanceId"] = self.wfInstanceId!
                }
                if self.workflowId != nil {
                    map["WorkflowId"] = self.workflowId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataTime") {
                    self.dataTime = dict["DataTime"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ScheduleTime") {
                    self.scheduleTime = dict["ScheduleTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("WfInstanceId") {
                    self.wfInstanceId = dict["WfInstanceId"] as! Int64
                }
                if dict.keys.contains("WorkflowId") {
                    self.workflowId = dict["WorkflowId"] as! Int64
                }
            }
        }
        public var wfInstanceInfos: [ListWorkflowInstanceResponseBody.Data.WfInstanceInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wfInstanceInfos != nil {
                var tmp : [Any] = []
                for k in self.wfInstanceInfos! {
                    tmp.append(k.toMap())
                }
                map["WfInstanceInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WfInstanceInfos") {
                var tmp : [ListWorkflowInstanceResponseBody.Data.WfInstanceInfos] = []
                for v in dict["WfInstanceInfos"] as! [Any] {
                    var model = ListWorkflowInstanceResponseBody.Data.WfInstanceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wfInstanceInfos = tmp
            }
        }
    }
    public var accessDeniedDetail: ListWorkflowInstanceResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ListWorkflowInstanceResponseBody.Data?

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
            var model = ListWorkflowInstanceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListWorkflowInstanceResponseBody.Data()
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

public class ListWorkflowInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowInstanceResponseBody?

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
            var model = ListWorkflowInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RerunJobRequest : Tea.TeaModel {
    public var dataTime: String?

    public var endDate: Int64?

    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var startDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataTime != nil {
            map["DataTime"] = self.dataTime!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataTime") {
            self.dataTime = dict["DataTime"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class RerunJobResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: RerunJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = RerunJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class RerunJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RerunJobResponseBody?

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
            var model = RerunJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RetryJobInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobInstanceId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("JobInstanceId") {
            self.jobInstanceId = dict["JobInstanceId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RetryJobInstanceResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: RetryJobInstanceResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = RetryJobInstanceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class RetryJobInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryJobInstanceResponseBody?

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
            var model = RetryJobInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokePermissionRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class RevokePermissionResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: RevokePermissionResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = RevokePermissionResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class RevokePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokePermissionResponseBody?

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
            var model = RevokePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetJobInstanceSuccessRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobInstanceId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("JobInstanceId") {
            self.jobInstanceId = dict["JobInstanceId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetJobInstanceSuccessResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: SetJobInstanceSuccessResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = SetJobInstanceSuccessResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class SetJobInstanceSuccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetJobInstanceSuccessResponseBody?

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
            var model = SetJobInstanceSuccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetWfInstanceSuccessRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var wfInstanceId: Int64?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wfInstanceId != nil {
            map["WfInstanceId"] = self.wfInstanceId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WfInstanceId") {
            self.wfInstanceId = dict["WfInstanceId"] as! Int64
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! Int64
        }
    }
}

public class SetWfInstanceSuccessResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: SetWfInstanceSuccessResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = SetWfInstanceSuccessResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class SetWfInstanceSuccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetWfInstanceSuccessResponseBody?

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
            var model = SetWfInstanceSuccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: Int64?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: StopInstanceResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = StopInstanceResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

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
            var model = StopInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppGroupRequest : Tea.TeaModel {
    public var appVersion: Int32?

    public var description_: String?

    public var groupId: String?

    public var maxConcurrency: Int32?

    public var namespace: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int32
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAppGroupResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: UpdateAppGroupResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = UpdateAppGroupResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class UpdateAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppGroupResponseBody?

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
            var model = UpdateAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateJobRequest : Tea.TeaModel {
    public class ContactInfo : Tea.TeaModel {
        public var ding: String?

        public var userMail: String?

        public var userName: String?

        public var userPhone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ding != nil {
                map["Ding"] = self.ding!
            }
            if self.userMail != nil {
                map["UserMail"] = self.userMail!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userPhone != nil {
                map["UserPhone"] = self.userPhone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ding") {
                self.ding = dict["Ding"] as! String
            }
            if dict.keys.contains("UserMail") {
                self.userMail = dict["UserMail"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserPhone") {
                self.userPhone = dict["UserPhone"] as! String
            }
        }
    }
    public var attemptInterval: Int32?

    public var calendar: String?

    public var className: String?

    public var consumerSize: Int32?

    public var contactInfo: [UpdateJobRequest.ContactInfo]?

    public var content: String?

    public var dataOffset: Int32?

    public var description_: String?

    public var dispatcherSize: Int32?

    public var executeMode: String?

    public var failEnable: Bool?

    public var failTimes: Int32?

    public var groupId: String?

    public var jobId: Int64?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var missWorkerEnable: Bool?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var pageSize: Int32?

    public var parameters: String?

    public var queueSize: Int32?

    public var regionId: String?

    public var sendChannel: String?

    public var successNoticeEnable: Bool?

    public var taskAttemptInterval: Int32?

    public var taskDispatchMode: String?

    public var taskMaxAttempt: Int32?

    public var template: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timeout: Int64?

    public var timeoutEnable: Bool?

    public var timeoutKillEnable: Bool?

    public var timezone: String?

    public var XAttrs: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.consumerSize != nil {
            map["ConsumerSize"] = self.consumerSize!
        }
        if self.contactInfo != nil {
            var tmp : [Any] = []
            for k in self.contactInfo! {
                tmp.append(k.toMap())
            }
            map["ContactInfo"] = tmp
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.dataOffset != nil {
            map["DataOffset"] = self.dataOffset!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dispatcherSize != nil {
            map["DispatcherSize"] = self.dispatcherSize!
        }
        if self.executeMode != nil {
            map["ExecuteMode"] = self.executeMode!
        }
        if self.failEnable != nil {
            map["FailEnable"] = self.failEnable!
        }
        if self.failTimes != nil {
            map["FailTimes"] = self.failTimes!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.maxAttempt != nil {
            map["MaxAttempt"] = self.maxAttempt!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.missWorkerEnable != nil {
            map["MissWorkerEnable"] = self.missWorkerEnable!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.queueSize != nil {
            map["QueueSize"] = self.queueSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sendChannel != nil {
            map["SendChannel"] = self.sendChannel!
        }
        if self.successNoticeEnable != nil {
            map["SuccessNoticeEnable"] = self.successNoticeEnable!
        }
        if self.taskAttemptInterval != nil {
            map["TaskAttemptInterval"] = self.taskAttemptInterval!
        }
        if self.taskDispatchMode != nil {
            map["TaskDispatchMode"] = self.taskDispatchMode!
        }
        if self.taskMaxAttempt != nil {
            map["TaskMaxAttempt"] = self.taskMaxAttempt!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.timeoutEnable != nil {
            map["TimeoutEnable"] = self.timeoutEnable!
        }
        if self.timeoutKillEnable != nil {
            map["TimeoutKillEnable"] = self.timeoutKillEnable!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.XAttrs != nil {
            map["XAttrs"] = self.XAttrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttemptInterval") {
            self.attemptInterval = dict["AttemptInterval"] as! Int32
        }
        if dict.keys.contains("Calendar") {
            self.calendar = dict["Calendar"] as! String
        }
        if dict.keys.contains("ClassName") {
            self.className = dict["ClassName"] as! String
        }
        if dict.keys.contains("ConsumerSize") {
            self.consumerSize = dict["ConsumerSize"] as! Int32
        }
        if dict.keys.contains("ContactInfo") {
            var tmp : [UpdateJobRequest.ContactInfo] = []
            for v in dict["ContactInfo"] as! [Any] {
                var model = UpdateJobRequest.ContactInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contactInfo = tmp
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DataOffset") {
            self.dataOffset = dict["DataOffset"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DispatcherSize") {
            self.dispatcherSize = dict["DispatcherSize"] as! Int32
        }
        if dict.keys.contains("ExecuteMode") {
            self.executeMode = dict["ExecuteMode"] as! String
        }
        if dict.keys.contains("FailEnable") {
            self.failEnable = dict["FailEnable"] as! Bool
        }
        if dict.keys.contains("FailTimes") {
            self.failTimes = dict["FailTimes"] as! Int32
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("MaxAttempt") {
            self.maxAttempt = dict["MaxAttempt"] as! Int32
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int32
        }
        if dict.keys.contains("MissWorkerEnable") {
            self.missWorkerEnable = dict["MissWorkerEnable"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("QueueSize") {
            self.queueSize = dict["QueueSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SendChannel") {
            self.sendChannel = dict["SendChannel"] as! String
        }
        if dict.keys.contains("SuccessNoticeEnable") {
            self.successNoticeEnable = dict["SuccessNoticeEnable"] as! Bool
        }
        if dict.keys.contains("TaskAttemptInterval") {
            self.taskAttemptInterval = dict["TaskAttemptInterval"] as! Int32
        }
        if dict.keys.contains("TaskDispatchMode") {
            self.taskDispatchMode = dict["TaskDispatchMode"] as! String
        }
        if dict.keys.contains("TaskMaxAttempt") {
            self.taskMaxAttempt = dict["TaskMaxAttempt"] as! Int32
        }
        if dict.keys.contains("Template") {
            self.template = dict["Template"] as! String
        }
        if dict.keys.contains("TimeExpression") {
            self.timeExpression = dict["TimeExpression"] as! String
        }
        if dict.keys.contains("TimeType") {
            self.timeType = dict["TimeType"] as! Int32
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int64
        }
        if dict.keys.contains("TimeoutEnable") {
            self.timeoutEnable = dict["TimeoutEnable"] as! Bool
        }
        if dict.keys.contains("TimeoutKillEnable") {
            self.timeoutKillEnable = dict["TimeoutKillEnable"] as! Bool
        }
        if dict.keys.contains("Timezone") {
            self.timezone = dict["Timezone"] as! String
        }
        if dict.keys.contains("XAttrs") {
            self.XAttrs = dict["XAttrs"] as! String
        }
    }
}

public class UpdateJobResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: UpdateJobResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = UpdateJobResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class UpdateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateJobResponseBody?

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
            var model = UpdateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkflowRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var workflowId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TimeExpression") {
            self.timeExpression = dict["TimeExpression"] as! String
        }
        if dict.keys.contains("TimeType") {
            self.timeType = dict["TimeType"] as! Int32
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! String
        }
    }
}

public class UpdateWorkflowResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: UpdateWorkflowResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = UpdateWorkflowResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class UpdateWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkflowResponseBody?

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
            var model = UpdateWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkflowDagRequest : Tea.TeaModel {
    public var dagJson: String?

    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dagJson != nil {
            map["DagJson"] = self.dagJson!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DagJson") {
            self.dagJson = dict["DagJson"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceSource") {
            self.namespaceSource = dict["NamespaceSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WorkflowId") {
            self.workflowId = dict["WorkflowId"] as! String
        }
    }
}

public class UpdateWorkflowDagResponseBody : Tea.TeaModel {
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
    public var accessDeniedDetail: UpdateWorkflowDagResponseBody.AccessDeniedDetail?

    public var code: Int32?

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
            var model = UpdateWorkflowDagResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

public class UpdateWorkflowDagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkflowDagResponseBody?

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
            var model = UpdateWorkflowDagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
