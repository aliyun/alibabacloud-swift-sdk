import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddEventRecordPlanDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var planId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class AddEventRecordPlanDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddEventRecordPlanDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEventRecordPlanDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddEventRecordPlanDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceDeviceGroupRequest : Tea.TeaModel {
    public var deviceGroupName: String?

    public var isolationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupName != nil {
            map["DeviceGroupName"] = self.deviceGroupName!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceGroupName"] as? String {
            self.deviceGroupName = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
    }
}

public class AddFaceDeviceGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceGroupId: String?

        public var deviceGroupName: String?

        public var modifiedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceGroupId != nil {
                map["DeviceGroupId"] = self.deviceGroupId!
            }
            if self.deviceGroupName != nil {
                map["DeviceGroupName"] = self.deviceGroupName!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceGroupId"] as? String {
                self.deviceGroupId = value
            }
            if let value = dict["DeviceGroupName"] as? String {
                self.deviceGroupName = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
        }
    }
    public var code: String?

    public var data: AddFaceDeviceGroupResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = AddFaceDeviceGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceDeviceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceDeviceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceDeviceToDeviceGroupRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var deviceName: String?

    public var iotInstanceId: String?

    public var isolationId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceGroupId"] as? String {
            self.deviceGroupId = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class AddFaceDeviceToDeviceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceDeviceToDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceDeviceToDeviceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceDeviceToDeviceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceUserRequest : Tea.TeaModel {
    public var customUserId: String?

    public var facePicUrl: String?

    public var isolationId: String?

    public var name: String?

    public var params: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customUserId != nil {
            map["CustomUserId"] = self.customUserId!
        }
        if self.facePicUrl != nil {
            map["FacePicUrl"] = self.facePicUrl!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomUserId"] as? String {
            self.customUserId = value
        }
        if let value = dict["FacePicUrl"] as? String {
            self.facePicUrl = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
    }
}

public class AddFaceUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customUserId: String?

        public var name: String?

        public var params: String?

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
            if self.customUserId != nil {
                map["CustomUserId"] = self.customUserId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomUserId"] as? String {
                self.customUserId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: AddFaceUserResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = AddFaceUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceUserGroupRequest : Tea.TeaModel {
    public var isolationId: String?

    public var userGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userGroupName != nil {
            map["UserGroupName"] = self.userGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserGroupName"] as? String {
            self.userGroupName = value
        }
    }
}

public class AddFaceUserGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modifiedTime: String?

        public var userGroupId: String?

        public var userGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userGroupName != nil {
                map["UserGroupName"] = self.userGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["UserGroupName"] as? String {
                self.userGroupName = value
            }
        }
    }
    public var code: String?

    public var data: AddFaceUserGroupResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = AddFaceUserGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceUserGroupAndDeviceGroupRelationRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var iotInstanceId: String?

    public var isolationId: String?

    public var relation: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.relation != nil {
            map["Relation"] = self.relation!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceGroupId"] as? String {
            self.deviceGroupId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["Relation"] as? String {
            self.relation = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
    }
}

