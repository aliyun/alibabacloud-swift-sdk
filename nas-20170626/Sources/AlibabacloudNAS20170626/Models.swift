import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddClientToBlackListRequest : Tea.TeaModel {
    public var clientIP: String?

    public var clientToken: String?

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
        if self.clientIP != nil {
            map["ClientIP"] = self.clientIP!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIP"] as? String {
            self.clientIP = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddClientToBlackListResponseBody : Tea.TeaModel {
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

public class AddClientToBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddClientToBlackListResponseBody?

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
            var model = AddClientToBlackListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var autoSnapshotPolicyId: String?

    public var fileSystemIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicyId != nil {
            map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
        }
        if self.fileSystemIds != nil {
            map["FileSystemIds"] = self.fileSystemIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyId"] as? String {
            self.autoSnapshotPolicyId = value
        }
        if let value = dict["FileSystemIds"] as? String {
            self.fileSystemIds = value
        }
    }
}

public class ApplyAutoSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class ApplyAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAutoSnapshotPolicyResponseBody?

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
            var model = ApplyAutoSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyDataFlowAutoRefreshRequest : Tea.TeaModel {
    public class AutoRefreshs : Tea.TeaModel {
        public var refreshPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.refreshPath != nil {
                map["RefreshPath"] = self.refreshPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RefreshPath"] as? String {
                self.refreshPath = value
            }
        }
    }
    public var autoRefreshInterval: Int64?

    public var autoRefreshPolicy: String?

    public var autoRefreshs: [ApplyDataFlowAutoRefreshRequest.AutoRefreshs]?

    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRefreshInterval != nil {
            map["AutoRefreshInterval"] = self.autoRefreshInterval!
        }
        if self.autoRefreshPolicy != nil {
            map["AutoRefreshPolicy"] = self.autoRefreshPolicy!
        }
        if self.autoRefreshs != nil {
            var tmp : [Any] = []
            for k in self.autoRefreshs! {
                tmp.append(k.toMap())
            }
            map["AutoRefreshs"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRefreshInterval"] as? Int64 {
            self.autoRefreshInterval = value
        }
        if let value = dict["AutoRefreshPolicy"] as? String {
            self.autoRefreshPolicy = value
        }
        if let value = dict["AutoRefreshs"] as? [Any?] {
            var tmp : [ApplyDataFlowAutoRefreshRequest.AutoRefreshs] = []
            for v in value {
                if v != nil {
                    var model = ApplyDataFlowAutoRefreshRequest.AutoRefreshs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.autoRefreshs = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class ApplyDataFlowAutoRefreshResponseBody : Tea.TeaModel {
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

public class ApplyDataFlowAutoRefreshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyDataFlowAutoRefreshResponseBody?

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
            var model = ApplyDataFlowAutoRefreshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachVscToFilesystemsRequest : Tea.TeaModel {
    public class ResourceIds : Tea.TeaModel {
        public var fileSystemId: String?

        public var vscId: String?

        public override init() {
            super.init()
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
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var clientToken: String?

    public var resourceIds: [AttachVscToFilesystemsRequest.ResourceIds]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            var tmp : [Any] = []
            for k in self.resourceIds! {
                tmp.append(k.toMap())
            }
            map["ResourceIds"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ResourceIds"] as? [Any?] {
            var tmp : [AttachVscToFilesystemsRequest.ResourceIds] = []
            for v in value {
                if v != nil {
                    var model = AttachVscToFilesystemsRequest.ResourceIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceIds = tmp
        }
    }
}

public class AttachVscToFilesystemsResponseBody : Tea.TeaModel {
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

public class AttachVscToFilesystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachVscToFilesystemsResponseBody?

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
            var model = AttachVscToFilesystemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var fileSystemIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemIds != nil {
            map["FileSystemIds"] = self.fileSystemIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemIds"] as? String {
            self.fileSystemIds = value
        }
    }
}

public class CancelAutoSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class CancelAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAutoSnapshotPolicyResponseBody?

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
            var model = CancelAutoSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelDataFlowAutoRefreshRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var refreshPath: String?

    public override init() {
        super.init()
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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.refreshPath != nil {
            map["RefreshPath"] = self.refreshPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RefreshPath"] as? String {
            self.refreshPath = value
        }
    }
}

public class CancelDataFlowAutoRefreshResponseBody : Tea.TeaModel {
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

public class CancelDataFlowAutoRefreshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelDataFlowAutoRefreshResponseBody?

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
            var model = CancelDataFlowAutoRefreshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelDataFlowSubTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var dataFlowSubTaskId: String?

    public var dataFlowTaskId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dataFlowSubTaskId != nil {
            map["DataFlowSubTaskId"] = self.dataFlowSubTaskId!
        }
        if self.dataFlowTaskId != nil {
            map["DataFlowTaskId"] = self.dataFlowTaskId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DataFlowSubTaskId"] as? String {
            self.dataFlowSubTaskId = value
        }
        if let value = dict["DataFlowTaskId"] as? String {
            self.dataFlowTaskId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class CancelDataFlowSubTaskResponseBody : Tea.TeaModel {
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

public class CancelDataFlowSubTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelDataFlowSubTaskResponseBody?

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
            var model = CancelDataFlowSubTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelDataFlowTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CancelDataFlowTaskResponseBody : Tea.TeaModel {
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

public class CancelDataFlowTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelDataFlowTaskResponseBody?

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
            var model = CancelDataFlowTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelDirQuotaRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var path: String?

    public var userId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
    }
}

public class CancelDirQuotaResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelDirQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelDirQuotaResponseBody?

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
            var model = CancelDirQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelFilesetQuotaRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var fsetId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
    }
}

public class CancelFilesetQuotaResponseBody : Tea.TeaModel {
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

public class CancelFilesetQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelFilesetQuotaResponseBody?

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
            var model = CancelFilesetQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelLifecycleRetrieveJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class CancelLifecycleRetrieveJobResponseBody : Tea.TeaModel {
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

public class CancelLifecycleRetrieveJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelLifecycleRetrieveJobResponseBody?

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
            var model = CancelLifecycleRetrieveJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelRecycleBinJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class CancelRecycleBinJobResponseBody : Tea.TeaModel {
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

public class CancelRecycleBinJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRecycleBinJobResponseBody?

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
            var model = CancelRecycleBinJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
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

public class CreateAccessGroupRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var accessGroupType: String?

    public var description_: String?

    public var fileSystemType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.accessGroupType != nil {
            map["AccessGroupType"] = self.accessGroupType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["AccessGroupType"] as? String {
            self.accessGroupType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
    }
}

public class CreateAccessGroupResponseBody : Tea.TeaModel {
    public var accessGroupName: String?

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
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessGroupResponseBody?

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
            var model = CreateAccessGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccessPointRequest : Tea.TeaModel {
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
    public var accessGroup: String?

    public var accessPointName: String?

    public var enabledRam: Bool?

    public var fileSystemId: String?

    public var ownerGroupId: Int32?

    public var ownerUserId: Int32?

    public var permission: String?

    public var posixGroupId: Int32?

    public var posixSecondaryGroupIds: String?

    public var posixUserId: Int32?

    public var rootDirectory: String?

    public var tag: [CreateAccessPointRequest.Tag]?

    public var vpcId: String?

    public var vswId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroup != nil {
            map["AccessGroup"] = self.accessGroup!
        }
        if self.accessPointName != nil {
            map["AccessPointName"] = self.accessPointName!
        }
        if self.enabledRam != nil {
            map["EnabledRam"] = self.enabledRam!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.ownerGroupId != nil {
            map["OwnerGroupId"] = self.ownerGroupId!
        }
        if self.ownerUserId != nil {
            map["OwnerUserId"] = self.ownerUserId!
        }
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.posixGroupId != nil {
            map["PosixGroupId"] = self.posixGroupId!
        }
        if self.posixSecondaryGroupIds != nil {
            map["PosixSecondaryGroupIds"] = self.posixSecondaryGroupIds!
        }
        if self.posixUserId != nil {
            map["PosixUserId"] = self.posixUserId!
        }
        if self.rootDirectory != nil {
            map["RootDirectory"] = self.rootDirectory!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswId != nil {
            map["VswId"] = self.vswId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroup"] as? String {
            self.accessGroup = value
        }
        if let value = dict["AccessPointName"] as? String {
            self.accessPointName = value
        }
        if let value = dict["EnabledRam"] as? Bool {
            self.enabledRam = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["OwnerGroupId"] as? Int32 {
            self.ownerGroupId = value
        }
        if let value = dict["OwnerUserId"] as? Int32 {
            self.ownerUserId = value
        }
        if let value = dict["Permission"] as? String {
            self.permission = value
        }
        if let value = dict["PosixGroupId"] as? Int32 {
            self.posixGroupId = value
        }
        if let value = dict["PosixSecondaryGroupIds"] as? String {
            self.posixSecondaryGroupIds = value
        }
        if let value = dict["PosixUserId"] as? Int32 {
            self.posixUserId = value
        }
        if let value = dict["RootDirectory"] as? String {
            self.rootDirectory = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateAccessPointRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateAccessPointRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswId"] as? String {
            self.vswId = value
        }
    }
}

public class CreateAccessPointResponseBody : Tea.TeaModel {
    public class AccessPoint : Tea.TeaModel {
        public var accessPointDomain: String?

        public var accessPointId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessPointDomain != nil {
                map["AccessPointDomain"] = self.accessPointDomain!
            }
            if self.accessPointId != nil {
                map["AccessPointId"] = self.accessPointId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessPointDomain"] as? String {
                self.accessPointDomain = value
            }
            if let value = dict["AccessPointId"] as? String {
                self.accessPointId = value
            }
        }
    }
    public var accessPoint: CreateAccessPointResponseBody.AccessPoint?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessPoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessPoint != nil {
            map["AccessPoint"] = self.accessPoint?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessPoint"] as? [String: Any?] {
            var model = CreateAccessPointResponseBody.AccessPoint()
            model.fromMap(value)
            self.accessPoint = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessPointResponseBody?

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
            var model = CreateAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccessRuleRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var fileSystemType: String?

    public var ipv6SourceCidrIp: String?

    public var priority: Int32?

    public var RWAccessType: String?

    public var sourceCidrIp: String?

    public var userAccessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.ipv6SourceCidrIp != nil {
            map["Ipv6SourceCidrIp"] = self.ipv6SourceCidrIp!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.RWAccessType != nil {
            map["RWAccessType"] = self.RWAccessType!
        }
        if self.sourceCidrIp != nil {
            map["SourceCidrIp"] = self.sourceCidrIp!
        }
        if self.userAccessType != nil {
            map["UserAccessType"] = self.userAccessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["Ipv6SourceCidrIp"] as? String {
            self.ipv6SourceCidrIp = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RWAccessType"] as? String {
            self.RWAccessType = value
        }
        if let value = dict["SourceCidrIp"] as? String {
            self.sourceCidrIp = value
        }
        if let value = dict["UserAccessType"] as? String {
            self.userAccessType = value
        }
    }
}

public class CreateAccessRuleResponseBody : Tea.TeaModel {
    public var accessRuleId: String?

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
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessRuleResponseBody?

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
            var model = CreateAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var autoSnapshotPolicyName: String?

    public var fileSystemType: String?

    public var repeatWeekdays: String?

    public var retentionDays: Int32?

    public var timePoints: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicyName != nil {
            map["AutoSnapshotPolicyName"] = self.autoSnapshotPolicyName!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.repeatWeekdays != nil {
            map["RepeatWeekdays"] = self.repeatWeekdays!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.timePoints != nil {
            map["TimePoints"] = self.timePoints!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyName"] as? String {
            self.autoSnapshotPolicyName = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["RepeatWeekdays"] as? String {
            self.repeatWeekdays = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["TimePoints"] as? String {
            self.timePoints = value
        }
    }
}

public class CreateAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public var autoSnapshotPolicyId: String?

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
        if self.autoSnapshotPolicyId != nil {
            map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyId"] as? String {
            self.autoSnapshotPolicyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAutoSnapshotPolicyResponseBody?

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
            var model = CreateAutoSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataFlowRequest : Tea.TeaModel {
    public class AutoRefreshs : Tea.TeaModel {
        public var refreshPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.refreshPath != nil {
                map["RefreshPath"] = self.refreshPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RefreshPath"] as? String {
                self.refreshPath = value
            }
        }
    }
    public var autoRefreshInterval: Int64?

    public var autoRefreshPolicy: String?

    public var autoRefreshs: [CreateDataFlowRequest.AutoRefreshs]?

    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var fileSystemPath: String?

    public var fsetId: String?

    public var sourceSecurityType: String?

    public var sourceStorage: String?

    public var sourceStoragePath: String?

    public var throughput: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRefreshInterval != nil {
            map["AutoRefreshInterval"] = self.autoRefreshInterval!
        }
        if self.autoRefreshPolicy != nil {
            map["AutoRefreshPolicy"] = self.autoRefreshPolicy!
        }
        if self.autoRefreshs != nil {
            var tmp : [Any] = []
            for k in self.autoRefreshs! {
                tmp.append(k.toMap())
            }
            map["AutoRefreshs"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemPath != nil {
            map["FileSystemPath"] = self.fileSystemPath!
        }
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        if self.sourceSecurityType != nil {
            map["SourceSecurityType"] = self.sourceSecurityType!
        }
        if self.sourceStorage != nil {
            map["SourceStorage"] = self.sourceStorage!
        }
        if self.sourceStoragePath != nil {
            map["SourceStoragePath"] = self.sourceStoragePath!
        }
        if self.throughput != nil {
            map["Throughput"] = self.throughput!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRefreshInterval"] as? Int64 {
            self.autoRefreshInterval = value
        }
        if let value = dict["AutoRefreshPolicy"] as? String {
            self.autoRefreshPolicy = value
        }
        if let value = dict["AutoRefreshs"] as? [Any?] {
            var tmp : [CreateDataFlowRequest.AutoRefreshs] = []
            for v in value {
                if v != nil {
                    var model = CreateDataFlowRequest.AutoRefreshs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.autoRefreshs = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FileSystemPath"] as? String {
            self.fileSystemPath = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
        if let value = dict["SourceSecurityType"] as? String {
            self.sourceSecurityType = value
        }
        if let value = dict["SourceStorage"] as? String {
            self.sourceStorage = value
        }
        if let value = dict["SourceStoragePath"] as? String {
            self.sourceStoragePath = value
        }
        if let value = dict["Throughput"] as? Int64 {
            self.throughput = value
        }
    }
}

public class CreateDataFlowResponseBody : Tea.TeaModel {
    public var dataFlowId: String?

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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDataFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataFlowResponseBody?

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
            var model = CreateDataFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataFlowSubTaskRequest : Tea.TeaModel {
    public class Condition : Tea.TeaModel {
        public var modifyTime: Int64?

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
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var clientToken: String?

    public var condition: CreateDataFlowSubTaskRequest.Condition?

    public var dataFlowId: String?

    public var dataFlowTaskId: String?

    public var dryRun: Bool?

    public var dstFilePath: String?

    public var fileSystemId: String?

    public var srcFilePath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.condition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.condition != nil {
            map["Condition"] = self.condition?.toMap()
        }
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dataFlowTaskId != nil {
            map["DataFlowTaskId"] = self.dataFlowTaskId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.dstFilePath != nil {
            map["DstFilePath"] = self.dstFilePath!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.srcFilePath != nil {
            map["SrcFilePath"] = self.srcFilePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Condition"] as? [String: Any?] {
            var model = CreateDataFlowSubTaskRequest.Condition()
            model.fromMap(value)
            self.condition = model
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DataFlowTaskId"] as? String {
            self.dataFlowTaskId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["DstFilePath"] as? String {
            self.dstFilePath = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["SrcFilePath"] as? String {
            self.srcFilePath = value
        }
    }
}

public class CreateDataFlowSubTaskResponseBody : Tea.TeaModel {
    public var dataFlowSubTaskId: String?

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
        if self.dataFlowSubTaskId != nil {
            map["DataFlowSubTaskId"] = self.dataFlowSubTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFlowSubTaskId"] as? String {
            self.dataFlowSubTaskId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDataFlowSubTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataFlowSubTaskResponseBody?

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
            var model = CreateDataFlowSubTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataFlowTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var conflictPolicy: String?

    public var createDirIfNotExist: Bool?

    public var dataFlowId: String?

    public var dataType: String?

    public var directory: String?

    public var dryRun: Bool?

    public var dstDirectory: String?

    public var entryList: String?

    public var fileSystemId: String?

    public var includes: String?

    public var srcTaskId: String?

    public var taskAction: String?

    public var transferFileListPath: String?

    public override init() {
        super.init()
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
        if self.conflictPolicy != nil {
            map["ConflictPolicy"] = self.conflictPolicy!
        }
        if self.createDirIfNotExist != nil {
            map["CreateDirIfNotExist"] = self.createDirIfNotExist!
        }
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.directory != nil {
            map["Directory"] = self.directory!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.dstDirectory != nil {
            map["DstDirectory"] = self.dstDirectory!
        }
        if self.entryList != nil {
            map["EntryList"] = self.entryList!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.includes != nil {
            map["Includes"] = self.includes!
        }
        if self.srcTaskId != nil {
            map["SrcTaskId"] = self.srcTaskId!
        }
        if self.taskAction != nil {
            map["TaskAction"] = self.taskAction!
        }
        if self.transferFileListPath != nil {
            map["TransferFileListPath"] = self.transferFileListPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConflictPolicy"] as? String {
            self.conflictPolicy = value
        }
        if let value = dict["CreateDirIfNotExist"] as? Bool {
            self.createDirIfNotExist = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["Directory"] as? String {
            self.directory = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["DstDirectory"] as? String {
            self.dstDirectory = value
        }
        if let value = dict["EntryList"] as? String {
            self.entryList = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Includes"] as? String {
            self.includes = value
        }
        if let value = dict["SrcTaskId"] as? String {
            self.srcTaskId = value
        }
        if let value = dict["TaskAction"] as? String {
            self.taskAction = value
        }
        if let value = dict["TransferFileListPath"] as? String {
            self.transferFileListPath = value
        }
    }
}

public class CreateDataFlowTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateDataFlowTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataFlowTaskResponseBody?

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
            var model = CreateDataFlowTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDirRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var ownerGroupId: Int32?

    public var ownerUserId: Int32?

    public var permission: String?

    public var recursion: Bool?

    public var rootDirectory: String?

    public override init() {
        super.init()
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
        if self.ownerGroupId != nil {
            map["OwnerGroupId"] = self.ownerGroupId!
        }
        if self.ownerUserId != nil {
            map["OwnerUserId"] = self.ownerUserId!
        }
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.recursion != nil {
            map["Recursion"] = self.recursion!
        }
        if self.rootDirectory != nil {
            map["RootDirectory"] = self.rootDirectory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["OwnerGroupId"] as? Int32 {
            self.ownerGroupId = value
        }
        if let value = dict["OwnerUserId"] as? Int32 {
            self.ownerUserId = value
        }
        if let value = dict["Permission"] as? String {
            self.permission = value
        }
        if let value = dict["Recursion"] as? Bool {
            self.recursion = value
        }
        if let value = dict["RootDirectory"] as? String {
            self.rootDirectory = value
        }
    }
}

public class CreateDirResponseBody : Tea.TeaModel {
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

public class CreateDirResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDirResponseBody?

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
            var model = CreateDirResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFileRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var owner: String?

    public var ownerAccessInheritable: Bool?

    public var path: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerAccessInheritable != nil {
            map["OwnerAccessInheritable"] = self.ownerAccessInheritable!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerAccessInheritable"] as? Bool {
            self.ownerAccessInheritable = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateFileResponseBody : Tea.TeaModel {
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

public class CreateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileResponseBody?

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
            var model = CreateFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFileSystemRequest : Tea.TeaModel {
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

    public var capacity: Int64?

    public var chargeType: String?

    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var duration: Int32?

    public var encryptType: Int32?

    public var fileSystemType: String?

    public var kmsKeyId: String?

    public var protocolType: String?

    public var redundancyType: String?

    public var redundancyVSwitchIds: [String]?

    public var resourceGroupId: String?

    public var snapshotId: String?

    public var storageType: String?

    public var tag: [CreateFileSystemRequest.Tag]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.kmsKeyId != nil {
            map["KmsKeyId"] = self.kmsKeyId!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.redundancyType != nil {
            map["RedundancyType"] = self.redundancyType!
        }
        if self.redundancyVSwitchIds != nil {
            map["RedundancyVSwitchIds"] = self.redundancyVSwitchIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int64 {
            self.bandwidth = value
        }
        if let value = dict["Capacity"] as? Int64 {
            self.capacity = value
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EncryptType"] as? Int32 {
            self.encryptType = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["ProtocolType"] as? String {
            self.protocolType = value
        }
        if let value = dict["RedundancyType"] as? String {
            self.redundancyType = value
        }
        if let value = dict["RedundancyVSwitchIds"] as? [String] {
            self.redundancyVSwitchIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateFileSystemRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateFileSystemRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateFileSystemResponseBody : Tea.TeaModel {
    public var fileSystemId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileSystemResponseBody?

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
            var model = CreateFileSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFilesetRequest : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public var fileCountLimit: Int64?

        public var sizeLimit: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileCountLimit != nil {
                map["FileCountLimit"] = self.fileCountLimit!
            }
            if self.sizeLimit != nil {
                map["SizeLimit"] = self.sizeLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileCountLimit"] as? Int64 {
                self.fileCountLimit = value
            }
            if let value = dict["SizeLimit"] as? Int64 {
                self.sizeLimit = value
            }
        }
    }
    public var clientToken: String?

    public var deletionProtection: Bool?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var fileSystemPath: String?

    public var quota: CreateFilesetRequest.Quota?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemPath != nil {
            map["FileSystemPath"] = self.fileSystemPath!
        }
        if self.quota != nil {
            map["Quota"] = self.quota?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FileSystemPath"] as? String {
            self.fileSystemPath = value
        }
        if let value = dict["Quota"] as? [String: Any?] {
            var model = CreateFilesetRequest.Quota()
            model.fromMap(value)
            self.quota = model
        }
    }
}

public class CreateFilesetResponseBody : Tea.TeaModel {
    public var fsetId: String?

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
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFilesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFilesetResponseBody?

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
            var model = CreateFilesetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLDAPConfigRequest : Tea.TeaModel {
    public var bindDN: String?

    public var fileSystemId: String?

    public var searchBase: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindDN != nil {
            map["BindDN"] = self.bindDN!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.searchBase != nil {
            map["SearchBase"] = self.searchBase!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindDN"] as? String {
            self.bindDN = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["SearchBase"] as? String {
            self.searchBase = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
    }
}

public class CreateLDAPConfigResponseBody : Tea.TeaModel {
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

public class CreateLDAPConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLDAPConfigResponseBody?

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
            var model = CreateLDAPConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLifecyclePolicyRequest : Tea.TeaModel {
    public class RetrieveRules : Tea.TeaModel {
        public var attribute: String?

        public var threshold: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attribute != nil {
                map["Attribute"] = self.attribute!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attribute"] as? String {
                self.attribute = value
            }
            if let value = dict["Threshold"] as? String {
                self.threshold = value
            }
        }
    }
    public class TransitRules : Tea.TeaModel {
        public var attribute: String?

        public var threshold: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attribute != nil {
                map["Attribute"] = self.attribute!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attribute"] as? String {
                self.attribute = value
            }
            if let value = dict["Threshold"] as? String {
                self.threshold = value
            }
        }
    }
    public var description_: String?

    public var fileSystemId: String?

    public var lifecyclePolicyName: String?

    public var lifecyclePolicyType: String?

    public var lifecycleRuleName: String?

    public var path: String?

    public var paths: [String]?

    public var retrieveRules: [CreateLifecyclePolicyRequest.RetrieveRules]?

    public var storageType: String?

    public var transitRules: [CreateLifecyclePolicyRequest.TransitRules]?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.lifecyclePolicyName != nil {
            map["LifecyclePolicyName"] = self.lifecyclePolicyName!
        }
        if self.lifecyclePolicyType != nil {
            map["LifecyclePolicyType"] = self.lifecyclePolicyType!
        }
        if self.lifecycleRuleName != nil {
            map["LifecycleRuleName"] = self.lifecycleRuleName!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.paths != nil {
            map["Paths"] = self.paths!
        }
        if self.retrieveRules != nil {
            var tmp : [Any] = []
            for k in self.retrieveRules! {
                tmp.append(k.toMap())
            }
            map["RetrieveRules"] = tmp
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.transitRules != nil {
            var tmp : [Any] = []
            for k in self.transitRules! {
                tmp.append(k.toMap())
            }
            map["TransitRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["LifecyclePolicyName"] as? String {
            self.lifecyclePolicyName = value
        }
        if let value = dict["LifecyclePolicyType"] as? String {
            self.lifecyclePolicyType = value
        }
        if let value = dict["LifecycleRuleName"] as? String {
            self.lifecycleRuleName = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Paths"] as? [String] {
            self.paths = value
        }
        if let value = dict["RetrieveRules"] as? [Any?] {
            var tmp : [CreateLifecyclePolicyRequest.RetrieveRules] = []
            for v in value {
                if v != nil {
                    var model = CreateLifecyclePolicyRequest.RetrieveRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.retrieveRules = tmp
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["TransitRules"] as? [Any?] {
            var tmp : [CreateLifecyclePolicyRequest.TransitRules] = []
            for v in value {
                if v != nil {
                    var model = CreateLifecyclePolicyRequest.TransitRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transitRules = tmp
        }
    }
}

public class CreateLifecyclePolicyResponseBody : Tea.TeaModel {
    public var lifecyclePolicyId: String?

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
        if self.lifecyclePolicyId != nil {
            map["LifecyclePolicyId"] = self.lifecyclePolicyId!
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
        if let value = dict["LifecyclePolicyId"] as? String {
            self.lifecyclePolicyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateLifecyclePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLifecyclePolicyResponseBody?

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
            var model = CreateLifecyclePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLifecycleRetrieveJobRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var paths: [String]?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.paths != nil {
            map["Paths"] = self.paths!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Paths"] as? [String] {
            self.paths = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class CreateLifecycleRetrieveJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLifecycleRetrieveJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLifecycleRetrieveJobResponseBody?

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
            var model = CreateLifecycleRetrieveJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLogAnalysisRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateLogAnalysisResponseBody : Tea.TeaModel {
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

public class CreateLogAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogAnalysisResponseBody?

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
            var model = CreateLogAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMountTargetRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var dryRun: Bool?

    public var enableIpv6: Bool?

    public var fileSystemId: String?

    public var networkType: String?

    public var securityGroupId: String?

    public var vSwitchId: String?

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
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableIpv6 != nil {
            map["EnableIpv6"] = self.enableIpv6!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EnableIpv6"] as? Bool {
            self.enableIpv6 = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateMountTargetResponseBody : Tea.TeaModel {
    public class MountTargetExtra : Tea.TeaModel {
        public var dualStackMountTargetDomain: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dualStackMountTargetDomain != nil {
                map["DualStackMountTargetDomain"] = self.dualStackMountTargetDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DualStackMountTargetDomain"] as? String {
                self.dualStackMountTargetDomain = value
            }
        }
    }
    public var mountTargetDomain: String?

    public var mountTargetExtra: CreateMountTargetResponseBody.MountTargetExtra?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mountTargetExtra?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
        }
        if self.mountTargetExtra != nil {
            map["MountTargetExtra"] = self.mountTargetExtra?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountTargetDomain"] as? String {
            self.mountTargetDomain = value
        }
        if let value = dict["MountTargetExtra"] as? [String: Any?] {
            var model = CreateMountTargetResponseBody.MountTargetExtra()
            model.fromMap(value)
            self.mountTargetExtra = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMountTargetResponseBody?

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
            var model = CreateMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProtocolMountTargetRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var fsetId: String?

    public var path: String?

    public var protocolServiceId: String?

    public var vSwitchId: String?

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
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateProtocolMountTargetResponseBody : Tea.TeaModel {
    public var exportId: String?

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
        if self.exportId != nil {
            map["ExportId"] = self.exportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportId"] as? String {
            self.exportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateProtocolMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProtocolMountTargetResponseBody?

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
            var model = CreateProtocolMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProtocolServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var protocolSpec: String?

    public var protocolType: String?

    public var throughput: Int32?

    public var vSwitchId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.protocolSpec != nil {
            map["ProtocolSpec"] = self.protocolSpec!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.throughput != nil {
            map["Throughput"] = self.throughput!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ProtocolSpec"] as? String {
            self.protocolSpec = value
        }
        if let value = dict["ProtocolType"] as? String {
            self.protocolType = value
        }
        if let value = dict["Throughput"] as? Int32 {
            self.throughput = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateProtocolServiceResponseBody : Tea.TeaModel {
    public var protocolServiceId: String?

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
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateProtocolServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProtocolServiceResponseBody?

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
            var model = CreateProtocolServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRecycleBinDeleteJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var fileId: String?

    public var fileSystemId: String?

    public override init() {
        super.init()
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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class CreateRecycleBinDeleteJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRecycleBinDeleteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRecycleBinDeleteJobResponseBody?

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
            var model = CreateRecycleBinDeleteJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRecycleBinRestoreJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var fileId: String?

    public var fileSystemId: String?

    public var targetFileId: String?

    public override init() {
        super.init()
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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.targetFileId != nil {
            map["TargetFileId"] = self.targetFileId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["TargetFileId"] as? String {
            self.targetFileId = value
        }
    }
}

public class CreateRecycleBinRestoreJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRecycleBinRestoreJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRecycleBinRestoreJobResponseBody?

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
            var model = CreateRecycleBinRestoreJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSnapshotRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var retentionDays: Int32?

    public var snapshotName: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["SnapshotName"] as? String {
            self.snapshotName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccessGroupRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var fileSystemType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
    }
}

public class DeleteAccessGroupResponseBody : Tea.TeaModel {
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

public class DeleteAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessGroupResponseBody?

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
            var model = DeleteAccessGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccessPointRequest : Tea.TeaModel {
    public var accessPointId: String?

    public var fileSystemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessPointId != nil {
            map["AccessPointId"] = self.accessPointId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessPointId"] as? String {
            self.accessPointId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DeleteAccessPointResponseBody : Tea.TeaModel {
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

public class DeleteAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessPointResponseBody?

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
            var model = DeleteAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccessRuleRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var accessRuleId: String?

    public var fileSystemType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
    }
}

public class DeleteAccessRuleResponseBody : Tea.TeaModel {
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

public class DeleteAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessRuleResponseBody?

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
            var model = DeleteAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var autoSnapshotPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicyId != nil {
            map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyId"] as? String {
            self.autoSnapshotPolicyId = value
        }
    }
}

public class DeleteAutoSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class DeleteAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoSnapshotPolicyResponseBody?

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
            var model = DeleteAutoSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataFlowRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DeleteDataFlowResponseBody : Tea.TeaModel {
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

public class DeleteDataFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataFlowResponseBody?

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
            var model = DeleteDataFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFileSystemRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DeleteFileSystemResponseBody : Tea.TeaModel {
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

public class DeleteFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileSystemResponseBody?

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
            var model = DeleteFileSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFilesetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var fsetId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
    }
}

public class DeleteFilesetResponseBody : Tea.TeaModel {
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

public class DeleteFilesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFilesetResponseBody?

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
            var model = DeleteFilesetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLDAPConfigRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DeleteLDAPConfigResponseBody : Tea.TeaModel {
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

public class DeleteLDAPConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLDAPConfigResponseBody?

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
            var model = DeleteLDAPConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLifecyclePolicyRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var lifecyclePolicyId: String?

    public var lifecyclePolicyName: String?

    public override init() {
        super.init()
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
        if self.lifecyclePolicyId != nil {
            map["LifecyclePolicyId"] = self.lifecyclePolicyId!
        }
        if self.lifecyclePolicyName != nil {
            map["LifecyclePolicyName"] = self.lifecyclePolicyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["LifecyclePolicyId"] as? String {
            self.lifecyclePolicyId = value
        }
        if let value = dict["LifecyclePolicyName"] as? String {
            self.lifecyclePolicyName = value
        }
    }
}

public class DeleteLifecyclePolicyResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteLifecyclePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLifecyclePolicyResponseBody?

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
            var model = DeleteLifecyclePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLogAnalysisRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteLogAnalysisResponseBody : Tea.TeaModel {
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

public class DeleteLogAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLogAnalysisResponseBody?

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
            var model = DeleteLogAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMountTargetRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var mountTargetDomain: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MountTargetDomain"] as? String {
            self.mountTargetDomain = value
        }
    }
}

public class DeleteMountTargetResponseBody : Tea.TeaModel {
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

public class DeleteMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMountTargetResponseBody?

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
            var model = DeleteMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProtocolMountTargetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var exportId: String?

    public var fileSystemId: String?

    public var protocolServiceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.exportId != nil {
            map["ExportId"] = self.exportId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ExportId"] as? String {
            self.exportId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
    }
}

public class DeleteProtocolMountTargetResponseBody : Tea.TeaModel {
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

public class DeleteProtocolMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProtocolMountTargetResponseBody?

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
            var model = DeleteProtocolMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProtocolServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var protocolServiceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
    }
}

public class DeleteProtocolServiceResponseBody : Tea.TeaModel {
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

public class DeleteProtocolServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProtocolServiceResponseBody?

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
            var model = DeleteProtocolServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSnapshotRequest : Tea.TeaModel {
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
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccessGroupsRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var useUTCDateTime: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.useUTCDateTime != nil {
            map["UseUTCDateTime"] = self.useUTCDateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UseUTCDateTime"] as? Bool {
            self.useUTCDateTime = value
        }
    }
}

public class DescribeAccessGroupsResponseBody : Tea.TeaModel {
    public class AccessGroups : Tea.TeaModel {
        public class AccessGroup : Tea.TeaModel {
            public var accessGroupName: String?

            public var accessGroupType: String?

            public var createTime: String?

            public var description_: String?

            public var fileSystemType: String?

            public var mountTargetCount: Int32?

            public var regionId: String?

            public var ruleCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessGroupName != nil {
                    map["AccessGroupName"] = self.accessGroupName!
                }
                if self.accessGroupType != nil {
                    map["AccessGroupType"] = self.accessGroupType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.mountTargetCount != nil {
                    map["MountTargetCount"] = self.mountTargetCount!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.ruleCount != nil {
                    map["RuleCount"] = self.ruleCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessGroupName"] as? String {
                    self.accessGroupName = value
                }
                if let value = dict["AccessGroupType"] as? String {
                    self.accessGroupType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["MountTargetCount"] as? Int32 {
                    self.mountTargetCount = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RuleCount"] as? Int32 {
                    self.ruleCount = value
                }
            }
        }
        public var accessGroup: [DescribeAccessGroupsResponseBody.AccessGroups.AccessGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessGroup != nil {
                var tmp : [Any] = []
                for k in self.accessGroup! {
                    tmp.append(k.toMap())
                }
                map["AccessGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroup"] as? [Any?] {
                var tmp : [DescribeAccessGroupsResponseBody.AccessGroups.AccessGroup] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessGroupsResponseBody.AccessGroups.AccessGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accessGroup = tmp
            }
        }
    }
    public var accessGroups: DescribeAccessGroupsResponseBody.AccessGroups?

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
        try self.accessGroups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroups != nil {
            map["AccessGroups"] = self.accessGroups?.toMap()
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
        if let value = dict["AccessGroups"] as? [String: Any?] {
            var model = DescribeAccessGroupsResponseBody.AccessGroups()
            model.fromMap(value)
            self.accessGroups = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAccessGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessGroupsResponseBody?

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
            var model = DescribeAccessGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccessPointRequest : Tea.TeaModel {
    public var accessPointId: String?

    public var fileSystemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessPointId != nil {
            map["AccessPointId"] = self.accessPointId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessPointId"] as? String {
            self.accessPointId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DescribeAccessPointResponseBody : Tea.TeaModel {
    public class AccessPoint : Tea.TeaModel {
        public class PosixUser : Tea.TeaModel {
            public var posixGroupId: Int32?

            public var posixSecondaryGroupIds: [Int32]?

            public var posixUserId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.posixGroupId != nil {
                    map["PosixGroupId"] = self.posixGroupId!
                }
                if self.posixSecondaryGroupIds != nil {
                    map["PosixSecondaryGroupIds"] = self.posixSecondaryGroupIds!
                }
                if self.posixUserId != nil {
                    map["PosixUserId"] = self.posixUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PosixGroupId"] as? Int32 {
                    self.posixGroupId = value
                }
                if let value = dict["PosixSecondaryGroupIds"] as? [Int32] {
                    self.posixSecondaryGroupIds = value
                }
                if let value = dict["PosixUserId"] as? Int32 {
                    self.posixUserId = value
                }
            }
        }
        public class RootPathPermission : Tea.TeaModel {
            public var ownerGroupId: Int32?

            public var ownerUserId: Int32?

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
                if self.ownerGroupId != nil {
                    map["OwnerGroupId"] = self.ownerGroupId!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.permission != nil {
                    map["Permission"] = self.permission!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OwnerGroupId"] as? Int32 {
                    self.ownerGroupId = value
                }
                if let value = dict["OwnerUserId"] as? Int32 {
                    self.ownerUserId = value
                }
                if let value = dict["Permission"] as? String {
                    self.permission = value
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
        public var ARN: String?

        public var accessGroup: String?

        public var accessPointId: String?

        public var accessPointName: String?

        public var createTime: String?

        public var domainName: String?

        public var enabledRam: Bool?

        public var fileSystemId: String?

        public var modifyTime: String?

        public var posixUser: DescribeAccessPointResponseBody.AccessPoint.PosixUser?

        public var regionId: String?

        public var rootPath: String?

        public var rootPathPermission: DescribeAccessPointResponseBody.AccessPoint.RootPathPermission?

        public var rootPathStatus: String?

        public var status: String?

        public var tags: [DescribeAccessPointResponseBody.AccessPoint.Tags]?

        public var vSwitchId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.posixUser?.validate()
            try self.rootPathPermission?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ARN != nil {
                map["ARN"] = self.ARN!
            }
            if self.accessGroup != nil {
                map["AccessGroup"] = self.accessGroup!
            }
            if self.accessPointId != nil {
                map["AccessPointId"] = self.accessPointId!
            }
            if self.accessPointName != nil {
                map["AccessPointName"] = self.accessPointName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.enabledRam != nil {
                map["EnabledRam"] = self.enabledRam!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.posixUser != nil {
                map["PosixUser"] = self.posixUser?.toMap()
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.rootPath != nil {
                map["RootPath"] = self.rootPath!
            }
            if self.rootPathPermission != nil {
                map["RootPathPermission"] = self.rootPathPermission?.toMap()
            }
            if self.rootPathStatus != nil {
                map["RootPathStatus"] = self.rootPathStatus!
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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ARN"] as? String {
                self.ARN = value
            }
            if let value = dict["AccessGroup"] as? String {
                self.accessGroup = value
            }
            if let value = dict["AccessPointId"] as? String {
                self.accessPointId = value
            }
            if let value = dict["AccessPointName"] as? String {
                self.accessPointName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["EnabledRam"] as? Bool {
                self.enabledRam = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["PosixUser"] as? [String: Any?] {
                var model = DescribeAccessPointResponseBody.AccessPoint.PosixUser()
                model.fromMap(value)
                self.posixUser = model
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RootPath"] as? String {
                self.rootPath = value
            }
            if let value = dict["RootPathPermission"] as? [String: Any?] {
                var model = DescribeAccessPointResponseBody.AccessPoint.RootPathPermission()
                model.fromMap(value)
                self.rootPathPermission = model
            }
            if let value = dict["RootPathStatus"] as? String {
                self.rootPathStatus = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeAccessPointResponseBody.AccessPoint.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessPointResponseBody.AccessPoint.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessPoint: DescribeAccessPointResponseBody.AccessPoint?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessPoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessPoint != nil {
            map["AccessPoint"] = self.accessPoint?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessPoint"] as? [String: Any?] {
            var model = DescribeAccessPointResponseBody.AccessPoint()
            model.fromMap(value)
            self.accessPoint = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessPointResponseBody?

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
            var model = DescribeAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccessPointsRequest : Tea.TeaModel {
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
    public var accessGroup: String?

    public var fileSystemId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tag: [DescribeAccessPointsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroup != nil {
            map["AccessGroup"] = self.accessGroup!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["AccessGroup"] as? String {
            self.accessGroup = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeAccessPointsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeAccessPointsRequest.Tag()
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

public class DescribeAccessPointsResponseBody : Tea.TeaModel {
    public class AccessPoints : Tea.TeaModel {
        public class PosixUser : Tea.TeaModel {
            public var posixGroupId: Int32?

            public var posixSecondaryGroupIds: [Int32]?

            public var posixUserId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.posixGroupId != nil {
                    map["PosixGroupId"] = self.posixGroupId!
                }
                if self.posixSecondaryGroupIds != nil {
                    map["PosixSecondaryGroupIds"] = self.posixSecondaryGroupIds!
                }
                if self.posixUserId != nil {
                    map["PosixUserId"] = self.posixUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PosixGroupId"] as? Int32 {
                    self.posixGroupId = value
                }
                if let value = dict["PosixSecondaryGroupIds"] as? [Int32] {
                    self.posixSecondaryGroupIds = value
                }
                if let value = dict["PosixUserId"] as? Int32 {
                    self.posixUserId = value
                }
            }
        }
        public class RootPathPermission : Tea.TeaModel {
            public var ownerGroupId: Int64?

            public var ownerUserId: Int64?

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
                if self.ownerGroupId != nil {
                    map["OwnerGroupId"] = self.ownerGroupId!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.permission != nil {
                    map["Permission"] = self.permission!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OwnerGroupId"] as? Int64 {
                    self.ownerGroupId = value
                }
                if let value = dict["OwnerUserId"] as? Int64 {
                    self.ownerUserId = value
                }
                if let value = dict["Permission"] as? String {
                    self.permission = value
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
        public var ARN: String?

        public var accessGroup: String?

        public var accessPointId: String?

        public var accessPointName: String?

        public var createTime: String?

        public var domainName: String?

        public var enabledRam: Bool?

        public var fileSystemId: String?

        public var modifyTime: String?

        public var posixUser: DescribeAccessPointsResponseBody.AccessPoints.PosixUser?

        public var rootPath: String?

        public var rootPathPermission: DescribeAccessPointsResponseBody.AccessPoints.RootPathPermission?

        public var rootPathStatus: String?

        public var status: String?

        public var tags: [DescribeAccessPointsResponseBody.AccessPoints.Tags]?

        public var vSwitchId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.posixUser?.validate()
            try self.rootPathPermission?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ARN != nil {
                map["ARN"] = self.ARN!
            }
            if self.accessGroup != nil {
                map["AccessGroup"] = self.accessGroup!
            }
            if self.accessPointId != nil {
                map["AccessPointId"] = self.accessPointId!
            }
            if self.accessPointName != nil {
                map["AccessPointName"] = self.accessPointName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.enabledRam != nil {
                map["EnabledRam"] = self.enabledRam!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.posixUser != nil {
                map["PosixUser"] = self.posixUser?.toMap()
            }
            if self.rootPath != nil {
                map["RootPath"] = self.rootPath!
            }
            if self.rootPathPermission != nil {
                map["RootPathPermission"] = self.rootPathPermission?.toMap()
            }
            if self.rootPathStatus != nil {
                map["RootPathStatus"] = self.rootPathStatus!
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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ARN"] as? String {
                self.ARN = value
            }
            if let value = dict["AccessGroup"] as? String {
                self.accessGroup = value
            }
            if let value = dict["AccessPointId"] as? String {
                self.accessPointId = value
            }
            if let value = dict["AccessPointName"] as? String {
                self.accessPointName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["EnabledRam"] as? Bool {
                self.enabledRam = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["PosixUser"] as? [String: Any?] {
                var model = DescribeAccessPointsResponseBody.AccessPoints.PosixUser()
                model.fromMap(value)
                self.posixUser = model
            }
            if let value = dict["RootPath"] as? String {
                self.rootPath = value
            }
            if let value = dict["RootPathPermission"] as? [String: Any?] {
                var model = DescribeAccessPointsResponseBody.AccessPoints.RootPathPermission()
                model.fromMap(value)
                self.rootPathPermission = model
            }
            if let value = dict["RootPathStatus"] as? String {
                self.rootPathStatus = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeAccessPointsResponseBody.AccessPoints.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessPointsResponseBody.AccessPoints.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessPoints: [DescribeAccessPointsResponseBody.AccessPoints]?

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
        if self.accessPoints != nil {
            var tmp : [Any] = []
            for k in self.accessPoints! {
                tmp.append(k.toMap())
            }
            map["AccessPoints"] = tmp
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
        if let value = dict["AccessPoints"] as? [Any?] {
            var tmp : [DescribeAccessPointsResponseBody.AccessPoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeAccessPointsResponseBody.AccessPoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessPoints = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAccessPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessPointsResponseBody?

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
            var model = DescribeAccessPointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccessRulesRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var accessRuleId: String?

    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeAccessRulesResponseBody : Tea.TeaModel {
    public class AccessRules : Tea.TeaModel {
        public class AccessRule : Tea.TeaModel {
            public var accessGroupName: String?

            public var accessRuleId: String?

            public var fileSystemType: String?

            public var ipv6SourceCidrIp: String?

            public var priority: Int32?

            public var RWAccess: String?

            public var regionId: String?

            public var sourceCidrIp: String?

            public var userAccess: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessGroupName != nil {
                    map["AccessGroupName"] = self.accessGroupName!
                }
                if self.accessRuleId != nil {
                    map["AccessRuleId"] = self.accessRuleId!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.ipv6SourceCidrIp != nil {
                    map["Ipv6SourceCidrIp"] = self.ipv6SourceCidrIp!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.RWAccess != nil {
                    map["RWAccess"] = self.RWAccess!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.sourceCidrIp != nil {
                    map["SourceCidrIp"] = self.sourceCidrIp!
                }
                if self.userAccess != nil {
                    map["UserAccess"] = self.userAccess!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessGroupName"] as? String {
                    self.accessGroupName = value
                }
                if let value = dict["AccessRuleId"] as? String {
                    self.accessRuleId = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["Ipv6SourceCidrIp"] as? String {
                    self.ipv6SourceCidrIp = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["RWAccess"] as? String {
                    self.RWAccess = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["SourceCidrIp"] as? String {
                    self.sourceCidrIp = value
                }
                if let value = dict["UserAccess"] as? String {
                    self.userAccess = value
                }
            }
        }
        public var accessRule: [DescribeAccessRulesResponseBody.AccessRules.AccessRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessRule != nil {
                var tmp : [Any] = []
                for k in self.accessRule! {
                    tmp.append(k.toMap())
                }
                map["AccessRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessRule"] as? [Any?] {
                var tmp : [DescribeAccessRulesResponseBody.AccessRules.AccessRule] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessRulesResponseBody.AccessRules.AccessRule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accessRule = tmp
            }
        }
    }
    public var accessRules: DescribeAccessRulesResponseBody.AccessRules?

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
        try self.accessRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessRules != nil {
            map["AccessRules"] = self.accessRules?.toMap()
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
        if let value = dict["AccessRules"] as? [String: Any?] {
            var model = DescribeAccessRulesResponseBody.AccessRules()
            model.fromMap(value)
            self.accessRules = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAccessRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessRulesResponseBody?

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
            var model = DescribeAccessRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutoSnapshotPoliciesRequest : Tea.TeaModel {
    public var autoSnapshotPolicyId: String?

    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicyId != nil {
            map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyId"] as? String {
            self.autoSnapshotPolicyId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeAutoSnapshotPoliciesResponseBody : Tea.TeaModel {
    public class AutoSnapshotPolicies : Tea.TeaModel {
        public class AutoSnapshotPolicy : Tea.TeaModel {
            public var autoSnapshotPolicyId: String?

            public var autoSnapshotPolicyName: String?

            public var createTime: String?

            public var fileSystemNums: Int32?

            public var fileSystemType: String?

            public var regionId: String?

            public var repeatWeekdays: String?

            public var retentionDays: Int32?

            public var status: String?

            public var timePoints: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoSnapshotPolicyId != nil {
                    map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
                }
                if self.autoSnapshotPolicyName != nil {
                    map["AutoSnapshotPolicyName"] = self.autoSnapshotPolicyName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.fileSystemNums != nil {
                    map["FileSystemNums"] = self.fileSystemNums!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.repeatWeekdays != nil {
                    map["RepeatWeekdays"] = self.repeatWeekdays!
                }
                if self.retentionDays != nil {
                    map["RetentionDays"] = self.retentionDays!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timePoints != nil {
                    map["TimePoints"] = self.timePoints!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoSnapshotPolicyId"] as? String {
                    self.autoSnapshotPolicyId = value
                }
                if let value = dict["AutoSnapshotPolicyName"] as? String {
                    self.autoSnapshotPolicyName = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FileSystemNums"] as? Int32 {
                    self.fileSystemNums = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RepeatWeekdays"] as? String {
                    self.repeatWeekdays = value
                }
                if let value = dict["RetentionDays"] as? Int32 {
                    self.retentionDays = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TimePoints"] as? String {
                    self.timePoints = value
                }
            }
        }
        public var autoSnapshotPolicy: [DescribeAutoSnapshotPoliciesResponseBody.AutoSnapshotPolicies.AutoSnapshotPolicy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoSnapshotPolicy != nil {
                var tmp : [Any] = []
                for k in self.autoSnapshotPolicy! {
                    tmp.append(k.toMap())
                }
                map["AutoSnapshotPolicy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoSnapshotPolicy"] as? [Any?] {
                var tmp : [DescribeAutoSnapshotPoliciesResponseBody.AutoSnapshotPolicies.AutoSnapshotPolicy] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAutoSnapshotPoliciesResponseBody.AutoSnapshotPolicies.AutoSnapshotPolicy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.autoSnapshotPolicy = tmp
            }
        }
    }
    public var autoSnapshotPolicies: DescribeAutoSnapshotPoliciesResponseBody.AutoSnapshotPolicies?

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
        try self.autoSnapshotPolicies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicies != nil {
            map["AutoSnapshotPolicies"] = self.autoSnapshotPolicies?.toMap()
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
        if let value = dict["AutoSnapshotPolicies"] as? [String: Any?] {
            var model = DescribeAutoSnapshotPoliciesResponseBody.AutoSnapshotPolicies()
            model.fromMap(value)
            self.autoSnapshotPolicies = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAutoSnapshotPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoSnapshotPoliciesResponseBody?

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
            var model = DescribeAutoSnapshotPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutoSnapshotTasksRequest : Tea.TeaModel {
    public var autoSnapshotPolicyIds: String?

    public var fileSystemIds: String?

    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicyIds != nil {
            map["AutoSnapshotPolicyIds"] = self.autoSnapshotPolicyIds!
        }
        if self.fileSystemIds != nil {
            map["FileSystemIds"] = self.fileSystemIds!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyIds"] as? String {
            self.autoSnapshotPolicyIds = value
        }
        if let value = dict["FileSystemIds"] as? String {
            self.fileSystemIds = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeAutoSnapshotTasksResponseBody : Tea.TeaModel {
    public class AutoSnapshotTasks : Tea.TeaModel {
        public class AutoSnapshotTask : Tea.TeaModel {
            public var autoSnapshotPolicyId: String?

            public var sourceFileSystemId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoSnapshotPolicyId != nil {
                    map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
                }
                if self.sourceFileSystemId != nil {
                    map["SourceFileSystemId"] = self.sourceFileSystemId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoSnapshotPolicyId"] as? String {
                    self.autoSnapshotPolicyId = value
                }
                if let value = dict["SourceFileSystemId"] as? String {
                    self.sourceFileSystemId = value
                }
            }
        }
        public var autoSnapshotTask: [DescribeAutoSnapshotTasksResponseBody.AutoSnapshotTasks.AutoSnapshotTask]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoSnapshotTask != nil {
                var tmp : [Any] = []
                for k in self.autoSnapshotTask! {
                    tmp.append(k.toMap())
                }
                map["AutoSnapshotTask"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoSnapshotTask"] as? [Any?] {
                var tmp : [DescribeAutoSnapshotTasksResponseBody.AutoSnapshotTasks.AutoSnapshotTask] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAutoSnapshotTasksResponseBody.AutoSnapshotTasks.AutoSnapshotTask()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.autoSnapshotTask = tmp
            }
        }
    }
    public var autoSnapshotTasks: DescribeAutoSnapshotTasksResponseBody.AutoSnapshotTasks?

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
        try self.autoSnapshotTasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotTasks != nil {
            map["AutoSnapshotTasks"] = self.autoSnapshotTasks?.toMap()
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
        if let value = dict["AutoSnapshotTasks"] as? [String: Any?] {
            var model = DescribeAutoSnapshotTasksResponseBody.AutoSnapshotTasks()
            model.fromMap(value)
            self.autoSnapshotTasks = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAutoSnapshotTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoSnapshotTasksResponseBody?

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
            var model = DescribeAutoSnapshotTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBlackListClientsRequest : Tea.TeaModel {
    public var clientIP: String?

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
        if self.clientIP != nil {
            map["ClientIP"] = self.clientIP!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIP"] as? String {
            self.clientIP = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeBlackListClientsResponseBody : Tea.TeaModel {
    public var clients: String?

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
        if self.clients != nil {
            map["Clients"] = self.clients!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clients"] as? String {
            self.clients = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBlackListClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBlackListClientsResponseBody?

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
            var model = DescribeBlackListClientsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataFlowSubTasksRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
    public var fileSystemId: String?

    public var filters: [DescribeDataFlowSubTasksRequest.Filters]?

    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeDataFlowSubTasksRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataFlowSubTasksRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class DescribeDataFlowSubTasksResponseBody : Tea.TeaModel {
    public class DataFlowSubTask : Tea.TeaModel {
        public class DataFlowSubTask : Tea.TeaModel {
            public class FileDetail : Tea.TeaModel {
                public var checksum: String?

                public var modifyTime: Int64?

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
                    if self.checksum != nil {
                        map["Checksum"] = self.checksum!
                    }
                    if self.modifyTime != nil {
                        map["ModifyTime"] = self.modifyTime!
                    }
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Checksum"] as? String {
                        self.checksum = value
                    }
                    if let value = dict["ModifyTime"] as? Int64 {
                        self.modifyTime = value
                    }
                    if let value = dict["Size"] as? Int64 {
                        self.size = value
                    }
                }
            }
            public class ProgressStats : Tea.TeaModel {
                public var actualBytes: Int64?

                public var averageSpeed: Int64?

                public var bytesDone: Int64?

                public var bytesTotal: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actualBytes != nil {
                        map["ActualBytes"] = self.actualBytes!
                    }
                    if self.averageSpeed != nil {
                        map["AverageSpeed"] = self.averageSpeed!
                    }
                    if self.bytesDone != nil {
                        map["BytesDone"] = self.bytesDone!
                    }
                    if self.bytesTotal != nil {
                        map["BytesTotal"] = self.bytesTotal!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActualBytes"] as? Int64 {
                        self.actualBytes = value
                    }
                    if let value = dict["AverageSpeed"] as? Int64 {
                        self.averageSpeed = value
                    }
                    if let value = dict["BytesDone"] as? Int64 {
                        self.bytesDone = value
                    }
                    if let value = dict["BytesTotal"] as? Int64 {
                        self.bytesTotal = value
                    }
                }
            }
            public var createTime: String?

            public var dataFlowId: String?

            public var dataFlowSubTaskId: String?

            public var dataFlowTaskId: String?

            public var dstFilePath: String?

            public var endTime: String?

            public var errorMsg: String?

            public var fileDetail: DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask.FileDetail?

            public var fileSystemId: String?

            public var progress: Int32?

            public var progressStats: DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask.ProgressStats?

            public var srcFilePath: String?

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
                try self.fileDetail?.validate()
                try self.progressStats?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataFlowId != nil {
                    map["DataFlowId"] = self.dataFlowId!
                }
                if self.dataFlowSubTaskId != nil {
                    map["DataFlowSubTaskId"] = self.dataFlowSubTaskId!
                }
                if self.dataFlowTaskId != nil {
                    map["DataFlowTaskId"] = self.dataFlowTaskId!
                }
                if self.dstFilePath != nil {
                    map["DstFilePath"] = self.dstFilePath!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.fileDetail != nil {
                    map["FileDetail"] = self.fileDetail?.toMap()
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.progressStats != nil {
                    map["ProgressStats"] = self.progressStats?.toMap()
                }
                if self.srcFilePath != nil {
                    map["SrcFilePath"] = self.srcFilePath!
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
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DataFlowId"] as? String {
                    self.dataFlowId = value
                }
                if let value = dict["DataFlowSubTaskId"] as? String {
                    self.dataFlowSubTaskId = value
                }
                if let value = dict["DataFlowTaskId"] as? String {
                    self.dataFlowTaskId = value
                }
                if let value = dict["DstFilePath"] as? String {
                    self.dstFilePath = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["FileDetail"] as? [String: Any?] {
                    var model = DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask.FileDetail()
                    model.fromMap(value)
                    self.fileDetail = model
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["ProgressStats"] as? [String: Any?] {
                    var model = DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask.ProgressStats()
                    model.fromMap(value)
                    self.progressStats = model
                }
                if let value = dict["SrcFilePath"] as? String {
                    self.srcFilePath = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var dataFlowSubTask: [DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataFlowSubTask != nil {
                var tmp : [Any] = []
                for k in self.dataFlowSubTask! {
                    tmp.append(k.toMap())
                }
                map["DataFlowSubTask"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataFlowSubTask"] as? [Any?] {
                var tmp : [DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataFlowSubTasksResponseBody.DataFlowSubTask.DataFlowSubTask()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataFlowSubTask = tmp
            }
        }
    }
    public var dataFlowSubTask: DescribeDataFlowSubTasksResponseBody.DataFlowSubTask?

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
        try self.dataFlowSubTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFlowSubTask != nil {
            map["DataFlowSubTask"] = self.dataFlowSubTask?.toMap()
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
        if let value = dict["DataFlowSubTask"] as? [String: Any?] {
            var model = DescribeDataFlowSubTasksResponseBody.DataFlowSubTask()
            model.fromMap(value)
            self.dataFlowSubTask = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDataFlowSubTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataFlowSubTasksResponseBody?

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
            var model = DescribeDataFlowSubTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataFlowTasksRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
    public var fileSystemId: String?

    public var filters: [DescribeDataFlowTasksRequest.Filters]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var withReports: Bool?

    public override init() {
        super.init()
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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.withReports != nil {
            map["WithReports"] = self.withReports!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeDataFlowTasksRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataFlowTasksRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["WithReports"] as? Bool {
            self.withReports = value
        }
    }
}

public class DescribeDataFlowTasksResponseBody : Tea.TeaModel {
    public class TaskInfo : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public class ProgressStats : Tea.TeaModel {
                public var actualBytes: Int64?

                public var actualFiles: Int64?

                public var averageSpeed: Int64?

                public var bytesDone: Int64?

                public var bytesTotal: Int64?

                public var filesDone: Int64?

                public var filesTotal: Int64?

                public var remainTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actualBytes != nil {
                        map["ActualBytes"] = self.actualBytes!
                    }
                    if self.actualFiles != nil {
                        map["ActualFiles"] = self.actualFiles!
                    }
                    if self.averageSpeed != nil {
                        map["AverageSpeed"] = self.averageSpeed!
                    }
                    if self.bytesDone != nil {
                        map["BytesDone"] = self.bytesDone!
                    }
                    if self.bytesTotal != nil {
                        map["BytesTotal"] = self.bytesTotal!
                    }
                    if self.filesDone != nil {
                        map["FilesDone"] = self.filesDone!
                    }
                    if self.filesTotal != nil {
                        map["FilesTotal"] = self.filesTotal!
                    }
                    if self.remainTime != nil {
                        map["RemainTime"] = self.remainTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActualBytes"] as? Int64 {
                        self.actualBytes = value
                    }
                    if let value = dict["ActualFiles"] as? Int64 {
                        self.actualFiles = value
                    }
                    if let value = dict["AverageSpeed"] as? Int64 {
                        self.averageSpeed = value
                    }
                    if let value = dict["BytesDone"] as? Int64 {
                        self.bytesDone = value
                    }
                    if let value = dict["BytesTotal"] as? Int64 {
                        self.bytesTotal = value
                    }
                    if let value = dict["FilesDone"] as? Int64 {
                        self.filesDone = value
                    }
                    if let value = dict["FilesTotal"] as? Int64 {
                        self.filesTotal = value
                    }
                    if let value = dict["RemainTime"] as? Int64 {
                        self.remainTime = value
                    }
                }
            }
            public class Reports : Tea.TeaModel {
                public class Report : Tea.TeaModel {
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                    }
                }
                public var report: [DescribeDataFlowTasksResponseBody.TaskInfo.Task.Reports.Report]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.report != nil {
                        var tmp : [Any] = []
                        for k in self.report! {
                            tmp.append(k.toMap())
                        }
                        map["Report"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Report"] as? [Any?] {
                        var tmp : [DescribeDataFlowTasksResponseBody.TaskInfo.Task.Reports.Report] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDataFlowTasksResponseBody.TaskInfo.Task.Reports.Report()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.report = tmp
                    }
                }
            }
            public var conflictPolicy: String?

            public var createTime: String?

            public var dataFlowId: String?

            public var dataType: String?

            public var directory: String?

            public var dstDirectory: String?

            public var endTime: String?

            public var errorMsg: String?

            public var fileSystemPath: String?

            public var filesystemId: String?

            public var fsPath: String?

            public var includes: String?

            public var originator: String?

            public var progress: Int64?

            public var progressStats: DescribeDataFlowTasksResponseBody.TaskInfo.Task.ProgressStats?

            public var reportPath: String?

            public var reports: DescribeDataFlowTasksResponseBody.TaskInfo.Task.Reports?

            public var sourceStorage: String?

            public var startTime: String?

            public var status: String?

            public var taskAction: String?

            public var taskId: String?

            public var transferFileListPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.progressStats?.validate()
                try self.reports?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conflictPolicy != nil {
                    map["ConflictPolicy"] = self.conflictPolicy!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataFlowId != nil {
                    map["DataFlowId"] = self.dataFlowId!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.directory != nil {
                    map["Directory"] = self.directory!
                }
                if self.dstDirectory != nil {
                    map["DstDirectory"] = self.dstDirectory!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.fileSystemPath != nil {
                    map["FileSystemPath"] = self.fileSystemPath!
                }
                if self.filesystemId != nil {
                    map["FilesystemId"] = self.filesystemId!
                }
                if self.fsPath != nil {
                    map["FsPath"] = self.fsPath!
                }
                if self.includes != nil {
                    map["Includes"] = self.includes!
                }
                if self.originator != nil {
                    map["Originator"] = self.originator!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.progressStats != nil {
                    map["ProgressStats"] = self.progressStats?.toMap()
                }
                if self.reportPath != nil {
                    map["ReportPath"] = self.reportPath!
                }
                if self.reports != nil {
                    map["Reports"] = self.reports?.toMap()
                }
                if self.sourceStorage != nil {
                    map["SourceStorage"] = self.sourceStorage!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskAction != nil {
                    map["TaskAction"] = self.taskAction!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.transferFileListPath != nil {
                    map["TransferFileListPath"] = self.transferFileListPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConflictPolicy"] as? String {
                    self.conflictPolicy = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DataFlowId"] as? String {
                    self.dataFlowId = value
                }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["Directory"] as? String {
                    self.directory = value
                }
                if let value = dict["DstDirectory"] as? String {
                    self.dstDirectory = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["FileSystemPath"] as? String {
                    self.fileSystemPath = value
                }
                if let value = dict["FilesystemId"] as? String {
                    self.filesystemId = value
                }
                if let value = dict["FsPath"] as? String {
                    self.fsPath = value
                }
                if let value = dict["Includes"] as? String {
                    self.includes = value
                }
                if let value = dict["Originator"] as? String {
                    self.originator = value
                }
                if let value = dict["Progress"] as? Int64 {
                    self.progress = value
                }
                if let value = dict["ProgressStats"] as? [String: Any?] {
                    var model = DescribeDataFlowTasksResponseBody.TaskInfo.Task.ProgressStats()
                    model.fromMap(value)
                    self.progressStats = model
                }
                if let value = dict["ReportPath"] as? String {
                    self.reportPath = value
                }
                if let value = dict["Reports"] as? [String: Any?] {
                    var model = DescribeDataFlowTasksResponseBody.TaskInfo.Task.Reports()
                    model.fromMap(value)
                    self.reports = model
                }
                if let value = dict["SourceStorage"] as? String {
                    self.sourceStorage = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskAction"] as? String {
                    self.taskAction = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TransferFileListPath"] as? String {
                    self.transferFileListPath = value
                }
            }
        }
        public var task: [DescribeDataFlowTasksResponseBody.TaskInfo.Task]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.task != nil {
                var tmp : [Any] = []
                for k in self.task! {
                    tmp.append(k.toMap())
                }
                map["Task"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Task"] as? [Any?] {
                var tmp : [DescribeDataFlowTasksResponseBody.TaskInfo.Task] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataFlowTasksResponseBody.TaskInfo.Task()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.task = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var taskInfo: DescribeDataFlowTasksResponseBody.TaskInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskInfo != nil {
            map["TaskInfo"] = self.taskInfo?.toMap()
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
        if let value = dict["TaskInfo"] as? [String: Any?] {
            var model = DescribeDataFlowTasksResponseBody.TaskInfo()
            model.fromMap(value)
            self.taskInfo = model
        }
    }
}

public class DescribeDataFlowTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataFlowTasksResponseBody?

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
            var model = DescribeDataFlowTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataFlowsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
    public var fileSystemId: String?

    public var filters: [DescribeDataFlowsRequest.Filters]?

    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeDataFlowsRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataFlowsRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class DescribeDataFlowsResponseBody : Tea.TeaModel {
    public class DataFlowInfo : Tea.TeaModel {
        public class DataFlow : Tea.TeaModel {
            public class AutoRefresh : Tea.TeaModel {
                public class AutoRefresh : Tea.TeaModel {
                    public var refreshPath: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.refreshPath != nil {
                            map["RefreshPath"] = self.refreshPath!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["RefreshPath"] as? String {
                            self.refreshPath = value
                        }
                    }
                }
                public var autoRefresh: [DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow.AutoRefresh.AutoRefresh]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoRefresh != nil {
                        var tmp : [Any] = []
                        for k in self.autoRefresh! {
                            tmp.append(k.toMap())
                        }
                        map["AutoRefresh"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AutoRefresh"] as? [Any?] {
                        var tmp : [DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow.AutoRefresh.AutoRefresh] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow.AutoRefresh.AutoRefresh()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.autoRefresh = tmp
                    }
                }
            }
            public var autoRefresh: DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow.AutoRefresh?

            public var autoRefreshInterval: Int64?

            public var autoRefreshPolicy: String?

            public var createTime: String?

            public var dataFlowId: String?

            public var description_: String?

            public var errorMessage: String?

            public var fileSystemId: String?

            public var fileSystemPath: String?

            public var fsetDescription: String?

            public var fsetId: String?

            public var sourceSecurityType: String?

            public var sourceStorage: String?

            public var sourceStoragePath: String?

            public var status: String?

            public var throughput: Int64?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.autoRefresh?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRefresh != nil {
                    map["AutoRefresh"] = self.autoRefresh?.toMap()
                }
                if self.autoRefreshInterval != nil {
                    map["AutoRefreshInterval"] = self.autoRefreshInterval!
                }
                if self.autoRefreshPolicy != nil {
                    map["AutoRefreshPolicy"] = self.autoRefreshPolicy!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataFlowId != nil {
                    map["DataFlowId"] = self.dataFlowId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.fileSystemPath != nil {
                    map["FileSystemPath"] = self.fileSystemPath!
                }
                if self.fsetDescription != nil {
                    map["FsetDescription"] = self.fsetDescription!
                }
                if self.fsetId != nil {
                    map["FsetId"] = self.fsetId!
                }
                if self.sourceSecurityType != nil {
                    map["SourceSecurityType"] = self.sourceSecurityType!
                }
                if self.sourceStorage != nil {
                    map["SourceStorage"] = self.sourceStorage!
                }
                if self.sourceStoragePath != nil {
                    map["SourceStoragePath"] = self.sourceStoragePath!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.throughput != nil {
                    map["Throughput"] = self.throughput!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRefresh"] as? [String: Any?] {
                    var model = DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow.AutoRefresh()
                    model.fromMap(value)
                    self.autoRefresh = model
                }
                if let value = dict["AutoRefreshInterval"] as? Int64 {
                    self.autoRefreshInterval = value
                }
                if let value = dict["AutoRefreshPolicy"] as? String {
                    self.autoRefreshPolicy = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DataFlowId"] as? String {
                    self.dataFlowId = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["FileSystemPath"] as? String {
                    self.fileSystemPath = value
                }
                if let value = dict["FsetDescription"] as? String {
                    self.fsetDescription = value
                }
                if let value = dict["FsetId"] as? String {
                    self.fsetId = value
                }
                if let value = dict["SourceSecurityType"] as? String {
                    self.sourceSecurityType = value
                }
                if let value = dict["SourceStorage"] as? String {
                    self.sourceStorage = value
                }
                if let value = dict["SourceStoragePath"] as? String {
                    self.sourceStoragePath = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Throughput"] as? Int64 {
                    self.throughput = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var dataFlow: [DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataFlow != nil {
                var tmp : [Any] = []
                for k in self.dataFlow! {
                    tmp.append(k.toMap())
                }
                map["DataFlow"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataFlow"] as? [Any?] {
                var tmp : [DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataFlowsResponseBody.DataFlowInfo.DataFlow()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataFlow = tmp
            }
        }
    }
    public var dataFlowInfo: DescribeDataFlowsResponseBody.DataFlowInfo?

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
        try self.dataFlowInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFlowInfo != nil {
            map["DataFlowInfo"] = self.dataFlowInfo?.toMap()
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
        if let value = dict["DataFlowInfo"] as? [String: Any?] {
            var model = DescribeDataFlowsResponseBody.DataFlowInfo()
            model.fromMap(value)
            self.dataFlowInfo = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDataFlowsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataFlowsResponseBody?

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
            var model = DescribeDataFlowsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDirQuotasRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
    }
}

public class DescribeDirQuotasResponseBody : Tea.TeaModel {
    public class DirQuotaInfos : Tea.TeaModel {
        public class UserQuotaInfos : Tea.TeaModel {
            public var fileCountLimit: Int64?

            public var fileCountReal: Int64?

            public var quotaType: String?

            public var sizeLimit: Int64?

            public var sizeReal: Int64?

            public var sizeRealInByte: Int64?

            public var userId: String?

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
                if self.fileCountLimit != nil {
                    map["FileCountLimit"] = self.fileCountLimit!
                }
                if self.fileCountReal != nil {
                    map["FileCountReal"] = self.fileCountReal!
                }
                if self.quotaType != nil {
                    map["QuotaType"] = self.quotaType!
                }
                if self.sizeLimit != nil {
                    map["SizeLimit"] = self.sizeLimit!
                }
                if self.sizeReal != nil {
                    map["SizeReal"] = self.sizeReal!
                }
                if self.sizeRealInByte != nil {
                    map["SizeRealInByte"] = self.sizeRealInByte!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userType != nil {
                    map["UserType"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileCountLimit"] as? Int64 {
                    self.fileCountLimit = value
                }
                if let value = dict["FileCountReal"] as? Int64 {
                    self.fileCountReal = value
                }
                if let value = dict["QuotaType"] as? String {
                    self.quotaType = value
                }
                if let value = dict["SizeLimit"] as? Int64 {
                    self.sizeLimit = value
                }
                if let value = dict["SizeReal"] as? Int64 {
                    self.sizeReal = value
                }
                if let value = dict["SizeRealInByte"] as? Int64 {
                    self.sizeRealInByte = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserType"] as? String {
                    self.userType = value
                }
            }
        }
        public var dirInode: String?

        public var path: String?

        public var status: String?

        public var userQuotaInfos: [DescribeDirQuotasResponseBody.DirQuotaInfos.UserQuotaInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dirInode != nil {
                map["DirInode"] = self.dirInode!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userQuotaInfos != nil {
                var tmp : [Any] = []
                for k in self.userQuotaInfos! {
                    tmp.append(k.toMap())
                }
                map["UserQuotaInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DirInode"] as? String {
                self.dirInode = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserQuotaInfos"] as? [Any?] {
                var tmp : [DescribeDirQuotasResponseBody.DirQuotaInfos.UserQuotaInfos] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDirQuotasResponseBody.DirQuotaInfos.UserQuotaInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userQuotaInfos = tmp
            }
        }
    }
    public var dirQuotaInfos: [DescribeDirQuotasResponseBody.DirQuotaInfos]?

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
        if self.dirQuotaInfos != nil {
            var tmp : [Any] = []
            for k in self.dirQuotaInfos! {
                tmp.append(k.toMap())
            }
            map["DirQuotaInfos"] = tmp
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
        if let value = dict["DirQuotaInfos"] as? [Any?] {
            var tmp : [DescribeDirQuotasResponseBody.DirQuotaInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeDirQuotasResponseBody.DirQuotaInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dirQuotaInfos = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDirQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDirQuotasResponseBody?

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
            var model = DescribeDirQuotasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFileSystemStatisticsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeFileSystemStatisticsResponseBody : Tea.TeaModel {
    public class FileSystemStatistics : Tea.TeaModel {
        public class FileSystemStatistic : Tea.TeaModel {
            public var expiredCount: Int32?

            public var expiringCount: Int32?

            public var fileSystemType: String?

            public var meteredSize: Int64?

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
                if self.expiredCount != nil {
                    map["ExpiredCount"] = self.expiredCount!
                }
                if self.expiringCount != nil {
                    map["ExpiringCount"] = self.expiringCount!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.meteredSize != nil {
                    map["MeteredSize"] = self.meteredSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExpiredCount"] as? Int32 {
                    self.expiredCount = value
                }
                if let value = dict["ExpiringCount"] as? Int32 {
                    self.expiringCount = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["MeteredSize"] as? Int64 {
                    self.meteredSize = value
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var fileSystemStatistic: [DescribeFileSystemStatisticsResponseBody.FileSystemStatistics.FileSystemStatistic]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileSystemStatistic != nil {
                var tmp : [Any] = []
                for k in self.fileSystemStatistic! {
                    tmp.append(k.toMap())
                }
                map["FileSystemStatistic"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemStatistic"] as? [Any?] {
                var tmp : [DescribeFileSystemStatisticsResponseBody.FileSystemStatistics.FileSystemStatistic] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFileSystemStatisticsResponseBody.FileSystemStatistics.FileSystemStatistic()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileSystemStatistic = tmp
            }
        }
    }
    public class FileSystems : Tea.TeaModel {
        public class FileSystem : Tea.TeaModel {
            public class Packages : Tea.TeaModel {
                public class Package : Tea.TeaModel {
                    public var expiredTime: String?

                    public var packageId: String?

                    public var size: Int64?

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
                        if self.expiredTime != nil {
                            map["ExpiredTime"] = self.expiredTime!
                        }
                        if self.packageId != nil {
                            map["PackageId"] = self.packageId!
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ExpiredTime"] as? String {
                            self.expiredTime = value
                        }
                        if let value = dict["PackageId"] as? String {
                            self.packageId = value
                        }
                        if let value = dict["Size"] as? Int64 {
                            self.size = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
                        }
                    }
                }
                public var package: [DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem.Packages.Package]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.package != nil {
                        var tmp : [Any] = []
                        for k in self.package! {
                            tmp.append(k.toMap())
                        }
                        map["Package"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Package"] as? [Any?] {
                        var tmp : [DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem.Packages.Package] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem.Packages.Package()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.package = tmp
                    }
                }
            }
            public var capacity: Int64?

            public var chargeType: String?

            public var createTime: String?

            public var description_: String?

            public var expiredTime: String?

            public var fileSystemId: String?

            public var fileSystemType: String?

            public var meteredIASize: Int64?

            public var meteredSize: Int64?

            public var packages: DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem.Packages?

            public var protocolType: String?

            public var regionId: String?

            public var status: String?

            public var storageType: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.packages?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
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
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.meteredIASize != nil {
                    map["MeteredIASize"] = self.meteredIASize!
                }
                if self.meteredSize != nil {
                    map["MeteredSize"] = self.meteredSize!
                }
                if self.packages != nil {
                    map["Packages"] = self.packages?.toMap()
                }
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capacity"] as? Int64 {
                    self.capacity = value
                }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ExpiredTime"] as? String {
                    self.expiredTime = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["MeteredIASize"] as? Int64 {
                    self.meteredIASize = value
                }
                if let value = dict["MeteredSize"] as? Int64 {
                    self.meteredSize = value
                }
                if let value = dict["Packages"] as? [String: Any?] {
                    var model = DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem.Packages()
                    model.fromMap(value)
                    self.packages = model
                }
                if let value = dict["ProtocolType"] as? String {
                    self.protocolType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageType"] as? String {
                    self.storageType = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var fileSystem: [DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileSystem != nil {
                var tmp : [Any] = []
                for k in self.fileSystem! {
                    tmp.append(k.toMap())
                }
                map["FileSystem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystem"] as? [Any?] {
                var tmp : [DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFileSystemStatisticsResponseBody.FileSystems.FileSystem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileSystem = tmp
            }
        }
    }
    public var fileSystemStatistics: DescribeFileSystemStatisticsResponseBody.FileSystemStatistics?

    public var fileSystems: DescribeFileSystemStatisticsResponseBody.FileSystems?

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
        try self.fileSystemStatistics?.validate()
        try self.fileSystems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemStatistics != nil {
            map["FileSystemStatistics"] = self.fileSystemStatistics?.toMap()
        }
        if self.fileSystems != nil {
            map["FileSystems"] = self.fileSystems?.toMap()
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
        if let value = dict["FileSystemStatistics"] as? [String: Any?] {
            var model = DescribeFileSystemStatisticsResponseBody.FileSystemStatistics()
            model.fromMap(value)
            self.fileSystemStatistics = model
        }
        if let value = dict["FileSystems"] as? [String: Any?] {
            var model = DescribeFileSystemStatisticsResponseBody.FileSystems()
            model.fromMap(value)
            self.fileSystems = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeFileSystemStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileSystemStatisticsResponseBody?

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
            var model = DescribeFileSystemStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFileSystemsRequest : Tea.TeaModel {
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
    public var fileSystemId: String?

    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tag: [DescribeFileSystemsRequest.Tag]?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeFileSystemsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeFileSystemsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeFileSystemsResponseBody : Tea.TeaModel {
    public class FileSystems : Tea.TeaModel {
        public class FileSystem : Tea.TeaModel {
            public class Ldap : Tea.TeaModel {
                public var bindDN: String?

                public var searchBase: String?

                public var URI: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bindDN != nil {
                        map["BindDN"] = self.bindDN!
                    }
                    if self.searchBase != nil {
                        map["SearchBase"] = self.searchBase!
                    }
                    if self.URI != nil {
                        map["URI"] = self.URI!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BindDN"] as? String {
                        self.bindDN = value
                    }
                    if let value = dict["SearchBase"] as? String {
                        self.searchBase = value
                    }
                    if let value = dict["URI"] as? String {
                        self.URI = value
                    }
                }
            }
            public class MountTargets : Tea.TeaModel {
                public class MountTarget : Tea.TeaModel {
                    public class ClientMasterNodes : Tea.TeaModel {
                        public class ClientMasterNode : Tea.TeaModel {
                            public var defaultPasswd: String?

                            public var ecsId: String?

                            public var ecsIp: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.defaultPasswd != nil {
                                    map["DefaultPasswd"] = self.defaultPasswd!
                                }
                                if self.ecsId != nil {
                                    map["EcsId"] = self.ecsId!
                                }
                                if self.ecsIp != nil {
                                    map["EcsIp"] = self.ecsIp!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["DefaultPasswd"] as? String {
                                    self.defaultPasswd = value
                                }
                                if let value = dict["EcsId"] as? String {
                                    self.ecsId = value
                                }
                                if let value = dict["EcsIp"] as? String {
                                    self.ecsIp = value
                                }
                            }
                        }
                        public var clientMasterNode: [DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.ClientMasterNodes.ClientMasterNode]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.clientMasterNode != nil {
                                var tmp : [Any] = []
                                for k in self.clientMasterNode! {
                                    tmp.append(k.toMap())
                                }
                                map["ClientMasterNode"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ClientMasterNode"] as? [Any?] {
                                var tmp : [DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.ClientMasterNodes.ClientMasterNode] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.ClientMasterNodes.ClientMasterNode()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.clientMasterNode = tmp
                            }
                        }
                    }
                    public class Tags : Tea.TeaModel {
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
                        public var tag: [DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.Tags.Tag]?

                        public override init() {
                            super.init()
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Tag"] as? [Any?] {
                                var tmp : [DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.Tags.Tag] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.Tags.Tag()
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
                    public var accessGroupName: String?

                    public var clientMasterNodes: DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.ClientMasterNodes?

                    public var dualStackMountTargetDomain: String?

                    public var mountTargetDomain: String?

                    public var networkType: String?

                    public var status: String?

                    public var tags: DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.Tags?

                    public var vpcId: String?

                    public var vswId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.clientMasterNodes?.validate()
                        try self.tags?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessGroupName != nil {
                            map["AccessGroupName"] = self.accessGroupName!
                        }
                        if self.clientMasterNodes != nil {
                            map["ClientMasterNodes"] = self.clientMasterNodes?.toMap()
                        }
                        if self.dualStackMountTargetDomain != nil {
                            map["DualStackMountTargetDomain"] = self.dualStackMountTargetDomain!
                        }
                        if self.mountTargetDomain != nil {
                            map["MountTargetDomain"] = self.mountTargetDomain!
                        }
                        if self.networkType != nil {
                            map["NetworkType"] = self.networkType!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.tags != nil {
                            map["Tags"] = self.tags?.toMap()
                        }
                        if self.vpcId != nil {
                            map["VpcId"] = self.vpcId!
                        }
                        if self.vswId != nil {
                            map["VswId"] = self.vswId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessGroupName"] as? String {
                            self.accessGroupName = value
                        }
                        if let value = dict["ClientMasterNodes"] as? [String: Any?] {
                            var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.ClientMasterNodes()
                            model.fromMap(value)
                            self.clientMasterNodes = model
                        }
                        if let value = dict["DualStackMountTargetDomain"] as? String {
                            self.dualStackMountTargetDomain = value
                        }
                        if let value = dict["MountTargetDomain"] as? String {
                            self.mountTargetDomain = value
                        }
                        if let value = dict["NetworkType"] as? String {
                            self.networkType = value
                        }
                        if let value = dict["Status"] as? String {
                            self.status = value
                        }
                        if let value = dict["Tags"] as? [String: Any?] {
                            var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget.Tags()
                            model.fromMap(value)
                            self.tags = model
                        }
                        if let value = dict["VpcId"] as? String {
                            self.vpcId = value
                        }
                        if let value = dict["VswId"] as? String {
                            self.vswId = value
                        }
                    }
                }
                public var mountTarget: [DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountTarget != nil {
                        var tmp : [Any] = []
                        for k in self.mountTarget! {
                            tmp.append(k.toMap())
                        }
                        map["MountTarget"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MountTarget"] as? [Any?] {
                        var tmp : [DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets.MountTarget()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.mountTarget = tmp
                    }
                }
            }
            public class Options : Tea.TeaModel {
                public var enableOplock: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableOplock != nil {
                        map["EnableOplock"] = self.enableOplock!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EnableOplock"] as? Bool {
                        self.enableOplock = value
                    }
                }
            }
            public class Packages : Tea.TeaModel {
                public class Package : Tea.TeaModel {
                    public var expiredTime: String?

                    public var packageId: String?

                    public var packageType: String?

                    public var size: Int64?

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
                        if self.expiredTime != nil {
                            map["ExpiredTime"] = self.expiredTime!
                        }
                        if self.packageId != nil {
                            map["PackageId"] = self.packageId!
                        }
                        if self.packageType != nil {
                            map["PackageType"] = self.packageType!
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ExpiredTime"] as? String {
                            self.expiredTime = value
                        }
                        if let value = dict["PackageId"] as? String {
                            self.packageId = value
                        }
                        if let value = dict["PackageType"] as? String {
                            self.packageType = value
                        }
                        if let value = dict["Size"] as? Int64 {
                            self.size = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
                        }
                    }
                }
                public var package: [DescribeFileSystemsResponseBody.FileSystems.FileSystem.Packages.Package]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.package != nil {
                        var tmp : [Any] = []
                        for k in self.package! {
                            tmp.append(k.toMap())
                        }
                        map["Package"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Package"] as? [Any?] {
                        var tmp : [DescribeFileSystemsResponseBody.FileSystems.FileSystem.Packages.Package] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.Packages.Package()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.package = tmp
                    }
                }
            }
            public class RedundancyVSwitchIds : Tea.TeaModel {
                public var redundancyVSwitchId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.redundancyVSwitchId != nil {
                        map["RedundancyVSwitchId"] = self.redundancyVSwitchId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RedundancyVSwitchId"] as? [String] {
                        self.redundancyVSwitchId = value
                    }
                }
            }
            public class SupportedFeatures : Tea.TeaModel {
                public var supportedFeature: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.supportedFeature != nil {
                        map["SupportedFeature"] = self.supportedFeature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SupportedFeature"] as? [String] {
                        self.supportedFeature = value
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                public var tag: [DescribeFileSystemsResponseBody.FileSystems.FileSystem.Tags.Tag]?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeFileSystemsResponseBody.FileSystems.FileSystem.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.Tags.Tag()
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
            public class VswIds : Tea.TeaModel {
                public var vswId: [String]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VswId"] as? [String] {
                        self.vswId = value
                    }
                }
            }
            public var accessPointCount: String?

            public var autoSnapshotPolicyId: String?

            public var bandwidth: Int64?

            public var capacity: Int64?

            public var chargeType: String?

            public var createTime: String?

            public var description_: String?

            public var encryptType: Int32?

            public var expiredTime: String?

            public var fileSystemId: String?

            public var fileSystemType: String?

            public var KMSKeyId: String?

            public var ldap: DescribeFileSystemsResponseBody.FileSystems.FileSystem.Ldap?

            public var meteredArchiveSize: Int64?

            public var meteredIASize: Int64?

            public var meteredSize: Int64?

            public var mountTargets: DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets?

            public var options: DescribeFileSystemsResponseBody.FileSystems.FileSystem.Options?

            public var packages: DescribeFileSystemsResponseBody.FileSystems.FileSystem.Packages?

            public var protocolType: String?

            public var quorumVswId: String?

            public var redundancyType: String?

            public var redundancyVSwitchIds: DescribeFileSystemsResponseBody.FileSystems.FileSystem.RedundancyVSwitchIds?

            public var regionId: String?

            public var resourceGroupId: String?

            public var status: String?

            public var storageType: String?

            public var supportedFeatures: DescribeFileSystemsResponseBody.FileSystems.FileSystem.SupportedFeatures?

            public var tags: DescribeFileSystemsResponseBody.FileSystems.FileSystem.Tags?

            public var version: String?

            public var vpcId: String?

            public var vscTarget: String?

            public var vswIds: DescribeFileSystemsResponseBody.FileSystems.FileSystem.VswIds?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ldap?.validate()
                try self.mountTargets?.validate()
                try self.options?.validate()
                try self.packages?.validate()
                try self.redundancyVSwitchIds?.validate()
                try self.supportedFeatures?.validate()
                try self.tags?.validate()
                try self.vswIds?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessPointCount != nil {
                    map["AccessPointCount"] = self.accessPointCount!
                }
                if self.autoSnapshotPolicyId != nil {
                    map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
                }
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
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
                if self.encryptType != nil {
                    map["EncryptType"] = self.encryptType!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.KMSKeyId != nil {
                    map["KMSKeyId"] = self.KMSKeyId!
                }
                if self.ldap != nil {
                    map["Ldap"] = self.ldap?.toMap()
                }
                if self.meteredArchiveSize != nil {
                    map["MeteredArchiveSize"] = self.meteredArchiveSize!
                }
                if self.meteredIASize != nil {
                    map["MeteredIASize"] = self.meteredIASize!
                }
                if self.meteredSize != nil {
                    map["MeteredSize"] = self.meteredSize!
                }
                if self.mountTargets != nil {
                    map["MountTargets"] = self.mountTargets?.toMap()
                }
                if self.options != nil {
                    map["Options"] = self.options?.toMap()
                }
                if self.packages != nil {
                    map["Packages"] = self.packages?.toMap()
                }
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
                }
                if self.quorumVswId != nil {
                    map["QuorumVswId"] = self.quorumVswId!
                }
                if self.redundancyType != nil {
                    map["RedundancyType"] = self.redundancyType!
                }
                if self.redundancyVSwitchIds != nil {
                    map["RedundancyVSwitchIds"] = self.redundancyVSwitchIds?.toMap()
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
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                if self.supportedFeatures != nil {
                    map["SupportedFeatures"] = self.supportedFeatures?.toMap()
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vscTarget != nil {
                    map["VscTarget"] = self.vscTarget!
                }
                if self.vswIds != nil {
                    map["VswIds"] = self.vswIds?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessPointCount"] as? String {
                    self.accessPointCount = value
                }
                if let value = dict["AutoSnapshotPolicyId"] as? String {
                    self.autoSnapshotPolicyId = value
                }
                if let value = dict["Bandwidth"] as? Int64 {
                    self.bandwidth = value
                }
                if let value = dict["Capacity"] as? Int64 {
                    self.capacity = value
                }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EncryptType"] as? Int32 {
                    self.encryptType = value
                }
                if let value = dict["ExpiredTime"] as? String {
                    self.expiredTime = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["KMSKeyId"] as? String {
                    self.KMSKeyId = value
                }
                if let value = dict["Ldap"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.Ldap()
                    model.fromMap(value)
                    self.ldap = model
                }
                if let value = dict["MeteredArchiveSize"] as? Int64 {
                    self.meteredArchiveSize = value
                }
                if let value = dict["MeteredIASize"] as? Int64 {
                    self.meteredIASize = value
                }
                if let value = dict["MeteredSize"] as? Int64 {
                    self.meteredSize = value
                }
                if let value = dict["MountTargets"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.MountTargets()
                    model.fromMap(value)
                    self.mountTargets = model
                }
                if let value = dict["Options"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.Options()
                    model.fromMap(value)
                    self.options = model
                }
                if let value = dict["Packages"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.Packages()
                    model.fromMap(value)
                    self.packages = model
                }
                if let value = dict["ProtocolType"] as? String {
                    self.protocolType = value
                }
                if let value = dict["QuorumVswId"] as? String {
                    self.quorumVswId = value
                }
                if let value = dict["RedundancyType"] as? String {
                    self.redundancyType = value
                }
                if let value = dict["RedundancyVSwitchIds"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.RedundancyVSwitchIds()
                    model.fromMap(value)
                    self.redundancyVSwitchIds = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageType"] as? String {
                    self.storageType = value
                }
                if let value = dict["SupportedFeatures"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.SupportedFeatures()
                    model.fromMap(value)
                    self.supportedFeatures = model
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VscTarget"] as? String {
                    self.vscTarget = value
                }
                if let value = dict["VswIds"] as? [String: Any?] {
                    var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem.VswIds()
                    model.fromMap(value)
                    self.vswIds = model
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var fileSystem: [DescribeFileSystemsResponseBody.FileSystems.FileSystem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileSystem != nil {
                var tmp : [Any] = []
                for k in self.fileSystem! {
                    tmp.append(k.toMap())
                }
                map["FileSystem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystem"] as? [Any?] {
                var tmp : [DescribeFileSystemsResponseBody.FileSystems.FileSystem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFileSystemsResponseBody.FileSystems.FileSystem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileSystem = tmp
            }
        }
    }
    public var fileSystems: DescribeFileSystemsResponseBody.FileSystems?

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
        try self.fileSystems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystems != nil {
            map["FileSystems"] = self.fileSystems?.toMap()
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
        if let value = dict["FileSystems"] as? [String: Any?] {
            var model = DescribeFileSystemsResponseBody.FileSystems()
            model.fromMap(value)
            self.fileSystems = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeFileSystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileSystemsResponseBody?

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
            var model = DescribeFileSystemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFilesetsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
    public var fileSystemId: String?

    public var filters: [DescribeFilesetsRequest.Filters]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orderByField: String?

    public var sortOrder: String?

    public override init() {
        super.init()
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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderByField != nil {
            map["OrderByField"] = self.orderByField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeFilesetsRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeFilesetsRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderByField"] as? String {
            self.orderByField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
    }
}

public class DescribeFilesetsResponseBody : Tea.TeaModel {
    public class Entries : Tea.TeaModel {
        public class Entrie : Tea.TeaModel {
            public class Quota : Tea.TeaModel {
                public var fileCountLimit: Int64?

                public var sizeLimit: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileCountLimit != nil {
                        map["FileCountLimit"] = self.fileCountLimit!
                    }
                    if self.sizeLimit != nil {
                        map["SizeLimit"] = self.sizeLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FileCountLimit"] as? Int64 {
                        self.fileCountLimit = value
                    }
                    if let value = dict["SizeLimit"] as? Int64 {
                        self.sizeLimit = value
                    }
                }
            }
            public var createTime: String?

            public var deletionProtection: Bool?

            public var description_: String?

            public var fileCountUsage: Int64?

            public var fileSystemId: String?

            public var fileSystemPath: String?

            public var fsetId: String?

            public var quota: DescribeFilesetsResponseBody.Entries.Entrie.Quota?

            public var spaceUsage: Int64?

            public var status: String?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.quota?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deletionProtection != nil {
                    map["DeletionProtection"] = self.deletionProtection!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fileCountUsage != nil {
                    map["FileCountUsage"] = self.fileCountUsage!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.fileSystemPath != nil {
                    map["FileSystemPath"] = self.fileSystemPath!
                }
                if self.fsetId != nil {
                    map["FsetId"] = self.fsetId!
                }
                if self.quota != nil {
                    map["Quota"] = self.quota?.toMap()
                }
                if self.spaceUsage != nil {
                    map["SpaceUsage"] = self.spaceUsage!
                }
                if self.status != nil {
                    map["Status"] = self.status!
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
                if let value = dict["DeletionProtection"] as? Bool {
                    self.deletionProtection = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["FileCountUsage"] as? Int64 {
                    self.fileCountUsage = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["FileSystemPath"] as? String {
                    self.fileSystemPath = value
                }
                if let value = dict["FsetId"] as? String {
                    self.fsetId = value
                }
                if let value = dict["Quota"] as? [String: Any?] {
                    var model = DescribeFilesetsResponseBody.Entries.Entrie.Quota()
                    model.fromMap(value)
                    self.quota = model
                }
                if let value = dict["SpaceUsage"] as? Int64 {
                    self.spaceUsage = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var entrie: [DescribeFilesetsResponseBody.Entries.Entrie]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entrie != nil {
                var tmp : [Any] = []
                for k in self.entrie! {
                    tmp.append(k.toMap())
                }
                map["Entrie"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Entrie"] as? [Any?] {
                var tmp : [DescribeFilesetsResponseBody.Entries.Entrie] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFilesetsResponseBody.Entries.Entrie()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.entrie = tmp
            }
        }
    }
    public var entries: DescribeFilesetsResponseBody.Entries?

    public var fileSystemId: String?

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
        try self.entries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entries != nil {
            map["Entries"] = self.entries?.toMap()
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
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
        if let value = dict["Entries"] as? [String: Any?] {
            var model = DescribeFilesetsResponseBody.Entries()
            model.fromMap(value)
            self.entries = model
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeFilesetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFilesetsResponseBody?

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
            var model = DescribeFilesetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFilesystemsVscAttachInfoRequest : Tea.TeaModel {
    public class ResourceIds : Tea.TeaModel {
        public var fileSystemId: String?

        public var vscId: String?

        public override init() {
            super.init()
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
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceIds: [DescribeFilesystemsVscAttachInfoRequest.ResourceIds]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.resourceIds! {
                tmp.append(k.toMap())
            }
            map["ResourceIds"] = tmp
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
        if let value = dict["ResourceIds"] as? [Any?] {
            var tmp : [DescribeFilesystemsVscAttachInfoRequest.ResourceIds] = []
            for v in value {
                if v != nil {
                    var model = DescribeFilesystemsVscAttachInfoRequest.ResourceIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceIds = tmp
        }
    }
}

public class DescribeFilesystemsVscAttachInfoResponseBody : Tea.TeaModel {
    public class VscAttachInfo : Tea.TeaModel {
        public class VscAttachInfo : Tea.TeaModel {
            public var fileSystemId: String?

            public var status: String?

            public var vscId: String?

            public override init() {
                super.init()
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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vscId != nil {
                    map["VscId"] = self.vscId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VscId"] as? String {
                    self.vscId = value
                }
            }
        }
        public var vscAttachInfo: [DescribeFilesystemsVscAttachInfoResponseBody.VscAttachInfo.VscAttachInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vscAttachInfo != nil {
                var tmp : [Any] = []
                for k in self.vscAttachInfo! {
                    tmp.append(k.toMap())
                }
                map["VscAttachInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VscAttachInfo"] as? [Any?] {
                var tmp : [DescribeFilesystemsVscAttachInfoResponseBody.VscAttachInfo.VscAttachInfo] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFilesystemsVscAttachInfoResponseBody.VscAttachInfo.VscAttachInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vscAttachInfo = tmp
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var vscAttachInfo: DescribeFilesystemsVscAttachInfoResponseBody.VscAttachInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vscAttachInfo?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vscAttachInfo != nil {
            map["VscAttachInfo"] = self.vscAttachInfo?.toMap()
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["VscAttachInfo"] as? [String: Any?] {
            var model = DescribeFilesystemsVscAttachInfoResponseBody.VscAttachInfo()
            model.fromMap(value)
            self.vscAttachInfo = model
        }
    }
}

public class DescribeFilesystemsVscAttachInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFilesystemsVscAttachInfoResponseBody?

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
            var model = DescribeFilesystemsVscAttachInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLifecyclePoliciesRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var lifecyclePolicyId: String?

    public var lifecyclePolicyName: String?

    public var lifecyclePolicyType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var path: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.lifecyclePolicyId != nil {
            map["LifecyclePolicyId"] = self.lifecyclePolicyId!
        }
        if self.lifecyclePolicyName != nil {
            map["LifecyclePolicyName"] = self.lifecyclePolicyName!
        }
        if self.lifecyclePolicyType != nil {
            map["LifecyclePolicyType"] = self.lifecyclePolicyType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["LifecyclePolicyId"] as? String {
            self.lifecyclePolicyId = value
        }
        if let value = dict["LifecyclePolicyName"] as? String {
            self.lifecyclePolicyName = value
        }
        if let value = dict["LifecyclePolicyType"] as? String {
            self.lifecyclePolicyType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class DescribeLifecyclePoliciesResponseBody : Tea.TeaModel {
    public class LifecyclePolicies : Tea.TeaModel {
        public class RetrieveRules : Tea.TeaModel {
            public var attribute: String?

            public var threshold: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attribute != nil {
                    map["Attribute"] = self.attribute!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["Threshold"] as? String {
                    self.threshold = value
                }
            }
        }
        public class TransitRules : Tea.TeaModel {
            public var attribute: String?

            public var threshold: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attribute != nil {
                    map["Attribute"] = self.attribute!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["Threshold"] as? String {
                    self.threshold = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var lifecyclePolicyId: String?

        public var lifecyclePolicyName: String?

        public var lifecyclePolicyType: String?

        public var lifecycleRuleName: String?

        public var path: String?

        public var paths: [String]?

        public var retrieveRules: [DescribeLifecyclePoliciesResponseBody.LifecyclePolicies.RetrieveRules]?

        public var storageType: String?

        public var transitRules: [DescribeLifecyclePoliciesResponseBody.LifecyclePolicies.TransitRules]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.lifecyclePolicyId != nil {
                map["LifecyclePolicyId"] = self.lifecyclePolicyId!
            }
            if self.lifecyclePolicyName != nil {
                map["LifecyclePolicyName"] = self.lifecyclePolicyName!
            }
            if self.lifecyclePolicyType != nil {
                map["LifecyclePolicyType"] = self.lifecyclePolicyType!
            }
            if self.lifecycleRuleName != nil {
                map["LifecycleRuleName"] = self.lifecycleRuleName!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.paths != nil {
                map["Paths"] = self.paths!
            }
            if self.retrieveRules != nil {
                var tmp : [Any] = []
                for k in self.retrieveRules! {
                    tmp.append(k.toMap())
                }
                map["RetrieveRules"] = tmp
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.transitRules != nil {
                var tmp : [Any] = []
                for k in self.transitRules! {
                    tmp.append(k.toMap())
                }
                map["TransitRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["LifecyclePolicyId"] as? String {
                self.lifecyclePolicyId = value
            }
            if let value = dict["LifecyclePolicyName"] as? String {
                self.lifecyclePolicyName = value
            }
            if let value = dict["LifecyclePolicyType"] as? String {
                self.lifecyclePolicyType = value
            }
            if let value = dict["LifecycleRuleName"] as? String {
                self.lifecycleRuleName = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Paths"] as? [String] {
                self.paths = value
            }
            if let value = dict["RetrieveRules"] as? [Any?] {
                var tmp : [DescribeLifecyclePoliciesResponseBody.LifecyclePolicies.RetrieveRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLifecyclePoliciesResponseBody.LifecyclePolicies.RetrieveRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.retrieveRules = tmp
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["TransitRules"] as? [Any?] {
                var tmp : [DescribeLifecyclePoliciesResponseBody.LifecyclePolicies.TransitRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLifecyclePoliciesResponseBody.LifecyclePolicies.TransitRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.transitRules = tmp
            }
        }
    }
    public var lifecyclePolicies: [DescribeLifecyclePoliciesResponseBody.LifecyclePolicies]?

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
        if self.lifecyclePolicies != nil {
            var tmp : [Any] = []
            for k in self.lifecyclePolicies! {
                tmp.append(k.toMap())
            }
            map["LifecyclePolicies"] = tmp
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
        if let value = dict["LifecyclePolicies"] as? [Any?] {
            var tmp : [DescribeLifecyclePoliciesResponseBody.LifecyclePolicies] = []
            for v in value {
                if v != nil {
                    var model = DescribeLifecyclePoliciesResponseBody.LifecyclePolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lifecyclePolicies = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeLifecyclePoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLifecyclePoliciesResponseBody?

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
            var model = DescribeLifecyclePoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLogAnalysisRequest : Tea.TeaModel {
    public var fileSystemType: String?

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
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
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
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
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

public class DescribeLogAnalysisResponseBody : Tea.TeaModel {
    public class Analyses : Tea.TeaModel {
        public class Analysis : Tea.TeaModel {
            public class MetaValue : Tea.TeaModel {
                public var logstore: String?

                public var project: String?

                public var region: String?

                public var roleArn: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.logstore != nil {
                        map["Logstore"] = self.logstore!
                    }
                    if self.project != nil {
                        map["Project"] = self.project!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.roleArn != nil {
                        map["RoleArn"] = self.roleArn!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Logstore"] as? String {
                        self.logstore = value
                    }
                    if let value = dict["Project"] as? String {
                        self.project = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["RoleArn"] as? String {
                        self.roleArn = value
                    }
                }
            }
            public var metaKey: String?

            public var metaValue: DescribeLogAnalysisResponseBody.Analyses.Analysis.MetaValue?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metaValue?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.metaKey != nil {
                    map["MetaKey"] = self.metaKey!
                }
                if self.metaValue != nil {
                    map["MetaValue"] = self.metaValue?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MetaKey"] as? String {
                    self.metaKey = value
                }
                if let value = dict["MetaValue"] as? [String: Any?] {
                    var model = DescribeLogAnalysisResponseBody.Analyses.Analysis.MetaValue()
                    model.fromMap(value)
                    self.metaValue = model
                }
            }
        }
        public var analysis: [DescribeLogAnalysisResponseBody.Analyses.Analysis]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysis != nil {
                var tmp : [Any] = []
                for k in self.analysis! {
                    tmp.append(k.toMap())
                }
                map["Analysis"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Analysis"] as? [Any?] {
                var tmp : [DescribeLogAnalysisResponseBody.Analyses.Analysis] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLogAnalysisResponseBody.Analyses.Analysis()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.analysis = tmp
            }
        }
    }
    public var analyses: DescribeLogAnalysisResponseBody.Analyses?

    public var code: String?

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
        try self.analyses?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analyses != nil {
            map["Analyses"] = self.analyses?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if let value = dict["Analyses"] as? [String: Any?] {
            var model = DescribeLogAnalysisResponseBody.Analyses()
            model.fromMap(value)
            self.analyses = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeLogAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogAnalysisResponseBody?

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
            var model = DescribeLogAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMountTargetsRequest : Tea.TeaModel {
    public var dualStackMountTargetDomain: String?

    public var fileSystemId: String?

    public var mountTargetDomain: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dualStackMountTargetDomain != nil {
            map["DualStackMountTargetDomain"] = self.dualStackMountTargetDomain!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DualStackMountTargetDomain"] as? String {
            self.dualStackMountTargetDomain = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MountTargetDomain"] as? String {
            self.mountTargetDomain = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeMountTargetsResponseBody : Tea.TeaModel {
    public class MountTargets : Tea.TeaModel {
        public class MountTarget : Tea.TeaModel {
            public class ClientMasterNodes : Tea.TeaModel {
                public class ClientMasterNode : Tea.TeaModel {
                    public var defaultPasswd: String?

                    public var ecsId: String?

                    public var ecsIp: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.defaultPasswd != nil {
                            map["DefaultPasswd"] = self.defaultPasswd!
                        }
                        if self.ecsId != nil {
                            map["EcsId"] = self.ecsId!
                        }
                        if self.ecsIp != nil {
                            map["EcsIp"] = self.ecsIp!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DefaultPasswd"] as? String {
                            self.defaultPasswd = value
                        }
                        if let value = dict["EcsId"] as? String {
                            self.ecsId = value
                        }
                        if let value = dict["EcsIp"] as? String {
                            self.ecsIp = value
                        }
                    }
                }
                public var clientMasterNode: [DescribeMountTargetsResponseBody.MountTargets.MountTarget.ClientMasterNodes.ClientMasterNode]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clientMasterNode != nil {
                        var tmp : [Any] = []
                        for k in self.clientMasterNode! {
                            tmp.append(k.toMap())
                        }
                        map["ClientMasterNode"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientMasterNode"] as? [Any?] {
                        var tmp : [DescribeMountTargetsResponseBody.MountTargets.MountTarget.ClientMasterNodes.ClientMasterNode] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMountTargetsResponseBody.MountTargets.MountTarget.ClientMasterNodes.ClientMasterNode()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.clientMasterNode = tmp
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                public var tag: [DescribeMountTargetsResponseBody.MountTargets.MountTarget.Tags.Tag]?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeMountTargetsResponseBody.MountTargets.MountTarget.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMountTargetsResponseBody.MountTargets.MountTarget.Tags.Tag()
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
            public var accessGroup: String?

            public var clientMasterNodes: DescribeMountTargetsResponseBody.MountTargets.MountTarget.ClientMasterNodes?

            public var dualStackMountTargetDomain: String?

            public var IPVersion: String?

            public var mountTargetDomain: String?

            public var networkType: String?

            public var status: String?

            public var tags: DescribeMountTargetsResponseBody.MountTargets.MountTarget.Tags?

            public var vpcId: String?

            public var vswId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.clientMasterNodes?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessGroup != nil {
                    map["AccessGroup"] = self.accessGroup!
                }
                if self.clientMasterNodes != nil {
                    map["ClientMasterNodes"] = self.clientMasterNodes?.toMap()
                }
                if self.dualStackMountTargetDomain != nil {
                    map["DualStackMountTargetDomain"] = self.dualStackMountTargetDomain!
                }
                if self.IPVersion != nil {
                    map["IPVersion"] = self.IPVersion!
                }
                if self.mountTargetDomain != nil {
                    map["MountTargetDomain"] = self.mountTargetDomain!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vswId != nil {
                    map["VswId"] = self.vswId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessGroup"] as? String {
                    self.accessGroup = value
                }
                if let value = dict["ClientMasterNodes"] as? [String: Any?] {
                    var model = DescribeMountTargetsResponseBody.MountTargets.MountTarget.ClientMasterNodes()
                    model.fromMap(value)
                    self.clientMasterNodes = model
                }
                if let value = dict["DualStackMountTargetDomain"] as? String {
                    self.dualStackMountTargetDomain = value
                }
                if let value = dict["IPVersion"] as? String {
                    self.IPVersion = value
                }
                if let value = dict["MountTargetDomain"] as? String {
                    self.mountTargetDomain = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeMountTargetsResponseBody.MountTargets.MountTarget.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VswId"] as? String {
                    self.vswId = value
                }
            }
        }
        public var mountTarget: [DescribeMountTargetsResponseBody.MountTargets.MountTarget]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mountTarget != nil {
                var tmp : [Any] = []
                for k in self.mountTarget! {
                    tmp.append(k.toMap())
                }
                map["MountTarget"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MountTarget"] as? [Any?] {
                var tmp : [DescribeMountTargetsResponseBody.MountTargets.MountTarget] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMountTargetsResponseBody.MountTargets.MountTarget()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountTarget = tmp
            }
        }
    }
    public var mountTargets: DescribeMountTargetsResponseBody.MountTargets?

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
        try self.mountTargets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mountTargets != nil {
            map["MountTargets"] = self.mountTargets?.toMap()
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
        if let value = dict["MountTargets"] as? [String: Any?] {
            var model = DescribeMountTargetsResponseBody.MountTargets()
            model.fromMap(value)
            self.mountTargets = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeMountTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMountTargetsResponseBody?

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
            var model = DescribeMountTargetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMountedClientsRequest : Tea.TeaModel {
    public var clientIP: String?

    public var fileSystemId: String?

    public var mountTargetDomain: String?

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
        if self.clientIP != nil {
            map["ClientIP"] = self.clientIP!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
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
        if let value = dict["ClientIP"] as? String {
            self.clientIP = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MountTargetDomain"] as? String {
            self.mountTargetDomain = value
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

public class DescribeMountedClientsResponseBody : Tea.TeaModel {
    public class Clients : Tea.TeaModel {
        public class Client : Tea.TeaModel {
            public var clientIP: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientIP != nil {
                    map["ClientIP"] = self.clientIP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientIP"] as? String {
                    self.clientIP = value
                }
            }
        }
        public var client: [DescribeMountedClientsResponseBody.Clients.Client]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.client != nil {
                var tmp : [Any] = []
                for k in self.client! {
                    tmp.append(k.toMap())
                }
                map["Client"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Client"] as? [Any?] {
                var tmp : [DescribeMountedClientsResponseBody.Clients.Client] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMountedClientsResponseBody.Clients.Client()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.client = tmp
            }
        }
    }
    public var clients: DescribeMountedClientsResponseBody.Clients?

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
        try self.clients?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clients != nil {
            map["Clients"] = self.clients?.toMap()
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
        if let value = dict["Clients"] as? [String: Any?] {
            var model = DescribeMountedClientsResponseBody.Clients()
            model.fromMap(value)
            self.clients = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeMountedClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMountedClientsResponseBody?

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
            var model = DescribeMountedClientsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNfsAclRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DescribeNfsAclResponseBody : Tea.TeaModel {
    public class Acl : Tea.TeaModel {
        public var enabled: Bool?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
        }
    }
    public var acl: DescribeNfsAclResponseBody.Acl?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.acl?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acl != nil {
            map["Acl"] = self.acl?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Acl"] as? [String: Any?] {
            var model = DescribeNfsAclResponseBody.Acl()
            model.fromMap(value)
            self.acl = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNfsAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNfsAclResponseBody?

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
            var model = DescribeNfsAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProtocolMountTargetRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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

    public var fileSystemId: String?

    public var filters: [DescribeProtocolMountTargetRequest.Filters]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var protocolServiceIds: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.protocolServiceIds != nil {
            map["ProtocolServiceIds"] = self.protocolServiceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeProtocolMountTargetRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeProtocolMountTargetRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProtocolServiceIds"] as? String {
            self.protocolServiceIds = value
        }
    }
}

public class DescribeProtocolMountTargetResponseBody : Tea.TeaModel {
    public class ProtocolMountTargets : Tea.TeaModel {
        public var accessGroupName: String?

        public var createTime: String?

        public var description_: String?

        public var exportId: String?

        public var fsetId: String?

        public var path: String?

        public var protocolMountTargetDomain: String?

        public var protocolServiceId: String?

        public var protocolType: String?

        public var status: String?

        public var vSwitchId: String?

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
            if self.accessGroupName != nil {
                map["AccessGroupName"] = self.accessGroupName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.exportId != nil {
                map["ExportId"] = self.exportId!
            }
            if self.fsetId != nil {
                map["FsetId"] = self.fsetId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.protocolMountTargetDomain != nil {
                map["ProtocolMountTargetDomain"] = self.protocolMountTargetDomain!
            }
            if self.protocolServiceId != nil {
                map["ProtocolServiceId"] = self.protocolServiceId!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupName"] as? String {
                self.accessGroupName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExportId"] as? String {
                self.exportId = value
            }
            if let value = dict["FsetId"] as? String {
                self.fsetId = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["ProtocolMountTargetDomain"] as? String {
                self.protocolMountTargetDomain = value
            }
            if let value = dict["ProtocolServiceId"] as? String {
                self.protocolServiceId = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var nextToken: String?

    public var protocolMountTargets: [DescribeProtocolMountTargetResponseBody.ProtocolMountTargets]?

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
        if self.protocolMountTargets != nil {
            var tmp : [Any] = []
            for k in self.protocolMountTargets! {
                tmp.append(k.toMap())
            }
            map["ProtocolMountTargets"] = tmp
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
        if let value = dict["ProtocolMountTargets"] as? [Any?] {
            var tmp : [DescribeProtocolMountTargetResponseBody.ProtocolMountTargets] = []
            for v in value {
                if v != nil {
                    var model = DescribeProtocolMountTargetResponseBody.ProtocolMountTargets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.protocolMountTargets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProtocolMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProtocolMountTargetResponseBody?

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
            var model = DescribeProtocolMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProtocolServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var fileSystemId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var protocolServiceIds: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.protocolServiceIds != nil {
            map["ProtocolServiceIds"] = self.protocolServiceIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProtocolServiceIds"] as? String {
            self.protocolServiceIds = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeProtocolServiceResponseBody : Tea.TeaModel {
    public class ProtocolServices : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var instanceBaseThroughput: Int32?

        public var instanceBurstThroughput: Int32?

        public var instanceRAM: Int32?

        public var modifyTime: String?

        public var mountTargetCount: Int32?

        public var protocolServiceId: String?

        public var protocolSpec: String?

        public var protocolThroughput: Int32?

        public var protocolType: String?

        public var status: String?

        public var vSwitchId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.instanceBaseThroughput != nil {
                map["InstanceBaseThroughput"] = self.instanceBaseThroughput!
            }
            if self.instanceBurstThroughput != nil {
                map["InstanceBurstThroughput"] = self.instanceBurstThroughput!
            }
            if self.instanceRAM != nil {
                map["InstanceRAM"] = self.instanceRAM!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.mountTargetCount != nil {
                map["MountTargetCount"] = self.mountTargetCount!
            }
            if self.protocolServiceId != nil {
                map["ProtocolServiceId"] = self.protocolServiceId!
            }
            if self.protocolSpec != nil {
                map["ProtocolSpec"] = self.protocolSpec!
            }
            if self.protocolThroughput != nil {
                map["ProtocolThroughput"] = self.protocolThroughput!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["InstanceBaseThroughput"] as? Int32 {
                self.instanceBaseThroughput = value
            }
            if let value = dict["InstanceBurstThroughput"] as? Int32 {
                self.instanceBurstThroughput = value
            }
            if let value = dict["InstanceRAM"] as? Int32 {
                self.instanceRAM = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["MountTargetCount"] as? Int32 {
                self.mountTargetCount = value
            }
            if let value = dict["ProtocolServiceId"] as? String {
                self.protocolServiceId = value
            }
            if let value = dict["ProtocolSpec"] as? String {
                self.protocolSpec = value
            }
            if let value = dict["ProtocolThroughput"] as? Int32 {
                self.protocolThroughput = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var nextToken: String?

    public var protocolServices: [DescribeProtocolServiceResponseBody.ProtocolServices]?

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
        if self.protocolServices != nil {
            var tmp : [Any] = []
            for k in self.protocolServices! {
                tmp.append(k.toMap())
            }
            map["ProtocolServices"] = tmp
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
        if let value = dict["ProtocolServices"] as? [Any?] {
            var tmp : [DescribeProtocolServiceResponseBody.ProtocolServices] = []
            for v in value {
                if v != nil {
                    var model = DescribeProtocolServiceResponseBody.ProtocolServices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.protocolServices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProtocolServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProtocolServiceResponseBody?

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
            var model = DescribeProtocolServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regions: DescribeRegionsResponseBody.Regions?

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
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

public class DescribeSmbAclRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DescribeSmbAclResponseBody : Tea.TeaModel {
    public class Acl : Tea.TeaModel {
        public var enableAnonymousAccess: Bool?

        public var enabled: Bool?

        public var encryptData: Bool?

        public var homeDirPath: String?

        public var rejectUnencryptedAccess: Bool?

        public var superAdminSid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableAnonymousAccess != nil {
                map["EnableAnonymousAccess"] = self.enableAnonymousAccess!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.encryptData != nil {
                map["EncryptData"] = self.encryptData!
            }
            if self.homeDirPath != nil {
                map["HomeDirPath"] = self.homeDirPath!
            }
            if self.rejectUnencryptedAccess != nil {
                map["RejectUnencryptedAccess"] = self.rejectUnencryptedAccess!
            }
            if self.superAdminSid != nil {
                map["SuperAdminSid"] = self.superAdminSid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableAnonymousAccess"] as? Bool {
                self.enableAnonymousAccess = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["EncryptData"] as? Bool {
                self.encryptData = value
            }
            if let value = dict["HomeDirPath"] as? String {
                self.homeDirPath = value
            }
            if let value = dict["RejectUnencryptedAccess"] as? Bool {
                self.rejectUnencryptedAccess = value
            }
            if let value = dict["SuperAdminSid"] as? String {
                self.superAdminSid = value
            }
        }
    }
    public var acl: DescribeSmbAclResponseBody.Acl?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.acl?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acl != nil {
            map["Acl"] = self.acl?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Acl"] as? [String: Any?] {
            var model = DescribeSmbAclResponseBody.Acl()
            model.fromMap(value)
            self.acl = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSmbAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSmbAclResponseBody?

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
            var model = DescribeSmbAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSnapshotsRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var fileSystemType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var snapshotIds: String?

    public var snapshotName: String?

    public var snapshotType: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        if self.snapshotType != nil {
            map["SnapshotType"] = self.snapshotType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SnapshotIds"] as? String {
            self.snapshotIds = value
        }
        if let value = dict["SnapshotName"] as? String {
            self.snapshotName = value
        }
        if let value = dict["SnapshotType"] as? String {
            self.snapshotType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public class Snapshot : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var description_: String?

            public var encryptType: Int32?

            public var fileSystemType: String?

            public var progress: String?

            public var remainTime: Int32?

            public var retentionDays: Int32?

            public var snapshotId: String?

            public var snapshotName: String?

            public var snapshotType: String?

            public var sourceFileSystemId: String?

            public var sourceFileSystemSize: Int64?

            public var sourceFileSystemVersion: String?

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
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.encryptType != nil {
                    map["EncryptType"] = self.encryptType!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.remainTime != nil {
                    map["RemainTime"] = self.remainTime!
                }
                if self.retentionDays != nil {
                    map["RetentionDays"] = self.retentionDays!
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
                if self.sourceFileSystemId != nil {
                    map["SourceFileSystemId"] = self.sourceFileSystemId!
                }
                if self.sourceFileSystemSize != nil {
                    map["SourceFileSystemSize"] = self.sourceFileSystemSize!
                }
                if self.sourceFileSystemVersion != nil {
                    map["SourceFileSystemVersion"] = self.sourceFileSystemVersion!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CompletedTime"] as? String {
                    self.completedTime = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EncryptType"] as? Int32 {
                    self.encryptType = value
                }
                if let value = dict["FileSystemType"] as? String {
                    self.fileSystemType = value
                }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["RemainTime"] as? Int32 {
                    self.remainTime = value
                }
                if let value = dict["RetentionDays"] as? Int32 {
                    self.retentionDays = value
                }
                if let value = dict["SnapshotId"] as? String {
                    self.snapshotId = value
                }
                if let value = dict["SnapshotName"] as? String {
                    self.snapshotName = value
                }
                if let value = dict["SnapshotType"] as? String {
                    self.snapshotType = value
                }
                if let value = dict["SourceFileSystemId"] as? String {
                    self.sourceFileSystemId = value
                }
                if let value = dict["SourceFileSystemSize"] as? Int64 {
                    self.sourceFileSystemSize = value
                }
                if let value = dict["SourceFileSystemVersion"] as? String {
                    self.sourceFileSystemVersion = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var snapshot: [DescribeSnapshotsResponseBody.Snapshots.Snapshot]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.snapshot != nil {
                var tmp : [Any] = []
                for k in self.snapshot! {
                    tmp.append(k.toMap())
                }
                map["Snapshot"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Snapshot"] as? [Any?] {
                var tmp : [DescribeSnapshotsResponseBody.Snapshots.Snapshot] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSnapshotsResponseBody.Snapshots.Snapshot()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.snapshot = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var snapshots: DescribeSnapshotsResponseBody.Snapshots?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.snapshots?.validate()
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
        if self.snapshots != nil {
            map["Snapshots"] = self.snapshots?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Snapshots"] as? [String: Any?] {
            var model = DescribeSnapshotsResponseBody.Snapshots()
            model.fromMap(value)
            self.snapshots = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSnapshotsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeStoragePackagesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var useUTCDateTime: Bool?

    public override init() {
        super.init()
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
        if self.useUTCDateTime != nil {
            map["UseUTCDateTime"] = self.useUTCDateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UseUTCDateTime"] as? Bool {
            self.useUTCDateTime = value
        }
    }
}

public class DescribeStoragePackagesResponseBody : Tea.TeaModel {
    public class Packages : Tea.TeaModel {
        public class Package : Tea.TeaModel {
            public var expiredTime: String?

            public var fileSystemId: String?

            public var packageId: String?

            public var size: Int64?

            public var startTime: String?

            public var status: String?

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
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExpiredTime"] as? String {
                    self.expiredTime = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["PackageId"] as? String {
                    self.packageId = value
                }
                if let value = dict["Size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageType"] as? String {
                    self.storageType = value
                }
            }
        }
        public var package: [DescribeStoragePackagesResponseBody.Packages.Package]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.package != nil {
                var tmp : [Any] = []
                for k in self.package! {
                    tmp.append(k.toMap())
                }
                map["Package"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Package"] as? [Any?] {
                var tmp : [DescribeStoragePackagesResponseBody.Packages.Package] = []
                for v in value {
                    if v != nil {
                        var model = DescribeStoragePackagesResponseBody.Packages.Package()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.package = tmp
            }
        }
    }
    public var packages: DescribeStoragePackagesResponseBody.Packages?

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
        try self.packages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.packages != nil {
            map["Packages"] = self.packages?.toMap()
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
        if let value = dict["Packages"] as? [String: Any?] {
            var model = DescribeStoragePackagesResponseBody.Packages()
            model.fromMap(value)
            self.packages = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeStoragePackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStoragePackagesResponseBody?

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
            var model = DescribeStoragePackagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var fileSystemType: String?

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
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public class Zone : Tea.TeaModel {
            public class Capacity : Tea.TeaModel {
                public var protocol_: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Protocol"] as? [String] {
                        self.protocol_ = value
                    }
                }
            }
            public class InstanceTypes : Tea.TeaModel {
                public class InstanceType : Tea.TeaModel {
                    public var protocolType: String?

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
                        if self.protocolType != nil {
                            map["ProtocolType"] = self.protocolType!
                        }
                        if self.storageType != nil {
                            map["StorageType"] = self.storageType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ProtocolType"] as? String {
                            self.protocolType = value
                        }
                        if let value = dict["StorageType"] as? String {
                            self.storageType = value
                        }
                    }
                }
                public var instanceType: [DescribeZonesResponseBody.Zones.Zone.InstanceTypes.InstanceType]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceType != nil {
                        var tmp : [Any] = []
                        for k in self.instanceType! {
                            tmp.append(k.toMap())
                        }
                        map["InstanceType"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["InstanceType"] as? [Any?] {
                        var tmp : [DescribeZonesResponseBody.Zones.Zone.InstanceTypes.InstanceType] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeZonesResponseBody.Zones.Zone.InstanceTypes.InstanceType()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.instanceType = tmp
                    }
                }
            }
            public class Performance : Tea.TeaModel {
                public var protocol_: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Protocol"] as? [String] {
                        self.protocol_ = value
                    }
                }
            }
            public var capacity: DescribeZonesResponseBody.Zones.Zone.Capacity?

            public var instanceTypes: DescribeZonesResponseBody.Zones.Zone.InstanceTypes?

            public var performance: DescribeZonesResponseBody.Zones.Zone.Performance?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.capacity?.validate()
                try self.instanceTypes?.validate()
                try self.performance?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacity != nil {
                    map["Capacity"] = self.capacity?.toMap()
                }
                if self.instanceTypes != nil {
                    map["InstanceTypes"] = self.instanceTypes?.toMap()
                }
                if self.performance != nil {
                    map["Performance"] = self.performance?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capacity"] as? [String: Any?] {
                    var model = DescribeZonesResponseBody.Zones.Zone.Capacity()
                    model.fromMap(value)
                    self.capacity = model
                }
                if let value = dict["InstanceTypes"] as? [String: Any?] {
                    var model = DescribeZonesResponseBody.Zones.Zone.InstanceTypes()
                    model.fromMap(value)
                    self.instanceTypes = model
                }
                if let value = dict["Performance"] as? [String: Any?] {
                    var model = DescribeZonesResponseBody.Zones.Zone.Performance()
                    model.fromMap(value)
                    self.performance = model
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var zone: [DescribeZonesResponseBody.Zones.Zone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zone != nil {
                var tmp : [Any] = []
                for k in self.zone! {
                    tmp.append(k.toMap())
                }
                map["Zone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Zone"] as? [Any?] {
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZonesResponseBody.Zones.Zone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zone = tmp
            }
        }
    }
    public var requestId: String?

    public var zones: DescribeZonesResponseBody.Zones?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.zones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zones != nil {
            map["Zones"] = self.zones?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Zones"] as? [String: Any?] {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(value)
            self.zones = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachVscFromFilesystemsRequest : Tea.TeaModel {
    public class ResourceIds : Tea.TeaModel {
        public var fileSystemId: String?

        public var vscId: String?

        public override init() {
            super.init()
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
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var clientToken: String?

    public var resourceIds: [DetachVscFromFilesystemsRequest.ResourceIds]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            var tmp : [Any] = []
            for k in self.resourceIds! {
                tmp.append(k.toMap())
            }
            map["ResourceIds"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ResourceIds"] as? [Any?] {
            var tmp : [DetachVscFromFilesystemsRequest.ResourceIds] = []
            for v in value {
                if v != nil {
                    var model = DetachVscFromFilesystemsRequest.ResourceIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceIds = tmp
        }
    }
}

public class DetachVscFromFilesystemsResponseBody : Tea.TeaModel {
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

public class DetachVscFromFilesystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachVscFromFilesystemsResponseBody?

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
            var model = DetachVscFromFilesystemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableAndCleanRecycleBinRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DisableAndCleanRecycleBinResponseBody : Tea.TeaModel {
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

public class DisableAndCleanRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAndCleanRecycleBinResponseBody?

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
            var model = DisableAndCleanRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableNfsAclRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DisableNfsAclResponseBody : Tea.TeaModel {
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

public class DisableNfsAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableNfsAclResponseBody?

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
            var model = DisableNfsAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSmbAclRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class DisableSmbAclResponseBody : Tea.TeaModel {
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

public class DisableSmbAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSmbAclResponseBody?

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
            var model = DisableSmbAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableNfsAclRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class EnableNfsAclResponseBody : Tea.TeaModel {
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

public class EnableNfsAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableNfsAclResponseBody?

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
            var model = EnableNfsAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableRecycleBinRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var reservedDays: Int64?

    public override init() {
        super.init()
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
        if self.reservedDays != nil {
            map["ReservedDays"] = self.reservedDays!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ReservedDays"] as? Int64 {
            self.reservedDays = value
        }
    }
}

public class EnableRecycleBinResponseBody : Tea.TeaModel {
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

public class EnableRecycleBinResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableRecycleBinResponseBody?

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
            var model = EnableRecycleBinResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSmbAclRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var keytab: String?

    public var keytabMd5: String?

    public override init() {
        super.init()
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
        if self.keytab != nil {
            map["Keytab"] = self.keytab!
        }
        if self.keytabMd5 != nil {
            map["KeytabMd5"] = self.keytabMd5!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Keytab"] as? String {
            self.keytab = value
        }
        if let value = dict["KeytabMd5"] as? String {
            self.keytabMd5 = value
        }
    }
}

public class EnableSmbAclResponseBody : Tea.TeaModel {
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

public class EnableSmbAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSmbAclResponseBody?

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
            var model = EnableSmbAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDirectoryOrFilePropertiesRequest : Tea.TeaModel {
    public var fileSystemId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
    }
}

public class GetDirectoryOrFilePropertiesResponseBody : Tea.TeaModel {
    public class Entry : Tea.TeaModel {
        public var ATime: String?

        public var CTime: String?

        public var hasArchiveFile: Bool?

        public var hasInfrequentAccessFile: Bool?

        public var inode: String?

        public var MTime: String?

        public var name: String?

        public var retrieveTime: String?

        public var size: Int64?

        public var storageType: String?

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
            if self.ATime != nil {
                map["ATime"] = self.ATime!
            }
            if self.CTime != nil {
                map["CTime"] = self.CTime!
            }
            if self.hasArchiveFile != nil {
                map["HasArchiveFile"] = self.hasArchiveFile!
            }
            if self.hasInfrequentAccessFile != nil {
                map["HasInfrequentAccessFile"] = self.hasInfrequentAccessFile!
            }
            if self.inode != nil {
                map["Inode"] = self.inode!
            }
            if self.MTime != nil {
                map["MTime"] = self.MTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.retrieveTime != nil {
                map["RetrieveTime"] = self.retrieveTime!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ATime"] as? String {
                self.ATime = value
            }
            if let value = dict["CTime"] as? String {
                self.CTime = value
            }
            if let value = dict["HasArchiveFile"] as? Bool {
                self.hasArchiveFile = value
            }
            if let value = dict["HasInfrequentAccessFile"] as? Bool {
                self.hasInfrequentAccessFile = value
            }
            if let value = dict["Inode"] as? String {
                self.inode = value
            }
            if let value = dict["MTime"] as? String {
                self.MTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RetrieveTime"] as? String {
                self.retrieveTime = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var entry: GetDirectoryOrFilePropertiesResponseBody.Entry?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.entry?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entry != nil {
            map["Entry"] = self.entry?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Entry"] as? [String: Any?] {
            var model = GetDirectoryOrFilePropertiesResponseBody.Entry()
            model.fromMap(value)
            self.entry = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDirectoryOrFilePropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDirectoryOrFilePropertiesResponseBody?

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
            var model = GetDirectoryOrFilePropertiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFilesetRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var fsetId: String?

    public override init() {
        super.init()
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
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
    }
}

public class GetFilesetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var fileCountLimit: Int64?

            public var sizeLimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileCountLimit != nil {
                    map["FileCountLimit"] = self.fileCountLimit!
                }
                if self.sizeLimit != nil {
                    map["SizeLimit"] = self.sizeLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileCountLimit"] as? Int64 {
                    self.fileCountLimit = value
                }
                if let value = dict["SizeLimit"] as? Int64 {
                    self.sizeLimit = value
                }
            }
        }
        public var createTime: String?

        public var deletionProtection: Bool?

        public var description_: String?

        public var fileCountUsage: Int64?

        public var fileSystemId: String?

        public var fileSystemPath: String?

        public var fsetId: String?

        public var quota: GetFilesetResponseBody.Data.Quota?

        public var spaceUsage: Int64?

        public var status: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deletionProtection != nil {
                map["DeletionProtection"] = self.deletionProtection!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileCountUsage != nil {
                map["FileCountUsage"] = self.fileCountUsage!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.fileSystemPath != nil {
                map["FileSystemPath"] = self.fileSystemPath!
            }
            if self.fsetId != nil {
                map["FsetId"] = self.fsetId!
            }
            if self.quota != nil {
                map["Quota"] = self.quota?.toMap()
            }
            if self.spaceUsage != nil {
                map["SpaceUsage"] = self.spaceUsage!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if let value = dict["DeletionProtection"] as? Bool {
                self.deletionProtection = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileCountUsage"] as? Int64 {
                self.fileCountUsage = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["FileSystemPath"] as? String {
                self.fileSystemPath = value
            }
            if let value = dict["FsetId"] as? String {
                self.fsetId = value
            }
            if let value = dict["Quota"] as? [String: Any?] {
                var model = GetFilesetResponseBody.Data.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["SpaceUsage"] as? Int64 {
                self.spaceUsage = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var data: GetFilesetResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFilesetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFilesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFilesetResponseBody?

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
            var model = GetFilesetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProtocolMountTargetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var exportId: String?

    public var fileSystemId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var protocolServiceId: String?

    public override init() {
        super.init()
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
        if self.exportId != nil {
            map["ExportId"] = self.exportId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ExportId"] as? String {
            self.exportId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
    }
}

public class GetProtocolMountTargetResponseBody : Tea.TeaModel {
    public class ProtocolMountTarget : Tea.TeaModel {
        public var accessGroupName: String?

        public var createTime: String?

        public var description_: String?

        public var exportId: String?

        public var fsetId: String?

        public var path: String?

        public var protocolMountTargetDomain: String?

        public var protocolType: String?

        public var status: String?

        public var vSwitchId: String?

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
            if self.accessGroupName != nil {
                map["AccessGroupName"] = self.accessGroupName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.exportId != nil {
                map["ExportId"] = self.exportId!
            }
            if self.fsetId != nil {
                map["FsetId"] = self.fsetId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.protocolMountTargetDomain != nil {
                map["ProtocolMountTargetDomain"] = self.protocolMountTargetDomain!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupName"] as? String {
                self.accessGroupName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExportId"] as? String {
                self.exportId = value
            }
            if let value = dict["FsetId"] as? String {
                self.fsetId = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["ProtocolMountTargetDomain"] as? String {
                self.protocolMountTargetDomain = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var nextToken: String?

    public var protocolMountTarget: GetProtocolMountTargetResponseBody.ProtocolMountTarget?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.protocolMountTarget?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.protocolMountTarget != nil {
            map["ProtocolMountTarget"] = self.protocolMountTarget?.toMap()
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
        if let value = dict["ProtocolMountTarget"] as? [String: Any?] {
            var model = GetProtocolMountTargetResponseBody.ProtocolMountTarget()
            model.fromMap(value)
            self.protocolMountTarget = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetProtocolMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProtocolMountTargetResponseBody?

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
            var model = GetProtocolMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRecycleBinAttributeRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class GetRecycleBinAttributeResponseBody : Tea.TeaModel {
    public class RecycleBinAttribute : Tea.TeaModel {
        public var archiveSize: Int64?

        public var enableTime: String?

        public var reservedDays: Int64?

        public var secondarySize: Int64?

        public var size: Int64?

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
            if self.archiveSize != nil {
                map["ArchiveSize"] = self.archiveSize!
            }
            if self.enableTime != nil {
                map["EnableTime"] = self.enableTime!
            }
            if self.reservedDays != nil {
                map["ReservedDays"] = self.reservedDays!
            }
            if self.secondarySize != nil {
                map["SecondarySize"] = self.secondarySize!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArchiveSize"] as? Int64 {
                self.archiveSize = value
            }
            if let value = dict["EnableTime"] as? String {
                self.enableTime = value
            }
            if let value = dict["ReservedDays"] as? Int64 {
                self.reservedDays = value
            }
            if let value = dict["SecondarySize"] as? Int64 {
                self.secondarySize = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var recycleBinAttribute: GetRecycleBinAttributeResponseBody.RecycleBinAttribute?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recycleBinAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recycleBinAttribute != nil {
            map["RecycleBinAttribute"] = self.recycleBinAttribute?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecycleBinAttribute"] as? [String: Any?] {
            var model = GetRecycleBinAttributeResponseBody.RecycleBinAttribute()
            model.fromMap(value)
            self.recycleBinAttribute = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRecycleBinAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecycleBinAttributeResponseBody?

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
            var model = GetRecycleBinAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDirectoriesAndFilesRequest : Tea.TeaModel {
    public var directoryOnly: Bool?

    public var fileSystemId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var path: String?

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
        if self.directoryOnly != nil {
            map["DirectoryOnly"] = self.directoryOnly!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryOnly"] as? Bool {
            self.directoryOnly = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class ListDirectoriesAndFilesResponseBody : Tea.TeaModel {
    public class Entries : Tea.TeaModel {
        public var atime: String?

        public var ctime: String?

        public var fileId: String?

        public var hasArchiveFile: String?

        public var hasInfrequentAccessFile: Bool?

        public var inode: String?

        public var mtime: String?

        public var name: String?

        public var owner: String?

        public var retrieveTime: String?

        public var size: Int64?

        public var storageType: String?

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
            if self.atime != nil {
                map["Atime"] = self.atime!
            }
            if self.ctime != nil {
                map["Ctime"] = self.ctime!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.hasArchiveFile != nil {
                map["HasArchiveFile"] = self.hasArchiveFile!
            }
            if self.hasInfrequentAccessFile != nil {
                map["HasInfrequentAccessFile"] = self.hasInfrequentAccessFile!
            }
            if self.inode != nil {
                map["Inode"] = self.inode!
            }
            if self.mtime != nil {
                map["Mtime"] = self.mtime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.retrieveTime != nil {
                map["RetrieveTime"] = self.retrieveTime!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Atime"] as? String {
                self.atime = value
            }
            if let value = dict["Ctime"] as? String {
                self.ctime = value
            }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["HasArchiveFile"] as? String {
                self.hasArchiveFile = value
            }
            if let value = dict["HasInfrequentAccessFile"] as? Bool {
                self.hasInfrequentAccessFile = value
            }
            if let value = dict["Inode"] as? String {
                self.inode = value
            }
            if let value = dict["Mtime"] as? String {
                self.mtime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["RetrieveTime"] as? String {
                self.retrieveTime = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var entries: [ListDirectoriesAndFilesResponseBody.Entries]?

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
        if self.entries != nil {
            var tmp : [Any] = []
            for k in self.entries! {
                tmp.append(k.toMap())
            }
            map["Entries"] = tmp
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
        if let value = dict["Entries"] as? [Any?] {
            var tmp : [ListDirectoriesAndFilesResponseBody.Entries] = []
            for v in value {
                if v != nil {
                    var model = ListDirectoriesAndFilesResponseBody.Entries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entries = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDirectoriesAndFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDirectoriesAndFilesResponseBody?

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
            var model = ListDirectoriesAndFilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLifecycleRetrieveJobsRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class ListLifecycleRetrieveJobsResponseBody : Tea.TeaModel {
    public class LifecycleRetrieveJobs : Tea.TeaModel {
        public var createTime: String?

        public var discoveredFileCount: Int64?

        public var fileSystemId: String?

        public var jobId: String?

        public var paths: [String]?

        public var retrievedFileCount: Int64?

        public var status: String?

        public var storageType: String?

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
            if self.discoveredFileCount != nil {
                map["DiscoveredFileCount"] = self.discoveredFileCount!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.paths != nil {
                map["Paths"] = self.paths!
            }
            if self.retrievedFileCount != nil {
                map["RetrievedFileCount"] = self.retrievedFileCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
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
            if let value = dict["DiscoveredFileCount"] as? Int64 {
                self.discoveredFileCount = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Paths"] as? [String] {
                self.paths = value
            }
            if let value = dict["RetrievedFileCount"] as? Int64 {
                self.retrievedFileCount = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var lifecycleRetrieveJobs: [ListLifecycleRetrieveJobsResponseBody.LifecycleRetrieveJobs]?

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
        if self.lifecycleRetrieveJobs != nil {
            var tmp : [Any] = []
            for k in self.lifecycleRetrieveJobs! {
                tmp.append(k.toMap())
            }
            map["LifecycleRetrieveJobs"] = tmp
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
        if let value = dict["LifecycleRetrieveJobs"] as? [Any?] {
            var tmp : [ListLifecycleRetrieveJobsResponseBody.LifecycleRetrieveJobs] = []
            for v in value {
                if v != nil {
                    var model = ListLifecycleRetrieveJobsResponseBody.LifecycleRetrieveJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lifecycleRetrieveJobs = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListLifecycleRetrieveJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLifecycleRetrieveJobsResponseBody?

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
            var model = ListLifecycleRetrieveJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRecentlyRecycledDirectoriesRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListRecentlyRecycledDirectoriesResponseBody : Tea.TeaModel {
    public class Entries : Tea.TeaModel {
        public var fileId: String?

        public var lastDeleteTime: String?

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
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.lastDeleteTime != nil {
                map["LastDeleteTime"] = self.lastDeleteTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["LastDeleteTime"] as? String {
                self.lastDeleteTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
        }
    }
    public var entries: [ListRecentlyRecycledDirectoriesResponseBody.Entries]?

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
        if self.entries != nil {
            var tmp : [Any] = []
            for k in self.entries! {
                tmp.append(k.toMap())
            }
            map["Entries"] = tmp
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
        if let value = dict["Entries"] as? [Any?] {
            var tmp : [ListRecentlyRecycledDirectoriesResponseBody.Entries] = []
            for v in value {
                if v != nil {
                    var model = ListRecentlyRecycledDirectoriesResponseBody.Entries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entries = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRecentlyRecycledDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecentlyRecycledDirectoriesResponseBody?

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
            var model = ListRecentlyRecycledDirectoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRecycleBinJobsRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var jobId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListRecycleBinJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var createTime: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var fileId: String?

        public var fileName: String?

        public var id: String?

        public var progress: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var jobs: [ListRecycleBinJobsResponseBody.Jobs]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
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
        if let value = dict["Jobs"] as? [Any?] {
            var tmp : [ListRecycleBinJobsResponseBody.Jobs] = []
            for v in value {
                if v != nil {
                    var model = ListRecycleBinJobsResponseBody.Jobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobs = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
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

public class ListRecycleBinJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecycleBinJobsResponseBody?

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
            var model = ListRecycleBinJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRecycledDirectoriesAndFilesRequest : Tea.TeaModel {
    public var fileId: String?

    public var fileSystemId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListRecycledDirectoriesAndFilesResponseBody : Tea.TeaModel {
    public class Entries : Tea.TeaModel {
        public var ATime: String?

        public var CTime: String?

        public var deleteTime: String?

        public var fileId: String?

        public var inode: String?

        public var MTime: String?

        public var name: String?

        public var size: Int64?

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
            if self.ATime != nil {
                map["ATime"] = self.ATime!
            }
            if self.CTime != nil {
                map["CTime"] = self.CTime!
            }
            if self.deleteTime != nil {
                map["DeleteTime"] = self.deleteTime!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.inode != nil {
                map["Inode"] = self.inode!
            }
            if self.MTime != nil {
                map["MTime"] = self.MTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ATime"] as? String {
                self.ATime = value
            }
            if let value = dict["CTime"] as? String {
                self.CTime = value
            }
            if let value = dict["DeleteTime"] as? String {
                self.deleteTime = value
            }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["Inode"] as? String {
                self.inode = value
            }
            if let value = dict["MTime"] as? String {
                self.MTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var entries: [ListRecycledDirectoriesAndFilesResponseBody.Entries]?

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
        if self.entries != nil {
            var tmp : [Any] = []
            for k in self.entries! {
                tmp.append(k.toMap())
            }
            map["Entries"] = tmp
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
        if let value = dict["Entries"] as? [Any?] {
            var tmp : [ListRecycledDirectoriesAndFilesResponseBody.Entries] = []
            for v in value {
                if v != nil {
                    var model = ListRecycledDirectoriesAndFilesResponseBody.Entries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entries = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRecycledDirectoriesAndFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecycledDirectoriesAndFilesResponseBody?

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
            var model = ListRecycledDirectoriesAndFilesResponseBody()
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

public class ModifyAccessGroupRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var description_: String?

    public var fileSystemType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
    }
}

public class ModifyAccessGroupResponseBody : Tea.TeaModel {
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

public class ModifyAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccessGroupResponseBody?

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
            var model = ModifyAccessGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccessPointRequest : Tea.TeaModel {
    public var accessGroup: String?

    public var accessPointId: String?

    public var accessPointName: String?

    public var enabledRam: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroup != nil {
            map["AccessGroup"] = self.accessGroup!
        }
        if self.accessPointId != nil {
            map["AccessPointId"] = self.accessPointId!
        }
        if self.accessPointName != nil {
            map["AccessPointName"] = self.accessPointName!
        }
        if self.enabledRam != nil {
            map["EnabledRam"] = self.enabledRam!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroup"] as? String {
            self.accessGroup = value
        }
        if let value = dict["AccessPointId"] as? String {
            self.accessPointId = value
        }
        if let value = dict["AccessPointName"] as? String {
            self.accessPointName = value
        }
        if let value = dict["EnabledRam"] as? Bool {
            self.enabledRam = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class ModifyAccessPointResponseBody : Tea.TeaModel {
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

public class ModifyAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccessPointResponseBody?

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
            var model = ModifyAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccessRuleRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var accessRuleId: String?

    public var fileSystemType: String?

    public var ipv6SourceCidrIp: String?

    public var priority: Int32?

    public var RWAccessType: String?

    public var sourceCidrIp: String?

    public var userAccessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        if self.ipv6SourceCidrIp != nil {
            map["Ipv6SourceCidrIp"] = self.ipv6SourceCidrIp!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.RWAccessType != nil {
            map["RWAccessType"] = self.RWAccessType!
        }
        if self.sourceCidrIp != nil {
            map["SourceCidrIp"] = self.sourceCidrIp!
        }
        if self.userAccessType != nil {
            map["UserAccessType"] = self.userAccessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
        if let value = dict["Ipv6SourceCidrIp"] as? String {
            self.ipv6SourceCidrIp = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RWAccessType"] as? String {
            self.RWAccessType = value
        }
        if let value = dict["SourceCidrIp"] as? String {
            self.sourceCidrIp = value
        }
        if let value = dict["UserAccessType"] as? String {
            self.userAccessType = value
        }
    }
}

public class ModifyAccessRuleResponseBody : Tea.TeaModel {
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

public class ModifyAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccessRuleResponseBody?

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
            var model = ModifyAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var autoSnapshotPolicyId: String?

    public var autoSnapshotPolicyName: String?

    public var repeatWeekdays: String?

    public var retentionDays: Int32?

    public var timePoints: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSnapshotPolicyId != nil {
            map["AutoSnapshotPolicyId"] = self.autoSnapshotPolicyId!
        }
        if self.autoSnapshotPolicyName != nil {
            map["AutoSnapshotPolicyName"] = self.autoSnapshotPolicyName!
        }
        if self.repeatWeekdays != nil {
            map["RepeatWeekdays"] = self.repeatWeekdays!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.timePoints != nil {
            map["TimePoints"] = self.timePoints!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSnapshotPolicyId"] as? String {
            self.autoSnapshotPolicyId = value
        }
        if let value = dict["AutoSnapshotPolicyName"] as? String {
            self.autoSnapshotPolicyName = value
        }
        if let value = dict["RepeatWeekdays"] as? String {
            self.repeatWeekdays = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["TimePoints"] as? String {
            self.timePoints = value
        }
    }
}

public class ModifyAutoSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class ModifyAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAutoSnapshotPolicyResponseBody?

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
            var model = ModifyAutoSnapshotPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDataFlowRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var throughput: Int64?

    public override init() {
        super.init()
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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.throughput != nil {
            map["Throughput"] = self.throughput!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Throughput"] as? Int64 {
            self.throughput = value
        }
    }
}

public class ModifyDataFlowResponseBody : Tea.TeaModel {
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

public class ModifyDataFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataFlowResponseBody?

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
            var model = ModifyDataFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDataFlowAutoRefreshRequest : Tea.TeaModel {
    public var autoRefreshInterval: Int64?

    public var autoRefreshPolicy: String?

    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRefreshInterval != nil {
            map["AutoRefreshInterval"] = self.autoRefreshInterval!
        }
        if self.autoRefreshPolicy != nil {
            map["AutoRefreshPolicy"] = self.autoRefreshPolicy!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRefreshInterval"] as? Int64 {
            self.autoRefreshInterval = value
        }
        if let value = dict["AutoRefreshPolicy"] as? String {
            self.autoRefreshPolicy = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class ModifyDataFlowAutoRefreshResponseBody : Tea.TeaModel {
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

public class ModifyDataFlowAutoRefreshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataFlowAutoRefreshResponseBody?

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
            var model = ModifyDataFlowAutoRefreshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFileSystemRequest : Tea.TeaModel {
    public class Options : Tea.TeaModel {
        public var enableOplock: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableOplock != nil {
                map["EnableOplock"] = self.enableOplock!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableOplock"] as? Bool {
                self.enableOplock = value
            }
        }
    }
    public var description_: String?

    public var fileSystemId: String?

    public var options: ModifyFileSystemRequest.Options?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.options?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.options != nil {
            map["Options"] = self.options?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Options"] as? [String: Any?] {
            var model = ModifyFileSystemRequest.Options()
            model.fromMap(value)
            self.options = model
        }
    }
}

public class ModifyFileSystemShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var optionsShrink: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.optionsShrink != nil {
            map["Options"] = self.optionsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Options"] as? String {
            self.optionsShrink = value
        }
    }
}

public class ModifyFileSystemResponseBody : Tea.TeaModel {
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

public class ModifyFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFileSystemResponseBody?

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
            var model = ModifyFileSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFilesetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deletionProtection: Bool?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var fsetId: String?

    public override init() {
        super.init()
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
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
    }
}

public class ModifyFilesetResponseBody : Tea.TeaModel {
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

public class ModifyFilesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFilesetResponseBody?

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
            var model = ModifyFilesetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyLDAPConfigRequest : Tea.TeaModel {
    public var bindDN: String?

    public var fileSystemId: String?

    public var searchBase: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindDN != nil {
            map["BindDN"] = self.bindDN!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.searchBase != nil {
            map["SearchBase"] = self.searchBase!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindDN"] as? String {
            self.bindDN = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["SearchBase"] as? String {
            self.searchBase = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
    }
}

public class ModifyLDAPConfigResponseBody : Tea.TeaModel {
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

public class ModifyLDAPConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLDAPConfigResponseBody?

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
            var model = ModifyLDAPConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyLifecyclePolicyRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var lifecyclePolicyId: String?

    public var lifecyclePolicyName: String?

    public var lifecycleRuleName: String?

    public var path: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.lifecyclePolicyId != nil {
            map["LifecyclePolicyId"] = self.lifecyclePolicyId!
        }
        if self.lifecyclePolicyName != nil {
            map["LifecyclePolicyName"] = self.lifecyclePolicyName!
        }
        if self.lifecycleRuleName != nil {
            map["LifecycleRuleName"] = self.lifecycleRuleName!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["LifecyclePolicyId"] as? String {
            self.lifecyclePolicyId = value
        }
        if let value = dict["LifecyclePolicyName"] as? String {
            self.lifecyclePolicyName = value
        }
        if let value = dict["LifecycleRuleName"] as? String {
            self.lifecycleRuleName = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class ModifyLifecyclePolicyResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyLifecyclePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLifecyclePolicyResponseBody?

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
            var model = ModifyLifecyclePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMountTargetRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var dualStackMountTargetDomain: String?

    public var fileSystemId: String?

    public var mountTargetDomain: String?

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
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.dualStackMountTargetDomain != nil {
            map["DualStackMountTargetDomain"] = self.dualStackMountTargetDomain!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["DualStackMountTargetDomain"] as? String {
            self.dualStackMountTargetDomain = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MountTargetDomain"] as? String {
            self.mountTargetDomain = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ModifyMountTargetResponseBody : Tea.TeaModel {
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

public class ModifyMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMountTargetResponseBody?

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
            var model = ModifyMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyProtocolMountTargetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var exportId: String?

    public var fileSystemId: String?

    public var protocolServiceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.exportId != nil {
            map["ExportId"] = self.exportId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ExportId"] as? String {
            self.exportId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
    }
}

public class ModifyProtocolMountTargetResponseBody : Tea.TeaModel {
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

public class ModifyProtocolMountTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtocolMountTargetResponseBody?

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
            var model = ModifyProtocolMountTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyProtocolServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public var protocolServiceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.protocolServiceId != nil {
            map["ProtocolServiceId"] = self.protocolServiceId!
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ProtocolServiceId"] as? String {
            self.protocolServiceId = value
        }
    }
}

public class ModifyProtocolServiceResponseBody : Tea.TeaModel {
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

public class ModifyProtocolServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtocolServiceResponseBody?

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
            var model = ModifyProtocolServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySmbAclRequest : Tea.TeaModel {
    public var enableAnonymousAccess: Bool?

    public var encryptData: Bool?

    public var fileSystemId: String?

    public var homeDirPath: String?

    public var keytab: String?

    public var keytabMd5: String?

    public var rejectUnencryptedAccess: Bool?

    public var superAdminSid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableAnonymousAccess != nil {
            map["EnableAnonymousAccess"] = self.enableAnonymousAccess!
        }
        if self.encryptData != nil {
            map["EncryptData"] = self.encryptData!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.homeDirPath != nil {
            map["HomeDirPath"] = self.homeDirPath!
        }
        if self.keytab != nil {
            map["Keytab"] = self.keytab!
        }
        if self.keytabMd5 != nil {
            map["KeytabMd5"] = self.keytabMd5!
        }
        if self.rejectUnencryptedAccess != nil {
            map["RejectUnencryptedAccess"] = self.rejectUnencryptedAccess!
        }
        if self.superAdminSid != nil {
            map["SuperAdminSid"] = self.superAdminSid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableAnonymousAccess"] as? Bool {
            self.enableAnonymousAccess = value
        }
        if let value = dict["EncryptData"] as? Bool {
            self.encryptData = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["HomeDirPath"] as? String {
            self.homeDirPath = value
        }
        if let value = dict["Keytab"] as? String {
            self.keytab = value
        }
        if let value = dict["KeytabMd5"] as? String {
            self.keytabMd5 = value
        }
        if let value = dict["RejectUnencryptedAccess"] as? Bool {
            self.rejectUnencryptedAccess = value
        }
        if let value = dict["SuperAdminSid"] as? String {
            self.superAdminSid = value
        }
    }
}

public class ModifySmbAclResponseBody : Tea.TeaModel {
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

public class ModifySmbAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySmbAclResponseBody?

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
            var model = ModifySmbAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenNASServiceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenNASServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenNASServiceResponseBody?

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
            var model = OpenNASServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveClientFromBlackListRequest : Tea.TeaModel {
    public var clientIP: String?

    public var clientToken: String?

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
        if self.clientIP != nil {
            map["ClientIP"] = self.clientIP!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIP"] as? String {
            self.clientIP = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RemoveClientFromBlackListResponseBody : Tea.TeaModel {
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

public class RemoveClientFromBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveClientFromBlackListResponseBody?

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
            var model = RemoveClientFromBlackListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetFileSystemRequest : Tea.TeaModel {
    public var fileSystemId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
    }
}

public class ResetFileSystemResponseBody : Tea.TeaModel {
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

public class ResetFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetFileSystemResponseBody?

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
            var model = ResetFileSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryLifecycleRetrieveJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class RetryLifecycleRetrieveJobResponseBody : Tea.TeaModel {
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

public class RetryLifecycleRetrieveJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryLifecycleRetrieveJobResponseBody?

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
            var model = RetryLifecycleRetrieveJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDirQuotaRequest : Tea.TeaModel {
    public var fileCountLimit: Int64?

    public var fileSystemId: String?

    public var path: String?

    public var quotaType: String?

    public var sizeLimit: Int64?

    public var userId: String?

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
        if self.fileCountLimit != nil {
            map["FileCountLimit"] = self.fileCountLimit!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.quotaType != nil {
            map["QuotaType"] = self.quotaType!
        }
        if self.sizeLimit != nil {
            map["SizeLimit"] = self.sizeLimit!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileCountLimit"] as? Int64 {
            self.fileCountLimit = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["QuotaType"] as? String {
            self.quotaType = value
        }
        if let value = dict["SizeLimit"] as? Int64 {
            self.sizeLimit = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
    }
}

public class SetDirQuotaResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetDirQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDirQuotaResponseBody?

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
            var model = SetDirQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetFilesetQuotaRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var fileCountLimit: Int64?

    public var fileSystemId: String?

    public var fsetId: String?

    public var sizeLimit: Int64?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileCountLimit != nil {
            map["FileCountLimit"] = self.fileCountLimit!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fsetId != nil {
            map["FsetId"] = self.fsetId!
        }
        if self.sizeLimit != nil {
            map["SizeLimit"] = self.sizeLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileCountLimit"] as? Int64 {
            self.fileCountLimit = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FsetId"] as? String {
            self.fsetId = value
        }
        if let value = dict["SizeLimit"] as? Int64 {
            self.sizeLimit = value
        }
    }
}

public class SetFilesetQuotaResponseBody : Tea.TeaModel {
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

public class SetFilesetQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFilesetQuotaResponseBody?

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
            var model = SetFilesetQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDataFlowRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class StartDataFlowResponseBody : Tea.TeaModel {
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

public class StartDataFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDataFlowResponseBody?

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
            var model = StartDataFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDataFlowRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dataFlowId: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
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
        if self.dataFlowId != nil {
            map["DataFlowId"] = self.dataFlowId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataFlowId"] as? String {
            self.dataFlowId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class StopDataFlowResponseBody : Tea.TeaModel {
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

public class StopDataFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDataFlowResponseBody?

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
            var model = StopDataFlowResponseBody()
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

public class UpdateRecycleBinAttributeRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var reservedDays: Int64?

    public override init() {
        super.init()
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
        if self.reservedDays != nil {
            map["ReservedDays"] = self.reservedDays!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["ReservedDays"] as? Int64 {
            self.reservedDays = value
        }
    }
}

public class UpdateRecycleBinAttributeResponseBody : Tea.TeaModel {
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

public class UpdateRecycleBinAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecycleBinAttributeResponseBody?

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
            var model = UpdateRecycleBinAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeFileSystemRequest : Tea.TeaModel {
    public var capacity: Int64?

    public var clientToken: String?

    public var dryRun: Bool?

    public var fileSystemId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Capacity"] as? Int64 {
            self.capacity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
    }
}

public class UpgradeFileSystemResponseBody : Tea.TeaModel {
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

public class UpgradeFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeFileSystemResponseBody?

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
            var model = UpgradeFileSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
