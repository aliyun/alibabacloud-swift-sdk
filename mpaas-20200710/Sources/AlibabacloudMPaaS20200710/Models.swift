import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelMpsSchedulerRequest : Tea.TeaModel {
    public var appId: String?

    public var type: Int32?

    public var uniqueIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uniqueIds != nil {
            map["UniqueIds"] = self.uniqueIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UniqueIds"] as? String {
            self.uniqueIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CancelMpsSchedulerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: String?

    public var resultMessage: String?

    public override init() {
        super.init()
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
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? String {
            self.resultContent = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CancelMpsSchedulerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelMpsSchedulerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelMpsSchedulerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelPushSchedulerRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var type: Int32?

    public var uniqueIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uniqueIds != nil {
            map["UniqueIds"] = self.uniqueIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UniqueIds"] as? String {
            self.uniqueIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CancelPushSchedulerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: String?

    public var resultMessage: String?

    public override init() {
        super.init()
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
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? String {
            self.resultContent = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CancelPushSchedulerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPushSchedulerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelPushSchedulerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeMcubeMiniTaskStatusRequest : Tea.TeaModel {
    public var appId: String?

    public var bizType: String?

    public var packageId: Int64?

    public var taskId: Int64?

    public var taskStatus: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["PackageId"] as? Int64 {
            self.packageId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? Int64 {
            self.taskStatus = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ChangeMcubeMiniTaskStatusResponseBody : Tea.TeaModel {
    public class ChangeMiniTaskStatusResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var changeMiniTaskStatusResult: ChangeMcubeMiniTaskStatusResponseBody.ChangeMiniTaskStatusResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.changeMiniTaskStatusResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeMiniTaskStatusResult != nil {
            map["ChangeMiniTaskStatusResult"] = self.changeMiniTaskStatusResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeMiniTaskStatusResult"] as? [String: Any?] {
            var model = ChangeMcubeMiniTaskStatusResponseBody.ChangeMiniTaskStatusResult()
            model.fromMap(value)
            self.changeMiniTaskStatusResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ChangeMcubeMiniTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeMcubeMiniTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeMcubeMiniTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeMcubeNebulaTaskStatusRequest : Tea.TeaModel {
    public var appId: String?

    public var bizType: String?

    public var packageId: String?

    public var taskId: String?

    public var taskStatus: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["PackageId"] as? String {
            self.packageId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ChangeMcubeNebulaTaskStatusResponseBody : Tea.TeaModel {
    public class ChangeMcubeNebulaTaskStatusResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var changeMcubeNebulaTaskStatusResult: ChangeMcubeNebulaTaskStatusResponseBody.ChangeMcubeNebulaTaskStatusResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.changeMcubeNebulaTaskStatusResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeMcubeNebulaTaskStatusResult != nil {
            map["ChangeMcubeNebulaTaskStatusResult"] = self.changeMcubeNebulaTaskStatusResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeMcubeNebulaTaskStatusResult"] as? [String: Any?] {
            var model = ChangeMcubeNebulaTaskStatusResponseBody.ChangeMcubeNebulaTaskStatusResult()
            model.fromMap(value)
            self.changeMcubeNebulaTaskStatusResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ChangeMcubeNebulaTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeMcubeNebulaTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeMcubeNebulaTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeMcubePublicTaskStatusRequest : Tea.TeaModel {
    public var appId: String?

    public var taskId: String?

    public var taskStatus: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ChangeMcubePublicTaskStatusResponseBody : Tea.TeaModel {
    public class ChangeResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var changeResult: ChangeMcubePublicTaskStatusResponseBody.ChangeResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.changeResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeResult != nil {
            map["ChangeResult"] = self.changeResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeResult"] as? [String: Any?] {
            var model = ChangeMcubePublicTaskStatusResponseBody.ChangeResult()
            model.fromMap(value)
            self.changeResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ChangeMcubePublicTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeMcubePublicTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeMcubePublicTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeMiniAppRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var h5Name: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.h5Name != nil {
            map["H5Name"] = self.h5Name!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["H5Name"] as? String {
            self.h5Name = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeMiniAppResponseBody : Tea.TeaModel {
    public class CreateMiniResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var createMiniResult: CreateMcubeMiniAppResponseBody.CreateMiniResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createMiniResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createMiniResult != nil {
            map["CreateMiniResult"] = self.createMiniResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateMiniResult"] as? [String: Any?] {
            var model = CreateMcubeMiniAppResponseBody.CreateMiniResult()
            model.fromMap(value)
            self.createMiniResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeMiniAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeMiniAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeMiniAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeMiniTaskRequest : Tea.TeaModel {
    public var appId: String?

    public var greyConfigInfo: String?

    public var greyEndtimeData: String?

    public var greyNum: Int64?

    public var memo: String?

    public var packageId: Int64?

    public var publishMode: Int64?

    public var publishType: Int64?

    public var tenantId: String?

    public var whitelistIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.greyConfigInfo != nil {
            map["GreyConfigInfo"] = self.greyConfigInfo!
        }
        if self.greyEndtimeData != nil {
            map["GreyEndtimeData"] = self.greyEndtimeData!
        }
        if self.greyNum != nil {
            map["GreyNum"] = self.greyNum!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.publishMode != nil {
            map["PublishMode"] = self.publishMode!
        }
        if self.publishType != nil {
            map["PublishType"] = self.publishType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.whitelistIds != nil {
            map["WhitelistIds"] = self.whitelistIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["GreyConfigInfo"] as? String {
            self.greyConfigInfo = value
        }
        if let value = dict["GreyEndtimeData"] as? String {
            self.greyEndtimeData = value
        }
        if let value = dict["GreyNum"] as? Int64 {
            self.greyNum = value
        }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["PackageId"] as? Int64 {
            self.packageId = value
        }
        if let value = dict["PublishMode"] as? Int64 {
            self.publishMode = value
        }
        if let value = dict["PublishType"] as? Int64 {
            self.publishType = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WhitelistIds"] as? String {
            self.whitelistIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeMiniTaskResponseBody : Tea.TeaModel {
    public class CreateMiniTaskResult : Tea.TeaModel {
        public var miniTaskId: String?

        public var resultMsg: String?

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
            if self.miniTaskId != nil {
                map["MiniTaskId"] = self.miniTaskId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MiniTaskId"] as? String {
                self.miniTaskId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var createMiniTaskResult: CreateMcubeMiniTaskResponseBody.CreateMiniTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createMiniTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createMiniTaskResult != nil {
            map["CreateMiniTaskResult"] = self.createMiniTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateMiniTaskResult"] as? [String: Any?] {
            var model = CreateMcubeMiniTaskResponseBody.CreateMiniTaskResult()
            model.fromMap(value)
            self.createMiniTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeMiniTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeMiniTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeMiniTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeNebulaAppRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var h5Name: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.h5Name != nil {
            map["H5Name"] = self.h5Name!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["H5Name"] as? String {
            self.h5Name = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeNebulaAppResponseBody : Tea.TeaModel {
    public class CreateNebulaAppResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var createNebulaAppResult: CreateMcubeNebulaAppResponseBody.CreateNebulaAppResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createNebulaAppResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createNebulaAppResult != nil {
            map["CreateNebulaAppResult"] = self.createNebulaAppResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateNebulaAppResult"] as? [String: Any?] {
            var model = CreateMcubeNebulaAppResponseBody.CreateNebulaAppResult()
            model.fromMap(value)
            self.createNebulaAppResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeNebulaAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeNebulaAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeNebulaAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeNebulaResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var autoInstall: Int32?

    public var clientVersionMax: String?

    public var clientVersionMin: String?

    public var customDomainName: String?

    public var extendInfo: String?

    public var fileUrl: String?

    public var h5Id: String?

    public var h5Name: String?

    public var h5Version: String?

    public var installType: Int32?

    public var mainUrl: String?

    public var onexFlag: Bool?

    public var platform: String?

    public var repeatNebula: Int32?

    public var resourceType: Int32?

    public var subUrl: String?

    public var tenantId: String?

    public var vhost: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.autoInstall != nil {
            map["AutoInstall"] = self.autoInstall!
        }
        if self.clientVersionMax != nil {
            map["ClientVersionMax"] = self.clientVersionMax!
        }
        if self.clientVersionMin != nil {
            map["ClientVersionMin"] = self.clientVersionMin!
        }
        if self.customDomainName != nil {
            map["CustomDomainName"] = self.customDomainName!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.h5Name != nil {
            map["H5Name"] = self.h5Name!
        }
        if self.h5Version != nil {
            map["H5Version"] = self.h5Version!
        }
        if self.installType != nil {
            map["InstallType"] = self.installType!
        }
        if self.mainUrl != nil {
            map["MainUrl"] = self.mainUrl!
        }
        if self.onexFlag != nil {
            map["OnexFlag"] = self.onexFlag!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.repeatNebula != nil {
            map["RepeatNebula"] = self.repeatNebula!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.subUrl != nil {
            map["SubUrl"] = self.subUrl!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.vhost != nil {
            map["Vhost"] = self.vhost!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AutoInstall"] as? Int32 {
            self.autoInstall = value
        }
        if let value = dict["ClientVersionMax"] as? String {
            self.clientVersionMax = value
        }
        if let value = dict["ClientVersionMin"] as? String {
            self.clientVersionMin = value
        }
        if let value = dict["CustomDomainName"] as? String {
            self.customDomainName = value
        }
        if let value = dict["ExtendInfo"] as? String {
            self.extendInfo = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["H5Name"] as? String {
            self.h5Name = value
        }
        if let value = dict["H5Version"] as? String {
            self.h5Version = value
        }
        if let value = dict["InstallType"] as? Int32 {
            self.installType = value
        }
        if let value = dict["MainUrl"] as? String {
            self.mainUrl = value
        }
        if let value = dict["OnexFlag"] as? Bool {
            self.onexFlag = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RepeatNebula"] as? Int32 {
            self.repeatNebula = value
        }
        if let value = dict["ResourceType"] as? Int32 {
            self.resourceType = value
        }
        if let value = dict["SubUrl"] as? String {
            self.subUrl = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Vhost"] as? String {
            self.vhost = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeNebulaResourceResponseBody : Tea.TeaModel {
    public class CreateMcubeNebulaResourceReslult : Tea.TeaModel {
        public var errorCode: String?

        public var nebulaResourceId: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.nebulaResourceId != nil {
                map["NebulaResourceId"] = self.nebulaResourceId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["NebulaResourceId"] as? String {
                self.nebulaResourceId = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var createMcubeNebulaResourceReslult: CreateMcubeNebulaResourceResponseBody.CreateMcubeNebulaResourceReslult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createMcubeNebulaResourceReslult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createMcubeNebulaResourceReslult != nil {
            map["CreateMcubeNebulaResourceReslult"] = self.createMcubeNebulaResourceReslult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateMcubeNebulaResourceReslult"] as? [String: Any?] {
            var model = CreateMcubeNebulaResourceResponseBody.CreateMcubeNebulaResourceReslult()
            model.fromMap(value)
            self.createMcubeNebulaResourceReslult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeNebulaResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeNebulaResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeNebulaResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeNebulaTaskRequest : Tea.TeaModel {
    public var appCode: String?

    public var appId: String?

    public var bizType: String?

    public var creator: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var gmtModifiedStr: String?

    public var greyConfigInfo: String?

    public var greyEndtime: String?

    public var greyEndtimeData: String?

    public var greyEndtimeStr: String?

    public var greyNum: Int32?

    public var greyUrl: String?

    public var id: Int64?

    public var memo: String?

    public var modifier: String?

    public var packageId: Int64?

    public var percent: Int32?

    public var platform: String?

    public var productId: String?

    public var productVersion: String?

    public var publishMode: Int32?

    public var publishType: Int32?

    public var releaseVersion: String?

    public var resIds: String?

    public var serialVersionUID: Int64?

    public var status: Int32?

    public var syncMode: String?

    public var syncResult: String?

    public var taskName: String?

    public var taskStatus: Int32?

    public var taskType: Int32?

    public var taskVersion: Int64?

    public var tenantId: String?

    public var upgradeNoticeNum: Int64?

    public var upgradeProgress: String?

    public var whitelistIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.gmtModifiedStr != nil {
            map["GmtModifiedStr"] = self.gmtModifiedStr!
        }
        if self.greyConfigInfo != nil {
            map["GreyConfigInfo"] = self.greyConfigInfo!
        }
        if self.greyEndtime != nil {
            map["GreyEndtime"] = self.greyEndtime!
        }
        if self.greyEndtimeData != nil {
            map["GreyEndtimeData"] = self.greyEndtimeData!
        }
        if self.greyEndtimeStr != nil {
            map["GreyEndtimeStr"] = self.greyEndtimeStr!
        }
        if self.greyNum != nil {
            map["GreyNum"] = self.greyNum!
        }
        if self.greyUrl != nil {
            map["GreyUrl"] = self.greyUrl!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier!
        }
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.percent != nil {
            map["Percent"] = self.percent!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productVersion != nil {
            map["ProductVersion"] = self.productVersion!
        }
        if self.publishMode != nil {
            map["PublishMode"] = self.publishMode!
        }
        if self.publishType != nil {
            map["PublishType"] = self.publishType!
        }
        if self.releaseVersion != nil {
            map["ReleaseVersion"] = self.releaseVersion!
        }
        if self.resIds != nil {
            map["ResIds"] = self.resIds!
        }
        if self.serialVersionUID != nil {
            map["SerialVersionUID"] = self.serialVersionUID!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.syncMode != nil {
            map["SyncMode"] = self.syncMode!
        }
        if self.syncResult != nil {
            map["SyncResult"] = self.syncResult!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskVersion != nil {
            map["TaskVersion"] = self.taskVersion!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.upgradeNoticeNum != nil {
            map["UpgradeNoticeNum"] = self.upgradeNoticeNum!
        }
        if self.upgradeProgress != nil {
            map["UpgradeProgress"] = self.upgradeProgress!
        }
        if self.whitelistIds != nil {
            map["WhitelistIds"] = self.whitelistIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCode"] as? String {
            self.appCode = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["GmtModifiedStr"] as? String {
            self.gmtModifiedStr = value
        }
        if let value = dict["GreyConfigInfo"] as? String {
            self.greyConfigInfo = value
        }
        if let value = dict["GreyEndtime"] as? String {
            self.greyEndtime = value
        }
        if let value = dict["GreyEndtimeData"] as? String {
            self.greyEndtimeData = value
        }
        if let value = dict["GreyEndtimeStr"] as? String {
            self.greyEndtimeStr = value
        }
        if let value = dict["GreyNum"] as? Int32 {
            self.greyNum = value
        }
        if let value = dict["GreyUrl"] as? String {
            self.greyUrl = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["Modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["PackageId"] as? Int64 {
            self.packageId = value
        }
        if let value = dict["Percent"] as? Int32 {
            self.percent = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["ProductVersion"] as? String {
            self.productVersion = value
        }
        if let value = dict["PublishMode"] as? Int32 {
            self.publishMode = value
        }
        if let value = dict["PublishType"] as? Int32 {
            self.publishType = value
        }
        if let value = dict["ReleaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["ResIds"] as? String {
            self.resIds = value
        }
        if let value = dict["SerialVersionUID"] as? Int64 {
            self.serialVersionUID = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["SyncMode"] as? String {
            self.syncMode = value
        }
        if let value = dict["SyncResult"] as? String {
            self.syncResult = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["TaskType"] as? Int32 {
            self.taskType = value
        }
        if let value = dict["TaskVersion"] as? Int64 {
            self.taskVersion = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UpgradeNoticeNum"] as? Int64 {
            self.upgradeNoticeNum = value
        }
        if let value = dict["UpgradeProgress"] as? String {
            self.upgradeProgress = value
        }
        if let value = dict["WhitelistIds"] as? String {
            self.whitelistIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeNebulaTaskResponseBody : Tea.TeaModel {
    public class CreateMcubeNebulaTaskResult : Tea.TeaModel {
        public var errorCode: String?

        public var nebulaTaskId: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.nebulaTaskId != nil {
                map["NebulaTaskId"] = self.nebulaTaskId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["NebulaTaskId"] as? String {
                self.nebulaTaskId = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var createMcubeNebulaTaskResult: CreateMcubeNebulaTaskResponseBody.CreateMcubeNebulaTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createMcubeNebulaTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createMcubeNebulaTaskResult != nil {
            map["CreateMcubeNebulaTaskResult"] = self.createMcubeNebulaTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateMcubeNebulaTaskResult"] as? [String: Any?] {
            var model = CreateMcubeNebulaTaskResponseBody.CreateMcubeNebulaTaskResult()
            model.fromMap(value)
            self.createMcubeNebulaTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeNebulaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeNebulaTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeNebulaTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeUpgradePackageRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var appstoreUrl: String?

    public var bundleId: String?

    public var customDomainName: String?

    public var desc: String?

    public var downloadUrl: String?

    public var fileUrl: String?

    public var iconFileUrl: String?

    public var installAmount: Int32?

    public var iosSymbolfileUrl: String?

    public var isEnterprise: Int32?

    public var needCheck: Int32?

    public var onexFlag: Bool?

    public var platform: String?

    public var tenantId: String?

    public var validDays: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.appstoreUrl != nil {
            map["AppstoreUrl"] = self.appstoreUrl!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.customDomainName != nil {
            map["CustomDomainName"] = self.customDomainName!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.iconFileUrl != nil {
            map["IconFileUrl"] = self.iconFileUrl!
        }
        if self.installAmount != nil {
            map["InstallAmount"] = self.installAmount!
        }
        if self.iosSymbolfileUrl != nil {
            map["IosSymbolfileUrl"] = self.iosSymbolfileUrl!
        }
        if self.isEnterprise != nil {
            map["IsEnterprise"] = self.isEnterprise!
        }
        if self.needCheck != nil {
            map["NeedCheck"] = self.needCheck!
        }
        if self.onexFlag != nil {
            map["OnexFlag"] = self.onexFlag!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.validDays != nil {
            map["ValidDays"] = self.validDays!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["AppstoreUrl"] as? String {
            self.appstoreUrl = value
        }
        if let value = dict["BundleId"] as? String {
            self.bundleId = value
        }
        if let value = dict["CustomDomainName"] as? String {
            self.customDomainName = value
        }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["IconFileUrl"] as? String {
            self.iconFileUrl = value
        }
        if let value = dict["InstallAmount"] as? Int32 {
            self.installAmount = value
        }
        if let value = dict["IosSymbolfileUrl"] as? String {
            self.iosSymbolfileUrl = value
        }
        if let value = dict["IsEnterprise"] as? Int32 {
            self.isEnterprise = value
        }
        if let value = dict["NeedCheck"] as? Int32 {
            self.needCheck = value
        }
        if let value = dict["OnexFlag"] as? Bool {
            self.onexFlag = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ValidDays"] as? Int32 {
            self.validDays = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeUpgradePackageResponseBody : Tea.TeaModel {
    public class CreateUpgradePackageResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public var upgradePackageId: String?

        public override init() {
            super.init()
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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.upgradePackageId != nil {
                map["UpgradePackageId"] = self.upgradePackageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["UpgradePackageId"] as? String {
                self.upgradePackageId = value
            }
        }
    }
    public var createUpgradePackageResult: CreateMcubeUpgradePackageResponseBody.CreateUpgradePackageResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createUpgradePackageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createUpgradePackageResult != nil {
            map["CreateUpgradePackageResult"] = self.createUpgradePackageResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateUpgradePackageResult"] as? [String: Any?] {
            var model = CreateMcubeUpgradePackageResponseBody.CreateUpgradePackageResult()
            model.fromMap(value)
            self.createUpgradePackageResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeUpgradePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeUpgradePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeUpgradePackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeUpgradeTaskRequest : Tea.TeaModel {
    public var appId: String?

    public var greyConfigInfo: String?

    public var greyEndtimeData: String?

    public var greyNum: Int32?

    public var historyForce: Int32?

    public var memo: String?

    public var packageInfoId: Int64?

    public var publishMode: Int32?

    public var publishType: Int32?

    public var tenantId: String?

    public var upgradeContent: String?

    public var upgradeType: Int32?

    public var whitelistIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.greyConfigInfo != nil {
            map["GreyConfigInfo"] = self.greyConfigInfo!
        }
        if self.greyEndtimeData != nil {
            map["GreyEndtimeData"] = self.greyEndtimeData!
        }
        if self.greyNum != nil {
            map["GreyNum"] = self.greyNum!
        }
        if self.historyForce != nil {
            map["HistoryForce"] = self.historyForce!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.packageInfoId != nil {
            map["PackageInfoId"] = self.packageInfoId!
        }
        if self.publishMode != nil {
            map["PublishMode"] = self.publishMode!
        }
        if self.publishType != nil {
            map["PublishType"] = self.publishType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.upgradeContent != nil {
            map["UpgradeContent"] = self.upgradeContent!
        }
        if self.upgradeType != nil {
            map["UpgradeType"] = self.upgradeType!
        }
        if self.whitelistIds != nil {
            map["WhitelistIds"] = self.whitelistIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["GreyConfigInfo"] as? String {
            self.greyConfigInfo = value
        }
        if let value = dict["GreyEndtimeData"] as? String {
            self.greyEndtimeData = value
        }
        if let value = dict["GreyNum"] as? Int32 {
            self.greyNum = value
        }
        if let value = dict["HistoryForce"] as? Int32 {
            self.historyForce = value
        }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["PackageInfoId"] as? Int64 {
            self.packageInfoId = value
        }
        if let value = dict["PublishMode"] as? Int32 {
            self.publishMode = value
        }
        if let value = dict["PublishType"] as? Int32 {
            self.publishType = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UpgradeContent"] as? String {
            self.upgradeContent = value
        }
        if let value = dict["UpgradeType"] as? Int32 {
            self.upgradeType = value
        }
        if let value = dict["WhitelistIds"] as? String {
            self.whitelistIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeUpgradeTaskResponseBody : Tea.TeaModel {
    public class CreateTaskResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public var upgradeTaskId: String?

        public override init() {
            super.init()
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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.upgradeTaskId != nil {
                map["UpgradeTaskId"] = self.upgradeTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["UpgradeTaskId"] as? String {
                self.upgradeTaskId = value
            }
        }
    }
    public var createTaskResult: CreateMcubeUpgradeTaskResponseBody.CreateTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTaskResult != nil {
            map["CreateTaskResult"] = self.createTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTaskResult"] as? [String: Any?] {
            var model = CreateMcubeUpgradeTaskResponseBody.CreateTaskResult()
            model.fromMap(value)
            self.createTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeUpgradeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeUpgradeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeUpgradeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeVhostRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var vhost: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.vhost != nil {
            map["Vhost"] = self.vhost!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Vhost"] as? String {
            self.vhost = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeVhostResponseBody : Tea.TeaModel {
    public class CreateVhostResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var createVhostResult: CreateMcubeVhostResponseBody.CreateVhostResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createVhostResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createVhostResult != nil {
            map["CreateVhostResult"] = self.createVhostResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateVhostResult"] as? [String: Any?] {
            var model = CreateMcubeVhostResponseBody.CreateVhostResult()
            model.fromMap(value)
            self.createVhostResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeVhostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeVhostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeVhostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeWhitelistRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var whiteListName: String?

    public var whitelistType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.whiteListName != nil {
            map["WhiteListName"] = self.whiteListName!
        }
        if self.whitelistType != nil {
            map["WhitelistType"] = self.whitelistType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WhiteListName"] as? String {
            self.whiteListName = value
        }
        if let value = dict["WhitelistType"] as? String {
            self.whitelistType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeWhitelistResponseBody : Tea.TeaModel {
    public class CreateWhitelistResult : Tea.TeaModel {
        public var resultMsg: String?

        public var success: Bool?

        public var whitelistId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.whitelistId != nil {
                map["WhitelistId"] = self.whitelistId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["WhitelistId"] as? String {
                self.whitelistId = value
            }
        }
    }
    public var createWhitelistResult: CreateMcubeWhitelistResponseBody.CreateWhitelistResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createWhitelistResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createWhitelistResult != nil {
            map["CreateWhitelistResult"] = self.createWhitelistResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateWhitelistResult"] as? [String: Any?] {
            var model = CreateMcubeWhitelistResponseBody.CreateWhitelistResult()
            model.fromMap(value)
            self.createWhitelistResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcubeWhitelistForIdeRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var userId: String?

    public var whitelistValue: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.whitelistValue != nil {
            map["WhitelistValue"] = self.whitelistValue!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WhitelistValue"] as? String {
            self.whitelistValue = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMcubeWhitelistForIdeResponseBody : Tea.TeaModel {
    public class CreateWhitelistForIdeResult : Tea.TeaModel {
        public var resultMsg: String?

        public var success: Bool?

        public var whitelistId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.whitelistId != nil {
                map["WhitelistId"] = self.whitelistId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["WhitelistId"] as? String {
                self.whitelistId = value
            }
        }
    }
    public var createWhitelistForIdeResult: CreateMcubeWhitelistForIdeResponseBody.CreateWhitelistForIdeResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createWhitelistForIdeResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createWhitelistForIdeResult != nil {
            map["CreateWhitelistForIdeResult"] = self.createWhitelistForIdeResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateWhitelistForIdeResult"] as? [String: Any?] {
            var model = CreateMcubeWhitelistForIdeResponseBody.CreateWhitelistForIdeResult()
            model.fromMap(value)
            self.createWhitelistForIdeResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateMcubeWhitelistForIdeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcubeWhitelistForIdeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcubeWhitelistForIdeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOpenGlobalDataRequest : Tea.TeaModel {
    public var appId: String?

    public var appMaxVersion: String?

    public var appMinVersion: String?

    public var bizType: String?

    public var extAttrStr: String?

    public var maxUid: Int64?

    public var minUid: Int64?

    public var osType: String?

    public var payload: String?

    public var tenantId: String?

    public var thirdMsgId: String?

    public var uids: String?

    public var validTimeEnd: Int64?

    public var validTimeStart: Int64?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.appMaxVersion != nil {
            map["AppMaxVersion"] = self.appMaxVersion!
        }
        if self.appMinVersion != nil {
            map["AppMinVersion"] = self.appMinVersion!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.extAttrStr != nil {
            map["ExtAttrStr"] = self.extAttrStr!
        }
        if self.maxUid != nil {
            map["MaxUid"] = self.maxUid!
        }
        if self.minUid != nil {
            map["MinUid"] = self.minUid!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdMsgId != nil {
            map["ThirdMsgId"] = self.thirdMsgId!
        }
        if self.uids != nil {
            map["Uids"] = self.uids!
        }
        if self.validTimeEnd != nil {
            map["ValidTimeEnd"] = self.validTimeEnd!
        }
        if self.validTimeStart != nil {
            map["ValidTimeStart"] = self.validTimeStart!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppMaxVersion"] as? String {
            self.appMaxVersion = value
        }
        if let value = dict["AppMinVersion"] as? String {
            self.appMinVersion = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["ExtAttrStr"] as? String {
            self.extAttrStr = value
        }
        if let value = dict["MaxUid"] as? Int64 {
            self.maxUid = value
        }
        if let value = dict["MinUid"] as? Int64 {
            self.minUid = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdMsgId"] as? String {
            self.thirdMsgId = value
        }
        if let value = dict["Uids"] as? String {
            self.uids = value
        }
        if let value = dict["ValidTimeEnd"] as? Int64 {
            self.validTimeEnd = value
        }
        if let value = dict["ValidTimeStart"] as? Int64 {
            self.validTimeStart = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateOpenGlobalDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateOpenGlobalDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOpenGlobalDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOpenGlobalDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOpenSingleDataRequest : Tea.TeaModel {
    public var appId: String?

    public var appMaxVersion: String?

    public var appMinVersion: String?

    public var bizType: String?

    public var checkOnline: Bool?

    public var extAttrStr: String?

    public var linkToken: String?

    public var osType: String?

    public var payload: String?

    public var tenantId: String?

    public var thirdMsgId: String?

    public var validTimeEnd: Int64?

    public var validTimeStart: Int64?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.appMaxVersion != nil {
            map["AppMaxVersion"] = self.appMaxVersion!
        }
        if self.appMinVersion != nil {
            map["AppMinVersion"] = self.appMinVersion!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.checkOnline != nil {
            map["CheckOnline"] = self.checkOnline!
        }
        if self.extAttrStr != nil {
            map["ExtAttrStr"] = self.extAttrStr!
        }
        if self.linkToken != nil {
            map["LinkToken"] = self.linkToken!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdMsgId != nil {
            map["ThirdMsgId"] = self.thirdMsgId!
        }
        if self.validTimeEnd != nil {
            map["ValidTimeEnd"] = self.validTimeEnd!
        }
        if self.validTimeStart != nil {
            map["ValidTimeStart"] = self.validTimeStart!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppMaxVersion"] as? String {
            self.appMaxVersion = value
        }
        if let value = dict["AppMinVersion"] as? String {
            self.appMinVersion = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["CheckOnline"] as? Bool {
            self.checkOnline = value
        }
        if let value = dict["ExtAttrStr"] as? String {
            self.extAttrStr = value
        }
        if let value = dict["LinkToken"] as? String {
            self.linkToken = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdMsgId"] as? String {
            self.thirdMsgId = value
        }
        if let value = dict["ValidTimeEnd"] as? Int64 {
            self.validTimeEnd = value
        }
        if let value = dict["ValidTimeStart"] as? Int64 {
            self.validTimeStart = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateOpenSingleDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class CreateOpenSingleDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOpenSingleDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOpenSingleDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var descInfo: String?

    public var iconUrls: String?

    public var imageUrls: String?

    public var jumpAction: Int32?

    public var pushStyle: Int32?

    public var showStyle: Int64?

    public var templateName: String?

    public var tenantId: String?

    public var title: String?

    public var uri: String?

    public var variables: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.descInfo != nil {
            map["DescInfo"] = self.descInfo!
        }
        if self.iconUrls != nil {
            map["IconUrls"] = self.iconUrls!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.jumpAction != nil {
            map["JumpAction"] = self.jumpAction!
        }
        if self.pushStyle != nil {
            map["PushStyle"] = self.pushStyle!
        }
        if self.showStyle != nil {
            map["ShowStyle"] = self.showStyle!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DescInfo"] as? String {
            self.descInfo = value
        }
        if let value = dict["IconUrls"] as? String {
            self.iconUrls = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrls = value
        }
        if let value = dict["JumpAction"] as? Int32 {
            self.jumpAction = value
        }
        if let value = dict["PushStyle"] as? Int32 {
            self.pushStyle = value
        }
        if let value = dict["ShowStyle"] as? Int64 {
            self.showStyle = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["Variables"] as? String {
            self.variables = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCubecardWhitelistContentRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var whitelistId: String?

    public var whitelistValue: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.whitelistId != nil {
            map["WhitelistId"] = self.whitelistId!
        }
        if self.whitelistValue != nil {
            map["WhitelistValue"] = self.whitelistValue!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WhitelistId"] as? String {
            self.whitelistId = value
        }
        if let value = dict["WhitelistValue"] as? String {
            self.whitelistValue = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteCubecardWhitelistContentResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var content: String?

            public var errorCode: String?

            public var resultMsg: String?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.resultMsg != nil {
                    map["ResultMsg"] = self.resultMsg!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ResultMsg"] as? String {
                    self.resultMsg = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var data: DeleteCubecardWhitelistContentResponseBody.ResultContent.Data?

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
                var model = DeleteCubecardWhitelistContentResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: DeleteCubecardWhitelistContentResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = DeleteCubecardWhitelistContentResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class DeleteCubecardWhitelistContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCubecardWhitelistContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCubecardWhitelistContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMcubeMiniAppRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMcubeMiniAppResponseBody : Tea.TeaModel {
    public class DeleteMiniResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var deleteMiniResult: DeleteMcubeMiniAppResponseBody.DeleteMiniResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteMiniResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteMiniResult != nil {
            map["DeleteMiniResult"] = self.deleteMiniResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteMiniResult"] as? [String: Any?] {
            var model = DeleteMcubeMiniAppResponseBody.DeleteMiniResult()
            model.fromMap(value)
            self.deleteMiniResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class DeleteMcubeMiniAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcubeMiniAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMcubeMiniAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMcubeNebulaAppRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMcubeNebulaAppResponseBody : Tea.TeaModel {
    public class DeleteMcubeNebulaAppResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var deleteMcubeNebulaAppResult: DeleteMcubeNebulaAppResponseBody.DeleteMcubeNebulaAppResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteMcubeNebulaAppResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteMcubeNebulaAppResult != nil {
            map["DeleteMcubeNebulaAppResult"] = self.deleteMcubeNebulaAppResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteMcubeNebulaAppResult"] as? [String: Any?] {
            var model = DeleteMcubeNebulaAppResponseBody.DeleteMcubeNebulaAppResult()
            model.fromMap(value)
            self.deleteMcubeNebulaAppResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class DeleteMcubeNebulaAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcubeNebulaAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMcubeNebulaAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMcubeUpgradeResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var id: String?

    public var platform: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMcubeUpgradeResourceResponseBody : Tea.TeaModel {
    public class DeleteResult : Tea.TeaModel {
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var deleteResult: DeleteMcubeUpgradeResourceResponseBody.DeleteResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteResult != nil {
            map["DeleteResult"] = self.deleteResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteResult"] as? [String: Any?] {
            var model = DeleteMcubeUpgradeResourceResponseBody.DeleteResult()
            model.fromMap(value)
            self.deleteResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class DeleteMcubeUpgradeResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcubeUpgradeResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMcubeUpgradeResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMcubeWhitelistRequest : Tea.TeaModel {
    public var appId: String?

    public var id: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMcubeWhitelistResponseBody : Tea.TeaModel {
    public class DeleteWhitelistResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var deleteWhitelistResult: DeleteMcubeWhitelistResponseBody.DeleteWhitelistResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteWhitelistResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteWhitelistResult != nil {
            map["DeleteWhitelistResult"] = self.deleteWhitelistResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteWhitelistResult"] as? [String: Any?] {
            var model = DeleteMcubeWhitelistResponseBody.DeleteWhitelistResult()
            model.fromMap(value)
            self.deleteWhitelistResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class DeleteMcubeWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcubeWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMcubeWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMdsWhitelistContentRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var whitelistId: String?

    public var whitelistValue: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.whitelistId != nil {
            map["WhitelistId"] = self.whitelistId!
        }
        if self.whitelistValue != nil {
            map["WhitelistValue"] = self.whitelistValue!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WhitelistId"] as? String {
            self.whitelistId = value
        }
        if let value = dict["WhitelistValue"] as? String {
            self.whitelistValue = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMdsWhitelistContentResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var content: String?

            public var errorCode: String?

            public var resultMsg: String?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.resultMsg != nil {
                    map["ResultMsg"] = self.resultMsg!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ResultMsg"] as? String {
                    self.resultMsg = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var data: DeleteMdsWhitelistContentResponseBody.ResultContent.Data?

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
                var model = DeleteMdsWhitelistContentResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: DeleteMdsWhitelistContentResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = DeleteMdsWhitelistContentResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class DeleteMdsWhitelistContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMdsWhitelistContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMdsWhitelistContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var appId: String?

    public var templateId: String?

    public var templateName: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExistMcubeRsaKeyRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ExistMcubeRsaKeyResponseBody : Tea.TeaModel {
    public class CheckRsaKeyResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var checkRsaKeyResult: ExistMcubeRsaKeyResponseBody.CheckRsaKeyResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.checkRsaKeyResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkRsaKeyResult != nil {
            map["CheckRsaKeyResult"] = self.checkRsaKeyResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckRsaKeyResult"] as? [String: Any?] {
            var model = ExistMcubeRsaKeyResponseBody.CheckRsaKeyResult()
            model.fromMap(value)
            self.checkRsaKeyResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ExistMcubeRsaKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExistMcubeRsaKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExistMcubeRsaKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcubeFileTokenRequest : Tea.TeaModel {
    public var appId: String?

    public var onexFlag: Bool?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.onexFlag != nil {
            map["OnexFlag"] = self.onexFlag!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OnexFlag"] as? Bool {
            self.onexFlag = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMcubeFileTokenResponseBody : Tea.TeaModel {
    public class GetFileTokenResult : Tea.TeaModel {
        public class FileToken : Tea.TeaModel {
            public var accessid: String?

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
                if self.accessid != nil {
                    map["Accessid"] = self.accessid!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Accessid"] as? String {
                    self.accessid = value
                }
                if let value = dict["Dir"] as? String {
                    self.dir = value
                }
                if let value = dict["Expire"] as? String {
                    self.expire = value
                }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["Policy"] as? String {
                    self.policy = value
                }
                if let value = dict["Signature"] as? String {
                    self.signature = value
                }
            }
        }
        public var fileToken: GetMcubeFileTokenResponseBody.GetFileTokenResult.FileToken?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fileToken?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileToken != nil {
                map["FileToken"] = self.fileToken?.toMap()
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileToken"] as? [String: Any?] {
                var model = GetMcubeFileTokenResponseBody.GetFileTokenResult.FileToken()
                model.fromMap(value)
                self.fileToken = model
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var getFileTokenResult: GetMcubeFileTokenResponseBody.GetFileTokenResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getFileTokenResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.getFileTokenResult != nil {
            map["GetFileTokenResult"] = self.getFileTokenResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GetFileTokenResult"] as? [String: Any?] {
            var model = GetMcubeFileTokenResponseBody.GetFileTokenResult()
            model.fromMap(value)
            self.getFileTokenResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class GetMcubeFileTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcubeFileTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcubeFileTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcubeNebulaResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var id: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMcubeNebulaResourceResponseBody : Tea.TeaModel {
    public class GetNebulaResourceResult : Tea.TeaModel {
        public class NebulaResourceInfo : Tea.TeaModel {
            public var appCode: String?

            public var autoInstall: Int32?

            public var clientVersionMax: String?

            public var clientVersionMin: String?

            public var creator: String?

            public var downloadUrl: String?

            public var extendInfo: String?

            public var extraData: String?

            public var fallbackBaseUrl: String?

            public var fileSize: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var h5Id: String?

            public var h5Name: String?

            public var h5Version: String?

            public var id: Int64?

            public var installType: Int32?

            public var mainUrl: String?

            public var memo: String?

            public var metaId: Int64?

            public var modifier: String?

            public var packageType: Int32?

            public var platform: String?

            public var publishPeriod: Int32?

            public var resourceType: String?

            public var status: Int32?

            public var vhost: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.autoInstall != nil {
                    map["AutoInstall"] = self.autoInstall!
                }
                if self.clientVersionMax != nil {
                    map["ClientVersionMax"] = self.clientVersionMax!
                }
                if self.clientVersionMin != nil {
                    map["ClientVersionMin"] = self.clientVersionMin!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.extendInfo != nil {
                    map["ExtendInfo"] = self.extendInfo!
                }
                if self.extraData != nil {
                    map["ExtraData"] = self.extraData!
                }
                if self.fallbackBaseUrl != nil {
                    map["FallbackBaseUrl"] = self.fallbackBaseUrl!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.h5Id != nil {
                    map["H5Id"] = self.h5Id!
                }
                if self.h5Name != nil {
                    map["H5Name"] = self.h5Name!
                }
                if self.h5Version != nil {
                    map["H5Version"] = self.h5Version!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.installType != nil {
                    map["InstallType"] = self.installType!
                }
                if self.mainUrl != nil {
                    map["MainUrl"] = self.mainUrl!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.metaId != nil {
                    map["MetaId"] = self.metaId!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.publishPeriod != nil {
                    map["PublishPeriod"] = self.publishPeriod!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vhost != nil {
                    map["Vhost"] = self.vhost!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AutoInstall"] as? Int32 {
                    self.autoInstall = value
                }
                if let value = dict["ClientVersionMax"] as? String {
                    self.clientVersionMax = value
                }
                if let value = dict["ClientVersionMin"] as? String {
                    self.clientVersionMin = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ExtendInfo"] as? String {
                    self.extendInfo = value
                }
                if let value = dict["ExtraData"] as? String {
                    self.extraData = value
                }
                if let value = dict["FallbackBaseUrl"] as? String {
                    self.fallbackBaseUrl = value
                }
                if let value = dict["FileSize"] as? String {
                    self.fileSize = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["H5Id"] as? String {
                    self.h5Id = value
                }
                if let value = dict["H5Name"] as? String {
                    self.h5Name = value
                }
                if let value = dict["H5Version"] as? String {
                    self.h5Version = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["InstallType"] as? Int32 {
                    self.installType = value
                }
                if let value = dict["MainUrl"] as? String {
                    self.mainUrl = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["MetaId"] as? Int64 {
                    self.metaId = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["PackageType"] as? Int32 {
                    self.packageType = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["PublishPeriod"] as? Int32 {
                    self.publishPeriod = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["Vhost"] as? String {
                    self.vhost = value
                }
            }
        }
        public var errorCode: String?

        public var nebulaResourceInfo: GetMcubeNebulaResourceResponseBody.GetNebulaResourceResult.NebulaResourceInfo?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nebulaResourceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.nebulaResourceInfo != nil {
                map["NebulaResourceInfo"] = self.nebulaResourceInfo?.toMap()
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["NebulaResourceInfo"] as? [String: Any?] {
                var model = GetMcubeNebulaResourceResponseBody.GetNebulaResourceResult.NebulaResourceInfo()
                model.fromMap(value)
                self.nebulaResourceInfo = model
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var getNebulaResourceResult: GetMcubeNebulaResourceResponseBody.GetNebulaResourceResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getNebulaResourceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.getNebulaResourceResult != nil {
            map["GetNebulaResourceResult"] = self.getNebulaResourceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GetNebulaResourceResult"] as? [String: Any?] {
            var model = GetMcubeNebulaResourceResponseBody.GetNebulaResourceResult()
            model.fromMap(value)
            self.getNebulaResourceResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class GetMcubeNebulaResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcubeNebulaResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcubeNebulaResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcubeNebulaTaskDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var taskId: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMcubeNebulaTaskDetailResponseBody : Tea.TeaModel {
    public class GetMcubeNebulaTaskDetailResult : Tea.TeaModel {
        public class NebulaTaskDetail : Tea.TeaModel {
            public class RuleJsonList : Tea.TeaModel {
                public var operation: String?

                public var ruleElement: String?

                public var ruleType: String?

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
                    if self.operation != nil {
                        map["Operation"] = self.operation!
                    }
                    if self.ruleElement != nil {
                        map["RuleElement"] = self.ruleElement!
                    }
                    if self.ruleType != nil {
                        map["RuleType"] = self.ruleType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Operation"] as? String {
                        self.operation = value
                    }
                    if let value = dict["RuleElement"] as? String {
                        self.ruleElement = value
                    }
                    if let value = dict["RuleType"] as? String {
                        self.ruleType = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var appCode: String?

            public var appId: String?

            public var atomic: Int32?

            public var baseInfoId: Int64?

            public var bizType: String?

            public var creator: String?

            public var cronexpress: Int32?

            public var downloadUrl: String?

            public var extraData: String?

            public var fileSize: String?

            public var fullRepair: Int32?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var gmtModifiedStr: String?

            public var greyConfigInfo: String?

            public var greyEndtime: String?

            public var greyEndtimeData: String?

            public var greyEndtimeStr: String?

            public var greyNum: Int32?

            public var greyUrl: String?

            public var id: Int64?

            public var issueDesc: String?

            public var memo: String?

            public var modifier: String?

            public var ossPath: String?

            public var packageId: Int64?

            public var percent: Int32?

            public var platform: String?

            public var productId: String?

            public var productVersion: String?

            public var publishMode: Int32?

            public var publishPeriod: Int32?

            public var publishType: Int32?

            public var quickRollback: Int32?

            public var releaseVersion: String?

            public var ruleJsonList: [GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult.NebulaTaskDetail.RuleJsonList]?

            public var sourceId: String?

            public var sourceName: String?

            public var sourceType: String?

            public var status: Int32?

            public var syncResult: String?

            public var syncType: Int32?

            public var taskName: String?

            public var taskStatus: Int32?

            public var taskType: Int32?

            public var taskVersion: Int64?

            public var upgradeNoticeNum: Int64?

            public var upgradeProgress: String?

            public var whitelistIds: String?

            public var workspaceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.atomic != nil {
                    map["Atomic"] = self.atomic!
                }
                if self.baseInfoId != nil {
                    map["BaseInfoId"] = self.baseInfoId!
                }
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.cronexpress != nil {
                    map["Cronexpress"] = self.cronexpress!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.extraData != nil {
                    map["ExtraData"] = self.extraData!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.fullRepair != nil {
                    map["FullRepair"] = self.fullRepair!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.gmtModifiedStr != nil {
                    map["GmtModifiedStr"] = self.gmtModifiedStr!
                }
                if self.greyConfigInfo != nil {
                    map["GreyConfigInfo"] = self.greyConfigInfo!
                }
                if self.greyEndtime != nil {
                    map["GreyEndtime"] = self.greyEndtime!
                }
                if self.greyEndtimeData != nil {
                    map["GreyEndtimeData"] = self.greyEndtimeData!
                }
                if self.greyEndtimeStr != nil {
                    map["GreyEndtimeStr"] = self.greyEndtimeStr!
                }
                if self.greyNum != nil {
                    map["GreyNum"] = self.greyNum!
                }
                if self.greyUrl != nil {
                    map["GreyUrl"] = self.greyUrl!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.issueDesc != nil {
                    map["IssueDesc"] = self.issueDesc!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.ossPath != nil {
                    map["OssPath"] = self.ossPath!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.percent != nil {
                    map["Percent"] = self.percent!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.publishMode != nil {
                    map["PublishMode"] = self.publishMode!
                }
                if self.publishPeriod != nil {
                    map["PublishPeriod"] = self.publishPeriod!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.quickRollback != nil {
                    map["QuickRollback"] = self.quickRollback!
                }
                if self.releaseVersion != nil {
                    map["ReleaseVersion"] = self.releaseVersion!
                }
                if self.ruleJsonList != nil {
                    var tmp : [Any] = []
                    for k in self.ruleJsonList! {
                        tmp.append(k.toMap())
                    }
                    map["RuleJsonList"] = tmp
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["SourceName"] = self.sourceName!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.syncResult != nil {
                    map["SyncResult"] = self.syncResult!
                }
                if self.syncType != nil {
                    map["SyncType"] = self.syncType!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.taskVersion != nil {
                    map["TaskVersion"] = self.taskVersion!
                }
                if self.upgradeNoticeNum != nil {
                    map["UpgradeNoticeNum"] = self.upgradeNoticeNum!
                }
                if self.upgradeProgress != nil {
                    map["UpgradeProgress"] = self.upgradeProgress!
                }
                if self.whitelistIds != nil {
                    map["WhitelistIds"] = self.whitelistIds!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["Atomic"] as? Int32 {
                    self.atomic = value
                }
                if let value = dict["BaseInfoId"] as? Int64 {
                    self.baseInfoId = value
                }
                if let value = dict["BizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["Cronexpress"] as? Int32 {
                    self.cronexpress = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ExtraData"] as? String {
                    self.extraData = value
                }
                if let value = dict["FileSize"] as? String {
                    self.fileSize = value
                }
                if let value = dict["FullRepair"] as? Int32 {
                    self.fullRepair = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["GmtModifiedStr"] as? String {
                    self.gmtModifiedStr = value
                }
                if let value = dict["GreyConfigInfo"] as? String {
                    self.greyConfigInfo = value
                }
                if let value = dict["GreyEndtime"] as? String {
                    self.greyEndtime = value
                }
                if let value = dict["GreyEndtimeData"] as? String {
                    self.greyEndtimeData = value
                }
                if let value = dict["GreyEndtimeStr"] as? String {
                    self.greyEndtimeStr = value
                }
                if let value = dict["GreyNum"] as? Int32 {
                    self.greyNum = value
                }
                if let value = dict["GreyUrl"] as? String {
                    self.greyUrl = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IssueDesc"] as? String {
                    self.issueDesc = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["OssPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["PackageId"] as? Int64 {
                    self.packageId = value
                }
                if let value = dict["Percent"] as? Int32 {
                    self.percent = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["PublishMode"] as? Int32 {
                    self.publishMode = value
                }
                if let value = dict["PublishPeriod"] as? Int32 {
                    self.publishPeriod = value
                }
                if let value = dict["PublishType"] as? Int32 {
                    self.publishType = value
                }
                if let value = dict["QuickRollback"] as? Int32 {
                    self.quickRollback = value
                }
                if let value = dict["ReleaseVersion"] as? String {
                    self.releaseVersion = value
                }
                if let value = dict["RuleJsonList"] as? [Any?] {
                    var tmp : [GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult.NebulaTaskDetail.RuleJsonList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult.NebulaTaskDetail.RuleJsonList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ruleJsonList = tmp
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["SourceName"] as? String {
                    self.sourceName = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SyncResult"] as? String {
                    self.syncResult = value
                }
                if let value = dict["SyncType"] as? Int32 {
                    self.syncType = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TaskStatus"] as? Int32 {
                    self.taskStatus = value
                }
                if let value = dict["TaskType"] as? Int32 {
                    self.taskType = value
                }
                if let value = dict["TaskVersion"] as? Int64 {
                    self.taskVersion = value
                }
                if let value = dict["UpgradeNoticeNum"] as? Int64 {
                    self.upgradeNoticeNum = value
                }
                if let value = dict["UpgradeProgress"] as? String {
                    self.upgradeProgress = value
                }
                if let value = dict["WhitelistIds"] as? String {
                    self.whitelistIds = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var errorCode: String?

        public var nebulaTaskDetail: GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult.NebulaTaskDetail?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nebulaTaskDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.nebulaTaskDetail != nil {
                map["NebulaTaskDetail"] = self.nebulaTaskDetail?.toMap()
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["NebulaTaskDetail"] as? [String: Any?] {
                var model = GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult.NebulaTaskDetail()
                model.fromMap(value)
                self.nebulaTaskDetail = model
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var getMcubeNebulaTaskDetailResult: GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getMcubeNebulaTaskDetailResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.getMcubeNebulaTaskDetailResult != nil {
            map["GetMcubeNebulaTaskDetailResult"] = self.getMcubeNebulaTaskDetailResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GetMcubeNebulaTaskDetailResult"] as? [String: Any?] {
            var model = GetMcubeNebulaTaskDetailResponseBody.GetMcubeNebulaTaskDetailResult()
            model.fromMap(value)
            self.getMcubeNebulaTaskDetailResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class GetMcubeNebulaTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcubeNebulaTaskDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcubeNebulaTaskDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcubeUpgradePackageInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var packageId: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PackageId"] as? Int64 {
            self.packageId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMcubeUpgradePackageInfoResponseBody : Tea.TeaModel {
    public class GetPackageResult : Tea.TeaModel {
        public class PackageInfo : Tea.TeaModel {
            public class MobileTestFlightConfigDO : Tea.TeaModel {
                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var installAmount: Int32?

                public var invalidTime: String?

                public var upgradeId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.installAmount != nil {
                        map["InstallAmount"] = self.installAmount!
                    }
                    if self.invalidTime != nil {
                        map["InvalidTime"] = self.invalidTime!
                    }
                    if self.upgradeId != nil {
                        map["UpgradeId"] = self.upgradeId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["InstallAmount"] as? Int32 {
                        self.installAmount = value
                    }
                    if let value = dict["InvalidTime"] as? String {
                        self.invalidTime = value
                    }
                    if let value = dict["UpgradeId"] as? Int64 {
                        self.upgradeId = value
                    }
                }
            }
            public class UpgradeBaseInfoDO : Tea.TeaModel {
                public var allowCreateTask: Bool?

                public var appCode: String?

                public var appstoreUrl: String?

                public var changeLog: String?

                public var creator: String?

                public var downloadUrl: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: Int64?

                public var isEnterprise: Int32?

                public var modifier: String?

                public var needCheck: Int32?

                public var packageType: String?

                public var platform: String?

                public var productId: String?

                public var productName: String?

                public var productVersion: String?

                public var publishPeriod: Int32?

                public var verificationCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allowCreateTask != nil {
                        map["AllowCreateTask"] = self.allowCreateTask!
                    }
                    if self.appCode != nil {
                        map["AppCode"] = self.appCode!
                    }
                    if self.appstoreUrl != nil {
                        map["AppstoreUrl"] = self.appstoreUrl!
                    }
                    if self.changeLog != nil {
                        map["ChangeLog"] = self.changeLog!
                    }
                    if self.creator != nil {
                        map["Creator"] = self.creator!
                    }
                    if self.downloadUrl != nil {
                        map["DownloadUrl"] = self.downloadUrl!
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
                    if self.isEnterprise != nil {
                        map["IsEnterprise"] = self.isEnterprise!
                    }
                    if self.modifier != nil {
                        map["Modifier"] = self.modifier!
                    }
                    if self.needCheck != nil {
                        map["NeedCheck"] = self.needCheck!
                    }
                    if self.packageType != nil {
                        map["PackageType"] = self.packageType!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.productId != nil {
                        map["ProductId"] = self.productId!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productVersion != nil {
                        map["ProductVersion"] = self.productVersion!
                    }
                    if self.publishPeriod != nil {
                        map["PublishPeriod"] = self.publishPeriod!
                    }
                    if self.verificationCode != nil {
                        map["VerificationCode"] = self.verificationCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllowCreateTask"] as? Bool {
                        self.allowCreateTask = value
                    }
                    if let value = dict["AppCode"] as? String {
                        self.appCode = value
                    }
                    if let value = dict["AppstoreUrl"] as? String {
                        self.appstoreUrl = value
                    }
                    if let value = dict["ChangeLog"] as? String {
                        self.changeLog = value
                    }
                    if let value = dict["Creator"] as? String {
                        self.creator = value
                    }
                    if let value = dict["DownloadUrl"] as? String {
                        self.downloadUrl = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["IsEnterprise"] as? Int32 {
                        self.isEnterprise = value
                    }
                    if let value = dict["Modifier"] as? String {
                        self.modifier = value
                    }
                    if let value = dict["NeedCheck"] as? Int32 {
                        self.needCheck = value
                    }
                    if let value = dict["PackageType"] as? String {
                        self.packageType = value
                    }
                    if let value = dict["Platform"] as? String {
                        self.platform = value
                    }
                    if let value = dict["ProductId"] as? String {
                        self.productId = value
                    }
                    if let value = dict["ProductName"] as? String {
                        self.productName = value
                    }
                    if let value = dict["ProductVersion"] as? String {
                        self.productVersion = value
                    }
                    if let value = dict["PublishPeriod"] as? Int32 {
                        self.publishPeriod = value
                    }
                    if let value = dict["VerificationCode"] as? String {
                        self.verificationCode = value
                    }
                }
            }
            public var mobileTestFlightConfigDO: GetMcubeUpgradePackageInfoResponseBody.GetPackageResult.PackageInfo.MobileTestFlightConfigDO?

            public var upgradeBaseInfoDO: GetMcubeUpgradePackageInfoResponseBody.GetPackageResult.PackageInfo.UpgradeBaseInfoDO?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.mobileTestFlightConfigDO?.validate()
                try self.upgradeBaseInfoDO?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mobileTestFlightConfigDO != nil {
                    map["MobileTestFlightConfigDO"] = self.mobileTestFlightConfigDO?.toMap()
                }
                if self.upgradeBaseInfoDO != nil {
                    map["UpgradeBaseInfoDO"] = self.upgradeBaseInfoDO?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MobileTestFlightConfigDO"] as? [String: Any?] {
                    var model = GetMcubeUpgradePackageInfoResponseBody.GetPackageResult.PackageInfo.MobileTestFlightConfigDO()
                    model.fromMap(value)
                    self.mobileTestFlightConfigDO = model
                }
                if let value = dict["UpgradeBaseInfoDO"] as? [String: Any?] {
                    var model = GetMcubeUpgradePackageInfoResponseBody.GetPackageResult.PackageInfo.UpgradeBaseInfoDO()
                    model.fromMap(value)
                    self.upgradeBaseInfoDO = model
                }
            }
        }
        public var errorCode: String?

        public var packageInfo: GetMcubeUpgradePackageInfoResponseBody.GetPackageResult.PackageInfo?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.packageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.packageInfo != nil {
                map["PackageInfo"] = self.packageInfo?.toMap()
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["PackageInfo"] as? [String: Any?] {
                var model = GetMcubeUpgradePackageInfoResponseBody.GetPackageResult.PackageInfo()
                model.fromMap(value)
                self.packageInfo = model
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var getPackageResult: GetMcubeUpgradePackageInfoResponseBody.GetPackageResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getPackageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.getPackageResult != nil {
            map["GetPackageResult"] = self.getPackageResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GetPackageResult"] as? [String: Any?] {
            var model = GetMcubeUpgradePackageInfoResponseBody.GetPackageResult()
            model.fromMap(value)
            self.getPackageResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class GetMcubeUpgradePackageInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcubeUpgradePackageInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcubeUpgradePackageInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcubeUpgradeTaskInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var taskId: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMcubeUpgradeTaskInfoResponseBody : Tea.TeaModel {
    public class GetTaskResult : Tea.TeaModel {
        public class TaskInfo : Tea.TeaModel {
            public class RuleJsonList : Tea.TeaModel {
                public var operation: String?

                public var ruleElement: String?

                public var ruleType: String?

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
                    if self.operation != nil {
                        map["Operation"] = self.operation!
                    }
                    if self.ruleElement != nil {
                        map["RuleElement"] = self.ruleElement!
                    }
                    if self.ruleType != nil {
                        map["RuleType"] = self.ruleType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Operation"] as? String {
                        self.operation = value
                    }
                    if let value = dict["RuleElement"] as? String {
                        self.ruleElement = value
                    }
                    if let value = dict["RuleType"] as? String {
                        self.ruleType = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class Whitelist : Tea.TeaModel {
                public var appCode: String?

                public var id: Int64?

                public var idType: String?

                public var platform: String?

                public var status: Int32?

                public var userType: String?

                public var whiteListCount: Int64?

                public var whiteListName: String?

                public var whitelistType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appCode != nil {
                        map["AppCode"] = self.appCode!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.idType != nil {
                        map["IdType"] = self.idType!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.userType != nil {
                        map["UserType"] = self.userType!
                    }
                    if self.whiteListCount != nil {
                        map["WhiteListCount"] = self.whiteListCount!
                    }
                    if self.whiteListName != nil {
                        map["WhiteListName"] = self.whiteListName!
                    }
                    if self.whitelistType != nil {
                        map["WhitelistType"] = self.whitelistType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppCode"] as? String {
                        self.appCode = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["IdType"] as? String {
                        self.idType = value
                    }
                    if let value = dict["Platform"] as? String {
                        self.platform = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["UserType"] as? String {
                        self.userType = value
                    }
                    if let value = dict["WhiteListCount"] as? Int64 {
                        self.whiteListCount = value
                    }
                    if let value = dict["WhiteListName"] as? String {
                        self.whiteListName = value
                    }
                    if let value = dict["WhitelistType"] as? String {
                        self.whitelistType = value
                    }
                }
            }
            public var appCode: String?

            public var appId: String?

            public var appstoreUrl: String?

            public var creator: String?

            public var downloadUrl: String?

            public var greyConfigInfo: String?

            public var greyEndtimeData: String?

            public var greyNum: Int32?

            public var historyForce: Int32?

            public var id: Int64?

            public var isEnterprise: Int32?

            public var memo: String?

            public var modifier: String?

            public var packageInfoId: Int64?

            public var packageType: String?

            public var platform: String?

            public var productId: String?

            public var publishMode: Int32?

            public var publishType: Int32?

            public var ruleJsonList: [GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo.RuleJsonList]?

            public var silentType: Int32?

            public var taskStatus: Int32?

            public var upgradeContent: String?

            public var upgradeType: Int32?

            public var upgradeValidTime: Int32?

            public var whitelist: [GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo.Whitelist]?

            public var whitelistIds: String?

            public var workspaceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appstoreUrl != nil {
                    map["AppstoreUrl"] = self.appstoreUrl!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.greyConfigInfo != nil {
                    map["GreyConfigInfo"] = self.greyConfigInfo!
                }
                if self.greyEndtimeData != nil {
                    map["GreyEndtimeData"] = self.greyEndtimeData!
                }
                if self.greyNum != nil {
                    map["GreyNum"] = self.greyNum!
                }
                if self.historyForce != nil {
                    map["HistoryForce"] = self.historyForce!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isEnterprise != nil {
                    map["IsEnterprise"] = self.isEnterprise!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.packageInfoId != nil {
                    map["PackageInfoId"] = self.packageInfoId!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.publishMode != nil {
                    map["PublishMode"] = self.publishMode!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.ruleJsonList != nil {
                    var tmp : [Any] = []
                    for k in self.ruleJsonList! {
                        tmp.append(k.toMap())
                    }
                    map["RuleJsonList"] = tmp
                }
                if self.silentType != nil {
                    map["SilentType"] = self.silentType!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.upgradeContent != nil {
                    map["UpgradeContent"] = self.upgradeContent!
                }
                if self.upgradeType != nil {
                    map["UpgradeType"] = self.upgradeType!
                }
                if self.upgradeValidTime != nil {
                    map["UpgradeValidTime"] = self.upgradeValidTime!
                }
                if self.whitelist != nil {
                    var tmp : [Any] = []
                    for k in self.whitelist! {
                        tmp.append(k.toMap())
                    }
                    map["Whitelist"] = tmp
                }
                if self.whitelistIds != nil {
                    map["WhitelistIds"] = self.whitelistIds!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppstoreUrl"] as? String {
                    self.appstoreUrl = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["GreyConfigInfo"] as? String {
                    self.greyConfigInfo = value
                }
                if let value = dict["GreyEndtimeData"] as? String {
                    self.greyEndtimeData = value
                }
                if let value = dict["GreyNum"] as? Int32 {
                    self.greyNum = value
                }
                if let value = dict["HistoryForce"] as? Int32 {
                    self.historyForce = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IsEnterprise"] as? Int32 {
                    self.isEnterprise = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["PackageInfoId"] as? Int64 {
                    self.packageInfoId = value
                }
                if let value = dict["PackageType"] as? String {
                    self.packageType = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["PublishMode"] as? Int32 {
                    self.publishMode = value
                }
                if let value = dict["PublishType"] as? Int32 {
                    self.publishType = value
                }
                if let value = dict["RuleJsonList"] as? [Any?] {
                    var tmp : [GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo.RuleJsonList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo.RuleJsonList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ruleJsonList = tmp
                }
                if let value = dict["SilentType"] as? Int32 {
                    self.silentType = value
                }
                if let value = dict["TaskStatus"] as? Int32 {
                    self.taskStatus = value
                }
                if let value = dict["UpgradeContent"] as? String {
                    self.upgradeContent = value
                }
                if let value = dict["UpgradeType"] as? Int32 {
                    self.upgradeType = value
                }
                if let value = dict["UpgradeValidTime"] as? Int32 {
                    self.upgradeValidTime = value
                }
                if let value = dict["Whitelist"] as? [Any?] {
                    var tmp : [GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo.Whitelist] = []
                    for v in value {
                        if v != nil {
                            var model = GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo.Whitelist()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.whitelist = tmp
                }
                if let value = dict["WhitelistIds"] as? String {
                    self.whitelistIds = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public var taskInfo: GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.taskInfo != nil {
                map["TaskInfo"] = self.taskInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TaskInfo"] as? [String: Any?] {
                var model = GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult.TaskInfo()
                model.fromMap(value)
                self.taskInfo = model
            }
        }
    }
    public var getTaskResult: GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.getTaskResult != nil {
            map["GetTaskResult"] = self.getTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GetTaskResult"] as? [String: Any?] {
            var model = GetMcubeUpgradeTaskInfoResponseBody.GetTaskResult()
            model.fromMap(value)
            self.getTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class GetMcubeUpgradeTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcubeUpgradeTaskInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcubeUpgradeTaskInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var appId: String?

    public var templateId: String?

    public var templateName: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var action: String?

        public var content: String?

        public var descInfo: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var iconUrls: String?

        public var id: String?

        public var imageUrls: String?

        public var name: String?

        public var pushStyle: String?

        public var showStyle: String?

        public var title: String?

        public var uri: String?

        public var variables: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.descInfo != nil {
                map["DescInfo"] = self.descInfo!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.iconUrls != nil {
                map["IconUrls"] = self.iconUrls!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageUrls != nil {
                map["ImageUrls"] = self.imageUrls!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pushStyle != nil {
                map["PushStyle"] = self.pushStyle!
            }
            if self.showStyle != nil {
                map["ShowStyle"] = self.showStyle!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            if self.variables != nil {
                map["Variables"] = self.variables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["DescInfo"] as? String {
                self.descInfo = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IconUrls"] as? String {
                self.iconUrls = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ImageUrls"] as? String {
                self.imageUrls = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PushStyle"] as? String {
                self.pushStyle = value
            }
            if let value = dict["ShowStyle"] as? String {
                self.showStyle = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
            if let value = dict["Variables"] as? String {
                self.variables = value
            }
        }
    }
    public var code: String?

    public var data: GetTemplateResponseBody.Data?

    public var msg: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnalysisCoreIndexRequest : Tea.TeaModel {
    public var appId: String?

    public var channel: String?

    public var endTime: Int64?

    public var platform: String?

    public var startTime: Int64?

    public var taskId: String?

    public var tenantId: String?

    public var type: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListAnalysisCoreIndexResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var arrivalNum: String?

            public var arrivalRate: String?

            public var ignoreNum: String?

            public var ignoreRate: String?

            public var openNum: String?

            public var openRate: String?

            public var pushNum: String?

            public var pushTotalNum: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrivalNum != nil {
                    map["ArrivalNum"] = self.arrivalNum!
                }
                if self.arrivalRate != nil {
                    map["ArrivalRate"] = self.arrivalRate!
                }
                if self.ignoreNum != nil {
                    map["IgnoreNum"] = self.ignoreNum!
                }
                if self.ignoreRate != nil {
                    map["IgnoreRate"] = self.ignoreRate!
                }
                if self.openNum != nil {
                    map["OpenNum"] = self.openNum!
                }
                if self.openRate != nil {
                    map["OpenRate"] = self.openRate!
                }
                if self.pushNum != nil {
                    map["PushNum"] = self.pushNum!
                }
                if self.pushTotalNum != nil {
                    map["PushTotalNum"] = self.pushTotalNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArrivalNum"] as? String {
                    self.arrivalNum = value
                }
                if let value = dict["ArrivalRate"] as? String {
                    self.arrivalRate = value
                }
                if let value = dict["IgnoreNum"] as? String {
                    self.ignoreNum = value
                }
                if let value = dict["IgnoreRate"] as? String {
                    self.ignoreRate = value
                }
                if let value = dict["OpenNum"] as? String {
                    self.openNum = value
                }
                if let value = dict["OpenRate"] as? String {
                    self.openRate = value
                }
                if let value = dict["PushNum"] as? String {
                    self.pushNum = value
                }
                if let value = dict["PushTotalNum"] as? String {
                    self.pushTotalNum = value
                }
            }
        }
        public var data: ListAnalysisCoreIndexResponseBody.ResultContent.Data?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = ListAnalysisCoreIndexResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: ListAnalysisCoreIndexResponseBody.ResultContent?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = ListAnalysisCoreIndexResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAnalysisCoreIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnalysisCoreIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAnalysisCoreIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeMiniAppsRequest : Tea.TeaModel {
    public var appId: String?

    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeMiniAppsResponseBody : Tea.TeaModel {
    public class ListMiniResult : Tea.TeaModel {
        public class MiniProgramList : Tea.TeaModel {
            public var appCode: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var h5Id: String?

            public var h5Name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.h5Id != nil {
                    map["H5Id"] = self.h5Id!
                }
                if self.h5Name != nil {
                    map["H5Name"] = self.h5Name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["H5Id"] as? String {
                    self.h5Id = value
                }
                if let value = dict["H5Name"] as? String {
                    self.h5Name = value
                }
            }
        }
        public var currentPage: Int32?

        public var hasMore: Bool?

        public var miniProgramList: [ListMcubeMiniAppsResponseBody.ListMiniResult.MiniProgramList]?

        public var pageSize: Int32?

        public var resultMsg: String?

        public var success: Bool?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.miniProgramList != nil {
                var tmp : [Any] = []
                for k in self.miniProgramList! {
                    tmp.append(k.toMap())
                }
                map["MiniProgramList"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["HasMore"] as? Bool {
                self.hasMore = value
            }
            if let value = dict["MiniProgramList"] as? [Any?] {
                var tmp : [ListMcubeMiniAppsResponseBody.ListMiniResult.MiniProgramList] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeMiniAppsResponseBody.ListMiniResult.MiniProgramList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.miniProgramList = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var listMiniResult: ListMcubeMiniAppsResponseBody.ListMiniResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listMiniResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listMiniResult != nil {
            map["ListMiniResult"] = self.listMiniResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListMiniResult"] as? [String: Any?] {
            var model = ListMcubeMiniAppsResponseBody.ListMiniResult()
            model.fromMap(value)
            self.listMiniResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeMiniAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeMiniAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeMiniAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeMiniPackagesRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var packageTypes: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.packageTypes != nil {
            map["PackageTypes"] = self.packageTypes!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["PackageTypes"] as? String {
            self.packageTypes = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeMiniPackagesResponseBody : Tea.TeaModel {
    public class ListMiniPackageResult : Tea.TeaModel {
        public class MiniPackageList : Tea.TeaModel {
            public var appCode: String?

            public var autoInstall: Int64?

            public var clientVersionMax: String?

            public var clientVersionMin: String?

            public var downloadUrl: String?

            public var extendInfo: String?

            public var extraData: String?

            public var fallbackBaseUrl: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var h5Id: String?

            public var h5Name: String?

            public var h5Version: String?

            public var id: Int64?

            public var installType: Int64?

            public var mainUrl: String?

            public var memo: String?

            public var packageType: Int64?

            public var platform: String?

            public var publishPeriod: Int64?

            public var resourceType: Int64?

            public var status: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.autoInstall != nil {
                    map["AutoInstall"] = self.autoInstall!
                }
                if self.clientVersionMax != nil {
                    map["ClientVersionMax"] = self.clientVersionMax!
                }
                if self.clientVersionMin != nil {
                    map["ClientVersionMin"] = self.clientVersionMin!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.extendInfo != nil {
                    map["ExtendInfo"] = self.extendInfo!
                }
                if self.extraData != nil {
                    map["ExtraData"] = self.extraData!
                }
                if self.fallbackBaseUrl != nil {
                    map["FallbackBaseUrl"] = self.fallbackBaseUrl!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.h5Id != nil {
                    map["H5Id"] = self.h5Id!
                }
                if self.h5Name != nil {
                    map["H5Name"] = self.h5Name!
                }
                if self.h5Version != nil {
                    map["H5Version"] = self.h5Version!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.installType != nil {
                    map["InstallType"] = self.installType!
                }
                if self.mainUrl != nil {
                    map["MainUrl"] = self.mainUrl!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.publishPeriod != nil {
                    map["PublishPeriod"] = self.publishPeriod!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AutoInstall"] as? Int64 {
                    self.autoInstall = value
                }
                if let value = dict["ClientVersionMax"] as? String {
                    self.clientVersionMax = value
                }
                if let value = dict["ClientVersionMin"] as? String {
                    self.clientVersionMin = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ExtendInfo"] as? String {
                    self.extendInfo = value
                }
                if let value = dict["ExtraData"] as? String {
                    self.extraData = value
                }
                if let value = dict["FallbackBaseUrl"] as? String {
                    self.fallbackBaseUrl = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["H5Id"] as? String {
                    self.h5Id = value
                }
                if let value = dict["H5Name"] as? String {
                    self.h5Name = value
                }
                if let value = dict["H5Version"] as? String {
                    self.h5Version = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["InstallType"] as? Int64 {
                    self.installType = value
                }
                if let value = dict["MainUrl"] as? String {
                    self.mainUrl = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["PackageType"] as? Int64 {
                    self.packageType = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["PublishPeriod"] as? Int64 {
                    self.publishPeriod = value
                }
                if let value = dict["ResourceType"] as? Int64 {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
            }
        }
        public var currentPage: Int32?

        public var hasMore: Bool?

        public var miniPackageList: [ListMcubeMiniPackagesResponseBody.ListMiniPackageResult.MiniPackageList]?

        public var pageSize: Int32?

        public var resultMsg: String?

        public var success: Bool?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.miniPackageList != nil {
                var tmp : [Any] = []
                for k in self.miniPackageList! {
                    tmp.append(k.toMap())
                }
                map["MiniPackageList"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["HasMore"] as? Bool {
                self.hasMore = value
            }
            if let value = dict["MiniPackageList"] as? [Any?] {
                var tmp : [ListMcubeMiniPackagesResponseBody.ListMiniPackageResult.MiniPackageList] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeMiniPackagesResponseBody.ListMiniPackageResult.MiniPackageList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.miniPackageList = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var listMiniPackageResult: ListMcubeMiniPackagesResponseBody.ListMiniPackageResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listMiniPackageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listMiniPackageResult != nil {
            map["ListMiniPackageResult"] = self.listMiniPackageResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListMiniPackageResult"] as? [String: Any?] {
            var model = ListMcubeMiniPackagesResponseBody.ListMiniPackageResult()
            model.fromMap(value)
            self.listMiniPackageResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeMiniPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeMiniPackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeMiniPackagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeMiniTasksRequest : Tea.TeaModel {
    public var appId: String?

    public var id: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeMiniTasksResponseBody : Tea.TeaModel {
    public class ListMiniTaskResult : Tea.TeaModel {
        public class MiniTaskList : Tea.TeaModel {
            public var appCode: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var greyConfigInfo: String?

            public var greyEndtime: String?

            public var greyEndtimeData: String?

            public var greyNum: Int64?

            public var id: Int64?

            public var memo: String?

            public var packageId: Int64?

            public var platform: String?

            public var productVersion: String?

            public var publishMode: Int64?

            public var publishType: Int64?

            public var status: String?

            public var taskStatus: Int64?

            public var whitelistIds: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.greyConfigInfo != nil {
                    map["GreyConfigInfo"] = self.greyConfigInfo!
                }
                if self.greyEndtime != nil {
                    map["GreyEndtime"] = self.greyEndtime!
                }
                if self.greyEndtimeData != nil {
                    map["GreyEndtimeData"] = self.greyEndtimeData!
                }
                if self.greyNum != nil {
                    map["GreyNum"] = self.greyNum!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.publishMode != nil {
                    map["PublishMode"] = self.publishMode!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.whitelistIds != nil {
                    map["WhitelistIds"] = self.whitelistIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["GreyConfigInfo"] as? String {
                    self.greyConfigInfo = value
                }
                if let value = dict["GreyEndtime"] as? String {
                    self.greyEndtime = value
                }
                if let value = dict["GreyEndtimeData"] as? String {
                    self.greyEndtimeData = value
                }
                if let value = dict["GreyNum"] as? Int64 {
                    self.greyNum = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["PackageId"] as? Int64 {
                    self.packageId = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["PublishMode"] as? Int64 {
                    self.publishMode = value
                }
                if let value = dict["PublishType"] as? Int64 {
                    self.publishType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskStatus"] as? Int64 {
                    self.taskStatus = value
                }
                if let value = dict["WhitelistIds"] as? String {
                    self.whitelistIds = value
                }
            }
        }
        public var miniTaskList: [ListMcubeMiniTasksResponseBody.ListMiniTaskResult.MiniTaskList]?

        public var resultMsg: String?

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
            if self.miniTaskList != nil {
                var tmp : [Any] = []
                for k in self.miniTaskList! {
                    tmp.append(k.toMap())
                }
                map["MiniTaskList"] = tmp
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MiniTaskList"] as? [Any?] {
                var tmp : [ListMcubeMiniTasksResponseBody.ListMiniTaskResult.MiniTaskList] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeMiniTasksResponseBody.ListMiniTaskResult.MiniTaskList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.miniTaskList = tmp
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var listMiniTaskResult: ListMcubeMiniTasksResponseBody.ListMiniTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listMiniTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listMiniTaskResult != nil {
            map["ListMiniTaskResult"] = self.listMiniTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListMiniTaskResult"] as? [String: Any?] {
            var model = ListMcubeMiniTasksResponseBody.ListMiniTaskResult()
            model.fromMap(value)
            self.listMiniTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeMiniTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeMiniTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeMiniTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeNebulaAppsRequest : Tea.TeaModel {
    public var appId: String?

    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeNebulaAppsResponseBody : Tea.TeaModel {
    public class ListMcubeNebulaAppsResult : Tea.TeaModel {
        public class NebulaAppInfos : Tea.TeaModel {
            public var h5Id: String?

            public var h5Name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.h5Id != nil {
                    map["H5Id"] = self.h5Id!
                }
                if self.h5Name != nil {
                    map["H5Name"] = self.h5Name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["H5Id"] as? String {
                    self.h5Id = value
                }
                if let value = dict["H5Name"] as? String {
                    self.h5Name = value
                }
            }
        }
        public var currentPage: Int32?

        public var errorCode: String?

        public var hasMore: Bool?

        public var nebulaAppInfos: [ListMcubeNebulaAppsResponseBody.ListMcubeNebulaAppsResult.NebulaAppInfos]?

        public var pageSize: Int32?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.nebulaAppInfos != nil {
                var tmp : [Any] = []
                for k in self.nebulaAppInfos! {
                    tmp.append(k.toMap())
                }
                map["NebulaAppInfos"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["HasMore"] as? Bool {
                self.hasMore = value
            }
            if let value = dict["NebulaAppInfos"] as? [Any?] {
                var tmp : [ListMcubeNebulaAppsResponseBody.ListMcubeNebulaAppsResult.NebulaAppInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeNebulaAppsResponseBody.ListMcubeNebulaAppsResult.NebulaAppInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nebulaAppInfos = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var listMcubeNebulaAppsResult: ListMcubeNebulaAppsResponseBody.ListMcubeNebulaAppsResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listMcubeNebulaAppsResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listMcubeNebulaAppsResult != nil {
            map["ListMcubeNebulaAppsResult"] = self.listMcubeNebulaAppsResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListMcubeNebulaAppsResult"] as? [String: Any?] {
            var model = ListMcubeNebulaAppsResponseBody.ListMcubeNebulaAppsResult()
            model.fromMap(value)
            self.listMcubeNebulaAppsResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeNebulaAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeNebulaAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeNebulaAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeNebulaResourcesRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeNebulaResourcesResponseBody : Tea.TeaModel {
    public class ListMcubeNebulaResourceResult : Tea.TeaModel {
        public class NebulaResourceInfo : Tea.TeaModel {
            public var appCode: String?

            public var autoInstall: Int32?

            public var clientVersionMax: String?

            public var clientVersionMin: String?

            public var creator: String?

            public var debugUrl: String?

            public var downloadUrl: String?

            public var extendInfo: String?

            public var extraData: String?

            public var fallbackBaseUrl: String?

            public var fileSize: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var h5Id: String?

            public var h5Name: String?

            public var h5Version: String?

            public var id: Int64?

            public var installType: Int32?

            public var lazyLoad: Int32?

            public var mainUrl: String?

            public var md5: String?

            public var memo: String?

            public var metaId: Int64?

            public var modifier: String?

            public var packageType: Int32?

            public var platform: String?

            public var publishPeriod: Int32?

            public var releaseVersion: String?

            public var resourceType: String?

            public var status: Int32?

            public var vhost: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.autoInstall != nil {
                    map["AutoInstall"] = self.autoInstall!
                }
                if self.clientVersionMax != nil {
                    map["ClientVersionMax"] = self.clientVersionMax!
                }
                if self.clientVersionMin != nil {
                    map["ClientVersionMin"] = self.clientVersionMin!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.debugUrl != nil {
                    map["DebugUrl"] = self.debugUrl!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.extendInfo != nil {
                    map["ExtendInfo"] = self.extendInfo!
                }
                if self.extraData != nil {
                    map["ExtraData"] = self.extraData!
                }
                if self.fallbackBaseUrl != nil {
                    map["FallbackBaseUrl"] = self.fallbackBaseUrl!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.h5Id != nil {
                    map["H5Id"] = self.h5Id!
                }
                if self.h5Name != nil {
                    map["H5Name"] = self.h5Name!
                }
                if self.h5Version != nil {
                    map["H5Version"] = self.h5Version!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.installType != nil {
                    map["InstallType"] = self.installType!
                }
                if self.lazyLoad != nil {
                    map["LazyLoad"] = self.lazyLoad!
                }
                if self.mainUrl != nil {
                    map["MainUrl"] = self.mainUrl!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.metaId != nil {
                    map["MetaId"] = self.metaId!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.publishPeriod != nil {
                    map["PublishPeriod"] = self.publishPeriod!
                }
                if self.releaseVersion != nil {
                    map["ReleaseVersion"] = self.releaseVersion!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vhost != nil {
                    map["Vhost"] = self.vhost!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AutoInstall"] as? Int32 {
                    self.autoInstall = value
                }
                if let value = dict["ClientVersionMax"] as? String {
                    self.clientVersionMax = value
                }
                if let value = dict["ClientVersionMin"] as? String {
                    self.clientVersionMin = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["DebugUrl"] as? String {
                    self.debugUrl = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ExtendInfo"] as? String {
                    self.extendInfo = value
                }
                if let value = dict["ExtraData"] as? String {
                    self.extraData = value
                }
                if let value = dict["FallbackBaseUrl"] as? String {
                    self.fallbackBaseUrl = value
                }
                if let value = dict["FileSize"] as? String {
                    self.fileSize = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["H5Id"] as? String {
                    self.h5Id = value
                }
                if let value = dict["H5Name"] as? String {
                    self.h5Name = value
                }
                if let value = dict["H5Version"] as? String {
                    self.h5Version = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["InstallType"] as? Int32 {
                    self.installType = value
                }
                if let value = dict["LazyLoad"] as? Int32 {
                    self.lazyLoad = value
                }
                if let value = dict["MainUrl"] as? String {
                    self.mainUrl = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["MetaId"] as? Int64 {
                    self.metaId = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["PackageType"] as? Int32 {
                    self.packageType = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["PublishPeriod"] as? Int32 {
                    self.publishPeriod = value
                }
                if let value = dict["ReleaseVersion"] as? String {
                    self.releaseVersion = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["Vhost"] as? String {
                    self.vhost = value
                }
            }
        }
        public var currentPage: Int32?

        public var errorCode: String?

        public var hasMore: Bool?

        public var nebulaResourceInfo: [ListMcubeNebulaResourcesResponseBody.ListMcubeNebulaResourceResult.NebulaResourceInfo]?

        public var pageSize: Int32?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.nebulaResourceInfo != nil {
                var tmp : [Any] = []
                for k in self.nebulaResourceInfo! {
                    tmp.append(k.toMap())
                }
                map["NebulaResourceInfo"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["HasMore"] as? Bool {
                self.hasMore = value
            }
            if let value = dict["NebulaResourceInfo"] as? [Any?] {
                var tmp : [ListMcubeNebulaResourcesResponseBody.ListMcubeNebulaResourceResult.NebulaResourceInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeNebulaResourcesResponseBody.ListMcubeNebulaResourceResult.NebulaResourceInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nebulaResourceInfo = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var listMcubeNebulaResourceResult: ListMcubeNebulaResourcesResponseBody.ListMcubeNebulaResourceResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listMcubeNebulaResourceResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listMcubeNebulaResourceResult != nil {
            map["ListMcubeNebulaResourceResult"] = self.listMcubeNebulaResourceResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListMcubeNebulaResourceResult"] as? [String: Any?] {
            var model = ListMcubeNebulaResourcesResponseBody.ListMcubeNebulaResourceResult()
            model.fromMap(value)
            self.listMcubeNebulaResourceResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeNebulaResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeNebulaResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeNebulaResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeNebulaTasksRequest : Tea.TeaModel {
    public var appId: String?

    public var id: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeNebulaTasksResponseBody : Tea.TeaModel {
    public class ListMcubeNebulaTaskResult : Tea.TeaModel {
        public class NebulaTaskInfo : Tea.TeaModel {
            public var appCode: String?

            public var bizType: String?

            public var creator: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var gmtModifiedStr: String?

            public var greyConfigInfo: String?

            public var greyEndtime: String?

            public var greyEndtimeData: String?

            public var greyEndtimeStr: String?

            public var greyNum: Int32?

            public var greyUrl: String?

            public var id: Int64?

            public var memo: String?

            public var modifier: String?

            public var packageId: Int64?

            public var percent: Int32?

            public var platform: String?

            public var productId: String?

            public var productVersion: String?

            public var publishMode: Int32?

            public var publishType: Int32?

            public var releaseVersion: String?

            public var status: Int32?

            public var syncResult: String?

            public var taskName: String?

            public var taskStatus: Int32?

            public var taskType: Int32?

            public var taskVersion: Int64?

            public var upgradeNoticeNum: Int64?

            public var upgradeProgress: String?

            public var whitelistIds: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.gmtModifiedStr != nil {
                    map["GmtModifiedStr"] = self.gmtModifiedStr!
                }
                if self.greyConfigInfo != nil {
                    map["GreyConfigInfo"] = self.greyConfigInfo!
                }
                if self.greyEndtime != nil {
                    map["GreyEndtime"] = self.greyEndtime!
                }
                if self.greyEndtimeData != nil {
                    map["GreyEndtimeData"] = self.greyEndtimeData!
                }
                if self.greyEndtimeStr != nil {
                    map["GreyEndtimeStr"] = self.greyEndtimeStr!
                }
                if self.greyNum != nil {
                    map["GreyNum"] = self.greyNum!
                }
                if self.greyUrl != nil {
                    map["GreyUrl"] = self.greyUrl!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.percent != nil {
                    map["Percent"] = self.percent!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.publishMode != nil {
                    map["PublishMode"] = self.publishMode!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.releaseVersion != nil {
                    map["ReleaseVersion"] = self.releaseVersion!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.syncResult != nil {
                    map["SyncResult"] = self.syncResult!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.taskVersion != nil {
                    map["TaskVersion"] = self.taskVersion!
                }
                if self.upgradeNoticeNum != nil {
                    map["UpgradeNoticeNum"] = self.upgradeNoticeNum!
                }
                if self.upgradeProgress != nil {
                    map["UpgradeProgress"] = self.upgradeProgress!
                }
                if self.whitelistIds != nil {
                    map["WhitelistIds"] = self.whitelistIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["BizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["GmtModifiedStr"] as? String {
                    self.gmtModifiedStr = value
                }
                if let value = dict["GreyConfigInfo"] as? String {
                    self.greyConfigInfo = value
                }
                if let value = dict["GreyEndtime"] as? String {
                    self.greyEndtime = value
                }
                if let value = dict["GreyEndtimeData"] as? String {
                    self.greyEndtimeData = value
                }
                if let value = dict["GreyEndtimeStr"] as? String {
                    self.greyEndtimeStr = value
                }
                if let value = dict["GreyNum"] as? Int32 {
                    self.greyNum = value
                }
                if let value = dict["GreyUrl"] as? String {
                    self.greyUrl = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["PackageId"] as? Int64 {
                    self.packageId = value
                }
                if let value = dict["Percent"] as? Int32 {
                    self.percent = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["PublishMode"] as? Int32 {
                    self.publishMode = value
                }
                if let value = dict["PublishType"] as? Int32 {
                    self.publishType = value
                }
                if let value = dict["ReleaseVersion"] as? String {
                    self.releaseVersion = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SyncResult"] as? String {
                    self.syncResult = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TaskStatus"] as? Int32 {
                    self.taskStatus = value
                }
                if let value = dict["TaskType"] as? Int32 {
                    self.taskType = value
                }
                if let value = dict["TaskVersion"] as? Int64 {
                    self.taskVersion = value
                }
                if let value = dict["UpgradeNoticeNum"] as? Int64 {
                    self.upgradeNoticeNum = value
                }
                if let value = dict["UpgradeProgress"] as? String {
                    self.upgradeProgress = value
                }
                if let value = dict["WhitelistIds"] as? String {
                    self.whitelistIds = value
                }
            }
        }
        public var errorCode: String?

        public var nebulaTaskInfo: [ListMcubeNebulaTasksResponseBody.ListMcubeNebulaTaskResult.NebulaTaskInfo]?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.nebulaTaskInfo != nil {
                var tmp : [Any] = []
                for k in self.nebulaTaskInfo! {
                    tmp.append(k.toMap())
                }
                map["NebulaTaskInfo"] = tmp
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["NebulaTaskInfo"] as? [Any?] {
                var tmp : [ListMcubeNebulaTasksResponseBody.ListMcubeNebulaTaskResult.NebulaTaskInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeNebulaTasksResponseBody.ListMcubeNebulaTaskResult.NebulaTaskInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nebulaTaskInfo = tmp
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var listMcubeNebulaTaskResult: ListMcubeNebulaTasksResponseBody.ListMcubeNebulaTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listMcubeNebulaTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listMcubeNebulaTaskResult != nil {
            map["ListMcubeNebulaTaskResult"] = self.listMcubeNebulaTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListMcubeNebulaTaskResult"] as? [String: Any?] {
            var model = ListMcubeNebulaTasksResponseBody.ListMcubeNebulaTaskResult()
            model.fromMap(value)
            self.listMcubeNebulaTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeNebulaTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeNebulaTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeNebulaTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeUpgradePackagesRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeUpgradePackagesResponseBody : Tea.TeaModel {
    public class ListPackagesResult : Tea.TeaModel {
        public class Packages : Tea.TeaModel {
            public var allowCreateTask: Bool?

            public var appCode: String?

            public var appstoreUrl: String?

            public var changeLog: String?

            public var creator: String?

            public var downloadUrl: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isEnterprise: Int32?

            public var md5: String?

            public var modifier: String?

            public var needCheck: Int32?

            public var packageType: String?

            public var platform: String?

            public var productId: String?

            public var productVersion: String?

            public var publishPeriod: Int32?

            public var verificationCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowCreateTask != nil {
                    map["AllowCreateTask"] = self.allowCreateTask!
                }
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.appstoreUrl != nil {
                    map["AppstoreUrl"] = self.appstoreUrl!
                }
                if self.changeLog != nil {
                    map["ChangeLog"] = self.changeLog!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
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
                if self.isEnterprise != nil {
                    map["IsEnterprise"] = self.isEnterprise!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.needCheck != nil {
                    map["NeedCheck"] = self.needCheck!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.publishPeriod != nil {
                    map["PublishPeriod"] = self.publishPeriod!
                }
                if self.verificationCode != nil {
                    map["VerificationCode"] = self.verificationCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowCreateTask"] as? Bool {
                    self.allowCreateTask = value
                }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AppstoreUrl"] as? String {
                    self.appstoreUrl = value
                }
                if let value = dict["ChangeLog"] as? String {
                    self.changeLog = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IsEnterprise"] as? Int32 {
                    self.isEnterprise = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["NeedCheck"] as? Int32 {
                    self.needCheck = value
                }
                if let value = dict["PackageType"] as? String {
                    self.packageType = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["PublishPeriod"] as? Int32 {
                    self.publishPeriod = value
                }
                if let value = dict["VerificationCode"] as? String {
                    self.verificationCode = value
                }
            }
        }
        public var errorCode: String?

        public var packages: [ListMcubeUpgradePackagesResponseBody.ListPackagesResult.Packages]?

        public var requestId: String?

        public var resultMsg: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.packages != nil {
                var tmp : [Any] = []
                for k in self.packages! {
                    tmp.append(k.toMap())
                }
                map["Packages"] = tmp
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["Packages"] as? [Any?] {
                var tmp : [ListMcubeUpgradePackagesResponseBody.ListPackagesResult.Packages] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeUpgradePackagesResponseBody.ListPackagesResult.Packages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.packages = tmp
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var currentPage: Int32?

    public var hasMore: Bool?

    public var listPackagesResult: ListMcubeUpgradePackagesResponseBody.ListPackagesResult?

    public var pageSize: Int32?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listPackagesResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.hasMore != nil {
            map["HasMore"] = self.hasMore!
        }
        if self.listPackagesResult != nil {
            map["ListPackagesResult"] = self.listPackagesResult?.toMap()
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["HasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["ListPackagesResult"] as? [String: Any?] {
            var model = ListMcubeUpgradePackagesResponseBody.ListPackagesResult()
            model.fromMap(value)
            self.listPackagesResult = model
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListMcubeUpgradePackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeUpgradePackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeUpgradePackagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeUpgradeTasksRequest : Tea.TeaModel {
    public var appId: String?

    public var packageId: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PackageId"] as? String {
            self.packageId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeUpgradeTasksResponseBody : Tea.TeaModel {
    public class ListTaskResult : Tea.TeaModel {
        public class TaskInfo : Tea.TeaModel {
            public var appCode: String?

            public var creator: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var greyConfigInfo: String?

            public var greyEndtime: String?

            public var greyNum: Int32?

            public var historyForce: Int32?

            public var id: Int64?

            public var isEnterprise: Int32?

            public var memo: String?

            public var modifier: String?

            public var packageInfoId: Int64?

            public var platform: String?

            public var productId: String?

            public var productVersion: String?

            public var publishMode: Int32?

            public var publishType: Int32?

            public var pushContent: String?

            public var taskStatus: Int32?

            public var upgradeContent: String?

            public var upgradeType: Int32?

            public var whitelistIds: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.greyConfigInfo != nil {
                    map["GreyConfigInfo"] = self.greyConfigInfo!
                }
                if self.greyEndtime != nil {
                    map["GreyEndtime"] = self.greyEndtime!
                }
                if self.greyNum != nil {
                    map["GreyNum"] = self.greyNum!
                }
                if self.historyForce != nil {
                    map["HistoryForce"] = self.historyForce!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isEnterprise != nil {
                    map["IsEnterprise"] = self.isEnterprise!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier!
                }
                if self.packageInfoId != nil {
                    map["PackageInfoId"] = self.packageInfoId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.publishMode != nil {
                    map["PublishMode"] = self.publishMode!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.pushContent != nil {
                    map["PushContent"] = self.pushContent!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.upgradeContent != nil {
                    map["UpgradeContent"] = self.upgradeContent!
                }
                if self.upgradeType != nil {
                    map["UpgradeType"] = self.upgradeType!
                }
                if self.whitelistIds != nil {
                    map["WhitelistIds"] = self.whitelistIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["GreyConfigInfo"] as? String {
                    self.greyConfigInfo = value
                }
                if let value = dict["GreyEndtime"] as? String {
                    self.greyEndtime = value
                }
                if let value = dict["GreyNum"] as? Int32 {
                    self.greyNum = value
                }
                if let value = dict["HistoryForce"] as? Int32 {
                    self.historyForce = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IsEnterprise"] as? Int32 {
                    self.isEnterprise = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["Modifier"] as? String {
                    self.modifier = value
                }
                if let value = dict["PackageInfoId"] as? Int64 {
                    self.packageInfoId = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["PublishMode"] as? Int32 {
                    self.publishMode = value
                }
                if let value = dict["PublishType"] as? Int32 {
                    self.publishType = value
                }
                if let value = dict["PushContent"] as? String {
                    self.pushContent = value
                }
                if let value = dict["TaskStatus"] as? Int32 {
                    self.taskStatus = value
                }
                if let value = dict["UpgradeContent"] as? String {
                    self.upgradeContent = value
                }
                if let value = dict["UpgradeType"] as? Int32 {
                    self.upgradeType = value
                }
                if let value = dict["WhitelistIds"] as? String {
                    self.whitelistIds = value
                }
            }
        }
        public var errorCode: String?

        public var requestId: String?

        public var resultMsg: String?

        public var success: Bool?

        public var taskInfo: [ListMcubeUpgradeTasksResponseBody.ListTaskResult.TaskInfo]?

        public override init() {
            super.init()
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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.taskInfo != nil {
                var tmp : [Any] = []
                for k in self.taskInfo! {
                    tmp.append(k.toMap())
                }
                map["TaskInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TaskInfo"] as? [Any?] {
                var tmp : [ListMcubeUpgradeTasksResponseBody.ListTaskResult.TaskInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeUpgradeTasksResponseBody.ListTaskResult.TaskInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskInfo = tmp
            }
        }
    }
    public var listTaskResult: ListMcubeUpgradeTasksResponseBody.ListTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listTaskResult != nil {
            map["ListTaskResult"] = self.listTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListTaskResult"] as? [String: Any?] {
            var model = ListMcubeUpgradeTasksResponseBody.ListTaskResult()
            model.fromMap(value)
            self.listTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeUpgradeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeUpgradeTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeUpgradeTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcubeWhitelistsRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var whitelistName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.whitelistName != nil {
            map["WhitelistName"] = self.whitelistName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WhitelistName"] as? String {
            self.whitelistName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMcubeWhitelistsResponseBody : Tea.TeaModel {
    public class ListWhitelistResult : Tea.TeaModel {
        public class Whitelists : Tea.TeaModel {
            public var appCode: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var whiteListCount: Int64?

            public var whiteListName: String?

            public var whitelistType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
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
                if self.whiteListCount != nil {
                    map["WhiteListCount"] = self.whiteListCount!
                }
                if self.whiteListName != nil {
                    map["WhiteListName"] = self.whiteListName!
                }
                if self.whitelistType != nil {
                    map["WhitelistType"] = self.whitelistType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["WhiteListCount"] as? Int64 {
                    self.whiteListCount = value
                }
                if let value = dict["WhiteListName"] as? String {
                    self.whiteListName = value
                }
                if let value = dict["WhitelistType"] as? String {
                    self.whitelistType = value
                }
            }
        }
        public var currentPage: Int32?

        public var hasMore: Bool?

        public var pageSize: Int32?

        public var resultMsg: String?

        public var success: Bool?

        public var totalCount: Int64?

        public var whitelists: [ListMcubeWhitelistsResponseBody.ListWhitelistResult.Whitelists]?

        public override init() {
            super.init()
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
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.whitelists != nil {
                var tmp : [Any] = []
                for k in self.whitelists! {
                    tmp.append(k.toMap())
                }
                map["Whitelists"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["HasMore"] as? Bool {
                self.hasMore = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["Whitelists"] as? [Any?] {
                var tmp : [ListMcubeWhitelistsResponseBody.ListWhitelistResult.Whitelists] = []
                for v in value {
                    if v != nil {
                        var model = ListMcubeWhitelistsResponseBody.ListWhitelistResult.Whitelists()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.whitelists = tmp
            }
        }
    }
    public var listWhitelistResult: ListMcubeWhitelistsResponseBody.ListWhitelistResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listWhitelistResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listWhitelistResult != nil {
            map["ListWhitelistResult"] = self.listWhitelistResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListWhitelistResult"] as? [String: Any?] {
            var model = ListMcubeWhitelistsResponseBody.ListWhitelistResult()
            model.fromMap(value)
            self.listWhitelistResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class ListMcubeWhitelistsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcubeWhitelistsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcubeWhitelistsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatePageRequest : Tea.TeaModel {
    public var appId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListTemplatePageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var action: String?

        public var content: String?

        public var descInfo: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var iconUrls: String?

        public var id: String?

        public var imageUrls: String?

        public var name: String?

        public var pushStyle: String?

        public var showStyle: String?

        public var title: String?

        public var uri: String?

        public var variables: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.descInfo != nil {
                map["DescInfo"] = self.descInfo!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.iconUrls != nil {
                map["IconUrls"] = self.iconUrls!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageUrls != nil {
                map["ImageUrls"] = self.imageUrls!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pushStyle != nil {
                map["PushStyle"] = self.pushStyle!
            }
            if self.showStyle != nil {
                map["ShowStyle"] = self.showStyle!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            if self.variables != nil {
                map["Variables"] = self.variables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["DescInfo"] as? String {
                self.descInfo = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IconUrls"] as? String {
                self.iconUrls = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ImageUrls"] as? String {
                self.imageUrls = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PushStyle"] as? String {
                self.pushStyle = value
            }
            if let value = dict["ShowStyle"] as? String {
                self.showStyle = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
            if let value = dict["Variables"] as? String {
                self.variables = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var data: [ListTemplatePageResponseBody.Data]?

    public var msg: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalSize != nil {
            map["TotalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListTemplatePageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTemplatePageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListTemplatePageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatePageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTemplatePageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushBroadcastRequest : Tea.TeaModel {
    public var androidChannel: Int64?

    public var appId: String?

    public var bindEndTime: Int64?

    public var bindStartTime: Int64?

    public var channelId: String?

    public var classification: String?

    public var deliveryType: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var miChannelId: String?

    public var msgkey: String?

    public var notifyLevel: [String: Any]?

    public var notifyType: String?

    public var pushAction: Int64?

    public var pushStatus: Int64?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var taskName: String?

    public var templateKeyValue: String?

    public var templateName: String?

    public var tenantId: String?

    public var thirdChannelCategory: [String: Any]?

    public var timeMode: Int32?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var unBindEndTime: Int64?

    public var unBindPeriod: Int64?

    public var unBindStartTime: Int64?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidChannel != nil {
            map["AndroidChannel"] = self.androidChannel!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.bindEndTime != nil {
            map["BindEndTime"] = self.bindEndTime!
        }
        if self.bindStartTime != nil {
            map["BindStartTime"] = self.bindStartTime!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.msgkey != nil {
            map["Msgkey"] = self.msgkey!
        }
        if self.notifyLevel != nil {
            map["NotifyLevel"] = self.notifyLevel!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.pushStatus != nil {
            map["PushStatus"] = self.pushStatus!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateKeyValue != nil {
            map["TemplateKeyValue"] = self.templateKeyValue!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategory != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategory!
        }
        if self.timeMode != nil {
            map["TimeMode"] = self.timeMode!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.unBindEndTime != nil {
            map["UnBindEndTime"] = self.unBindEndTime!
        }
        if self.unBindPeriod != nil {
            map["UnBindPeriod"] = self.unBindPeriod!
        }
        if self.unBindStartTime != nil {
            map["UnBindStartTime"] = self.unBindStartTime!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidChannel"] as? Int64 {
            self.androidChannel = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["BindEndTime"] as? Int64 {
            self.bindEndTime = value
        }
        if let value = dict["BindStartTime"] as? Int64 {
            self.bindStartTime = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["Msgkey"] as? String {
            self.msgkey = value
        }
        if let value = dict["NotifyLevel"] as? [String: Any] {
            self.notifyLevel = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["PushStatus"] as? Int64 {
            self.pushStatus = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateKeyValue"] as? String {
            self.templateKeyValue = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? [String: Any] {
            self.thirdChannelCategory = value
        }
        if let value = dict["TimeMode"] as? Int32 {
            self.timeMode = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["UnBindEndTime"] as? Int64 {
            self.unBindEndTime = value
        }
        if let value = dict["UnBindPeriod"] as? Int64 {
            self.unBindPeriod = value
        }
        if let value = dict["UnBindStartTime"] as? Int64 {
            self.unBindStartTime = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushBroadcastShrinkRequest : Tea.TeaModel {
    public var androidChannel: Int64?

    public var appId: String?

    public var bindEndTime: Int64?

    public var bindStartTime: Int64?

    public var channelId: String?

    public var classification: String?

    public var deliveryType: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var miChannelId: String?

    public var msgkey: String?

    public var notifyLevelShrink: String?

    public var notifyType: String?

    public var pushAction: Int64?

    public var pushStatus: Int64?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var taskName: String?

    public var templateKeyValue: String?

    public var templateName: String?

    public var tenantId: String?

    public var thirdChannelCategoryShrink: String?

    public var timeMode: Int32?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var unBindEndTime: Int64?

    public var unBindPeriod: Int64?

    public var unBindStartTime: Int64?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidChannel != nil {
            map["AndroidChannel"] = self.androidChannel!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.bindEndTime != nil {
            map["BindEndTime"] = self.bindEndTime!
        }
        if self.bindStartTime != nil {
            map["BindStartTime"] = self.bindStartTime!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.msgkey != nil {
            map["Msgkey"] = self.msgkey!
        }
        if self.notifyLevelShrink != nil {
            map["NotifyLevel"] = self.notifyLevelShrink!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.pushStatus != nil {
            map["PushStatus"] = self.pushStatus!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateKeyValue != nil {
            map["TemplateKeyValue"] = self.templateKeyValue!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategoryShrink != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategoryShrink!
        }
        if self.timeMode != nil {
            map["TimeMode"] = self.timeMode!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.unBindEndTime != nil {
            map["UnBindEndTime"] = self.unBindEndTime!
        }
        if self.unBindPeriod != nil {
            map["UnBindPeriod"] = self.unBindPeriod!
        }
        if self.unBindStartTime != nil {
            map["UnBindStartTime"] = self.unBindStartTime!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidChannel"] as? Int64 {
            self.androidChannel = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["BindEndTime"] as? Int64 {
            self.bindEndTime = value
        }
        if let value = dict["BindStartTime"] as? Int64 {
            self.bindStartTime = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["Msgkey"] as? String {
            self.msgkey = value
        }
        if let value = dict["NotifyLevel"] as? String {
            self.notifyLevelShrink = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["PushStatus"] as? Int64 {
            self.pushStatus = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateKeyValue"] as? String {
            self.templateKeyValue = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? String {
            self.thirdChannelCategoryShrink = value
        }
        if let value = dict["TimeMode"] as? Int32 {
            self.timeMode = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["UnBindEndTime"] as? Int64 {
            self.unBindEndTime = value
        }
        if let value = dict["UnBindPeriod"] as? Int64 {
            self.unBindPeriod = value
        }
        if let value = dict["UnBindStartTime"] as? Int64 {
            self.unBindStartTime = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushBroadcastResponseBody : Tea.TeaModel {
    public class PushResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var pushResult: PushBroadcastResponseBody.PushResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushResult != nil {
            map["PushResult"] = self.pushResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushResult"] as? [String: Any?] {
            var model = PushBroadcastResponseBody.PushResult()
            model.fromMap(value)
            self.pushResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class PushBroadcastResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushBroadcastResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushBroadcastResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushMultipleRequest : Tea.TeaModel {
    public class TargetMsg : Tea.TeaModel {
        public var extendedParams: String?

        public var msgKey: String?

        public var target: String?

        public var templateKeyValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extendedParams != nil {
                map["ExtendedParams"] = self.extendedParams!
            }
            if self.msgKey != nil {
                map["MsgKey"] = self.msgKey!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.templateKeyValue != nil {
                map["TemplateKeyValue"] = self.templateKeyValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtendedParams"] as? String {
                self.extendedParams = value
            }
            if let value = dict["MsgKey"] as? String {
                self.msgKey = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["TemplateKeyValue"] as? String {
                self.templateKeyValue = value
            }
        }
    }
    public var activityContentState: Any?

    public var activityEvent: String?

    public var appId: String?

    public var channelId: String?

    public var classification: String?

    public var deliveryType: Int64?

    public var dismissalDate: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var miChannelId: String?

    public var notifyLevel: [String: Any]?

    public var notifyType: String?

    public var pushAction: Int64?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var targetMsg: [PushMultipleRequest.TargetMsg]?

    public var taskName: String?

    public var templateName: String?

    public var tenantId: String?

    public var thirdChannelCategory: [String: Any]?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityContentState != nil {
            map["ActivityContentState"] = self.activityContentState!
        }
        if self.activityEvent != nil {
            map["ActivityEvent"] = self.activityEvent!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.dismissalDate != nil {
            map["DismissalDate"] = self.dismissalDate!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.notifyLevel != nil {
            map["NotifyLevel"] = self.notifyLevel!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.targetMsg != nil {
            var tmp : [Any] = []
            for k in self.targetMsg! {
                tmp.append(k.toMap())
            }
            map["TargetMsg"] = tmp
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategory != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategory!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityContentState"] as? Any {
            self.activityContentState = value
        }
        if let value = dict["ActivityEvent"] as? String {
            self.activityEvent = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["DismissalDate"] as? Int64 {
            self.dismissalDate = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["NotifyLevel"] as? [String: Any] {
            self.notifyLevel = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TargetMsg"] as? [Any?] {
            var tmp : [PushMultipleRequest.TargetMsg] = []
            for v in value {
                if v != nil {
                    var model = PushMultipleRequest.TargetMsg()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targetMsg = tmp
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? [String: Any] {
            self.thirdChannelCategory = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushMultipleShrinkRequest : Tea.TeaModel {
    public class TargetMsg : Tea.TeaModel {
        public var extendedParams: String?

        public var msgKey: String?

        public var target: String?

        public var templateKeyValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extendedParams != nil {
                map["ExtendedParams"] = self.extendedParams!
            }
            if self.msgKey != nil {
                map["MsgKey"] = self.msgKey!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.templateKeyValue != nil {
                map["TemplateKeyValue"] = self.templateKeyValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtendedParams"] as? String {
                self.extendedParams = value
            }
            if let value = dict["MsgKey"] as? String {
                self.msgKey = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["TemplateKeyValue"] as? String {
                self.templateKeyValue = value
            }
        }
    }
    public var activityContentState: Any?

    public var activityEvent: String?

    public var appId: String?

    public var channelId: String?

    public var classification: String?

    public var deliveryType: Int64?

    public var dismissalDate: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var miChannelId: String?

    public var notifyLevelShrink: String?

    public var notifyType: String?

    public var pushAction: Int64?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var targetMsg: [PushMultipleShrinkRequest.TargetMsg]?

    public var taskName: String?

    public var templateName: String?

    public var tenantId: String?

    public var thirdChannelCategoryShrink: String?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityContentState != nil {
            map["ActivityContentState"] = self.activityContentState!
        }
        if self.activityEvent != nil {
            map["ActivityEvent"] = self.activityEvent!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.dismissalDate != nil {
            map["DismissalDate"] = self.dismissalDate!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.notifyLevelShrink != nil {
            map["NotifyLevel"] = self.notifyLevelShrink!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.targetMsg != nil {
            var tmp : [Any] = []
            for k in self.targetMsg! {
                tmp.append(k.toMap())
            }
            map["TargetMsg"] = tmp
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategoryShrink != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategoryShrink!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityContentState"] as? Any {
            self.activityContentState = value
        }
        if let value = dict["ActivityEvent"] as? String {
            self.activityEvent = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["DismissalDate"] as? Int64 {
            self.dismissalDate = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["NotifyLevel"] as? String {
            self.notifyLevelShrink = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TargetMsg"] as? [Any?] {
            var tmp : [PushMultipleShrinkRequest.TargetMsg] = []
            for v in value {
                if v != nil {
                    var model = PushMultipleShrinkRequest.TargetMsg()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targetMsg = tmp
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? String {
            self.thirdChannelCategoryShrink = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushMultipleResponseBody : Tea.TeaModel {
    public class PushResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var pushResult: PushMultipleResponseBody.PushResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushResult != nil {
            map["PushResult"] = self.pushResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushResult"] as? [String: Any?] {
            var model = PushMultipleResponseBody.PushResult()
            model.fromMap(value)
            self.pushResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class PushMultipleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMultipleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushMultipleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushQueryDeviceStateRequest : Tea.TeaModel {
    public var appId: String?

    public var target: String?

    public var targetType: Int32?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetType"] as? Int32 {
            self.targetType = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushQueryDeviceStateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliveryToken: String?

        public var deviceId: String?

        public var manufacturer: String?

        public var platform: String?

        public var statue: String?

        public var thirdToken: String?

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
            if self.deliveryToken != nil {
                map["DeliveryToken"] = self.deliveryToken!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.manufacturer != nil {
                map["Manufacturer"] = self.manufacturer!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.statue != nil {
                map["Statue"] = self.statue!
            }
            if self.thirdToken != nil {
                map["ThirdToken"] = self.thirdToken!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryToken"] as? String {
                self.deliveryToken = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["Manufacturer"] as? String {
                self.manufacturer = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["Statue"] as? String {
                self.statue = value
            }
            if let value = dict["ThirdToken"] as? String {
                self.thirdToken = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: PushQueryDeviceStateResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PushQueryDeviceStateResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class PushQueryDeviceStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushQueryDeviceStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushQueryDeviceStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushSimpleRequest : Tea.TeaModel {
    public var activityContentState: Any?

    public var activityEvent: String?

    public var appId: String?

    public var channelId: String?

    public var classification: String?

    public var content: String?

    public var deliveryType: Int64?

    public var dismissalDate: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var iconUrls: String?

    public var imageUrls: String?

    public var miChannelId: String?

    public var notifyLevel: [String: Any]?

    public var notifyType: String?

    public var pushAction: Int64?

    public var pushStyle: Int32?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var targetMsgkey: String?

    public var taskName: String?

    public var tenantId: String?

    public var thirdChannelCategory: [String: Any]?

    public var title: String?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var uri: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityContentState != nil {
            map["ActivityContentState"] = self.activityContentState!
        }
        if self.activityEvent != nil {
            map["ActivityEvent"] = self.activityEvent!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.dismissalDate != nil {
            map["DismissalDate"] = self.dismissalDate!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.iconUrls != nil {
            map["IconUrls"] = self.iconUrls!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.notifyLevel != nil {
            map["NotifyLevel"] = self.notifyLevel!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.pushStyle != nil {
            map["PushStyle"] = self.pushStyle!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.targetMsgkey != nil {
            map["TargetMsgkey"] = self.targetMsgkey!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategory != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategory!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityContentState"] as? Any {
            self.activityContentState = value
        }
        if let value = dict["ActivityEvent"] as? String {
            self.activityEvent = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["DismissalDate"] as? Int64 {
            self.dismissalDate = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["IconUrls"] as? String {
            self.iconUrls = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrls = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["NotifyLevel"] as? [String: Any] {
            self.notifyLevel = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["PushStyle"] as? Int32 {
            self.pushStyle = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TargetMsgkey"] as? String {
            self.targetMsgkey = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? [String: Any] {
            self.thirdChannelCategory = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushSimpleShrinkRequest : Tea.TeaModel {
    public var activityContentState: Any?

    public var activityEvent: String?

    public var appId: String?

    public var channelId: String?

    public var classification: String?

    public var content: String?

    public var deliveryType: Int64?

    public var dismissalDate: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var iconUrls: String?

    public var imageUrls: String?

    public var miChannelId: String?

    public var notifyLevelShrink: String?

    public var notifyType: String?

    public var pushAction: Int64?

    public var pushStyle: Int32?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var targetMsgkey: String?

    public var taskName: String?

    public var tenantId: String?

    public var thirdChannelCategoryShrink: String?

    public var title: String?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var uri: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityContentState != nil {
            map["ActivityContentState"] = self.activityContentState!
        }
        if self.activityEvent != nil {
            map["ActivityEvent"] = self.activityEvent!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.dismissalDate != nil {
            map["DismissalDate"] = self.dismissalDate!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.iconUrls != nil {
            map["IconUrls"] = self.iconUrls!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.notifyLevelShrink != nil {
            map["NotifyLevel"] = self.notifyLevelShrink!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.pushStyle != nil {
            map["PushStyle"] = self.pushStyle!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.targetMsgkey != nil {
            map["TargetMsgkey"] = self.targetMsgkey!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategoryShrink != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategoryShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityContentState"] as? Any {
            self.activityContentState = value
        }
        if let value = dict["ActivityEvent"] as? String {
            self.activityEvent = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["DismissalDate"] as? Int64 {
            self.dismissalDate = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["IconUrls"] as? String {
            self.iconUrls = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrls = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["NotifyLevel"] as? String {
            self.notifyLevelShrink = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["PushStyle"] as? Int32 {
            self.pushStyle = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TargetMsgkey"] as? String {
            self.targetMsgkey = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? String {
            self.thirdChannelCategoryShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushSimpleResponseBody : Tea.TeaModel {
    public class PushResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var pushResult: PushSimpleResponseBody.PushResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushResult != nil {
            map["PushResult"] = self.pushResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushResult"] as? [String: Any?] {
            var model = PushSimpleResponseBody.PushResult()
            model.fromMap(value)
            self.pushResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class PushSimpleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushSimpleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushSimpleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushTemplateRequest : Tea.TeaModel {
    public var activityContentState: Any?

    public var activityEvent: String?

    public var appId: String?

    public var channelId: String?

    public var classification: String?

    public var deliveryType: Int64?

    public var dismissalDate: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var miChannelId: String?

    public var notifyLevel: [String: Any]?

    public var notifyType: String?

    public var pushAction: Int64?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var targetMsgkey: String?

    public var taskName: String?

    public var templateKeyValue: String?

    public var templateName: String?

    public var tenantId: String?

    public var thirdChannelCategory: [String: Any]?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityContentState != nil {
            map["ActivityContentState"] = self.activityContentState!
        }
        if self.activityEvent != nil {
            map["ActivityEvent"] = self.activityEvent!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.dismissalDate != nil {
            map["DismissalDate"] = self.dismissalDate!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.notifyLevel != nil {
            map["NotifyLevel"] = self.notifyLevel!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.targetMsgkey != nil {
            map["TargetMsgkey"] = self.targetMsgkey!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateKeyValue != nil {
            map["TemplateKeyValue"] = self.templateKeyValue!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategory != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategory!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityContentState"] as? Any {
            self.activityContentState = value
        }
        if let value = dict["ActivityEvent"] as? String {
            self.activityEvent = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["DismissalDate"] as? Int64 {
            self.dismissalDate = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["NotifyLevel"] as? [String: Any] {
            self.notifyLevel = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TargetMsgkey"] as? String {
            self.targetMsgkey = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateKeyValue"] as? String {
            self.templateKeyValue = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? [String: Any] {
            self.thirdChannelCategory = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushTemplateShrinkRequest : Tea.TeaModel {
    public var activityContentState: Any?

    public var activityEvent: String?

    public var appId: String?

    public var channelId: String?

    public var classification: String?

    public var deliveryType: Int64?

    public var dismissalDate: Int64?

    public var expiredSeconds: Int64?

    public var extendedParams: String?

    public var miChannelId: String?

    public var notifyLevelShrink: String?

    public var notifyType: String?

    public var pushAction: Int64?

    public var silent: Int64?

    public var strategyContent: String?

    public var strategyType: Int32?

    public var targetMsgkey: String?

    public var taskName: String?

    public var templateKeyValue: String?

    public var templateName: String?

    public var tenantId: String?

    public var thirdChannelCategoryShrink: String?

    public var transparentMessagePayload: Any?

    public var transparentMessageUrgency: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityContentState != nil {
            map["ActivityContentState"] = self.activityContentState!
        }
        if self.activityEvent != nil {
            map["ActivityEvent"] = self.activityEvent!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.dismissalDate != nil {
            map["DismissalDate"] = self.dismissalDate!
        }
        if self.expiredSeconds != nil {
            map["ExpiredSeconds"] = self.expiredSeconds!
        }
        if self.extendedParams != nil {
            map["ExtendedParams"] = self.extendedParams!
        }
        if self.miChannelId != nil {
            map["MiChannelId"] = self.miChannelId!
        }
        if self.notifyLevelShrink != nil {
            map["NotifyLevel"] = self.notifyLevelShrink!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.pushAction != nil {
            map["PushAction"] = self.pushAction!
        }
        if self.silent != nil {
            map["Silent"] = self.silent!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        if self.targetMsgkey != nil {
            map["TargetMsgkey"] = self.targetMsgkey!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateKeyValue != nil {
            map["TemplateKeyValue"] = self.templateKeyValue!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdChannelCategoryShrink != nil {
            map["ThirdChannelCategory"] = self.thirdChannelCategoryShrink!
        }
        if self.transparentMessagePayload != nil {
            map["TransparentMessagePayload"] = self.transparentMessagePayload!
        }
        if self.transparentMessageUrgency != nil {
            map["TransparentMessageUrgency"] = self.transparentMessageUrgency!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityContentState"] as? Any {
            self.activityContentState = value
        }
        if let value = dict["ActivityEvent"] as? String {
            self.activityEvent = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["Classification"] as? String {
            self.classification = value
        }
        if let value = dict["DeliveryType"] as? Int64 {
            self.deliveryType = value
        }
        if let value = dict["DismissalDate"] as? Int64 {
            self.dismissalDate = value
        }
        if let value = dict["ExpiredSeconds"] as? Int64 {
            self.expiredSeconds = value
        }
        if let value = dict["ExtendedParams"] as? String {
            self.extendedParams = value
        }
        if let value = dict["MiChannelId"] as? String {
            self.miChannelId = value
        }
        if let value = dict["NotifyLevel"] as? String {
            self.notifyLevelShrink = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["PushAction"] as? Int64 {
            self.pushAction = value
        }
        if let value = dict["Silent"] as? Int64 {
            self.silent = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["StrategyType"] as? Int32 {
            self.strategyType = value
        }
        if let value = dict["TargetMsgkey"] as? String {
            self.targetMsgkey = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateKeyValue"] as? String {
            self.templateKeyValue = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdChannelCategory"] as? String {
            self.thirdChannelCategoryShrink = value
        }
        if let value = dict["TransparentMessagePayload"] as? Any {
            self.transparentMessagePayload = value
        }
        if let value = dict["TransparentMessageUrgency"] as? String {
            self.transparentMessageUrgency = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PushTemplateResponseBody : Tea.TeaModel {
    public class PushResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var pushResult: PushTemplateResponseBody.PushResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushResult != nil {
            map["PushResult"] = self.pushResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushResult"] as? [String: Any?] {
            var model = PushTemplateResponseBody.PushResult()
            model.fromMap(value)
            self.pushResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class PushTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMcubeMiniPackageRequest : Tea.TeaModel {
    public var appId: String?

    public var h5Id: String?

    public var id: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryMcubeMiniPackageResponseBody : Tea.TeaModel {
    public class QueryMiniPackageResult : Tea.TeaModel {
        public class MiniPackageInfo : Tea.TeaModel {
            public var appCode: String?

            public var autoInstall: Int64?

            public var clientVersionMax: String?

            public var clientVersionMin: String?

            public var downloadUrl: String?

            public var extendInfo: String?

            public var extraData: String?

            public var fallbackBaseUrl: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var h5Id: String?

            public var h5Name: String?

            public var h5Version: String?

            public var id: Int64?

            public var installType: Int64?

            public var mainUrl: String?

            public var memo: String?

            public var packageType: Int64?

            public var platform: String?

            public var publishPeriod: Int64?

            public var resourceType: Int64?

            public var status: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.autoInstall != nil {
                    map["AutoInstall"] = self.autoInstall!
                }
                if self.clientVersionMax != nil {
                    map["ClientVersionMax"] = self.clientVersionMax!
                }
                if self.clientVersionMin != nil {
                    map["ClientVersionMin"] = self.clientVersionMin!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.extendInfo != nil {
                    map["ExtendInfo"] = self.extendInfo!
                }
                if self.extraData != nil {
                    map["ExtraData"] = self.extraData!
                }
                if self.fallbackBaseUrl != nil {
                    map["FallbackBaseUrl"] = self.fallbackBaseUrl!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.h5Id != nil {
                    map["H5Id"] = self.h5Id!
                }
                if self.h5Name != nil {
                    map["H5Name"] = self.h5Name!
                }
                if self.h5Version != nil {
                    map["H5Version"] = self.h5Version!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.installType != nil {
                    map["InstallType"] = self.installType!
                }
                if self.mainUrl != nil {
                    map["MainUrl"] = self.mainUrl!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.publishPeriod != nil {
                    map["PublishPeriod"] = self.publishPeriod!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["AutoInstall"] as? Int64 {
                    self.autoInstall = value
                }
                if let value = dict["ClientVersionMax"] as? String {
                    self.clientVersionMax = value
                }
                if let value = dict["ClientVersionMin"] as? String {
                    self.clientVersionMin = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ExtendInfo"] as? String {
                    self.extendInfo = value
                }
                if let value = dict["ExtraData"] as? String {
                    self.extraData = value
                }
                if let value = dict["FallbackBaseUrl"] as? String {
                    self.fallbackBaseUrl = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["H5Id"] as? String {
                    self.h5Id = value
                }
                if let value = dict["H5Name"] as? String {
                    self.h5Name = value
                }
                if let value = dict["H5Version"] as? String {
                    self.h5Version = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["InstallType"] as? Int64 {
                    self.installType = value
                }
                if let value = dict["MainUrl"] as? String {
                    self.mainUrl = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["PackageType"] as? Int64 {
                    self.packageType = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["PublishPeriod"] as? Int64 {
                    self.publishPeriod = value
                }
                if let value = dict["ResourceType"] as? Int64 {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
            }
        }
        public var miniPackageInfo: QueryMcubeMiniPackageResponseBody.QueryMiniPackageResult.MiniPackageInfo?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.miniPackageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.miniPackageInfo != nil {
                map["MiniPackageInfo"] = self.miniPackageInfo?.toMap()
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MiniPackageInfo"] as? [String: Any?] {
                var model = QueryMcubeMiniPackageResponseBody.QueryMiniPackageResult.MiniPackageInfo()
                model.fromMap(value)
                self.miniPackageInfo = model
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var queryMiniPackageResult: QueryMcubeMiniPackageResponseBody.QueryMiniPackageResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryMiniPackageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryMiniPackageResult != nil {
            map["QueryMiniPackageResult"] = self.queryMiniPackageResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryMiniPackageResult"] as? [String: Any?] {
            var model = QueryMcubeMiniPackageResponseBody.QueryMiniPackageResult()
            model.fromMap(value)
            self.queryMiniPackageResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryMcubeMiniPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMcubeMiniPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMcubeMiniPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMcubeMiniTaskRequest : Tea.TeaModel {
    public var appId: String?

    public var taskId: Int64?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryMcubeMiniTaskResponseBody : Tea.TeaModel {
    public class QueryMiniTaskResult : Tea.TeaModel {
        public class MiniTaskInfo : Tea.TeaModel {
            public var appCode: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var greyConfigInfo: String?

            public var greyEndtime: String?

            public var greyEndtimeData: String?

            public var greyNum: Int64?

            public var id: Int64?

            public var memo: String?

            public var packageId: Int64?

            public var platform: String?

            public var productVersion: String?

            public var publishMode: Int64?

            public var publishType: Int64?

            public var status: String?

            public var taskStatus: Int64?

            public var whitelistIds: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.greyConfigInfo != nil {
                    map["GreyConfigInfo"] = self.greyConfigInfo!
                }
                if self.greyEndtime != nil {
                    map["GreyEndtime"] = self.greyEndtime!
                }
                if self.greyEndtimeData != nil {
                    map["GreyEndtimeData"] = self.greyEndtimeData!
                }
                if self.greyNum != nil {
                    map["GreyNum"] = self.greyNum!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.publishMode != nil {
                    map["PublishMode"] = self.publishMode!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.whitelistIds != nil {
                    map["WhitelistIds"] = self.whitelistIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppCode"] as? String {
                    self.appCode = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["GreyConfigInfo"] as? String {
                    self.greyConfigInfo = value
                }
                if let value = dict["GreyEndtime"] as? String {
                    self.greyEndtime = value
                }
                if let value = dict["GreyEndtimeData"] as? String {
                    self.greyEndtimeData = value
                }
                if let value = dict["GreyNum"] as? Int64 {
                    self.greyNum = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["PackageId"] as? Int64 {
                    self.packageId = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["PublishMode"] as? Int64 {
                    self.publishMode = value
                }
                if let value = dict["PublishType"] as? Int64 {
                    self.publishType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskStatus"] as? Int64 {
                    self.taskStatus = value
                }
                if let value = dict["WhitelistIds"] as? String {
                    self.whitelistIds = value
                }
            }
        }
        public var miniTaskInfo: QueryMcubeMiniTaskResponseBody.QueryMiniTaskResult.MiniTaskInfo?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.miniTaskInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.miniTaskInfo != nil {
                map["MiniTaskInfo"] = self.miniTaskInfo?.toMap()
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MiniTaskInfo"] as? [String: Any?] {
                var model = QueryMcubeMiniTaskResponseBody.QueryMiniTaskResult.MiniTaskInfo()
                model.fromMap(value)
                self.miniTaskInfo = model
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var queryMiniTaskResult: QueryMcubeMiniTaskResponseBody.QueryMiniTaskResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryMiniTaskResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryMiniTaskResult != nil {
            map["QueryMiniTaskResult"] = self.queryMiniTaskResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryMiniTaskResult"] as? [String: Any?] {
            var model = QueryMcubeMiniTaskResponseBody.QueryMiniTaskResult()
            model.fromMap(value)
            self.queryMiniTaskResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryMcubeMiniTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMcubeMiniTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMcubeMiniTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMcubeVhostRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryMcubeVhostResponseBody : Tea.TeaModel {
    public class QueryVhostResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var queryVhostResult: QueryMcubeVhostResponseBody.QueryVhostResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryVhostResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryVhostResult != nil {
            map["QueryVhostResult"] = self.queryVhostResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryVhostResult"] as? [String: Any?] {
            var model = QueryMcubeVhostResponseBody.QueryVhostResult()
            model.fromMap(value)
            self.queryVhostResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryMcubeVhostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMcubeVhostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMcubeVhostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMpsSchedulerListRequest : Tea.TeaModel {
    public var appId: String?

    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var type: Int32?

    public var uniqueId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryMpsSchedulerListResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class List : Tea.TeaModel {
                public var createType: Int32?

                public var deliveryType: Int32?

                public var executedStatus: String?

                public var gmtCreate: Int64?

                public var parentId: String?

                public var pushContent: String?

                public var pushTime: Int64?

                public var pushTitle: String?

                public var strategyType: Int32?

                public var type: Int32?

                public var uniqueId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createType != nil {
                        map["CreateType"] = self.createType!
                    }
                    if self.deliveryType != nil {
                        map["DeliveryType"] = self.deliveryType!
                    }
                    if self.executedStatus != nil {
                        map["ExecutedStatus"] = self.executedStatus!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.parentId != nil {
                        map["ParentId"] = self.parentId!
                    }
                    if self.pushContent != nil {
                        map["PushContent"] = self.pushContent!
                    }
                    if self.pushTime != nil {
                        map["PushTime"] = self.pushTime!
                    }
                    if self.pushTitle != nil {
                        map["PushTitle"] = self.pushTitle!
                    }
                    if self.strategyType != nil {
                        map["StrategyType"] = self.strategyType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uniqueId != nil {
                        map["UniqueId"] = self.uniqueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CreateType"] as? Int32 {
                        self.createType = value
                    }
                    if let value = dict["DeliveryType"] as? Int32 {
                        self.deliveryType = value
                    }
                    if let value = dict["ExecutedStatus"] as? String {
                        self.executedStatus = value
                    }
                    if let value = dict["GmtCreate"] as? Int64 {
                        self.gmtCreate = value
                    }
                    if let value = dict["ParentId"] as? String {
                        self.parentId = value
                    }
                    if let value = dict["PushContent"] as? String {
                        self.pushContent = value
                    }
                    if let value = dict["PushTime"] as? Int64 {
                        self.pushTime = value
                    }
                    if let value = dict["PushTitle"] as? String {
                        self.pushTitle = value
                    }
                    if let value = dict["StrategyType"] as? Int32 {
                        self.strategyType = value
                    }
                    if let value = dict["Type"] as? Int32 {
                        self.type = value
                    }
                    if let value = dict["UniqueId"] as? String {
                        self.uniqueId = value
                    }
                }
            }
            public var list: [QueryMpsSchedulerListResponseBody.ResultContent.Data.List]?

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
                if self.list != nil {
                    var tmp : [Any] = []
                    for k in self.list! {
                        tmp.append(k.toMap())
                    }
                    map["List"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["List"] as? [Any?] {
                    var tmp : [QueryMpsSchedulerListResponseBody.ResultContent.Data.List] = []
                    for v in value {
                        if v != nil {
                            var model = QueryMpsSchedulerListResponseBody.ResultContent.Data.List()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.list = tmp
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var data: QueryMpsSchedulerListResponseBody.ResultContent.Data?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = QueryMpsSchedulerListResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: QueryMpsSchedulerListResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = QueryMpsSchedulerListResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryMpsSchedulerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMpsSchedulerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMpsSchedulerListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushAnalysisCoreIndexRequest : Tea.TeaModel {
    public var appId: String?

    public var channel: String?

    public var endTime: Int64?

    public var platform: String?

    public var startTime: Int64?

    public var taskId: String?

    public var tenantId: String?

    public var type: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryPushAnalysisCoreIndexResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var arrivalNum: Double?

            public var arrivalRate: Double?

            public var ignoreNum: Double?

            public var ignoreRate: Double?

            public var openNum: Double?

            public var openRate: Double?

            public var pushNum: Double?

            public var pushTotalNum: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrivalNum != nil {
                    map["ArrivalNum"] = self.arrivalNum!
                }
                if self.arrivalRate != nil {
                    map["ArrivalRate"] = self.arrivalRate!
                }
                if self.ignoreNum != nil {
                    map["IgnoreNum"] = self.ignoreNum!
                }
                if self.ignoreRate != nil {
                    map["IgnoreRate"] = self.ignoreRate!
                }
                if self.openNum != nil {
                    map["OpenNum"] = self.openNum!
                }
                if self.openRate != nil {
                    map["OpenRate"] = self.openRate!
                }
                if self.pushNum != nil {
                    map["PushNum"] = self.pushNum!
                }
                if self.pushTotalNum != nil {
                    map["PushTotalNum"] = self.pushTotalNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArrivalNum"] as? Double {
                    self.arrivalNum = value
                }
                if let value = dict["ArrivalRate"] as? Double {
                    self.arrivalRate = value
                }
                if let value = dict["IgnoreNum"] as? Double {
                    self.ignoreNum = value
                }
                if let value = dict["IgnoreRate"] as? Double {
                    self.ignoreRate = value
                }
                if let value = dict["OpenNum"] as? Double {
                    self.openNum = value
                }
                if let value = dict["OpenRate"] as? Double {
                    self.openRate = value
                }
                if let value = dict["PushNum"] as? Double {
                    self.pushNum = value
                }
                if let value = dict["PushTotalNum"] as? Double {
                    self.pushTotalNum = value
                }
            }
        }
        public var data: QueryPushAnalysisCoreIndexResponseBody.ResultContent.Data?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = QueryPushAnalysisCoreIndexResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: QueryPushAnalysisCoreIndexResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = QueryPushAnalysisCoreIndexResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryPushAnalysisCoreIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushAnalysisCoreIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushAnalysisCoreIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushAnalysisTaskDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var taskId: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryPushAnalysisTaskDetailResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var duration: String?

            public var endTime: Int64?

            public var pushArrivalNum: Double?

            public var pushNum: Double?

            public var pushSuccessNum: Double?

            public var startTime: Int64?

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
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.pushArrivalNum != nil {
                    map["PushArrivalNum"] = self.pushArrivalNum!
                }
                if self.pushNum != nil {
                    map["PushNum"] = self.pushNum!
                }
                if self.pushSuccessNum != nil {
                    map["PushSuccessNum"] = self.pushSuccessNum!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? String {
                    self.duration = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["PushArrivalNum"] as? Double {
                    self.pushArrivalNum = value
                }
                if let value = dict["PushNum"] as? Double {
                    self.pushNum = value
                }
                if let value = dict["PushSuccessNum"] as? Double {
                    self.pushSuccessNum = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["TaskId"] as? Int64 {
                    self.taskId = value
                }
            }
        }
        public var data: QueryPushAnalysisTaskDetailResponseBody.ResultContent.Data?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = QueryPushAnalysisTaskDetailResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: QueryPushAnalysisTaskDetailResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = QueryPushAnalysisTaskDetailResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryPushAnalysisTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushAnalysisTaskDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushAnalysisTaskDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushAnalysisTaskListRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var taskId: String?

    public var taskName: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryPushAnalysisTaskListResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class List : Tea.TeaModel {
                public var gmtCreate: Int64?

                public var taskId: String?

                public var taskName: String?

                public var templateId: String?

                public var templateName: String?

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
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    if self.taskName != nil {
                        map["TaskName"] = self.taskName!
                    }
                    if self.templateId != nil {
                        map["TemplateId"] = self.templateId!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["GmtCreate"] as? Int64 {
                        self.gmtCreate = value
                    }
                    if let value = dict["TaskId"] as? String {
                        self.taskId = value
                    }
                    if let value = dict["TaskName"] as? String {
                        self.taskName = value
                    }
                    if let value = dict["TemplateId"] as? String {
                        self.templateId = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                    if let value = dict["Type"] as? Int64 {
                        self.type = value
                    }
                }
            }
            public var gmtCreate: Int64?

            public var list: [QueryPushAnalysisTaskListResponseBody.ResultContent.Data.List]?

            public var taskId: String?

            public var taskName: String?

            public var templateId: String?

            public var templateName: String?

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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.list != nil {
                    var tmp : [Any] = []
                    for k in self.list! {
                        tmp.append(k.toMap())
                    }
                    map["List"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["List"] as? [Any?] {
                    var tmp : [QueryPushAnalysisTaskListResponseBody.ResultContent.Data.List] = []
                    for v in value {
                        if v != nil {
                            var model = QueryPushAnalysisTaskListResponseBody.ResultContent.Data.List()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.list = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
                if let value = dict["Type"] as? Int64 {
                    self.type = value
                }
            }
        }
        public var data: [QueryPushAnalysisTaskListResponseBody.ResultContent.Data]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryPushAnalysisTaskListResponseBody.ResultContent.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryPushAnalysisTaskListResponseBody.ResultContent.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: QueryPushAnalysisTaskListResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = QueryPushAnalysisTaskListResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryPushAnalysisTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushAnalysisTaskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushAnalysisTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushSchedulerListRequest : Tea.TeaModel {
    public var appId: String?

    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

    public var tenantId: String?

    public var type: Int32?

    public var uniqueId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryPushSchedulerListResponseBody : Tea.TeaModel {
    public class ResultContent : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class List : Tea.TeaModel {
                public var createType: Int32?

                public var deliveryType: Int32?

                public var executedStatus: String?

                public var gmtCreate: Int64?

                public var parentId: String?

                public var pushContent: String?

                public var pushTime: Int64?

                public var pushTitle: String?

                public var strategyType: Int32?

                public var type: Int32?

                public var uniqueId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createType != nil {
                        map["CreateType"] = self.createType!
                    }
                    if self.deliveryType != nil {
                        map["DeliveryType"] = self.deliveryType!
                    }
                    if self.executedStatus != nil {
                        map["ExecutedStatus"] = self.executedStatus!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.parentId != nil {
                        map["ParentId"] = self.parentId!
                    }
                    if self.pushContent != nil {
                        map["PushContent"] = self.pushContent!
                    }
                    if self.pushTime != nil {
                        map["PushTime"] = self.pushTime!
                    }
                    if self.pushTitle != nil {
                        map["PushTitle"] = self.pushTitle!
                    }
                    if self.strategyType != nil {
                        map["StrategyType"] = self.strategyType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.uniqueId != nil {
                        map["UniqueId"] = self.uniqueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CreateType"] as? Int32 {
                        self.createType = value
                    }
                    if let value = dict["DeliveryType"] as? Int32 {
                        self.deliveryType = value
                    }
                    if let value = dict["ExecutedStatus"] as? String {
                        self.executedStatus = value
                    }
                    if let value = dict["GmtCreate"] as? Int64 {
                        self.gmtCreate = value
                    }
                    if let value = dict["ParentId"] as? String {
                        self.parentId = value
                    }
                    if let value = dict["PushContent"] as? String {
                        self.pushContent = value
                    }
                    if let value = dict["PushTime"] as? Int64 {
                        self.pushTime = value
                    }
                    if let value = dict["PushTitle"] as? String {
                        self.pushTitle = value
                    }
                    if let value = dict["StrategyType"] as? Int32 {
                        self.strategyType = value
                    }
                    if let value = dict["Type"] as? Int32 {
                        self.type = value
                    }
                    if let value = dict["UniqueId"] as? String {
                        self.uniqueId = value
                    }
                }
            }
            public var list: [QueryPushSchedulerListResponseBody.ResultContent.Data.List]?

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
                if self.list != nil {
                    var tmp : [Any] = []
                    for k in self.list! {
                        tmp.append(k.toMap())
                    }
                    map["List"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["List"] as? [Any?] {
                    var tmp : [QueryPushSchedulerListResponseBody.ResultContent.Data.List] = []
                    for v in value {
                        if v != nil {
                            var model = QueryPushSchedulerListResponseBody.ResultContent.Data.List()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.list = tmp
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var data: QueryPushSchedulerListResponseBody.ResultContent.Data?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = QueryPushSchedulerListResponseBody.ResultContent.Data()
                model.fromMap(value)
                self.data = model
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultContent: QueryPushSchedulerListResponseBody.ResultContent?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent?.toMap()
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultContent"] as? [String: Any?] {
            var model = QueryPushSchedulerListResponseBody.ResultContent()
            model.fromMap(value)
            self.resultContent = model
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class QueryPushSchedulerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushSchedulerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushSchedulerListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokePushMessageRequest : Tea.TeaModel {
    public var appId: String?

    public var messageId: String?

    public var targetId: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class RevokePushMessageResponseBody : Tea.TeaModel {
    public class PushResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var pushResult: RevokePushMessageResponseBody.PushResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushResult != nil {
            map["PushResult"] = self.pushResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushResult"] as? [String: Any?] {
            var model = RevokePushMessageResponseBody.PushResult()
            model.fromMap(value)
            self.pushResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class RevokePushMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokePushMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokePushMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokePushTaskRequest : Tea.TeaModel {
    public var appId: String?

    public var taskId: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class RevokePushTaskResponseBody : Tea.TeaModel {
    public class PushResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var pushResult: RevokePushTaskResponseBody.PushResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushResult != nil {
            map["PushResult"] = self.pushResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushResult"] as? [String: Any?] {
            var model = RevokePushTaskResponseBody.PushResult()
            model.fromMap(value)
            self.pushResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class RevokePushTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokePushTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokePushTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMcubeWhitelistRequest : Tea.TeaModel {
    public var appId: String?

    public var id: String?

    public var keyIds: String?

    public var onexFlag: Bool?

    public var ossUrl: String?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keyIds != nil {
            map["KeyIds"] = self.keyIds!
        }
        if self.onexFlag != nil {
            map["OnexFlag"] = self.onexFlag!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["KeyIds"] as? String {
            self.keyIds = value
        }
        if let value = dict["OnexFlag"] as? Bool {
            self.onexFlag = value
        }
        if let value = dict["OssUrl"] as? String {
            self.ossUrl = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateMcubeWhitelistResponseBody : Tea.TeaModel {
    public class AddWhitelistResult : Tea.TeaModel {
        public class AddWhitelistInfo : Tea.TeaModel {
            public var failNum: Int64?

            public var failUserIds: String?

            public var successNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failNum != nil {
                    map["FailNum"] = self.failNum!
                }
                if self.failUserIds != nil {
                    map["FailUserIds"] = self.failUserIds!
                }
                if self.successNum != nil {
                    map["SuccessNum"] = self.successNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FailNum"] as? Int64 {
                    self.failNum = value
                }
                if let value = dict["FailUserIds"] as? String {
                    self.failUserIds = value
                }
                if let value = dict["SuccessNum"] as? Int64 {
                    self.successNum = value
                }
            }
        }
        public var addWhitelistInfo: UpdateMcubeWhitelistResponseBody.AddWhitelistResult.AddWhitelistInfo?

        public var resultMsg: String?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.addWhitelistInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addWhitelistInfo != nil {
                map["AddWhitelistInfo"] = self.addWhitelistInfo?.toMap()
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddWhitelistInfo"] as? [String: Any?] {
                var model = UpdateMcubeWhitelistResponseBody.AddWhitelistResult.AddWhitelistInfo()
                model.fromMap(value)
                self.addWhitelistInfo = model
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var addWhitelistResult: UpdateMcubeWhitelistResponseBody.AddWhitelistResult?

    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addWhitelistResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addWhitelistResult != nil {
            map["AddWhitelistResult"] = self.addWhitelistResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWhitelistResult"] as? [String: Any?] {
            var model = UpdateMcubeWhitelistResponseBody.AddWhitelistResult()
            model.fromMap(value)
            self.addWhitelistResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
    }
}

public class UpdateMcubeWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMcubeWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateMcubeWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadMcubeMiniPackageRequest : Tea.TeaModel {
    public var appId: String?

    public var autoInstall: Int64?

    public var clientVersionMax: String?

    public var clientVersionMin: String?

    public var enableKeepAlive: String?

    public var enableOptionMenu: String?

    public var enableTabBar: Int64?

    public var extendInfo: String?

    public var h5Id: String?

    public var h5Name: String?

    public var h5Version: String?

    public var iconFileUrl: String?

    public var installType: Int64?

    public var mainUrl: String?

    public var onexFlag: Bool?

    public var packageType: Int64?

    public var platform: String?

    public var resourceFileUrl: String?

    public var resourceType: Int64?

    public var tenantId: String?

    public var userId: String?

    public var uuid: String?

    public var vhost: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.autoInstall != nil {
            map["AutoInstall"] = self.autoInstall!
        }
        if self.clientVersionMax != nil {
            map["ClientVersionMax"] = self.clientVersionMax!
        }
        if self.clientVersionMin != nil {
            map["ClientVersionMin"] = self.clientVersionMin!
        }
        if self.enableKeepAlive != nil {
            map["EnableKeepAlive"] = self.enableKeepAlive!
        }
        if self.enableOptionMenu != nil {
            map["EnableOptionMenu"] = self.enableOptionMenu!
        }
        if self.enableTabBar != nil {
            map["EnableTabBar"] = self.enableTabBar!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.h5Id != nil {
            map["H5Id"] = self.h5Id!
        }
        if self.h5Name != nil {
            map["H5Name"] = self.h5Name!
        }
        if self.h5Version != nil {
            map["H5Version"] = self.h5Version!
        }
        if self.iconFileUrl != nil {
            map["IconFileUrl"] = self.iconFileUrl!
        }
        if self.installType != nil {
            map["InstallType"] = self.installType!
        }
        if self.mainUrl != nil {
            map["MainUrl"] = self.mainUrl!
        }
        if self.onexFlag != nil {
            map["OnexFlag"] = self.onexFlag!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.resourceFileUrl != nil {
            map["ResourceFileUrl"] = self.resourceFileUrl!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.vhost != nil {
            map["Vhost"] = self.vhost!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AutoInstall"] as? Int64 {
            self.autoInstall = value
        }
        if let value = dict["ClientVersionMax"] as? String {
            self.clientVersionMax = value
        }
        if let value = dict["ClientVersionMin"] as? String {
            self.clientVersionMin = value
        }
        if let value = dict["EnableKeepAlive"] as? String {
            self.enableKeepAlive = value
        }
        if let value = dict["EnableOptionMenu"] as? String {
            self.enableOptionMenu = value
        }
        if let value = dict["EnableTabBar"] as? Int64 {
            self.enableTabBar = value
        }
        if let value = dict["ExtendInfo"] as? String {
            self.extendInfo = value
        }
        if let value = dict["H5Id"] as? String {
            self.h5Id = value
        }
        if let value = dict["H5Name"] as? String {
            self.h5Name = value
        }
        if let value = dict["H5Version"] as? String {
            self.h5Version = value
        }
        if let value = dict["IconFileUrl"] as? String {
            self.iconFileUrl = value
        }
        if let value = dict["InstallType"] as? Int64 {
            self.installType = value
        }
        if let value = dict["MainUrl"] as? String {
            self.mainUrl = value
        }
        if let value = dict["OnexFlag"] as? Bool {
            self.onexFlag = value
        }
        if let value = dict["PackageType"] as? Int64 {
            self.packageType = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["ResourceFileUrl"] as? String {
            self.resourceFileUrl = value
        }
        if let value = dict["ResourceType"] as? Int64 {
            self.resourceType = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
        if let value = dict["Vhost"] as? String {
            self.vhost = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UploadMcubeMiniPackageResponseBody : Tea.TeaModel {
    public class UploadMiniPackageResult : Tea.TeaModel {
        public class ReturnPackageResult : Tea.TeaModel {
            public var debugUrl: String?

            public var packageId: String?

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
                if self.debugUrl != nil {
                    map["DebugUrl"] = self.debugUrl!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugUrl"] as? String {
                    self.debugUrl = value
                }
                if let value = dict["PackageId"] as? String {
                    self.packageId = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var resultMsg: String?

        public var returnPackageResult: UploadMcubeMiniPackageResponseBody.UploadMiniPackageResult.ReturnPackageResult?

        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.returnPackageResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.returnPackageResult != nil {
                map["ReturnPackageResult"] = self.returnPackageResult?.toMap()
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["ReturnPackageResult"] as? [String: Any?] {
                var model = UploadMcubeMiniPackageResponseBody.UploadMiniPackageResult.ReturnPackageResult()
                model.fromMap(value)
                self.returnPackageResult = model
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public var uploadMiniPackageResult: UploadMcubeMiniPackageResponseBody.UploadMiniPackageResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uploadMiniPackageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        if self.uploadMiniPackageResult != nil {
            map["UploadMiniPackageResult"] = self.uploadMiniPackageResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
        if let value = dict["UploadMiniPackageResult"] as? [String: Any?] {
            var model = UploadMcubeMiniPackageResponseBody.UploadMiniPackageResult()
            model.fromMap(value)
            self.uploadMiniPackageResult = model
        }
    }
}

public class UploadMcubeMiniPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMcubeMiniPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UploadMcubeMiniPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadMcubeRsaKeyRequest : Tea.TeaModel {
    public var appId: String?

    public var fileUrl: String?

    public var onexFlag: Bool?

    public var tenantId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.onexFlag != nil {
            map["OnexFlag"] = self.onexFlag!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["OnexFlag"] as? Bool {
            self.onexFlag = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UploadMcubeRsaKeyResponseBody : Tea.TeaModel {
    public class UploadRsaResult : Tea.TeaModel {
        public var data: String?

        public var resultMsg: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.resultMsg != nil {
                map["ResultMsg"] = self.resultMsg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ResultMsg"] as? String {
                self.resultMsg = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public var uploadRsaResult: UploadMcubeRsaKeyResponseBody.UploadRsaResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uploadRsaResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        if self.uploadRsaResult != nil {
            map["UploadRsaResult"] = self.uploadRsaResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMessage"] as? String {
            self.resultMessage = value
        }
        if let value = dict["UploadRsaResult"] as? [String: Any?] {
            var model = UploadMcubeRsaKeyResponseBody.UploadRsaResult()
            model.fromMap(value)
            self.uploadRsaResult = model
        }
    }
}

public class UploadMcubeRsaKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMcubeRsaKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UploadMcubeRsaKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