public class AddFaceUserGroupAndDeviceGroupRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var controlId: String?

        public var modifiedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.controlId != nil {
                map["ControlId"] = self.controlId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ControlId"] as? String {
                self.controlId = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
        }
    }
    public var code: String?

    public var data: AddFaceUserGroupAndDeviceGroupRelationResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = AddFaceUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceUserGroupAndDeviceGroupRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceUserGroupAndDeviceGroupRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceUserPictureRequest : Tea.TeaModel {
    public var facePicUrl: String?

    public var isolationId: String?

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
        if self.facePicUrl != nil {
            map["FacePicUrl"] = self.facePicUrl!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FacePicUrl"] as? String {
            self.facePicUrl = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AddFaceUserPictureResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceUserPictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceUserPictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceUserPictureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFaceUserToUserGroupRequest : Tea.TeaModel {
    public var isolationId: String?

    public var userGroupId: String?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AddFaceUserToUserGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddFaceUserToUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceUserToUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddFaceUserToUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddRecordPlanDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var planId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class AddRecordPlanDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddRecordPlanDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRecordPlanDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddRecordPlanDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchQueryVisionDeviceInfoRequest : Tea.TeaModel {
    public var deviceNameList: [String]?

    public var iotIdList: [String]?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceNameList != nil {
            map["DeviceNameList"] = self.deviceNameList!
        }
        if self.iotIdList != nil {
            map["IotIdList"] = self.iotIdList!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceNameList"] as? [String] {
            self.deviceNameList = value
        }
        if let value = dict["IotIdList"] as? [String] {
            self.iotIdList = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class BatchQueryVisionDeviceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceInfoList : Tea.TeaModel {
            public class GbDeviceInfo : Tea.TeaModel {
                public var deviceProtocol: Int32?

                public var gbId: String?

                public var netProtocol: Int32?

                public var nickName: String?

                public var password: String?

                public var subProductKey: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deviceProtocol != nil {
                        map["DeviceProtocol"] = self.deviceProtocol!
                    }
                    if self.gbId != nil {
                        map["GbId"] = self.gbId!
                    }
                    if self.netProtocol != nil {
                        map["NetProtocol"] = self.netProtocol!
                    }
                    if self.nickName != nil {
                        map["NickName"] = self.nickName!
                    }
                    if self.password != nil {
                        map["Password"] = self.password!
                    }
                    if self.subProductKey != nil {
                        map["SubProductKey"] = self.subProductKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DeviceProtocol"] as? Int32 {
                        self.deviceProtocol = value
                    }
                    if let value = dict["GbId"] as? String {
                        self.gbId = value
                    }
                    if let value = dict["NetProtocol"] as? Int32 {
                        self.netProtocol = value
                    }
                    if let value = dict["NickName"] as? String {
                        self.nickName = value
                    }
                    if let value = dict["Password"] as? String {
                        self.password = value
                    }
                    if let value = dict["SubProductKey"] as? String {
                        self.subProductKey = value
                    }
                }
            }
            public class RtmpDeviceInfo : Tea.TeaModel {
                public var pullAuthKey: String?

                public var pullKeyExpireTime: Int32?

                public var pushAuthKey: String?

                public var pushKeyExpireTime: Int32?

                public var pushUrlSample: String?

                public var streamName: String?

                public var streamStatus: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.pullAuthKey != nil {
                        map["PullAuthKey"] = self.pullAuthKey!
                    }
                    if self.pullKeyExpireTime != nil {
                        map["PullKeyExpireTime"] = self.pullKeyExpireTime!
                    }
                    if self.pushAuthKey != nil {
                        map["PushAuthKey"] = self.pushAuthKey!
                    }
                    if self.pushKeyExpireTime != nil {
                        map["PushKeyExpireTime"] = self.pushKeyExpireTime!
                    }
                    if self.pushUrlSample != nil {
                        map["PushUrlSample"] = self.pushUrlSample!
                    }
                    if self.streamName != nil {
                        map["StreamName"] = self.streamName!
                    }
                    if self.streamStatus != nil {
                        map["StreamStatus"] = self.streamStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PullAuthKey"] as? String {
                        self.pullAuthKey = value
                    }
                    if let value = dict["PullKeyExpireTime"] as? Int32 {
                        self.pullKeyExpireTime = value
                    }
                    if let value = dict["PushAuthKey"] as? String {
                        self.pushAuthKey = value
                    }
                    if let value = dict["PushKeyExpireTime"] as? Int32 {
                        self.pushKeyExpireTime = value
                    }
                    if let value = dict["PushUrlSample"] as? String {
                        self.pushUrlSample = value
                    }
                    if let value = dict["StreamName"] as? String {
                        self.streamName = value
                    }
                    if let value = dict["StreamStatus"] as? Int32 {
                        self.streamStatus = value
                    }
                }
            }
            public var description_: String?

            public var deviceType: Int32?

            public var gbDeviceInfo: BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList.GbDeviceInfo?

            public var iotId: String?

            public var rtmpDeviceInfo: BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList.RtmpDeviceInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.gbDeviceInfo?.validate()
                try self.rtmpDeviceInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.gbDeviceInfo != nil {
                    map["GbDeviceInfo"] = self.gbDeviceInfo?.toMap()
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.rtmpDeviceInfo != nil {
                    map["RtmpDeviceInfo"] = self.rtmpDeviceInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DeviceType"] as? Int32 {
                    self.deviceType = value
                }
                if let value = dict["GbDeviceInfo"] as? [String: Any?] {
                    var model = BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList.GbDeviceInfo()
                    model.fromMap(value)
                    self.gbDeviceInfo = model
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["RtmpDeviceInfo"] as? [String: Any?] {
                    var model = BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList.RtmpDeviceInfo()
                    model.fromMap(value)
                    self.rtmpDeviceInfo = model
                }
            }
        }
        public var deviceInfoList: [BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceInfoList != nil {
                var tmp : [Any] = []
                for k in self.deviceInfoList! {
                    tmp.append(k.toMap())
                }
                map["DeviceInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceInfoList"] as? [Any?] {
                var tmp : [BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList] = []
                for v in value {
                    if v != nil {
                        var model = BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceInfoList = tmp
            }
        }
    }
    public var code: String?

    public var data: BatchQueryVisionDeviceInfoResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = BatchQueryVisionDeviceInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchQueryVisionDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQueryVisionDeviceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchQueryVisionDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindPictureSearchAppWithDevicesRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var deviceIotIds: [String]?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.deviceIotIds != nil {
            map["DeviceIotIds"] = self.deviceIotIds!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["DeviceIotIds"] as? [String] {
            self.deviceIotIds = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
    }
}

public class BindPictureSearchAppWithDevicesResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BindPictureSearchAppWithDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindPictureSearchAppWithDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindPictureSearchAppWithDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckFaceUserDoExistOnDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotInstanceId: String?

    public var isolationId: String?

    public var productKey: String?

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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class CheckFaceUserDoExistOnDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var doExist: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.doExist != nil {
                map["DoExist"] = self.doExist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DoExist"] as? Bool {
                self.doExist = value
            }
        }
    }
    public var code: String?

    public var data: CheckFaceUserDoExistOnDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CheckFaceUserDoExistOnDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckFaceUserDoExistOnDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckFaceUserDoExistOnDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckFaceUserDoExistOnDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ClearFaceDeviceDBRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotInstanceId: String?

    public var isolationId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class ClearFaceDeviceDBResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ClearFaceDeviceDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearFaceDeviceDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ClearFaceDeviceDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEventRecordPlanRequest : Tea.TeaModel {
    public var eventTypes: String?

    public var name: String?

    public var preRecordDuration: Int32?

    public var recordDuration: Int32?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventTypes != nil {
            map["EventTypes"] = self.eventTypes!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.preRecordDuration != nil {
            map["PreRecordDuration"] = self.preRecordDuration!
        }
        if self.recordDuration != nil {
            map["RecordDuration"] = self.recordDuration!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventTypes"] as? String {
            self.eventTypes = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PreRecordDuration"] as? Int32 {
            self.preRecordDuration = value
        }
        if let value = dict["RecordDuration"] as? Int32 {
            self.recordDuration = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateEventRecordPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateEventRecordPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventRecordPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateEventRecordPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGbDeviceRequest : Tea.TeaModel {
    public var description_: String?

    public var deviceName: String?

    public var deviceType: Int32?

    public var gbId: String?

    public var iotInstanceId: String?

    public var mediaNetProtocol: String?

    public var password: String?

    public var productKey: String?

    public var subProductKey: String?

    public override init() {
        super.init()
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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.mediaNetProtocol != nil {
            map["MediaNetProtocol"] = self.mediaNetProtocol!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.subProductKey != nil {
            map["SubProductKey"] = self.subProductKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["DeviceType"] as? Int32 {
            self.deviceType = value
        }
        if let value = dict["GbId"] as? String {
            self.gbId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["MediaNetProtocol"] as? String {
            self.mediaNetProtocol = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["SubProductKey"] as? String {
            self.subProductKey = value
        }
    }
}

public class CreateGbDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceName: String?

        public var iotId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
        }
    }
    public var code: String?

    public var data: CreateGbDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CreateGbDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateGbDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGbDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGbDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLocalFileUploadJobRequest : Tea.TeaModel {
    public class TimeSlot : Tea.TeaModel {
        public var deviceName: String?

        public var endTime: Int32?

        public var iotId: String?

        public var productKey: String?

        public var startTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            if self.productKey != nil {
                map["ProductKey"] = self.productKey!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["EndTime"] as? Int32 {
                self.endTime = value
            }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
            if let value = dict["ProductKey"] as? String {
                self.productKey = value
            }
            if let value = dict["StartTime"] as? Int32 {
                self.startTime = value
            }
        }
    }
    public var iotInstanceId: String?

    public var timeSlot: [CreateLocalFileUploadJobRequest.TimeSlot]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.timeSlot != nil {
            var tmp : [Any] = []
            for k in self.timeSlot! {
                tmp.append(k.toMap())
            }
            map["TimeSlot"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["TimeSlot"] as? [Any?] {
            var tmp : [CreateLocalFileUploadJobRequest.TimeSlot] = []
            for v in value {
                if v != nil {
                    var model = CreateLocalFileUploadJobRequest.TimeSlot()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeSlot = tmp
        }
    }
}

public class CreateLocalFileUploadJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateLocalFileUploadJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CreateLocalFileUploadJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateLocalFileUploadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLocalFileUploadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLocalFileUploadJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLocalRecordDownloadByTimeJobRequest : Tea.TeaModel {
    public var beginTime: Int32?

    public var deviceName: String?

    public var endTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var speed: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int32 {
            self.beginTime = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["Speed"] as? Double {
            self.speed = value
        }
    }
}

public class CreateLocalRecordDownloadByTimeJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateLocalRecordDownloadByTimeJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CreateLocalRecordDownloadByTimeJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateLocalRecordDownloadByTimeJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLocalRecordDownloadByTimeJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLocalRecordDownloadByTimeJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePictureSearchAppRequest : Tea.TeaModel {
    public var desc: String?

    public var iotInstanceId: String?

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
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Desc"] as? String {
            self.desc = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreatePictureSearchAppResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePictureSearchAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePictureSearchAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePictureSearchAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePictureSearchJobRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var bodyThreshold: Double?

    public var endTime: Int64?

    public var pictureSearchType: Int32?

    public var searchPicUrl: String?

    public var startTime: Int64?

    public var threshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.bodyThreshold != nil {
            map["BodyThreshold"] = self.bodyThreshold!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pictureSearchType != nil {
            map["PictureSearchType"] = self.pictureSearchType!
        }
        if self.searchPicUrl != nil {
            map["SearchPicUrl"] = self.searchPicUrl!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["BodyThreshold"] as? Double {
            self.bodyThreshold = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PictureSearchType"] as? Int32 {
            self.pictureSearchType = value
        }
        if let value = dict["SearchPicUrl"] as? String {
            self.searchPicUrl = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
    }
}

public class CreatePictureSearchJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePictureSearchJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePictureSearchJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePictureSearchJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRecordDownloadByTimeJobRequest : Tea.TeaModel {
    public var beginTime: Int32?

    public var deviceName: String?

    public var endTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var recordType: Int32?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.recordType != nil {
            map["RecordType"] = self.recordType!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int32 {
            self.beginTime = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["RecordType"] as? Int32 {
            self.recordType = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class CreateRecordDownloadByTimeJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateRecordDownloadByTimeJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CreateRecordDownloadByTimeJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateRecordDownloadByTimeJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRecordDownloadByTimeJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRecordDownloadByTimeJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRecordPlanRequest : Tea.TeaModel {
    public var name: String?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateRecordPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateRecordPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRecordPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRecordPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRtmpDeviceRequest : Tea.TeaModel {
    public var description_: String?

    public var deviceName: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var pullAuthKey: String?

    public var pullKeyExpireTime: Int32?

    public var pushAuthKey: String?

    public var pushKeyExpireTime: Int32?

    public var subStreamName: String?

    public override init() {
        super.init()
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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.pullAuthKey != nil {
            map["PullAuthKey"] = self.pullAuthKey!
        }
        if self.pullKeyExpireTime != nil {
            map["PullKeyExpireTime"] = self.pullKeyExpireTime!
        }
        if self.pushAuthKey != nil {
            map["PushAuthKey"] = self.pushAuthKey!
        }
        if self.pushKeyExpireTime != nil {
            map["PushKeyExpireTime"] = self.pushKeyExpireTime!
        }
        if self.subStreamName != nil {
            map["SubStreamName"] = self.subStreamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["PullAuthKey"] as? String {
            self.pullAuthKey = value
        }
        if let value = dict["PullKeyExpireTime"] as? Int32 {
            self.pullKeyExpireTime = value
        }
        if let value = dict["PushAuthKey"] as? String {
            self.pushAuthKey = value
        }
        if let value = dict["PushKeyExpireTime"] as? Int32 {
            self.pushKeyExpireTime = value
        }
        if let value = dict["SubStreamName"] as? String {
            self.subStreamName = value
        }
    }
}

public class CreateRtmpDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceName: String?

        public var iotId: String?

        public var streamName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            if self.streamName != nil {
                map["StreamName"] = self.streamName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
            if let value = dict["StreamName"] as? String {
                self.streamName = value
            }
        }
    }
    public var code: String?

    public var data: CreateRtmpDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CreateRtmpDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateRtmpDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRtmpDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRtmpDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateStreamPushJobRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var jobType: Int32?

    public var productKey: String?

    public var pushUrl: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.pushUrl != nil {
            map["PushUrl"] = self.pushUrl!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobType"] as? Int32 {
            self.jobType = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["PushUrl"] as? String {
            self.pushUrl = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class CreateStreamPushJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateStreamPushJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = CreateStreamPushJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateStreamPushJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStreamPushJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateStreamPushJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateStreamSnapshotJobRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var snapshotInterval: Int32?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.snapshotInterval != nil {
            map["SnapshotInterval"] = self.snapshotInterval!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["SnapshotInterval"] as? Int32 {
            self.snapshotInterval = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class CreateStreamSnapshotJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateStreamSnapshotJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStreamSnapshotJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateStreamSnapshotJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTimeTemplateRequest : Tea.TeaModel {
    public class TimeSections : Tea.TeaModel {
        public var begin: Int32?

        public var dayOfWeek: Int32?

        public var end: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.begin != nil {
                map["Begin"] = self.begin!
            }
            if self.dayOfWeek != nil {
                map["DayOfWeek"] = self.dayOfWeek!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Begin"] as? Int32 {
                self.begin = value
            }
            if let value = dict["DayOfWeek"] as? Int32 {
                self.dayOfWeek = value
            }
            if let value = dict["End"] as? Int32 {
                self.end = value
            }
        }
    }
    public var allDay: Int32?

    public var name: String?

    public var timeSections: [CreateTimeTemplateRequest.TimeSections]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allDay != nil {
            map["AllDay"] = self.allDay!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.timeSections != nil {
            var tmp : [Any] = []
            for k in self.timeSections! {
                tmp.append(k.toMap())
            }
            map["TimeSections"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllDay"] as? Int32 {
            self.allDay = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TimeSections"] as? [Any?] {
            var tmp : [CreateTimeTemplateRequest.TimeSections] = []
            for v in value {
                if v != nil {
                    var model = CreateTimeTemplateRequest.TimeSections()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeSections = tmp
        }
    }
}

public class CreateTimeTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTimeTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTimeTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTimeTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEventRecordPlanRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class DeleteEventRecordPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteEventRecordPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventRecordPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEventRecordPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEventRecordPlanDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class DeleteEventRecordPlanDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteEventRecordPlanDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventRecordPlanDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEventRecordPlanDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceDeviceGroupRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var isolationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceGroupId"] as? String {
            self.deviceGroupId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
    }
}

public class DeleteFaceDeviceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFaceDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceDeviceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFaceDeviceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceUserRequest : Tea.TeaModel {
    public var isolationId: String?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteFaceUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFaceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFaceUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceUserGroupRequest : Tea.TeaModel {
    public var isolationId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
    }
}

public class DeleteFaceUserGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFaceUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFaceUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceUserGroupAndDeviceGroupRelationRequest : Tea.TeaModel {
    public var controlId: String?

    public var isolationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlId != nil {
            map["ControlId"] = self.controlId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlId"] as? String {
            self.controlId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
    }
}

public class DeleteFaceUserGroupAndDeviceGroupRelationResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFaceUserGroupAndDeviceGroupRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceUserGroupAndDeviceGroupRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceUserPictureRequest : Tea.TeaModel {
    public var facePicMd5: String?

    public var isolationId: String?

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
        if self.facePicMd5 != nil {
            map["FacePicMd5"] = self.facePicMd5!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FacePicMd5"] as? String {
            self.facePicMd5 = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteFaceUserPictureResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFaceUserPictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceUserPictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFaceUserPictureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGbDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class DeleteGbDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteGbDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGbDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGbDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLocalFileUploadJobRequest : Tea.TeaModel {
    public var iotInstanceId: String?

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
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class DeleteLocalFileUploadJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteLocalFileUploadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLocalFileUploadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLocalFileUploadJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePictureRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pictureIdList: [String]?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pictureIdList != nil {
            map["PictureIdList"] = self.pictureIdList!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PictureIdList"] as? [String] {
            self.pictureIdList = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class DeletePictureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deletedCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deletedCount != nil {
                map["DeletedCount"] = self.deletedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeletedCount"] as? Int32 {
                self.deletedCount = value
            }
        }
    }
    public var code: String?

    public var data: DeletePictureResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = DeletePictureResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeletePictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePictureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRecordRequest : Tea.TeaModel {
    public var deviceName: String?

    public var fileNameList: [String]?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.fileNameList != nil {
            map["FileNameList"] = self.fileNameList!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["FileNameList"] as? [String] {
            self.fileNameList = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class DeleteRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deletedCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deletedCount != nil {
                map["DeletedCount"] = self.deletedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeletedCount"] as? Int32 {
                self.deletedCount = value
            }
        }
    }
    public var code: String?

    public var data: DeleteRecordResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = DeleteRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRecordPlanRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class DeleteRecordPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteRecordPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRecordPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRecordPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRecordPlanDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class DeleteRecordPlanDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteRecordPlanDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRecordPlanDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRecordPlanDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRtmpDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class DeleteRtmpDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteRtmpDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRtmpDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRtmpDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRtmpKeyRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
    }
}

public class DeleteRtmpKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteRtmpKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRtmpKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRtmpKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteStreamPushJobRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var jobId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class DeleteStreamPushJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteStreamPushJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStreamPushJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteStreamPushJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteStreamSnapshotJobRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class DeleteStreamSnapshotJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteStreamSnapshotJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStreamSnapshotJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteStreamSnapshotJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTimeTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DeleteTimeTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteTimeTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTimeTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTimeTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableGbSubDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var subDeviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.subDeviceId != nil {
            map["SubDeviceId"] = self.subDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["SubDeviceId"] as? String {
            self.subDeviceId = value
        }
    }
}

public class EnableGbSubDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceName: String?

        public var productKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.productKey != nil {
                map["ProductKey"] = self.productKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["ProductKey"] as? String {
                self.productKey = value
            }
        }
    }
    public var code: String?

    public var data: EnableGbSubDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = EnableGbSubDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableGbSubDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableGbSubDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableGbSubDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPictureSearchJobStatusRequest : Tea.TeaModel {
    public var appInstanceId: String?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetPictureSearchJobStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

        public var endTime: Int64?

        public var jobId: String?

        public var jobStatus: Int32?

        public var searchPicUrl: String?

        public var startTime: Int64?

        public var threshold: Double?

        public override init() {
            super.init()
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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobStatus != nil {
                map["JobStatus"] = self.jobStatus!
            }
            if self.searchPicUrl != nil {
                map["SearchPicUrl"] = self.searchPicUrl!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobStatus"] as? Int32 {
                self.jobStatus = value
            }
            if let value = dict["SearchPicUrl"] as? String {
                self.searchPicUrl = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var code: String?

    public var data: GetPictureSearchJobStatusResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = GetPictureSearchJobStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetPictureSearchJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPictureSearchJobStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPictureSearchJobStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PictureSearchPictureRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var containPicUrl: Bool?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var pageSize: Int32?

    public var pictureSearchType: Int32?

    public var searchPicUrl: String?

    public var startTime: Int64?

    public var threshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.containPicUrl != nil {
            map["ContainPicUrl"] = self.containPicUrl!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pictureSearchType != nil {
            map["PictureSearchType"] = self.pictureSearchType!
        }
        if self.searchPicUrl != nil {
            map["SearchPicUrl"] = self.searchPicUrl!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["ContainPicUrl"] as? Bool {
            self.containPicUrl = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PictureSearchType"] as? Int32 {
            self.pictureSearchType = value
        }
        if let value = dict["SearchPicUrl"] as? String {
            self.searchPicUrl = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
    }
}

public class PictureSearchPictureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var eventTime: Int64?

            public var gatewayIotId: String?

            public var iotId: String?

            public var picUrl: String?

            public var threshold: Double?

            public var vectorId: String?

            public var vectorType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.gatewayIotId != nil {
                    map["GatewayIotId"] = self.gatewayIotId!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.picUrl != nil {
                    map["PicUrl"] = self.picUrl!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                if self.vectorId != nil {
                    map["VectorId"] = self.vectorId!
                }
                if self.vectorType != nil {
                    map["VectorType"] = self.vectorType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EventTime"] as? Int64 {
                    self.eventTime = value
                }
                if let value = dict["GatewayIotId"] as? String {
                    self.gatewayIotId = value
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["PicUrl"] as? String {
                    self.picUrl = value
                }
                if let value = dict["Threshold"] as? Double {
                    self.threshold = value
                }
                if let value = dict["VectorId"] as? String {
                    self.vectorId = value
                }
                if let value = dict["VectorType"] as? Int32 {
                    self.vectorType = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [PictureSearchPictureResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [PictureSearchPictureResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = PictureSearchPictureResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: PictureSearchPictureResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = PictureSearchPictureResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PictureSearchPictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PictureSearchPictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PictureSearchPictureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCarProcessEventsRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var areaIndex: Int32?

    public var beginTime: Int64?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var iotInstanceId: String?

    public var pageSize: Int32?

    public var plateNo: String?

    public var subDeviceName: String?

    public var subIotId: String?

    public var subProductKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.areaIndex != nil {
            map["AreaIndex"] = self.areaIndex!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.plateNo != nil {
            map["PlateNo"] = self.plateNo!
        }
        if self.subDeviceName != nil {
            map["SubDeviceName"] = self.subDeviceName!
        }
        if self.subIotId != nil {
            map["SubIotId"] = self.subIotId!
        }
        if self.subProductKey != nil {
            map["SubProductKey"] = self.subProductKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["AreaIndex"] as? Int32 {
            self.areaIndex = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlateNo"] as? String {
            self.plateNo = value
        }
        if let value = dict["SubDeviceName"] as? String {
            self.subDeviceName = value
        }
        if let value = dict["SubIotId"] as? String {
            self.subIotId = value
        }
        if let value = dict["SubProductKey"] as? String {
            self.subProductKey = value
        }
    }
}

public class QueryCarProcessEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var actionType: Int32?

            public var areaIndex: Int32?

            public var confidence: Int32?

            public var eventId: String?

            public var eventPicId: String?

            public var eventPicUrl: String?

            public var eventTime: Int64?

            public var eventType: Int32?

            public var iotId: String?

            public var plateNo: String?

            public var subDeviceName: String?

            public var subDeviceNickName: String?

            public var subIotId: String?

            public var subProductKey: String?

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
                if self.actionType != nil {
                    map["ActionType"] = self.actionType!
                }
                if self.areaIndex != nil {
                    map["AreaIndex"] = self.areaIndex!
                }
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                if self.eventPicId != nil {
                    map["EventPicId"] = self.eventPicId!
                }
                if self.eventPicUrl != nil {
                    map["EventPicUrl"] = self.eventPicUrl!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.plateNo != nil {
                    map["PlateNo"] = self.plateNo!
                }
                if self.subDeviceName != nil {
                    map["SubDeviceName"] = self.subDeviceName!
                }
                if self.subDeviceNickName != nil {
                    map["SubDeviceNickName"] = self.subDeviceNickName!
                }
                if self.subIotId != nil {
                    map["SubIotId"] = self.subIotId!
                }
                if self.subProductKey != nil {
                    map["SubProductKey"] = self.subProductKey!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionType"] as? Int32 {
                    self.actionType = value
                }
                if let value = dict["AreaIndex"] as? Int32 {
                    self.areaIndex = value
                }
                if let value = dict["Confidence"] as? Int32 {
                    self.confidence = value
                }
                if let value = dict["EventId"] as? String {
                    self.eventId = value
                }
                if let value = dict["EventPicId"] as? String {
                    self.eventPicId = value
                }
                if let value = dict["EventPicUrl"] as? String {
                    self.eventPicUrl = value
                }
                if let value = dict["EventTime"] as? Int64 {
                    self.eventTime = value
                }
                if let value = dict["EventType"] as? Int32 {
                    self.eventType = value
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["PlateNo"] as? String {
                    self.plateNo = value
                }
                if let value = dict["SubDeviceName"] as? String {
                    self.subDeviceName = value
                }
                if let value = dict["SubDeviceNickName"] as? String {
                    self.subDeviceNickName = value
                }
                if let value = dict["SubIotId"] as? String {
                    self.subIotId = value
                }
                if let value = dict["SubProductKey"] as? String {
                    self.subProductKey = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [QueryCarProcessEventsResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [QueryCarProcessEventsResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = QueryCarProcessEventsResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryCarProcessEventsResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryCarProcessEventsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryCarProcessEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCarProcessEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCarProcessEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceEventRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var currentPage: Int32?

    public var deviceName: String?

    public var endTime: Int64?

    public var eventType: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pageSize: Int32?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EventType"] as? Int32 {
            self.eventType = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryDeviceEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var eventData: String?

            public var eventDesc: String?

            public var eventId: String?

            public var eventPicId: String?

            public var eventTime: String?

            public var eventType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventData != nil {
                    map["EventData"] = self.eventData!
                }
                if self.eventDesc != nil {
                    map["EventDesc"] = self.eventDesc!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                if self.eventPicId != nil {
                    map["EventPicId"] = self.eventPicId!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EventData"] as? String {
                    self.eventData = value
                }
                if let value = dict["EventDesc"] as? String {
                    self.eventDesc = value
                }
                if let value = dict["EventId"] as? String {
                    self.eventId = value
                }
                if let value = dict["EventPicId"] as? String {
                    self.eventPicId = value
                }
                if let value = dict["EventTime"] as? String {
                    self.eventTime = value
                }
                if let value = dict["EventType"] as? Int32 {
                    self.eventType = value
                }
            }
        }
        public var list: [QueryDeviceEventResponseBody.Data.List]?

        public var page: Int32?

        public var pageCount: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryDeviceEventResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryDeviceEventResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryDeviceEventResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryDeviceEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDeviceEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDeviceEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceEventPictureRequest : Tea.TeaModel {
    public var deviceName: String?

    public var eventId: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryDeviceEventPictureResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDeviceEventPictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceEventPictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDeviceEventPictureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceEventRecordRequest : Tea.TeaModel {
    public var deviceName: String?

    public var eventId: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryDeviceEventRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var beginTime: String?

        public var endTime: String?

        public var fileName: String?

        public var vodUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.vodUrl != nil {
                map["VodUrl"] = self.vodUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginTime"] as? String {
                self.beginTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["VodUrl"] as? String {
                self.vodUrl = value
            }
        }
    }
    public var code: Int32?

    public var data: [QueryDeviceEventRecordResponseBody.Data]?

    public var errorMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryDeviceEventRecordResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryDeviceEventRecordResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDeviceEventRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceEventRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDeviceEventRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDevicePictureByListRequest : Tea.TeaModel {
    public var deviceName: String?

    public var expireTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pictureIdList: [String]?

    public var pictureType: Int32?

    public var productKey: String?

    public var thumbWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pictureIdList != nil {
            map["PictureIdList"] = self.pictureIdList!
        }
        if self.pictureType != nil {
            map["PictureType"] = self.pictureType!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.thumbWidth != nil {
            map["ThumbWidth"] = self.thumbWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PictureIdList"] as? [String] {
            self.pictureIdList = value
        }
        if let value = dict["PictureType"] as? Int32 {
            self.pictureType = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["ThumbWidth"] as? Int32 {
            self.thumbWidth = value
        }
    }
}

public class QueryDevicePictureByListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PicData : Tea.TeaModel {
            public var iotId: String?

            public var picCreateTime: Int64?

            public var picId: String?

            public var picUrl: String?

            public var thumbUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.picCreateTime != nil {
                    map["PicCreateTime"] = self.picCreateTime!
                }
                if self.picId != nil {
                    map["PicId"] = self.picId!
                }
                if self.picUrl != nil {
                    map["PicUrl"] = self.picUrl!
                }
                if self.thumbUrl != nil {
                    map["ThumbUrl"] = self.thumbUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["PicCreateTime"] as? Int64 {
                    self.picCreateTime = value
                }
                if let value = dict["PicId"] as? String {
                    self.picId = value
                }
                if let value = dict["PicUrl"] as? String {
                    self.picUrl = value
                }
                if let value = dict["ThumbUrl"] as? String {
                    self.thumbUrl = value
                }
            }
        }
        public var picData: [QueryDevicePictureByListResponseBody.Data.PicData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.picData != nil {
                var tmp : [Any] = []
                for k in self.picData! {
                    tmp.append(k.toMap())
                }
                map["picData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["picData"] as? [Any?] {
                var tmp : [QueryDevicePictureByListResponseBody.Data.PicData] = []
                for v in value {
                    if v != nil {
                        var model = QueryDevicePictureByListResponseBody.Data.PicData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.picData = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryDevicePictureByListResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryDevicePictureByListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDevicePictureByListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicePictureByListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDevicePictureByListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDevicePictureFileRequest : Tea.TeaModel {
    public var captureId: String?

    public var deviceName: String?

    public var expireTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pictureType: Int32?

    public var productKey: String?

    public var thumbWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.captureId != nil {
            map["CaptureId"] = self.captureId!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pictureType != nil {
            map["PictureType"] = self.pictureType!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.thumbWidth != nil {
            map["ThumbWidth"] = self.thumbWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CaptureId"] as? String {
            self.captureId = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PictureType"] as? Int32 {
            self.pictureType = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["ThumbWidth"] as? Int32 {
            self.thumbWidth = value
        }
    }
}

public class QueryDevicePictureFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var iotId: String?

        public var picCreateTime: Int64?

        public var picId: String?

        public var picUrl: String?

        public var thumbUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            if self.picCreateTime != nil {
                map["PicCreateTime"] = self.picCreateTime!
            }
            if self.picId != nil {
                map["PicId"] = self.picId!
            }
            if self.picUrl != nil {
                map["PicUrl"] = self.picUrl!
            }
            if self.thumbUrl != nil {
                map["ThumbUrl"] = self.thumbUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
            if let value = dict["PicCreateTime"] as? Int64 {
                self.picCreateTime = value
            }
            if let value = dict["PicId"] as? String {
                self.picId = value
            }
            if let value = dict["PicUrl"] as? String {
                self.picUrl = value
            }
            if let value = dict["ThumbUrl"] as? String {
                self.thumbUrl = value
            }
        }
    }
    public var code: String?

    public var data: QueryDevicePictureFileResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryDevicePictureFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDevicePictureFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicePictureFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDevicePictureFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDevicePictureLifeCycleRequest : Tea.TeaModel {
    public var iotId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
    }
}

public class QueryDevicePictureLifeCycleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var day: Int32?

        public var iotId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.day != nil {
                map["Day"] = self.day!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Day"] as? Int32 {
                self.day = value
            }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
        }
    }
    public var code: String?

    public var data: QueryDevicePictureLifeCycleResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryDevicePictureLifeCycleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDevicePictureLifeCycleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicePictureLifeCycleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDevicePictureLifeCycleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceRecordLifeCycleRequest : Tea.TeaModel {
    public var deviceList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceList != nil {
            map["DeviceList"] = self.deviceList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceList"] as? [String] {
            self.deviceList = value
        }
    }
}

public class QueryDeviceRecordLifeCycleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var day: Int32?

        public var iotId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.day != nil {
                map["Day"] = self.day!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Day"] as? Int32 {
                self.day = value
            }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
        }
    }
    public var code: Int32?

    public var data: [QueryDeviceRecordLifeCycleResponseBody.Data]?

    public var errorMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryDeviceRecordLifeCycleResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryDeviceRecordLifeCycleResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDeviceRecordLifeCycleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceRecordLifeCycleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDeviceRecordLifeCycleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceVodUrlRequest : Tea.TeaModel {
    public var deviceName: String?

    public var enableStun: Bool?

    public var encryptType: Int32?

    public var fileName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var playUnLimited: Bool?

    public var productKey: String?

    public var scheme: String?

    public var seekTime: Int32?

    public var shouldEncrypt: Bool?

    public var urlValidDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.enableStun != nil {
            map["EnableStun"] = self.enableStun!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.playUnLimited != nil {
            map["PlayUnLimited"] = self.playUnLimited!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.scheme != nil {
            map["Scheme"] = self.scheme!
        }
        if self.seekTime != nil {
            map["SeekTime"] = self.seekTime!
        }
        if self.shouldEncrypt != nil {
            map["ShouldEncrypt"] = self.shouldEncrypt!
        }
        if self.urlValidDuration != nil {
            map["UrlValidDuration"] = self.urlValidDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EnableStun"] as? Bool {
            self.enableStun = value
        }
        if let value = dict["EncryptType"] as? Int32 {
            self.encryptType = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PlayUnLimited"] as? Bool {
            self.playUnLimited = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["Scheme"] as? String {
            self.scheme = value
        }
        if let value = dict["SeekTime"] as? Int32 {
            self.seekTime = value
        }
        if let value = dict["ShouldEncrypt"] as? Bool {
            self.shouldEncrypt = value
        }
        if let value = dict["UrlValidDuration"] as? Int32 {
            self.urlValidDuration = value
        }
    }
}

public class QueryDeviceVodUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var decryptKey: String?

        public var stunInfo: String?

        public var vodUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.decryptKey != nil {
                map["DecryptKey"] = self.decryptKey!
            }
            if self.stunInfo != nil {
                map["StunInfo"] = self.stunInfo!
            }
            if self.vodUrl != nil {
                map["VodUrl"] = self.vodUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DecryptKey"] as? String {
                self.decryptKey = value
            }
            if let value = dict["StunInfo"] as? String {
                self.stunInfo = value
            }
            if let value = dict["VodUrl"] as? String {
                self.vodUrl = value
            }
        }
    }
    public var code: String?

    public var data: QueryDeviceVodUrlResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryDeviceVodUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDeviceVodUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceVodUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDeviceVodUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceVodUrlByTimeRequest : Tea.TeaModel {
    public var beginTime: Int32?

    public var deviceName: String?

    public var enableStun: Bool?

    public var encryptType: Int32?

    public var endTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var playUnLimited: Bool?

    public var productKey: String?

    public var scheme: String?

    public var seekTime: Int32?

    public var shouldEncrypt: Bool?

    public var urlValidDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.enableStun != nil {
            map["EnableStun"] = self.enableStun!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.playUnLimited != nil {
            map["PlayUnLimited"] = self.playUnLimited!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.scheme != nil {
            map["Scheme"] = self.scheme!
        }
        if self.seekTime != nil {
            map["SeekTime"] = self.seekTime!
        }
        if self.shouldEncrypt != nil {
            map["ShouldEncrypt"] = self.shouldEncrypt!
        }
        if self.urlValidDuration != nil {
            map["UrlValidDuration"] = self.urlValidDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int32 {
            self.beginTime = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EnableStun"] as? Bool {
            self.enableStun = value
        }
        if let value = dict["EncryptType"] as? Int32 {
            self.encryptType = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PlayUnLimited"] as? Bool {
            self.playUnLimited = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["Scheme"] as? String {
            self.scheme = value
        }
        if let value = dict["SeekTime"] as? Int32 {
            self.seekTime = value
        }
        if let value = dict["ShouldEncrypt"] as? Bool {
            self.shouldEncrypt = value
        }
        if let value = dict["UrlValidDuration"] as? Int32 {
            self.urlValidDuration = value
        }
    }
}

public class QueryDeviceVodUrlByTimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var decryptKey: String?

        public var stunInfo: String?

        public var vodUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.decryptKey != nil {
                map["DecryptKey"] = self.decryptKey!
            }
            if self.stunInfo != nil {
                map["StunInfo"] = self.stunInfo!
            }
            if self.vodUrl != nil {
                map["VodUrl"] = self.vodUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DecryptKey"] as? String {
                self.decryptKey = value
            }
            if let value = dict["StunInfo"] as? String {
                self.stunInfo = value
            }
            if let value = dict["VodUrl"] as? String {
                self.vodUrl = value
            }
        }
    }
    public var code: String?

    public var data: QueryDeviceVodUrlByTimeResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryDeviceVodUrlByTimeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDeviceVodUrlByTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceVodUrlByTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDeviceVodUrlByTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEventRecordPlanDetailRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class QueryEventRecordPlanDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplateInfo : Tea.TeaModel {
            public class TimeSectionList : Tea.TeaModel {
                public var begin: Int32?

                public var dayOfWeek: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.dayOfWeek != nil {
                        map["DayOfWeek"] = self.dayOfWeek!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["DayOfWeek"] as? Int32 {
                        self.dayOfWeek = value
                    }
                    if let value = dict["End"] as? Int32 {
                        self.end = value
                    }
                }
            }
            public var allDay: Int32?

            public var default_: Int32?

            public var name: String?

            public var templateId: String?

            public var timeSectionList: [QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allDay != nil {
                    map["AllDay"] = self.allDay!
                }
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.timeSectionList != nil {
                    var tmp : [Any] = []
                    for k in self.timeSectionList! {
                        tmp.append(k.toMap())
                    }
                    map["TimeSectionList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllDay"] as? Int32 {
                    self.allDay = value
                }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TimeSectionList"] as? [Any?] {
                    var tmp : [QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timeSectionList = tmp
                }
            }
        }
        public var name: String?

        public var planId: String?

        public var preRecordDuration: Int32?

        public var recordDuration: Int32?

        public var templateId: String?

        public var templateInfo: QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.templateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.preRecordDuration != nil {
                map["PreRecordDuration"] = self.preRecordDuration!
            }
            if self.recordDuration != nil {
                map["RecordDuration"] = self.recordDuration!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateInfo != nil {
                map["TemplateInfo"] = self.templateInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["PreRecordDuration"] as? Int32 {
                self.preRecordDuration = value
            }
            if let value = dict["RecordDuration"] as? Int32 {
                self.recordDuration = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateInfo"] as? [String: Any?] {
                var model = QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo()
                model.fromMap(value)
                self.templateInfo = model
            }
        }
    }
    public var code: String?

    public var data: QueryEventRecordPlanDetailResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryEventRecordPlanDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEventRecordPlanDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEventRecordPlanDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryEventRecordPlanDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEventRecordPlanDeviceByDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class QueryEventRecordPlanDeviceByDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplateInfo : Tea.TeaModel {
            public class TimeSectionList : Tea.TeaModel {
                public var begin: Int32?

                public var dayOfWeek: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.dayOfWeek != nil {
                        map["DayOfWeek"] = self.dayOfWeek!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["DayOfWeek"] as? Int32 {
                        self.dayOfWeek = value
                    }
                    if let value = dict["End"] as? Int32 {
                        self.end = value
                    }
                }
            }
            public var allDay: Int32?

            public var default_: Int32?

            public var name: String?

            public var templateId: String?

            public var timeSectionList: [QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allDay != nil {
                    map["AllDay"] = self.allDay!
                }
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.timeSectionList != nil {
                    var tmp : [Any] = []
                    for k in self.timeSectionList! {
                        tmp.append(k.toMap())
                    }
                    map["TimeSectionList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllDay"] as? Int32 {
                    self.allDay = value
                }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TimeSectionList"] as? [Any?] {
                    var tmp : [QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timeSectionList = tmp
                }
            }
        }
        public var name: String?

        public var planId: String?

        public var preRecordDuration: Int32?

        public var recordDuration: Int32?

        public var templateId: String?

        public var templateInfo: QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.templateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.preRecordDuration != nil {
                map["PreRecordDuration"] = self.preRecordDuration!
            }
            if self.recordDuration != nil {
                map["RecordDuration"] = self.recordDuration!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateInfo != nil {
                map["TemplateInfo"] = self.templateInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["PreRecordDuration"] as? Int32 {
                self.preRecordDuration = value
            }
            if let value = dict["RecordDuration"] as? Int32 {
                self.recordDuration = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateInfo"] as? [String: Any?] {
                var model = QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo()
                model.fromMap(value)
                self.templateInfo = model
            }
        }
    }
    public var code: String?

    public var data: QueryEventRecordPlanDeviceByDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryEventRecordPlanDeviceByDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEventRecordPlanDeviceByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEventRecordPlanDeviceByDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryEventRecordPlanDeviceByDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEventRecordPlanDeviceByPlanRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var planId: String?

    public override init() {
        super.init()
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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class QueryEventRecordPlanDeviceByPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var iotId: String?

            public var streamType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.streamType != nil {
                    map["StreamType"] = self.streamType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["StreamType"] as? Int32 {
                    self.streamType = value
                }
            }
        }
        public var list: [QueryEventRecordPlanDeviceByPlanResponseBody.Data.List]?

        public var page: Int32?

        public var pageCount: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryEventRecordPlanDeviceByPlanResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryEventRecordPlanDeviceByPlanResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryEventRecordPlanDeviceByPlanResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryEventRecordPlanDeviceByPlanResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEventRecordPlanDeviceByPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEventRecordPlanDeviceByPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryEventRecordPlanDeviceByPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEventRecordPlansRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryEventRecordPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var eventType: String?

            public var name: String?

            public var planId: String?

            public var preRecordDuration: Int32?

            public var recordDuration: Int32?

            public var templateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.preRecordDuration != nil {
                    map["PreRecordDuration"] = self.preRecordDuration!
                }
                if self.recordDuration != nil {
                    map["RecordDuration"] = self.recordDuration!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EventType"] as? String {
                    self.eventType = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PlanId"] as? String {
                    self.planId = value
                }
                if let value = dict["PreRecordDuration"] as? Int32 {
                    self.preRecordDuration = value
                }
                if let value = dict["RecordDuration"] as? Int32 {
                    self.recordDuration = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
            }
        }
        public var list: [QueryEventRecordPlansResponseBody.Data.List]?

        public var page: Int32?

        public var pageCount: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryEventRecordPlansResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryEventRecordPlansResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryEventRecordPlansResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryEventRecordPlansResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEventRecordPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEventRecordPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryEventRecordPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceAllDeviceGroupRequest : Tea.TeaModel {
    public var iotInstanceId: String?

    public var isolationId: String?

    public var pageNo: Int32?

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
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryFaceAllDeviceGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceGroupList : Tea.TeaModel {
            public var deviceGroupId: String?

            public var deviceGroupName: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceGroupId != nil {
                    map["DeviceGroupId"] = self.deviceGroupId!
                }
                if self.deviceGroupName != nil {
                    map["DeviceGroupName"] = self.deviceGroupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceGroupId"] as? String {
                    self.deviceGroupId = value
                }
                if let value = dict["DeviceGroupName"] as? String {
                    self.deviceGroupName = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
            }
        }
        public var deviceGroupList: [QueryFaceAllDeviceGroupResponseBody.Data.DeviceGroupList]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.deviceGroupList != nil {
                var tmp : [Any] = []
                for k in self.deviceGroupList! {
                    tmp.append(k.toMap())
                }
                map["DeviceGroupList"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceGroupList"] as? [Any?] {
                var tmp : [QueryFaceAllDeviceGroupResponseBody.Data.DeviceGroupList] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceAllDeviceGroupResponseBody.Data.DeviceGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceGroupList = tmp
            }
            if let value = dict["PageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceAllDeviceGroupResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceAllDeviceGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceAllDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceAllDeviceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceAllDeviceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceAllUserGroupRequest : Tea.TeaModel {
    public var isolationId: String?

    public var pageNo: Int32?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryFaceAllUserGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UserGroupList : Tea.TeaModel {
            public var modifiedTime: String?

            public var userGroupId: String?

            public var userGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                if self.userGroupName != nil {
                    map["UserGroupName"] = self.userGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["UserGroupId"] as? String {
                    self.userGroupId = value
                }
                if let value = dict["UserGroupName"] as? String {
                    self.userGroupName = value
                }
            }
        }
        public var pageNo: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public var userGroupList: [QueryFaceAllUserGroupResponseBody.Data.UserGroupList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.userGroupList != nil {
                var tmp : [Any] = []
                for k in self.userGroupList! {
                    tmp.append(k.toMap())
                }
                map["UserGroupList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
            if let value = dict["UserGroupList"] as? [Any?] {
                var tmp : [QueryFaceAllUserGroupResponseBody.Data.UserGroupList] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceAllUserGroupResponseBody.Data.UserGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userGroupList = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryFaceAllUserGroupResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceAllUserGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceAllUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceAllUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceAllUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceAllUserGroupAndDeviceGroupRelationRequest : Tea.TeaModel {
    public var isolationId: String?

    public var pageNo: Int32?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var controlId: String?

            public var controlType: String?

            public var deviceGroupId: String?

            public var modifiedTime: String?

            public var userGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.controlId != nil {
                    map["ControlId"] = self.controlId!
                }
                if self.controlType != nil {
                    map["ControlType"] = self.controlType!
                }
                if self.deviceGroupId != nil {
                    map["DeviceGroupId"] = self.deviceGroupId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ControlId"] as? String {
                    self.controlId = value
                }
                if let value = dict["ControlType"] as? String {
                    self.controlType = value
                }
                if let value = dict["DeviceGroupId"] as? String {
                    self.deviceGroupId = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["UserGroupId"] as? String {
                    self.userGroupId = value
                }
            }
        }
        public var list: [QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data.List]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceAllUserGroupAndDeviceGroupRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceAllUserIdsByGroupIdRequest : Tea.TeaModel {
    public var isolationId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
    }
}

public class QueryFaceAllUserIdsByGroupIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var customUserId: String?

            public var name: String?

            public var params: String?

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
                if self.customUserId != nil {
                    map["CustomUserId"] = self.customUserId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomUserId"] as? String {
                    self.customUserId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Params"] as? String {
                    self.params = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var list: [QueryFaceAllUserIdsByGroupIdResponseBody.Data.List]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryFaceAllUserIdsByGroupIdResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceAllUserIdsByGroupIdResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceAllUserIdsByGroupIdResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceAllUserIdsByGroupIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceAllUserIdsByGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceAllUserIdsByGroupIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceAllUserIdsByGroupIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceCustomUserIdByUserIdRequest : Tea.TeaModel {
    public var isolationId: String?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryFaceCustomUserIdByUserIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceCustomUserIdByUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceCustomUserIdByUserIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceCustomUserIdByUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceDeviceGroupsByDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotInstanceId: String?

    public var isolationId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryFaceDeviceGroupsByDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceGroupList : Tea.TeaModel {
            public var deviceGroupId: String?

            public var deviceGroupName: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceGroupId != nil {
                    map["DeviceGroupId"] = self.deviceGroupId!
                }
                if self.deviceGroupName != nil {
                    map["DeviceGroupName"] = self.deviceGroupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceGroupId"] as? String {
                    self.deviceGroupId = value
                }
                if let value = dict["DeviceGroupName"] as? String {
                    self.deviceGroupName = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
            }
        }
        public var deviceGroupList: [QueryFaceDeviceGroupsByDeviceResponseBody.Data.DeviceGroupList]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.deviceGroupList != nil {
                var tmp : [Any] = []
                for k in self.deviceGroupList! {
                    tmp.append(k.toMap())
                }
                map["DeviceGroupList"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceGroupList"] as? [Any?] {
                var tmp : [QueryFaceDeviceGroupsByDeviceResponseBody.Data.DeviceGroupList] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceDeviceGroupsByDeviceResponseBody.Data.DeviceGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceGroupList = tmp
            }
            if let value = dict["PageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceDeviceGroupsByDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceDeviceGroupsByDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceDeviceGroupsByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceDeviceGroupsByDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceDeviceGroupsByDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceUserRequest : Tea.TeaModel {
    public var isolationId: String?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryFaceUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FacePicList : Tea.TeaModel {
            public class FeatureDTOList : Tea.TeaModel {
                public var algorithmName: String?

                public var algorithmProvider: String?

                public var algorithmVersion: String?

                public var errorCode: String?

                public var errorMessage: String?

                public var faceMd5: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.algorithmName != nil {
                        map["AlgorithmName"] = self.algorithmName!
                    }
                    if self.algorithmProvider != nil {
                        map["AlgorithmProvider"] = self.algorithmProvider!
                    }
                    if self.algorithmVersion != nil {
                        map["AlgorithmVersion"] = self.algorithmVersion!
                    }
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.faceMd5 != nil {
                        map["FaceMd5"] = self.faceMd5!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AlgorithmName"] as? String {
                        self.algorithmName = value
                    }
                    if let value = dict["AlgorithmProvider"] as? String {
                        self.algorithmProvider = value
                    }
                    if let value = dict["AlgorithmVersion"] as? String {
                        self.algorithmVersion = value
                    }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["FaceMd5"] as? String {
                        self.faceMd5 = value
                    }
                }
            }
            public var faceMd5: String?

            public var faceUrl: String?

            public var featureDTOList: [QueryFaceUserResponseBody.Data.FacePicList.FeatureDTOList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceMd5 != nil {
                    map["FaceMd5"] = self.faceMd5!
                }
                if self.faceUrl != nil {
                    map["FaceUrl"] = self.faceUrl!
                }
                if self.featureDTOList != nil {
                    var tmp : [Any] = []
                    for k in self.featureDTOList! {
                        tmp.append(k.toMap())
                    }
                    map["FeatureDTOList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceMd5"] as? String {
                    self.faceMd5 = value
                }
                if let value = dict["FaceUrl"] as? String {
                    self.faceUrl = value
                }
                if let value = dict["FeatureDTOList"] as? [Any?] {
                    var tmp : [QueryFaceUserResponseBody.Data.FacePicList.FeatureDTOList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryFaceUserResponseBody.Data.FacePicList.FeatureDTOList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.featureDTOList = tmp
                }
            }
        }
        public var customUserId: String?

        public var facePicList: [QueryFaceUserResponseBody.Data.FacePicList]?

        public var name: String?

        public var params: String?

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
            if self.customUserId != nil {
                map["CustomUserId"] = self.customUserId!
            }
            if self.facePicList != nil {
                var tmp : [Any] = []
                for k in self.facePicList! {
                    tmp.append(k.toMap())
                }
                map["FacePicList"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomUserId"] as? String {
                self.customUserId = value
            }
            if let value = dict["FacePicList"] as? [Any?] {
                var tmp : [QueryFaceUserResponseBody.Data.FacePicList] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceUserResponseBody.Data.FacePicList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.facePicList = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceUserResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceUserBatchRequest : Tea.TeaModel {
    public var isolationId: String?

    public var userIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserIdList"] as? [String] {
            self.userIdList = value
        }
    }
}

public class QueryFaceUserBatchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FacePicList : Tea.TeaModel {
            public class FeatureDTOList : Tea.TeaModel {
                public var algorithmName: String?

                public var algorithmProvider: String?

                public var algorithmVersion: String?

                public var errorCode: String?

                public var errorMessage: String?

                public var faceMd5: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.algorithmName != nil {
                        map["AlgorithmName"] = self.algorithmName!
                    }
                    if self.algorithmProvider != nil {
                        map["AlgorithmProvider"] = self.algorithmProvider!
                    }
                    if self.algorithmVersion != nil {
                        map["AlgorithmVersion"] = self.algorithmVersion!
                    }
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.faceMd5 != nil {
                        map["FaceMd5"] = self.faceMd5!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AlgorithmName"] as? String {
                        self.algorithmName = value
                    }
                    if let value = dict["AlgorithmProvider"] as? String {
                        self.algorithmProvider = value
                    }
                    if let value = dict["AlgorithmVersion"] as? String {
                        self.algorithmVersion = value
                    }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["FaceMd5"] as? String {
                        self.faceMd5 = value
                    }
                }
            }
            public var faceMd5: String?

            public var faceUrl: String?

            public var featureDTOList: [QueryFaceUserBatchResponseBody.Data.FacePicList.FeatureDTOList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceMd5 != nil {
                    map["FaceMd5"] = self.faceMd5!
                }
                if self.faceUrl != nil {
                    map["FaceUrl"] = self.faceUrl!
                }
                if self.featureDTOList != nil {
                    var tmp : [Any] = []
                    for k in self.featureDTOList! {
                        tmp.append(k.toMap())
                    }
                    map["FeatureDTOList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceMd5"] as? String {
                    self.faceMd5 = value
                }
                if let value = dict["FaceUrl"] as? String {
                    self.faceUrl = value
                }
                if let value = dict["FeatureDTOList"] as? [Any?] {
                    var tmp : [QueryFaceUserBatchResponseBody.Data.FacePicList.FeatureDTOList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryFaceUserBatchResponseBody.Data.FacePicList.FeatureDTOList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.featureDTOList = tmp
                }
            }
        }
        public var createTime: Int64?

        public var customUserId: String?

        public var facePicList: [QueryFaceUserBatchResponseBody.Data.FacePicList]?

        public var modifyTime: Int64?

        public var name: String?

        public var params: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customUserId != nil {
                map["CustomUserId"] = self.customUserId!
            }
            if self.facePicList != nil {
                var tmp : [Any] = []
                for k in self.facePicList! {
                    tmp.append(k.toMap())
                }
                map["FacePicList"] = tmp
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["CustomUserId"] as? String {
                self.customUserId = value
            }
            if let value = dict["FacePicList"] as? [Any?] {
                var tmp : [QueryFaceUserBatchResponseBody.Data.FacePicList] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceUserBatchResponseBody.Data.FacePicList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.facePicList = tmp
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: [QueryFaceUserBatchResponseBody.Data]?

    public var errorMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryFaceUserBatchResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryFaceUserBatchResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceUserBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceUserBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceUserBatchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceUserByNameRequest : Tea.TeaModel {
    public var isolationId: String?

    public var name: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var params: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
    }
}

public class QueryFaceUserByNameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class FacePicList : Tea.TeaModel {
                public class FeatureDTOList : Tea.TeaModel {
                    public var algorithmName: String?

                    public var algorithmProvider: String?

                    public var algorithmVersion: String?

                    public var errorCode: String?

                    public var errorMessage: String?

                    public var faceMd5: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.algorithmName != nil {
                            map["AlgorithmName"] = self.algorithmName!
                        }
                        if self.algorithmProvider != nil {
                            map["AlgorithmProvider"] = self.algorithmProvider!
                        }
                        if self.algorithmVersion != nil {
                            map["AlgorithmVersion"] = self.algorithmVersion!
                        }
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.errorMessage != nil {
                            map["ErrorMessage"] = self.errorMessage!
                        }
                        if self.faceMd5 != nil {
                            map["FaceMd5"] = self.faceMd5!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AlgorithmName"] as? String {
                            self.algorithmName = value
                        }
                        if let value = dict["AlgorithmProvider"] as? String {
                            self.algorithmProvider = value
                        }
                        if let value = dict["AlgorithmVersion"] as? String {
                            self.algorithmVersion = value
                        }
                        if let value = dict["ErrorCode"] as? String {
                            self.errorCode = value
                        }
                        if let value = dict["ErrorMessage"] as? String {
                            self.errorMessage = value
                        }
                        if let value = dict["FaceMd5"] as? String {
                            self.faceMd5 = value
                        }
                    }
                }
                public var faceMd5: String?

                public var faceUrl: String?

                public var featureDTOList: [QueryFaceUserByNameResponseBody.Data.List.FacePicList.FeatureDTOList]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.faceMd5 != nil {
                        map["FaceMd5"] = self.faceMd5!
                    }
                    if self.faceUrl != nil {
                        map["FaceUrl"] = self.faceUrl!
                    }
                    if self.featureDTOList != nil {
                        var tmp : [Any] = []
                        for k in self.featureDTOList! {
                            tmp.append(k.toMap())
                        }
                        map["FeatureDTOList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FaceMd5"] as? String {
                        self.faceMd5 = value
                    }
                    if let value = dict["FaceUrl"] as? String {
                        self.faceUrl = value
                    }
                    if let value = dict["FeatureDTOList"] as? [Any?] {
                        var tmp : [QueryFaceUserByNameResponseBody.Data.List.FacePicList.FeatureDTOList] = []
                        for v in value {
                            if v != nil {
                                var model = QueryFaceUserByNameResponseBody.Data.List.FacePicList.FeatureDTOList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.featureDTOList = tmp
                    }
                }
            }
            public var createTime: Int64?

            public var customUserId: String?

            public var facePicList: [QueryFaceUserByNameResponseBody.Data.List.FacePicList]?

            public var modifyTime: Int64?

            public var name: String?

            public var params: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customUserId != nil {
                    map["CustomUserId"] = self.customUserId!
                }
                if self.facePicList != nil {
                    var tmp : [Any] = []
                    for k in self.facePicList! {
                        tmp.append(k.toMap())
                    }
                    map["FacePicList"] = tmp
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["CustomUserId"] as? String {
                    self.customUserId = value
                }
                if let value = dict["FacePicList"] as? [Any?] {
                    var tmp : [QueryFaceUserByNameResponseBody.Data.List.FacePicList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryFaceUserByNameResponseBody.Data.List.FacePicList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.facePicList = tmp
                }
                if let value = dict["ModifyTime"] as? Int64 {
                    self.modifyTime = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Params"] as? String {
                    self.params = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var list: [QueryFaceUserByNameResponseBody.Data.List]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryFaceUserByNameResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceUserByNameResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceUserByNameResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceUserByNameResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceUserByNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceUserByNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceUserByNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceUserGroupRequest : Tea.TeaModel {
    public var isolationId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryFaceUserGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UserGroupList : Tea.TeaModel {
            public var modifiedTime: String?

            public var userGroupId: String?

            public var userGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                if self.userGroupName != nil {
                    map["UserGroupName"] = self.userGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["UserGroupId"] as? String {
                    self.userGroupId = value
                }
                if let value = dict["UserGroupName"] as? String {
                    self.userGroupName = value
                }
            }
        }
        public var pageNo: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public var userGroupList: [QueryFaceUserGroupResponseBody.Data.UserGroupList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.userGroupList != nil {
                var tmp : [Any] = []
                for k in self.userGroupList! {
                    tmp.append(k.toMap())
                }
                map["UserGroupList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
            if let value = dict["UserGroupList"] as? [Any?] {
                var tmp : [QueryFaceUserGroupResponseBody.Data.UserGroupList] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceUserGroupResponseBody.Data.UserGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userGroupList = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryFaceUserGroupResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceUserGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceUserGroupAndDeviceGroupRelationRequest : Tea.TeaModel {
    public var controlId: String?

    public var isolationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlId != nil {
            map["ControlId"] = self.controlId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlId"] as? String {
            self.controlId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
    }
}

public class QueryFaceUserGroupAndDeviceGroupRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var controlId: String?

        public var controlType: String?

        public var deviceGroupId: String?

        public var modifiedTime: String?

        public var userGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.controlId != nil {
                map["ControlId"] = self.controlId!
            }
            if self.controlType != nil {
                map["ControlType"] = self.controlType!
            }
            if self.deviceGroupId != nil {
                map["DeviceGroupId"] = self.deviceGroupId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ControlId"] as? String {
                self.controlId = value
            }
            if let value = dict["ControlType"] as? String {
                self.controlType = value
            }
            if let value = dict["DeviceGroupId"] as? String {
                self.deviceGroupId = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceUserGroupAndDeviceGroupRelationResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceUserGroupAndDeviceGroupRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceUserGroupAndDeviceGroupRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceUserIdByCustomUserIdRequest : Tea.TeaModel {
    public var customUserId: String?

    public var isolationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customUserId != nil {
            map["CustomUserId"] = self.customUserId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomUserId"] as? String {
            self.customUserId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
    }
}

public class QueryFaceUserIdByCustomUserIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customUserId: String?

        public var name: String?

        public var params: String?

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
            if self.customUserId != nil {
                map["CustomUserId"] = self.customUserId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomUserId"] as? String {
                self.customUserId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: QueryFaceUserIdByCustomUserIdResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryFaceUserIdByCustomUserIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryFaceUserIdByCustomUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceUserIdByCustomUserIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryFaceUserIdByCustomUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryGbSubDeviceListRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pageSize: Int32?

    public var pageStart: Int32?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pageStart != nil {
            map["PageStart"] = self.pageStart!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PageStart"] as? Int32 {
            self.pageStart = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryGbSubDeviceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GbSubDeviceList : Tea.TeaModel {
            public var deviceEnable: Int32?

            public var deviceId: String?

            public var deviceName: String?

            public var iotId: String?

            public var productKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceEnable != nil {
                    map["DeviceEnable"] = self.deviceEnable!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.deviceName != nil {
                    map["DeviceName"] = self.deviceName!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.productKey != nil {
                    map["ProductKey"] = self.productKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceEnable"] as? Int32 {
                    self.deviceEnable = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["DeviceName"] as? String {
                    self.deviceName = value
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["ProductKey"] as? String {
                    self.productKey = value
                }
            }
        }
        public var gbSubDeviceList: [QueryGbSubDeviceListResponseBody.Data.GbSubDeviceList]?

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
            if self.gbSubDeviceList != nil {
                var tmp : [Any] = []
                for k in self.gbSubDeviceList! {
                    tmp.append(k.toMap())
                }
                map["GbSubDeviceList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GbSubDeviceList"] as? [Any?] {
                var tmp : [QueryGbSubDeviceListResponseBody.Data.GbSubDeviceList] = []
                for v in value {
                    if v != nil {
                        var model = QueryGbSubDeviceListResponseBody.Data.GbSubDeviceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.gbSubDeviceList = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryGbSubDeviceListResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryGbSubDeviceListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryGbSubDeviceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGbSubDeviceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryGbSubDeviceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryLiveStreamingRequest : Tea.TeaModel {
    public var cacheDuration: Int32?

    public var deviceName: String?

    public var enableStun: Bool?

    public var encryptType: Int32?

    public var forceIFrame: Bool?

    public var iotId: String?

    public var iotInstanceId: String?

    public var playUnLimited: Bool?

    public var productKey: String?

    public var scheme: String?

    public var shouldEncrypt: Bool?

    public var streamType: Int32?

    public var urlValidDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheDuration != nil {
            map["CacheDuration"] = self.cacheDuration!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.enableStun != nil {
            map["EnableStun"] = self.enableStun!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.forceIFrame != nil {
            map["ForceIFrame"] = self.forceIFrame!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.playUnLimited != nil {
            map["PlayUnLimited"] = self.playUnLimited!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.scheme != nil {
            map["Scheme"] = self.scheme!
        }
        if self.shouldEncrypt != nil {
            map["ShouldEncrypt"] = self.shouldEncrypt!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        if self.urlValidDuration != nil {
            map["UrlValidDuration"] = self.urlValidDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheDuration"] as? Int32 {
            self.cacheDuration = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EnableStun"] as? Bool {
            self.enableStun = value
        }
        if let value = dict["EncryptType"] as? Int32 {
            self.encryptType = value
        }
        if let value = dict["ForceIFrame"] as? Bool {
            self.forceIFrame = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PlayUnLimited"] as? Bool {
            self.playUnLimited = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["Scheme"] as? String {
            self.scheme = value
        }
        if let value = dict["ShouldEncrypt"] as? Bool {
            self.shouldEncrypt = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
        if let value = dict["UrlValidDuration"] as? Int32 {
            self.urlValidDuration = value
        }
    }
}

public class QueryLiveStreamingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var path: String?

        public var relayDecryptKey: String?

        public var stunInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.relayDecryptKey != nil {
                map["RelayDecryptKey"] = self.relayDecryptKey!
            }
            if self.stunInfo != nil {
                map["StunInfo"] = self.stunInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["RelayDecryptKey"] as? String {
                self.relayDecryptKey = value
            }
            if let value = dict["StunInfo"] as? String {
                self.stunInfo = value
            }
        }
    }
    public var code: String?

    public var data: QueryLiveStreamingResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryLiveStreamingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryLiveStreamingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLiveStreamingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryLiveStreamingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryLocalFileUploadJobRequest : Tea.TeaModel {
    public var iotInstanceId: String?

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
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class QueryLocalFileUploadJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultList : Tea.TeaModel {
            public class FileList : Tea.TeaModel {
                public var fileEndTime: Int32?

                public var fileName: String?

                public var fileStartTime: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileEndTime != nil {
                        map["FileEndTime"] = self.fileEndTime!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileStartTime != nil {
                        map["FileStartTime"] = self.fileStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FileEndTime"] as? Int32 {
                        self.fileEndTime = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileStartTime"] as? Int32 {
                        self.fileStartTime = value
                    }
                }
            }
            public var code: Int32?

            public var deviceName: String?

            public var fileList: [QueryLocalFileUploadJobResponseBody.Data.ResultList.FileList]?

            public var iotId: String?

            public var productKey: String?

            public var slotEndTime: Int32?

            public var slotStartTime: Int32?

            public var slotStatus: Int32?

            public override init() {
                super.init()
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
                if self.deviceName != nil {
                    map["DeviceName"] = self.deviceName!
                }
                if self.fileList != nil {
                    var tmp : [Any] = []
                    for k in self.fileList! {
                        tmp.append(k.toMap())
                    }
                    map["FileList"] = tmp
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.productKey != nil {
                    map["ProductKey"] = self.productKey!
                }
                if self.slotEndTime != nil {
                    map["SlotEndTime"] = self.slotEndTime!
                }
                if self.slotStartTime != nil {
                    map["SlotStartTime"] = self.slotStartTime!
                }
                if self.slotStatus != nil {
                    map["SlotStatus"] = self.slotStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? Int32 {
                    self.code = value
                }
                if let value = dict["DeviceName"] as? String {
                    self.deviceName = value
                }
                if let value = dict["FileList"] as? [Any?] {
                    var tmp : [QueryLocalFileUploadJobResponseBody.Data.ResultList.FileList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryLocalFileUploadJobResponseBody.Data.ResultList.FileList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fileList = tmp
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["ProductKey"] as? String {
                    self.productKey = value
                }
                if let value = dict["SlotEndTime"] as? Int32 {
                    self.slotEndTime = value
                }
                if let value = dict["SlotStartTime"] as? Int32 {
                    self.slotStartTime = value
                }
                if let value = dict["SlotStatus"] as? Int32 {
                    self.slotStatus = value
                }
            }
        }
        public var resultList: [QueryLocalFileUploadJobResponseBody.Data.ResultList]?

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
            if self.resultList != nil {
                var tmp : [Any] = []
                for k in self.resultList! {
                    tmp.append(k.toMap())
                }
                map["ResultList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultList"] as? [Any?] {
                var tmp : [QueryLocalFileUploadJobResponseBody.Data.ResultList] = []
                for v in value {
                    if v != nil {
                        var model = QueryLocalFileUploadJobResponseBody.Data.ResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resultList = tmp
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: QueryLocalFileUploadJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryLocalFileUploadJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryLocalFileUploadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLocalFileUploadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryLocalFileUploadJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMonthRecordRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var month: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.month != nil {
            map["Month"] = self.month!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["Month"] as? String {
            self.month = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryMonthRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryMonthRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMonthRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryMonthRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPictureFilesRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var currentPage: Int32?

    public var deviceName: String?

    public var endTime: Int64?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pageSize: Int32?

    public var pictureSource: Int32?

    public var pictureType: Int32?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pictureSource != nil {
            map["PictureSource"] = self.pictureSource!
        }
        if self.pictureType != nil {
            map["PictureType"] = self.pictureType!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PictureSource"] as? Int32 {
            self.pictureSource = value
        }
        if let value = dict["PictureType"] as? Int32 {
            self.pictureType = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryPictureFilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var iotId: String?

            public var picCreateTime: Int64?

            public var picId: String?

            public var picUrl: String?

            public var thumbUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.picCreateTime != nil {
                    map["PicCreateTime"] = self.picCreateTime!
                }
                if self.picId != nil {
                    map["PicId"] = self.picId!
                }
                if self.picUrl != nil {
                    map["PicUrl"] = self.picUrl!
                }
                if self.thumbUrl != nil {
                    map["ThumbUrl"] = self.thumbUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["PicCreateTime"] as? Int64 {
                    self.picCreateTime = value
                }
                if let value = dict["PicId"] as? String {
                    self.picId = value
                }
                if let value = dict["PicUrl"] as? String {
                    self.picUrl = value
                }
                if let value = dict["ThumbUrl"] as? String {
                    self.thumbUrl = value
                }
            }
        }
        public var list: [QueryPictureFilesResponseBody.Data.List]?

        public var page: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryPictureFilesResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryPictureFilesResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
        }
    }
    public var code: String?

    public var data: QueryPictureFilesResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryPictureFilesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPictureFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPictureFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPictureFilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPictureSearchAiboxesRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var currentPage: Int32?

    public var iotInstanceId: String?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryPictureSearchAiboxesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var iotId: String?

            public var nickName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [QueryPictureSearchAiboxesResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [QueryPictureSearchAiboxesResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = QueryPictureSearchAiboxesResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryPictureSearchAiboxesResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryPictureSearchAiboxesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPictureSearchAiboxesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPictureSearchAiboxesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPictureSearchAiboxesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPictureSearchAppsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var iotInstanceId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryPictureSearchAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var appInstanceId: String?

            public var appTemplateId: String?

            public var createTime: Int64?

            public var description_: String?

            public var modifiedTime: Int64?

            public var name: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appInstanceId != nil {
                    map["AppInstanceId"] = self.appInstanceId!
                }
                if self.appTemplateId != nil {
                    map["AppTemplateId"] = self.appTemplateId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppInstanceId"] as? String {
                    self.appInstanceId = value
                }
                if let value = dict["AppTemplateId"] as? String {
                    self.appTemplateId = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ModifiedTime"] as? Int64 {
                    self.modifiedTime = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [QueryPictureSearchAppsResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [QueryPictureSearchAppsResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = QueryPictureSearchAppsResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryPictureSearchAppsResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryPictureSearchAppsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPictureSearchAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPictureSearchAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPictureSearchAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPictureSearchDevicesRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var currentPage: Int32?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryPictureSearchDevicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var iotId: String?

            public var nickName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [QueryPictureSearchDevicesResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [QueryPictureSearchDevicesResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = QueryPictureSearchDevicesResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryPictureSearchDevicesResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryPictureSearchDevicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPictureSearchDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPictureSearchDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPictureSearchDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPictureSearchJobRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var currentPage: Int32?

    public var jobStatus: Int32?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["JobStatus"] as? Int32 {
            self.jobStatus = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryPictureSearchJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var createTime: Int64?

            public var endTime: Int64?

            public var jobId: String?

            public var jobStatus: Int32?

            public var searchPicUrl: String?

            public var startTime: Int64?

            public var threshold: Double?

            public override init() {
                super.init()
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
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobStatus != nil {
                    map["JobStatus"] = self.jobStatus!
                }
                if self.searchPicUrl != nil {
                    map["SearchPicUrl"] = self.searchPicUrl!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobStatus"] as? Int32 {
                    self.jobStatus = value
                }
                if let value = dict["SearchPicUrl"] as? String {
                    self.searchPicUrl = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Threshold"] as? Double {
                    self.threshold = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [QueryPictureSearchJobResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [QueryPictureSearchJobResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = QueryPictureSearchJobResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryPictureSearchJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryPictureSearchJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPictureSearchJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPictureSearchJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPictureSearchJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPictureSearchJobResultRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var currentPage: Int32?

    public var jobId: String?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryPictureSearchJobResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var deviceNickName: String?

            public var eventTime: Int64?

            public var gatewayIotId: String?

            public var iotId: String?

            public var picUrl: String?

            public var threshold: Double?

            public var vectorId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceNickName != nil {
                    map["DeviceNickName"] = self.deviceNickName!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.gatewayIotId != nil {
                    map["GatewayIotId"] = self.gatewayIotId!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.picUrl != nil {
                    map["PicUrl"] = self.picUrl!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                if self.vectorId != nil {
                    map["VectorId"] = self.vectorId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceNickName"] as? String {
                    self.deviceNickName = value
                }
                if let value = dict["EventTime"] as? Int64 {
                    self.eventTime = value
                }
                if let value = dict["GatewayIotId"] as? String {
                    self.gatewayIotId = value
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["PicUrl"] as? String {
                    self.picUrl = value
                }
                if let value = dict["Threshold"] as? Double {
                    self.threshold = value
                }
                if let value = dict["VectorId"] as? String {
                    self.vectorId = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageCount: Int32?

        public var pageData: [QueryPictureSearchJobResultResponseBody.Data.PageData]?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [QueryPictureSearchJobResultResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = QueryPictureSearchJobResultResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryPictureSearchJobResultResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryPictureSearchJobResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPictureSearchJobResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPictureSearchJobResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPictureSearchJobResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordRequest : Tea.TeaModel {
    public var beginTime: Int32?

    public var currentPage: Int32?

    public var deviceName: String?

    public var endTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var needSnapshot: Bool?

    public var pageSize: Int32?

    public var productKey: String?

    public var recordType: Int32?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.needSnapshot != nil {
            map["NeedSnapshot"] = self.needSnapshot!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.recordType != nil {
            map["RecordType"] = self.recordType!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int32 {
            self.beginTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["NeedSnapshot"] as? Bool {
            self.needSnapshot = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["RecordType"] as? Int32 {
            self.recordType = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class QueryRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var beginTime: String?

            public var endTime: String?

            public var eventType: Int32?

            public var fileName: String?

            public var fileSize: Int32?

            public var recordType: Int32?

            public var snapshotUrl: String?

            public var streamType: Int32?

            public var videoFrameNumber: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginTime != nil {
                    map["BeginTime"] = self.beginTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.snapshotUrl != nil {
                    map["SnapshotUrl"] = self.snapshotUrl!
                }
                if self.streamType != nil {
                    map["StreamType"] = self.streamType!
                }
                if self.videoFrameNumber != nil {
                    map["VideoFrameNumber"] = self.videoFrameNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTime"] as? String {
                    self.beginTime = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["EventType"] as? Int32 {
                    self.eventType = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileSize"] as? Int32 {
                    self.fileSize = value
                }
                if let value = dict["RecordType"] as? Int32 {
                    self.recordType = value
                }
                if let value = dict["SnapshotUrl"] as? String {
                    self.snapshotUrl = value
                }
                if let value = dict["StreamType"] as? Int32 {
                    self.streamType = value
                }
                if let value = dict["VideoFrameNumber"] as? Int32 {
                    self.videoFrameNumber = value
                }
            }
        }
        public var list: [QueryRecordResponseBody.Data.List]?

        public var page: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryRecordResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryRecordResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecordResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordByRecordIdRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["RecordId"] as? String {
            self.recordId = value
        }
    }
}

public class QueryRecordByRecordIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var beginTime: String?

        public var endTime: String?

        public var fileName: String?

        public var vodUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.vodUrl != nil {
                map["VodUrl"] = self.vodUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginTime"] as? String {
                self.beginTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["VodUrl"] as? String {
                self.vodUrl = value
            }
        }
    }
    public var code: String?

    public var data: [QueryRecordByRecordIdResponseBody.Data]?

    public var errorMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryRecordByRecordIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryRecordByRecordIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordByRecordIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordByRecordIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordByRecordIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordDownloadJobByIdRequest : Tea.TeaModel {
    public var iotInstanceId: String?

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
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class QueryRecordDownloadJobByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var beginTime: Int32?

        public var endTime: Int32?

        public var fileName: String?

        public var iotId: String?

        public var jobErrorCode: Int32?

        public var progress: Int32?

        public var recordType: Int32?

        public var status: Int32?

        public var streamType: Int32?

        public var type: Int32?

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
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            if self.jobErrorCode != nil {
                map["JobErrorCode"] = self.jobErrorCode!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.recordType != nil {
                map["RecordType"] = self.recordType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.streamType != nil {
                map["StreamType"] = self.streamType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginTime"] as? Int32 {
                self.beginTime = value
            }
            if let value = dict["EndTime"] as? Int32 {
                self.endTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["IotId"] as? String {
                self.iotId = value
            }
            if let value = dict["JobErrorCode"] as? Int32 {
                self.jobErrorCode = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["RecordType"] as? Int32 {
                self.recordType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StreamType"] as? Int32 {
                self.streamType = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecordDownloadJobByIdResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordDownloadJobByIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordDownloadJobByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordDownloadJobByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordDownloadJobByIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordDownloadJobListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var pageSize: Int32?

    public var productKey: String?

    public override init() {
        super.init()
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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryRecordDownloadJobListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobList : Tea.TeaModel {
            public var beginTime: Int32?

            public var endTime: Int32?

            public var fileName: String?

            public var iotId: String?

            public var jobErrorCode: Int32?

            public var jobId: String?

            public var progress: Int32?

            public var recordType: Int32?

            public var status: Int32?

            public var streamType: Int32?

            public var type: Int32?

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
                if self.beginTime != nil {
                    map["BeginTime"] = self.beginTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.jobErrorCode != nil {
                    map["JobErrorCode"] = self.jobErrorCode!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.streamType != nil {
                    map["StreamType"] = self.streamType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTime"] as? Int32 {
                    self.beginTime = value
                }
                if let value = dict["EndTime"] as? Int32 {
                    self.endTime = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["JobErrorCode"] as? Int32 {
                    self.jobErrorCode = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["RecordType"] as? Int32 {
                    self.recordType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["StreamType"] as? Int32 {
                    self.streamType = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var jobList: [QueryRecordDownloadJobListResponseBody.Data.JobList]?

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
            if self.jobList != nil {
                var tmp : [Any] = []
                for k in self.jobList! {
                    tmp.append(k.toMap())
                }
                map["JobList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobList"] as? [Any?] {
                var tmp : [QueryRecordDownloadJobListResponseBody.Data.JobList] = []
                for v in value {
                    if v != nil {
                        var model = QueryRecordDownloadJobListResponseBody.Data.JobList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobList = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecordDownloadJobListResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordDownloadJobListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordDownloadJobListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordDownloadJobListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordDownloadJobListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordDownloadUrlRequest : Tea.TeaModel {
    public var deviceName: String?

    public var fileName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryRecordDownloadUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var progress: Int32?

        public var status: Int32?

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
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecordDownloadUrlResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordDownloadUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordDownloadUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordDownloadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordPlanDetailRequest : Tea.TeaModel {
    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class QueryRecordPlanDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplateInfo : Tea.TeaModel {
            public class TimeSectionList : Tea.TeaModel {
                public var begin: Int32?

                public var dayOfWeek: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.dayOfWeek != nil {
                        map["DayOfWeek"] = self.dayOfWeek!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["DayOfWeek"] as? Int32 {
                        self.dayOfWeek = value
                    }
                    if let value = dict["End"] as? Int32 {
                        self.end = value
                    }
                }
            }
            public var allDay: Int32?

            public var default_: Int32?

            public var name: String?

            public var templateId: String?

            public var timeSectionList: [QueryRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allDay != nil {
                    map["AllDay"] = self.allDay!
                }
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.timeSectionList != nil {
                    var tmp : [Any] = []
                    for k in self.timeSectionList! {
                        tmp.append(k.toMap())
                    }
                    map["TimeSectionList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllDay"] as? Int32 {
                    self.allDay = value
                }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TimeSectionList"] as? [Any?] {
                    var tmp : [QueryRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timeSectionList = tmp
                }
            }
        }
        public var name: String?

        public var planId: String?

        public var templateId: String?

        public var templateInfo: QueryRecordPlanDetailResponseBody.Data.TemplateInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.templateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateInfo != nil {
                map["TemplateInfo"] = self.templateInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateInfo"] as? [String: Any?] {
                var model = QueryRecordPlanDetailResponseBody.Data.TemplateInfo()
                model.fromMap(value)
                self.templateInfo = model
            }
        }
    }
    public var code: String?

    public var data: QueryRecordPlanDetailResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordPlanDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordPlanDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordPlanDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordPlanDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordPlanDeviceByDeviceRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class QueryRecordPlanDeviceByDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplateInfo : Tea.TeaModel {
            public class TimeSectionList : Tea.TeaModel {
                public var begin: Int32?

                public var dayOfWeek: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.dayOfWeek != nil {
                        map["DayOfWeek"] = self.dayOfWeek!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["DayOfWeek"] as? Int32 {
                        self.dayOfWeek = value
                    }
                    if let value = dict["End"] as? Int32 {
                        self.end = value
                    }
                }
            }
            public var allDay: Int32?

            public var default_: Int32?

            public var name: String?

            public var templateId: String?

            public var timeSectionList: [QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allDay != nil {
                    map["AllDay"] = self.allDay!
                }
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.timeSectionList != nil {
                    var tmp : [Any] = []
                    for k in self.timeSectionList! {
                        tmp.append(k.toMap())
                    }
                    map["TimeSectionList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllDay"] as? Int32 {
                    self.allDay = value
                }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TimeSectionList"] as? [Any?] {
                    var tmp : [QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timeSectionList = tmp
                }
            }
        }
        public var name: String?

        public var planId: String?

        public var templateId: String?

        public var templateInfo: QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.templateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateInfo != nil {
                map["TemplateInfo"] = self.templateInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateInfo"] as? [String: Any?] {
                var model = QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo()
                model.fromMap(value)
                self.templateInfo = model
            }
        }
    }
    public var code: String?

    public var data: QueryRecordPlanDeviceByDeviceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordPlanDeviceByDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordPlanDeviceByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordPlanDeviceByDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordPlanDeviceByDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordPlanDeviceByPlanRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var planId: String?

    public override init() {
        super.init()
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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class QueryRecordPlanDeviceByPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var iotId: String?

            public var streamType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.streamType != nil {
                    map["StreamType"] = self.streamType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IotId"] as? String {
                    self.iotId = value
                }
                if let value = dict["StreamType"] as? Int32 {
                    self.streamType = value
                }
            }
        }
        public var list: [QueryRecordPlanDeviceByPlanResponseBody.Data.List]?

        public var page: Int32?

        public var pageCount: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryRecordPlanDeviceByPlanResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryRecordPlanDeviceByPlanResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecordPlanDeviceByPlanResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordPlanDeviceByPlanResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordPlanDeviceByPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordPlanDeviceByPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordPlanDeviceByPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordPlansRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryRecordPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var name: String?

            public var planId: String?

            public var templateId: String?

            public override init() {
                super.init()
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
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PlanId"] as? String {
                    self.planId = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
            }
        }
        public var list: [QueryRecordPlansResponseBody.Data.List]?

        public var page: Int32?

        public var pageCount: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryRecordPlansResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryRecordPlansResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryRecordPlansResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRecordPlansResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordUrlRequest : Tea.TeaModel {
    public var deviceName: String?

    public var fileName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var seekTime: Int32?

    public var urlValidDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.seekTime != nil {
            map["SeekTime"] = self.seekTime!
        }
        if self.urlValidDuration != nil {
            map["UrlValidDuration"] = self.urlValidDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["SeekTime"] as? Int32 {
            self.seekTime = value
        }
        if let value = dict["UrlValidDuration"] as? Int32 {
            self.urlValidDuration = value
        }
    }
}

public class QueryRecordUrlResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRecordUrlByTimeRequest : Tea.TeaModel {
    public var beginTime: Int32?

    public var deviceName: String?

    public var endTime: Int32?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public var urlValidDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        if self.urlValidDuration != nil {
            map["UrlValidDuration"] = self.urlValidDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int32 {
            self.beginTime = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
        if let value = dict["UrlValidDuration"] as? Int32 {
            self.urlValidDuration = value
        }
    }
}

public class QueryRecordUrlByTimeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRecordUrlByTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordUrlByTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordUrlByTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRtmpKeyRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryRtmpKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pullAuthKey: String?

        public var pullKeyExpireTime: Int32?

        public var pushAuthKey: String?

        public var pushKeyExpireTime: Int32?

        public var streamName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pullAuthKey != nil {
                map["PullAuthKey"] = self.pullAuthKey!
            }
            if self.pullKeyExpireTime != nil {
                map["PullKeyExpireTime"] = self.pullKeyExpireTime!
            }
            if self.pushAuthKey != nil {
                map["PushAuthKey"] = self.pushAuthKey!
            }
            if self.pushKeyExpireTime != nil {
                map["PushKeyExpireTime"] = self.pushKeyExpireTime!
            }
            if self.streamName != nil {
                map["StreamName"] = self.streamName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PullAuthKey"] as? String {
                self.pullAuthKey = value
            }
            if let value = dict["PullKeyExpireTime"] as? Int32 {
                self.pullKeyExpireTime = value
            }
            if let value = dict["PushAuthKey"] as? String {
                self.pushAuthKey = value
            }
            if let value = dict["PushKeyExpireTime"] as? Int32 {
                self.pushKeyExpireTime = value
            }
            if let value = dict["StreamName"] as? String {
                self.streamName = value
            }
        }
    }
    public var code: String?

    public var data: QueryRtmpKeyResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryRtmpKeyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRtmpKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRtmpKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRtmpKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryStreamPushJobRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var jobId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryStreamPushJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int32?

        public var jobType: Int32?

        public var pushStatus: Int32?

        public var pushUrl: String?

        public var streamType: Int32?

        public override init() {
            super.init()
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
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.pushStatus != nil {
                map["PushStatus"] = self.pushStatus!
            }
            if self.pushUrl != nil {
                map["PushUrl"] = self.pushUrl!
            }
            if self.streamType != nil {
                map["StreamType"] = self.streamType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int32 {
                self.createTime = value
            }
            if let value = dict["JobType"] as? Int32 {
                self.jobType = value
            }
            if let value = dict["PushStatus"] as? Int32 {
                self.pushStatus = value
            }
            if let value = dict["PushUrl"] as? String {
                self.pushUrl = value
            }
            if let value = dict["StreamType"] as? Int32 {
                self.streamType = value
            }
        }
    }
    public var code: String?

    public var data: QueryStreamPushJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryStreamPushJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryStreamPushJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryStreamPushJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryStreamPushJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryStreamPushJobListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var jobType: Int32?

    public var pageSize: Int32?

    public var productKey: String?

    public override init() {
        super.init()
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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["JobType"] as? Int32 {
            self.jobType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryStreamPushJobListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobList : Tea.TeaModel {
            public var createTime: Int32?

            public var jobId: String?

            public var jobType: Int32?

            public var pushStatus: Int32?

            public var pushUrl: String?

            public var streamType: Int32?

            public override init() {
                super.init()
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
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.pushStatus != nil {
                    map["PushStatus"] = self.pushStatus!
                }
                if self.pushUrl != nil {
                    map["PushUrl"] = self.pushUrl!
                }
                if self.streamType != nil {
                    map["StreamType"] = self.streamType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int32 {
                    self.createTime = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobType"] as? Int32 {
                    self.jobType = value
                }
                if let value = dict["PushStatus"] as? Int32 {
                    self.pushStatus = value
                }
                if let value = dict["PushUrl"] as? String {
                    self.pushUrl = value
                }
                if let value = dict["StreamType"] as? Int32 {
                    self.streamType = value
                }
            }
        }
        public var jobList: [QueryStreamPushJobListResponseBody.Data.JobList]?

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
            if self.jobList != nil {
                var tmp : [Any] = []
                for k in self.jobList! {
                    tmp.append(k.toMap())
                }
                map["JobList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobList"] as? [Any?] {
                var tmp : [QueryStreamPushJobListResponseBody.Data.JobList] = []
                for v in value {
                    if v != nil {
                        var model = QueryStreamPushJobListResponseBody.Data.JobList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobList = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryStreamPushJobListResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryStreamPushJobListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryStreamPushJobListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryStreamPushJobListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryStreamPushJobListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryStreamSnapshotJobRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryStreamSnapshotJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobList : Tea.TeaModel {
            public var snapshotInterval: Int32?

            public var streamType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.snapshotInterval != nil {
                    map["SnapshotInterval"] = self.snapshotInterval!
                }
                if self.streamType != nil {
                    map["StreamType"] = self.streamType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SnapshotInterval"] as? Int32 {
                    self.snapshotInterval = value
                }
                if let value = dict["StreamType"] as? Int32 {
                    self.streamType = value
                }
            }
        }
        public var jobList: [QueryStreamSnapshotJobResponseBody.Data.JobList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobList != nil {
                var tmp : [Any] = []
                for k in self.jobList! {
                    tmp.append(k.toMap())
                }
                map["JobList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobList"] as? [Any?] {
                var tmp : [QueryStreamSnapshotJobResponseBody.Data.JobList] = []
                for v in value {
                    if v != nil {
                        var model = QueryStreamSnapshotJobResponseBody.Data.JobList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobList = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryStreamSnapshotJobResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryStreamSnapshotJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryStreamSnapshotJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryStreamSnapshotJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryStreamSnapshotJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTimeTemplateRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryTimeTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class TimeSectionList : Tea.TeaModel {
                public var begin: Int32?

                public var dayOfWeek: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.dayOfWeek != nil {
                        map["DayOfWeek"] = self.dayOfWeek!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["DayOfWeek"] as? Int32 {
                        self.dayOfWeek = value
                    }
                    if let value = dict["End"] as? Int32 {
                        self.end = value
                    }
                }
            }
            public var allDay: Int32?

            public var default_: Int32?

            public var name: String?

            public var templateId: String?

            public var timeSectionList: [QueryTimeTemplateResponseBody.Data.List.TimeSectionList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allDay != nil {
                    map["AllDay"] = self.allDay!
                }
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.timeSectionList != nil {
                    var tmp : [Any] = []
                    for k in self.timeSectionList! {
                        tmp.append(k.toMap())
                    }
                    map["TimeSectionList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllDay"] as? Int32 {
                    self.allDay = value
                }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TimeSectionList"] as? [Any?] {
                    var tmp : [QueryTimeTemplateResponseBody.Data.List.TimeSectionList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryTimeTemplateResponseBody.Data.List.TimeSectionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timeSectionList = tmp
                }
            }
        }
        public var list: [QueryTimeTemplateResponseBody.Data.List]?

        public var page: Int32?

        public var pageCount: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryTimeTemplateResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryTimeTemplateResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryTimeTemplateResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryTimeTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryTimeTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTimeTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryTimeTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTimeTemplateDetailRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class QueryTimeTemplateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TimeSectionList : Tea.TeaModel {
            public var begin: Int32?

            public var dayOfWeek: Int32?

            public var end: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["Begin"] = self.begin!
                }
                if self.dayOfWeek != nil {
                    map["DayOfWeek"] = self.dayOfWeek!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Begin"] as? Int32 {
                    self.begin = value
                }
                if let value = dict["DayOfWeek"] as? Int32 {
                    self.dayOfWeek = value
                }
                if let value = dict["End"] as? Int32 {
                    self.end = value
                }
            }
        }
        public var allDay: Int32?

        public var default_: Int32?

        public var name: String?

        public var templateId: String?

        public var timeSectionList: [QueryTimeTemplateDetailResponseBody.Data.TimeSectionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allDay != nil {
                map["AllDay"] = self.allDay!
            }
            if self.default_ != nil {
                map["Default"] = self.default_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.timeSectionList != nil {
                var tmp : [Any] = []
                for k in self.timeSectionList! {
                    tmp.append(k.toMap())
                }
                map["TimeSectionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllDay"] as? Int32 {
                self.allDay = value
            }
            if let value = dict["Default"] as? Int32 {
                self.default_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TimeSectionList"] as? [Any?] {
                var tmp : [QueryTimeTemplateDetailResponseBody.Data.TimeSectionList] = []
                for v in value {
                    if v != nil {
                        var model = QueryTimeTemplateDetailResponseBody.Data.TimeSectionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.timeSectionList = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryTimeTemplateDetailResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryTimeTemplateDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryTimeTemplateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTimeTemplateDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryTimeTemplateDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVisionDeviceInfoRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class QueryVisionDeviceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GbDeviceInfo : Tea.TeaModel {
            public var deviceProtocol: Int32?

            public var gbId: String?

            public var netProtocol: Int32?

            public var nickName: String?

            public var password: String?

            public var subProductKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceProtocol != nil {
                    map["DeviceProtocol"] = self.deviceProtocol!
                }
                if self.gbId != nil {
                    map["GbId"] = self.gbId!
                }
                if self.netProtocol != nil {
                    map["NetProtocol"] = self.netProtocol!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.password != nil {
                    map["Password"] = self.password!
                }
                if self.subProductKey != nil {
                    map["SubProductKey"] = self.subProductKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceProtocol"] as? Int32 {
                    self.deviceProtocol = value
                }
                if let value = dict["GbId"] as? String {
                    self.gbId = value
                }
                if let value = dict["NetProtocol"] as? Int32 {
                    self.netProtocol = value
                }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
                if let value = dict["Password"] as? String {
                    self.password = value
                }
                if let value = dict["SubProductKey"] as? String {
                    self.subProductKey = value
                }
            }
        }
        public class RtmpDeviceInfo : Tea.TeaModel {
            public var pullAuthKey: String?

            public var pullKeyExpireTime: Int32?

            public var pushAuthKey: String?

            public var pushKeyExpireTime: Int32?

            public var pushUrlSample: String?

            public var streamName: String?

            public var streamStatus: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pullAuthKey != nil {
                    map["PullAuthKey"] = self.pullAuthKey!
                }
                if self.pullKeyExpireTime != nil {
                    map["PullKeyExpireTime"] = self.pullKeyExpireTime!
                }
                if self.pushAuthKey != nil {
                    map["PushAuthKey"] = self.pushAuthKey!
                }
                if self.pushKeyExpireTime != nil {
                    map["PushKeyExpireTime"] = self.pushKeyExpireTime!
                }
                if self.pushUrlSample != nil {
                    map["PushUrlSample"] = self.pushUrlSample!
                }
                if self.streamName != nil {
                    map["StreamName"] = self.streamName!
                }
                if self.streamStatus != nil {
                    map["StreamStatus"] = self.streamStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PullAuthKey"] as? String {
                    self.pullAuthKey = value
                }
                if let value = dict["PullKeyExpireTime"] as? Int32 {
                    self.pullKeyExpireTime = value
                }
                if let value = dict["PushAuthKey"] as? String {
                    self.pushAuthKey = value
                }
                if let value = dict["PushKeyExpireTime"] as? Int32 {
                    self.pushKeyExpireTime = value
                }
                if let value = dict["PushUrlSample"] as? String {
                    self.pushUrlSample = value
                }
                if let value = dict["StreamName"] as? String {
                    self.streamName = value
                }
                if let value = dict["StreamStatus"] as? Int32 {
                    self.streamStatus = value
                }
            }
        }
        public var description_: String?

        public var deviceType: Int32?

        public var gbDeviceInfo: QueryVisionDeviceInfoResponseBody.Data.GbDeviceInfo?

        public var rtmpDeviceInfo: QueryVisionDeviceInfoResponseBody.Data.RtmpDeviceInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gbDeviceInfo?.validate()
            try self.rtmpDeviceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.gbDeviceInfo != nil {
                map["GbDeviceInfo"] = self.gbDeviceInfo?.toMap()
            }
            if self.rtmpDeviceInfo != nil {
                map["RtmpDeviceInfo"] = self.rtmpDeviceInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DeviceType"] as? Int32 {
                self.deviceType = value
            }
            if let value = dict["GbDeviceInfo"] as? [String: Any?] {
                var model = QueryVisionDeviceInfoResponseBody.Data.GbDeviceInfo()
                model.fromMap(value)
                self.gbDeviceInfo = model
            }
            if let value = dict["RtmpDeviceInfo"] as? [String: Any?] {
                var model = QueryVisionDeviceInfoResponseBody.Data.RtmpDeviceInfo()
                model.fromMap(value)
                self.rtmpDeviceInfo = model
            }
        }
    }
    public var code: String?

    public var data: QueryVisionDeviceInfoResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryVisionDeviceInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryVisionDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVisionDeviceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVisionDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVoiceIntercomRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var scheme: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.scheme != nil {
            map["Scheme"] = self.scheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["Scheme"] as? String {
            self.scheme = value
        }
    }
}

public class QueryVoiceIntercomResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CryptoKey : Tea.TeaModel {
            public var iv: String?

            public var key: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.iv != nil {
                    map["Iv"] = self.iv!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Iv"] as? String {
                    self.iv = value
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public var cryptoKey: QueryVoiceIntercomResponseBody.Data.CryptoKey?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cryptoKey?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cryptoKey != nil {
                map["CryptoKey"] = self.cryptoKey?.toMap()
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CryptoKey"] as? [String: Any?] {
                var model = QueryVoiceIntercomResponseBody.Data.CryptoKey()
                model.fromMap(value)
                self.cryptoKey = model
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: QueryVoiceIntercomResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = QueryVoiceIntercomResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryVoiceIntercomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVoiceIntercomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVoiceIntercomResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefreshGbSubDeviceListRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class RefreshGbSubDeviceListResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RefreshGbSubDeviceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshGbSubDeviceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefreshGbSubDeviceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveFaceDeviceFromDeviceGroupRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var deviceName: String?

    public var iotInstanceId: String?

    public var isolationId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceGroupId"] as? String {
            self.deviceGroupId = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class RemoveFaceDeviceFromDeviceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveFaceDeviceFromDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveFaceDeviceFromDeviceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveFaceDeviceFromDeviceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveFaceUserFromUserGroupRequest : Tea.TeaModel {
    public var isolationId: String?

    public var userGroupId: String?

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
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class RemoveFaceUserFromUserGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveFaceUserFromUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveFaceUserFromUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveFaceUserFromUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDevicePictureLifeCycleRequest : Tea.TeaModel {
    public var day: Int32?

    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.day != nil {
            map["Day"] = self.day!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Day"] as? Int32 {
            self.day = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class SetDevicePictureLifeCycleResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetDevicePictureLifeCycleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDevicePictureLifeCycleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDevicePictureLifeCycleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDeviceRecordLifeCycleRequest : Tea.TeaModel {
    public var day: Int32?

    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.day != nil {
            map["Day"] = self.day!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Day"] as? Int32 {
            self.day = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class SetDeviceRecordLifeCycleResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetDeviceRecordLifeCycleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDeviceRecordLifeCycleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDeviceRecordLifeCycleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopLiveStreamingRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class StopLiveStreamingResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StopLiveStreamingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLiveStreamingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopLiveStreamingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTriggeredRecordRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["RecordId"] as? String {
            self.recordId = value
        }
    }
}

public class StopTriggeredRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StopTriggeredRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTriggeredRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopTriggeredRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TransferDeviceInstanceRequest : Tea.TeaModel {
    public var deviceNameList: [String]?

    public var productKey: String?

    public var sourceInstanceId: String?

    public var targetInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceNameList != nil {
            map["DeviceNameList"] = self.deviceNameList!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceNameList"] as? [String] {
            self.deviceNameList = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
        }
        if let value = dict["TargetInstanceId"] as? String {
            self.targetInstanceId = value
        }
    }
}

public class TransferDeviceInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FailedList : Tea.TeaModel {
            public var deviceName: String?

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
                if self.deviceName != nil {
                    map["DeviceName"] = self.deviceName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceName"] as? String {
                    self.deviceName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
            }
        }
        public class SuccessList : Tea.TeaModel {
            public var deviceName: String?

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
                if self.deviceName != nil {
                    map["DeviceName"] = self.deviceName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceName"] as? String {
                    self.deviceName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
            }
        }
        public var failedList: [TransferDeviceInstanceResponseBody.Data.FailedList]?

        public var successList: [TransferDeviceInstanceResponseBody.Data.SuccessList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedList != nil {
                var tmp : [Any] = []
                for k in self.failedList! {
                    tmp.append(k.toMap())
                }
                map["FailedList"] = tmp
            }
            if self.successList != nil {
                var tmp : [Any] = []
                for k in self.successList! {
                    tmp.append(k.toMap())
                }
                map["SuccessList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedList"] as? [Any?] {
                var tmp : [TransferDeviceInstanceResponseBody.Data.FailedList] = []
                for v in value {
                    if v != nil {
                        var model = TransferDeviceInstanceResponseBody.Data.FailedList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedList = tmp
            }
            if let value = dict["SuccessList"] as? [Any?] {
                var tmp : [TransferDeviceInstanceResponseBody.Data.SuccessList] = []
                for v in value {
                    if v != nil {
                        var model = TransferDeviceInstanceResponseBody.Data.SuccessList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.successList = tmp
            }
        }
    }
    public var code: String?

    public var data: TransferDeviceInstanceResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = TransferDeviceInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TransferDeviceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferDeviceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TransferDeviceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TriggerCapturePictureRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class TriggerCapturePictureResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TriggerCapturePictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerCapturePictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerCapturePictureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TriggerRecordRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var preRecordDuration: Int32?

    public var productKey: String?

    public var recordDuration: Int32?

    public var streamType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.preRecordDuration != nil {
            map["PreRecordDuration"] = self.preRecordDuration!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.recordDuration != nil {
            map["RecordDuration"] = self.recordDuration!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["PreRecordDuration"] as? Int32 {
            self.preRecordDuration = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["RecordDuration"] as? Int32 {
            self.recordDuration = value
        }
        if let value = dict["StreamType"] as? Int32 {
            self.streamType = value
        }
    }
}

public class TriggerRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TriggerRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindPictureSearchAppWithDevicesRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var deviceIotIds: [String]?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.deviceIotIds != nil {
            map["DeviceIotIds"] = self.deviceIotIds!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["DeviceIotIds"] as? [String] {
            self.deviceIotIds = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
    }
}

public class UnbindPictureSearchAppWithDevicesResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UnbindPictureSearchAppWithDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindPictureSearchAppWithDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindPictureSearchAppWithDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEventRecordPlanRequest : Tea.TeaModel {
    public var eventTypes: String?

    public var name: String?

    public var planId: String?

    public var preRecordDuration: Int32?

    public var recordDuration: Int32?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventTypes != nil {
            map["EventTypes"] = self.eventTypes!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.preRecordDuration != nil {
            map["PreRecordDuration"] = self.preRecordDuration!
        }
        if self.recordDuration != nil {
            map["RecordDuration"] = self.recordDuration!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventTypes"] as? String {
            self.eventTypes = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["PreRecordDuration"] as? Int32 {
            self.preRecordDuration = value
        }
        if let value = dict["RecordDuration"] as? Int32 {
            self.recordDuration = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class UpdateEventRecordPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateEventRecordPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventRecordPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEventRecordPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFaceUserRequest : Tea.TeaModel {
    public var customUserId: String?

    public var facePicUrl: String?

    public var isolationId: String?

    public var name: String?

    public var params: String?

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
        if self.customUserId != nil {
            map["CustomUserId"] = self.customUserId!
        }
        if self.facePicUrl != nil {
            map["FacePicUrl"] = self.facePicUrl!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomUserId"] as? String {
            self.customUserId = value
        }
        if let value = dict["FacePicUrl"] as? String {
            self.facePicUrl = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class UpdateFaceUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateFaceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFaceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFaceUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFaceUserGroupAndDeviceGroupRelationRequest : Tea.TeaModel {
    public var controlId: String?

    public var isolationId: String?

    public var relation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlId != nil {
            map["ControlId"] = self.controlId!
        }
        if self.isolationId != nil {
            map["IsolationId"] = self.isolationId!
        }
        if self.relation != nil {
            map["Relation"] = self.relation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlId"] as? String {
            self.controlId = value
        }
        if let value = dict["IsolationId"] as? String {
            self.isolationId = value
        }
        if let value = dict["Relation"] as? String {
            self.relation = value
        }
    }
}

public class UpdateFaceUserGroupAndDeviceGroupRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var controlId: String?

        public var modifiedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.controlId != nil {
                map["ControlId"] = self.controlId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ControlId"] as? String {
                self.controlId = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
        }
    }
    public var code: String?

    public var data: UpdateFaceUserGroupAndDeviceGroupRelationResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
            var model = UpdateFaceUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateFaceUserGroupAndDeviceGroupRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFaceUserGroupAndDeviceGroupRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGbDeviceRequest : Tea.TeaModel {
    public var description_: String?

    public var deviceName: String?

    public var gbId: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var password: String?

    public var productKey: String?

    public override init() {
        super.init()
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
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["GbId"] as? String {
            self.gbId = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
    }
}

public class UpdateGbDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateGbDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGbDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGbDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceInternetProtocolRequest : Tea.TeaModel {
    public var iotInstanceId: String?

    public var ipVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
    }
}

public class UpdateInstanceInternetProtocolResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceInternetProtocolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceInternetProtocolResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceInternetProtocolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePictureSearchAppRequest : Tea.TeaModel {
    public var appInstanceId: String?

    public var description_: String?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdatePictureSearchAppResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdatePictureSearchAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePictureSearchAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePictureSearchAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRecordPlanRequest : Tea.TeaModel {
    public var name: String?

    public var planId: String?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class UpdateRecordPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateRecordPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecordPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRecordPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRtmpKeyRequest : Tea.TeaModel {
    public var deviceName: String?

    public var iotId: String?

    public var iotInstanceId: String?

    public var productKey: String?

    public var pullAuthKey: String?

    public var pullKeyExpireTime: Int32?

    public var pushAuthKey: String?

    public var pushKeyExpireTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.pullAuthKey != nil {
            map["PullAuthKey"] = self.pullAuthKey!
        }
        if self.pullKeyExpireTime != nil {
            map["PullKeyExpireTime"] = self.pullKeyExpireTime!
        }
        if self.pushAuthKey != nil {
            map["PushAuthKey"] = self.pushAuthKey!
        }
        if self.pushKeyExpireTime != nil {
            map["PushKeyExpireTime"] = self.pushKeyExpireTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IotId"] as? String {
            self.iotId = value
        }
        if let value = dict["IotInstanceId"] as? String {
            self.iotInstanceId = value
        }
        if let value = dict["ProductKey"] as? String {
            self.productKey = value
        }
        if let value = dict["PullAuthKey"] as? String {
            self.pullAuthKey = value
        }
        if let value = dict["PullKeyExpireTime"] as? Int32 {
            self.pullKeyExpireTime = value
        }
        if let value = dict["PushAuthKey"] as? String {
            self.pushAuthKey = value
        }
        if let value = dict["PushKeyExpireTime"] as? Int32 {
            self.pushKeyExpireTime = value
        }
    }
}

public class UpdateRtmpKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateRtmpKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRtmpKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRtmpKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTimeTemplateRequest : Tea.TeaModel {
    public class TimeSections : Tea.TeaModel {
        public var begin: Int32?

        public var dayOfWeek: Int32?

        public var end: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.begin != nil {
                map["Begin"] = self.begin!
            }
            if self.dayOfWeek != nil {
                map["DayOfWeek"] = self.dayOfWeek!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Begin"] as? Int32 {
                self.begin = value
            }
            if let value = dict["DayOfWeek"] as? Int32 {
                self.dayOfWeek = value
            }
            if let value = dict["End"] as? Int32 {
                self.end = value
            }
        }
    }
    public var allDay: Int32?

    public var name: String?

    public var templateId: String?

    public var timeSections: [UpdateTimeTemplateRequest.TimeSections]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allDay != nil {
            map["AllDay"] = self.allDay!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.timeSections != nil {
            var tmp : [Any] = []
            for k in self.timeSections! {
                tmp.append(k.toMap())
            }
            map["TimeSections"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllDay"] as? Int32 {
            self.allDay = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TimeSections"] as? [Any?] {
            var tmp : [UpdateTimeTemplateRequest.TimeSections] = []
            for v in value {
                if v != nil {
                    var model = UpdateTimeTemplateRequest.TimeSections()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeSections = tmp
        }
    }
}

public class UpdateTimeTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateTimeTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTimeTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTimeTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
