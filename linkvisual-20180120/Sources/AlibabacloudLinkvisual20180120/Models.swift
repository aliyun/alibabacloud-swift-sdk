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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddEventRecordPlanDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupName") && dict["DeviceGroupName"] != nil {
            self.deviceGroupName = dict["DeviceGroupName"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
                self.deviceGroupId = dict["DeviceGroupId"] as! String
            }
            if dict.keys.contains("DeviceGroupName") && dict["DeviceGroupName"] != nil {
                self.deviceGroupName = dict["DeviceGroupName"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AddFaceDeviceGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceDeviceToDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
            self.customUserId = dict["CustomUserId"] as! String
        }
        if dict.keys.contains("FacePicUrl") && dict["FacePicUrl"] != nil {
            self.facePicUrl = dict["FacePicUrl"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                self.customUserId = dict["CustomUserId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") && dict["Params"] != nil {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AddFaceUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
            self.userGroupName = dict["UserGroupName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
                self.userGroupName = dict["UserGroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AddFaceUserGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("Relation") && dict["Relation"] != nil {
            self.relation = dict["Relation"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
                self.controlId = dict["ControlId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AddFaceUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FacePicUrl") && dict["FacePicUrl"] != nil {
            self.facePicUrl = dict["FacePicUrl"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceUserPictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddFaceUserToUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddRecordPlanDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceNameList") && dict["DeviceNameList"] != nil {
            self.deviceNameList = dict["DeviceNameList"] as! [String]
        }
        if dict.keys.contains("IotIdList") && dict["IotIdList"] != nil {
            self.iotIdList = dict["IotIdList"] as! [String]
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeviceProtocol") && dict["DeviceProtocol"] != nil {
                        self.deviceProtocol = dict["DeviceProtocol"] as! Int32
                    }
                    if dict.keys.contains("GbId") && dict["GbId"] != nil {
                        self.gbId = dict["GbId"] as! String
                    }
                    if dict.keys.contains("NetProtocol") && dict["NetProtocol"] != nil {
                        self.netProtocol = dict["NetProtocol"] as! Int32
                    }
                    if dict.keys.contains("NickName") && dict["NickName"] != nil {
                        self.nickName = dict["NickName"] as! String
                    }
                    if dict.keys.contains("Password") && dict["Password"] != nil {
                        self.password = dict["Password"] as! String
                    }
                    if dict.keys.contains("SubProductKey") && dict["SubProductKey"] != nil {
                        self.subProductKey = dict["SubProductKey"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PullAuthKey") && dict["PullAuthKey"] != nil {
                        self.pullAuthKey = dict["PullAuthKey"] as! String
                    }
                    if dict.keys.contains("PullKeyExpireTime") && dict["PullKeyExpireTime"] != nil {
                        self.pullKeyExpireTime = dict["PullKeyExpireTime"] as! Int32
                    }
                    if dict.keys.contains("PushAuthKey") && dict["PushAuthKey"] != nil {
                        self.pushAuthKey = dict["PushAuthKey"] as! String
                    }
                    if dict.keys.contains("PushKeyExpireTime") && dict["PushKeyExpireTime"] != nil {
                        self.pushKeyExpireTime = dict["PushKeyExpireTime"] as! Int32
                    }
                    if dict.keys.contains("PushUrlSample") && dict["PushUrlSample"] != nil {
                        self.pushUrlSample = dict["PushUrlSample"] as! String
                    }
                    if dict.keys.contains("StreamName") && dict["StreamName"] != nil {
                        self.streamName = dict["StreamName"] as! String
                    }
                    if dict.keys.contains("StreamStatus") && dict["StreamStatus"] != nil {
                        self.streamStatus = dict["StreamStatus"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                    self.deviceType = dict["DeviceType"] as! Int32
                }
                if dict.keys.contains("GbDeviceInfo") && dict["GbDeviceInfo"] != nil {
                    var model = BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList.GbDeviceInfo()
                    model.fromMap(dict["GbDeviceInfo"] as! [String: Any])
                    self.gbDeviceInfo = model
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("RtmpDeviceInfo") && dict["RtmpDeviceInfo"] != nil {
                    var model = BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList.RtmpDeviceInfo()
                    model.fromMap(dict["RtmpDeviceInfo"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceInfoList") && dict["DeviceInfoList"] != nil {
                var tmp : [BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList] = []
                for v in dict["DeviceInfoList"] as! [Any] {
                    var model = BatchQueryVisionDeviceInfoResponseBody.Data.DeviceInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchQueryVisionDeviceInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchQueryVisionDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("DeviceIotIds") && dict["DeviceIotIds"] != nil {
            self.deviceIotIds = dict["DeviceIotIds"] as! [String]
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BindPictureSearchAppWithDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DoExist") && dict["DoExist"] != nil {
                self.doExist = dict["DoExist"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CheckFaceUserDoExistOnDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckFaceUserDoExistOnDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ClearFaceDeviceDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventTypes") && dict["EventTypes"] != nil {
            self.eventTypes = dict["EventTypes"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PreRecordDuration") && dict["PreRecordDuration"] != nil {
            self.preRecordDuration = dict["PreRecordDuration"] as! Int32
        }
        if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
            self.recordDuration = dict["RecordDuration"] as! Int32
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateEventRecordPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
            self.deviceType = dict["DeviceType"] as! Int32
        }
        if dict.keys.contains("GbId") && dict["GbId"] != nil {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("MediaNetProtocol") && dict["MediaNetProtocol"] != nil {
            self.mediaNetProtocol = dict["MediaNetProtocol"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("SubProductKey") && dict["SubProductKey"] != nil {
            self.subProductKey = dict["SubProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateGbDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateGbDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int32
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
            }
            if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                self.productKey = dict["ProductKey"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("TimeSlot") && dict["TimeSlot"] != nil {
            var tmp : [CreateLocalFileUploadJobRequest.TimeSlot] = []
            for v in dict["TimeSlot"] as! [Any] {
                var model = CreateLocalFileUploadJobRequest.TimeSlot()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateLocalFileUploadJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateLocalFileUploadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateLocalRecordDownloadByTimeJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateLocalRecordDownloadByTimeJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePictureSearchAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("BodyThreshold") && dict["BodyThreshold"] != nil {
            self.bodyThreshold = dict["BodyThreshold"] as! Double
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PictureSearchType") && dict["PictureSearchType"] != nil {
            self.pictureSearchType = dict["PictureSearchType"] as! Int32
        }
        if dict.keys.contains("SearchPicUrl") && dict["SearchPicUrl"] != nil {
            self.searchPicUrl = dict["SearchPicUrl"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
            self.threshold = dict["Threshold"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePictureSearchJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
            self.recordType = dict["RecordType"] as! Int32
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateRecordDownloadByTimeJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRecordDownloadByTimeJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRecordPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("PullAuthKey") && dict["PullAuthKey"] != nil {
            self.pullAuthKey = dict["PullAuthKey"] as! String
        }
        if dict.keys.contains("PullKeyExpireTime") && dict["PullKeyExpireTime"] != nil {
            self.pullKeyExpireTime = dict["PullKeyExpireTime"] as! Int32
        }
        if dict.keys.contains("PushAuthKey") && dict["PushAuthKey"] != nil {
            self.pushAuthKey = dict["PushAuthKey"] as! String
        }
        if dict.keys.contains("PushKeyExpireTime") && dict["PushKeyExpireTime"] != nil {
            self.pushKeyExpireTime = dict["PushKeyExpireTime"] as! Int32
        }
        if dict.keys.contains("SubStreamName") && dict["SubStreamName"] != nil {
            self.subStreamName = dict["SubStreamName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
            }
            if dict.keys.contains("StreamName") && dict["StreamName"] != nil {
                self.streamName = dict["StreamName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateRtmpDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRtmpDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("PushUrl") && dict["PushUrl"] != nil {
            self.pushUrl = dict["PushUrl"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateStreamPushJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateStreamPushJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("SnapshotInterval") && dict["SnapshotInterval"] != nil {
            self.snapshotInterval = dict["SnapshotInterval"] as! Int32
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateStreamSnapshotJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Begin") && dict["Begin"] != nil {
                self.begin = dict["Begin"] as! Int32
            }
            if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                self.dayOfWeek = dict["DayOfWeek"] as! Int32
            }
            if dict.keys.contains("End") && dict["End"] != nil {
                self.end = dict["End"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
            self.allDay = dict["AllDay"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TimeSections") && dict["TimeSections"] != nil {
            var tmp : [CreateTimeTemplateRequest.TimeSections] = []
            for v in dict["TimeSections"] as! [Any] {
                var model = CreateTimeTemplateRequest.TimeSections()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTimeTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEventRecordPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEventRecordPlanDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFaceDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFaceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFaceUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
            self.controlId = dict["ControlId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FacePicMd5") && dict["FacePicMd5"] != nil {
            self.facePicMd5 = dict["FacePicMd5"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFaceUserPictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteGbDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteLocalFileUploadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PictureIdList") && dict["PictureIdList"] != nil {
            self.pictureIdList = dict["PictureIdList"] as! [String]
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeletedCount") && dict["DeletedCount"] != nil {
                self.deletedCount = dict["DeletedCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeletePictureResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeletePictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("FileNameList") && dict["FileNameList"] != nil {
            self.fileNameList = dict["FileNameList"] as! [String]
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeletedCount") && dict["DeletedCount"] != nil {
                self.deletedCount = dict["DeletedCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRecordPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRecordPlanDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRtmpDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRtmpKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteStreamPushJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteStreamSnapshotJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTimeTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectUserFaceByUrlRequest : Tea.TeaModel {
    public var facePicUrl: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FacePicUrl") && dict["FacePicUrl"] != nil {
            self.facePicUrl = dict["FacePicUrl"] as! String
        }
    }
}

public class DetectUserFaceByUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class FaceRects : Tea.TeaModel {
                public var faceRectsData: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.faceRectsData != nil {
                        map["FaceRectsData"] = self.faceRectsData!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FaceRectsData") && dict["FaceRectsData"] != nil {
                        self.faceRectsData = dict["FaceRectsData"] as! [String]
                    }
                }
            }
            public class Landmarks : Tea.TeaModel {
                public var landmarksData: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.landmarksData != nil {
                        map["LandmarksData"] = self.landmarksData!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LandmarksData") && dict["LandmarksData"] != nil {
                        self.landmarksData = dict["LandmarksData"] as! [String]
                    }
                }
            }
            public var age: Int32?

            public var blurScore: Double?

            public var faceProbability: Double?

            public var faceRects: DetectUserFaceByUrlResponseBody.Data.Data.FaceRects?

            public var gender: Int32?

            public var goodForLibrary: Bool?

            public var goodForRecognition: Bool?

            public var landmarks: DetectUserFaceByUrlResponseBody.Data.Data.Landmarks?

            public var occlusionScore: Double?

            public var poseScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceRects?.validate()
                try self.landmarks?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.age != nil {
                    map["Age"] = self.age!
                }
                if self.blurScore != nil {
                    map["BlurScore"] = self.blurScore!
                }
                if self.faceProbability != nil {
                    map["FaceProbability"] = self.faceProbability!
                }
                if self.faceRects != nil {
                    map["FaceRects"] = self.faceRects?.toMap()
                }
                if self.gender != nil {
                    map["Gender"] = self.gender!
                }
                if self.goodForLibrary != nil {
                    map["GoodForLibrary"] = self.goodForLibrary!
                }
                if self.goodForRecognition != nil {
                    map["GoodForRecognition"] = self.goodForRecognition!
                }
                if self.landmarks != nil {
                    map["Landmarks"] = self.landmarks?.toMap()
                }
                if self.occlusionScore != nil {
                    map["OcclusionScore"] = self.occlusionScore!
                }
                if self.poseScore != nil {
                    map["PoseScore"] = self.poseScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Age") && dict["Age"] != nil {
                    self.age = dict["Age"] as! Int32
                }
                if dict.keys.contains("BlurScore") && dict["BlurScore"] != nil {
                    self.blurScore = dict["BlurScore"] as! Double
                }
                if dict.keys.contains("FaceProbability") && dict["FaceProbability"] != nil {
                    self.faceProbability = dict["FaceProbability"] as! Double
                }
                if dict.keys.contains("FaceRects") && dict["FaceRects"] != nil {
                    var model = DetectUserFaceByUrlResponseBody.Data.Data.FaceRects()
                    model.fromMap(dict["FaceRects"] as! [String: Any])
                    self.faceRects = model
                }
                if dict.keys.contains("Gender") && dict["Gender"] != nil {
                    self.gender = dict["Gender"] as! Int32
                }
                if dict.keys.contains("GoodForLibrary") && dict["GoodForLibrary"] != nil {
                    self.goodForLibrary = dict["GoodForLibrary"] as! Bool
                }
                if dict.keys.contains("GoodForRecognition") && dict["GoodForRecognition"] != nil {
                    self.goodForRecognition = dict["GoodForRecognition"] as! Bool
                }
                if dict.keys.contains("Landmarks") && dict["Landmarks"] != nil {
                    var model = DetectUserFaceByUrlResponseBody.Data.Data.Landmarks()
                    model.fromMap(dict["Landmarks"] as! [String: Any])
                    self.landmarks = model
                }
                if dict.keys.contains("OcclusionScore") && dict["OcclusionScore"] != nil {
                    self.occlusionScore = dict["OcclusionScore"] as! Double
                }
                if dict.keys.contains("PoseScore") && dict["PoseScore"] != nil {
                    self.poseScore = dict["PoseScore"] as! Double
                }
            }
        }
        public var data: [DetectUserFaceByUrlResponseBody.Data.Data]?

        public override init() {
            super.init()
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
                map["data"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("data") && dict["data"] != nil {
                var tmp : [DetectUserFaceByUrlResponseBody.Data.Data] = []
                for v in dict["data"] as! [Any] {
                    var model = DetectUserFaceByUrlResponseBody.Data.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
        }
    }
    public var code: String?

    public var data: DetectUserFaceByUrlResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DetectUserFaceByUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DetectUserFaceByUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectUserFaceByUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetectUserFaceByUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("SubDeviceId") && dict["SubDeviceId"] != nil {
            self.subDeviceId = dict["SubDeviceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = EnableGbSubDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableGbSubDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobStatus") && dict["JobStatus"] != nil {
                self.jobStatus = dict["JobStatus"] as! Int32
            }
            if dict.keys.contains("SearchPicUrl") && dict["SearchPicUrl"] != nil {
                self.searchPicUrl = dict["SearchPicUrl"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
                self.threshold = dict["Threshold"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetPictureSearchJobStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPictureSearchJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("ContainPicUrl") && dict["ContainPicUrl"] != nil {
            self.containPicUrl = dict["ContainPicUrl"] as! Bool
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PictureSearchType") && dict["PictureSearchType"] != nil {
            self.pictureSearchType = dict["PictureSearchType"] as! Int32
        }
        if dict.keys.contains("SearchPicUrl") && dict["SearchPicUrl"] != nil {
            self.searchPicUrl = dict["SearchPicUrl"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
            self.threshold = dict["Threshold"] as! Double
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventTime") && dict["EventTime"] != nil {
                    self.eventTime = dict["EventTime"] as! Int64
                }
                if dict.keys.contains("GatewayIotId") && dict["GatewayIotId"] != nil {
                    self.gatewayIotId = dict["GatewayIotId"] as! String
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("PicUrl") && dict["PicUrl"] != nil {
                    self.picUrl = dict["PicUrl"] as! String
                }
                if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
                    self.threshold = dict["Threshold"] as! Double
                }
                if dict.keys.contains("VectorId") && dict["VectorId"] != nil {
                    self.vectorId = dict["VectorId"] as! String
                }
                if dict.keys.contains("VectorType") && dict["VectorType"] != nil {
                    self.vectorType = dict["VectorType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [PictureSearchPictureResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = PictureSearchPictureResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PictureSearchPictureResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PictureSearchPictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! Int32
        }
        if dict.keys.contains("AreaIndex") && dict["AreaIndex"] != nil {
            self.areaIndex = dict["AreaIndex"] as! Int32
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlateNo") && dict["PlateNo"] != nil {
            self.plateNo = dict["PlateNo"] as! String
        }
        if dict.keys.contains("SubDeviceName") && dict["SubDeviceName"] != nil {
            self.subDeviceName = dict["SubDeviceName"] as! String
        }
        if dict.keys.contains("SubIotId") && dict["SubIotId"] != nil {
            self.subIotId = dict["SubIotId"] as! String
        }
        if dict.keys.contains("SubProductKey") && dict["SubProductKey"] != nil {
            self.subProductKey = dict["SubProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
                    self.actionType = dict["ActionType"] as! Int32
                }
                if dict.keys.contains("AreaIndex") && dict["AreaIndex"] != nil {
                    self.areaIndex = dict["AreaIndex"] as! Int32
                }
                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                    self.confidence = dict["Confidence"] as! Int32
                }
                if dict.keys.contains("EventId") && dict["EventId"] != nil {
                    self.eventId = dict["EventId"] as! String
                }
                if dict.keys.contains("EventPicId") && dict["EventPicId"] != nil {
                    self.eventPicId = dict["EventPicId"] as! String
                }
                if dict.keys.contains("EventPicUrl") && dict["EventPicUrl"] != nil {
                    self.eventPicUrl = dict["EventPicUrl"] as! String
                }
                if dict.keys.contains("EventTime") && dict["EventTime"] != nil {
                    self.eventTime = dict["EventTime"] as! Int64
                }
                if dict.keys.contains("EventType") && dict["EventType"] != nil {
                    self.eventType = dict["EventType"] as! Int32
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("PlateNo") && dict["PlateNo"] != nil {
                    self.plateNo = dict["PlateNo"] as! String
                }
                if dict.keys.contains("SubDeviceName") && dict["SubDeviceName"] != nil {
                    self.subDeviceName = dict["SubDeviceName"] as! String
                }
                if dict.keys.contains("SubDeviceNickName") && dict["SubDeviceNickName"] != nil {
                    self.subDeviceNickName = dict["SubDeviceNickName"] as! String
                }
                if dict.keys.contains("SubIotId") && dict["SubIotId"] != nil {
                    self.subIotId = dict["SubIotId"] as! String
                }
                if dict.keys.contains("SubProductKey") && dict["SubProductKey"] != nil {
                    self.subProductKey = dict["SubProductKey"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [QueryCarProcessEventsResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = QueryCarProcessEventsResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryCarProcessEventsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryCarProcessEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventType") && dict["EventType"] != nil {
            self.eventType = dict["EventType"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventData") && dict["EventData"] != nil {
                    self.eventData = dict["EventData"] as! String
                }
                if dict.keys.contains("EventDesc") && dict["EventDesc"] != nil {
                    self.eventDesc = dict["EventDesc"] as! String
                }
                if dict.keys.contains("EventId") && dict["EventId"] != nil {
                    self.eventId = dict["EventId"] as! String
                }
                if dict.keys.contains("EventPicId") && dict["EventPicId"] != nil {
                    self.eventPicId = dict["EventPicId"] as! String
                }
                if dict.keys.contains("EventTime") && dict["EventTime"] != nil {
                    self.eventTime = dict["EventTime"] as! String
                }
                if dict.keys.contains("EventType") && dict["EventType"] != nil {
                    self.eventType = dict["EventType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryDeviceEventResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryDeviceEventResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDeviceEventResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDeviceEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EventId") && dict["EventId"] != nil {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDeviceEventPictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EventId") && dict["EventId"] != nil {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("VodUrl") && dict["VodUrl"] != nil {
                self.vodUrl = dict["VodUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryDeviceEventRecordResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryDeviceEventRecordResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDeviceEventRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PictureIdList") && dict["PictureIdList"] != nil {
            self.pictureIdList = dict["PictureIdList"] as! [String]
        }
        if dict.keys.contains("PictureType") && dict["PictureType"] != nil {
            self.pictureType = dict["PictureType"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("ThumbWidth") && dict["ThumbWidth"] != nil {
            self.thumbWidth = dict["ThumbWidth"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("PicCreateTime") && dict["PicCreateTime"] != nil {
                    self.picCreateTime = dict["PicCreateTime"] as! Int64
                }
                if dict.keys.contains("PicId") && dict["PicId"] != nil {
                    self.picId = dict["PicId"] as! String
                }
                if dict.keys.contains("PicUrl") && dict["PicUrl"] != nil {
                    self.picUrl = dict["PicUrl"] as! String
                }
                if dict.keys.contains("ThumbUrl") && dict["ThumbUrl"] != nil {
                    self.thumbUrl = dict["ThumbUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("picData") && dict["picData"] != nil {
                var tmp : [QueryDevicePictureByListResponseBody.Data.PicData] = []
                for v in dict["picData"] as! [Any] {
                    var model = QueryDevicePictureByListResponseBody.Data.PicData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDevicePictureByListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDevicePictureByListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaptureId") && dict["CaptureId"] != nil {
            self.captureId = dict["CaptureId"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PictureType") && dict["PictureType"] != nil {
            self.pictureType = dict["PictureType"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("ThumbWidth") && dict["ThumbWidth"] != nil {
            self.thumbWidth = dict["ThumbWidth"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
            }
            if dict.keys.contains("PicCreateTime") && dict["PicCreateTime"] != nil {
                self.picCreateTime = dict["PicCreateTime"] as! Int64
            }
            if dict.keys.contains("PicId") && dict["PicId"] != nil {
                self.picId = dict["PicId"] as! String
            }
            if dict.keys.contains("PicUrl") && dict["PicUrl"] != nil {
                self.picUrl = dict["PicUrl"] as! String
            }
            if dict.keys.contains("ThumbUrl") && dict["ThumbUrl"] != nil {
                self.thumbUrl = dict["ThumbUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDevicePictureFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDevicePictureFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Day") && dict["Day"] != nil {
                self.day = dict["Day"] as! Int32
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDevicePictureLifeCycleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDevicePictureLifeCycleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceList") && dict["DeviceList"] != nil {
            self.deviceList = dict["DeviceList"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Day") && dict["Day"] != nil {
                self.day = dict["Day"] as! Int32
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryDeviceRecordLifeCycleResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryDeviceRecordLifeCycleResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDeviceRecordLifeCycleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EnableStun") && dict["EnableStun"] != nil {
            self.enableStun = dict["EnableStun"] as! Bool
        }
        if dict.keys.contains("EncryptType") && dict["EncryptType"] != nil {
            self.encryptType = dict["EncryptType"] as! Int32
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PlayUnLimited") && dict["PlayUnLimited"] != nil {
            self.playUnLimited = dict["PlayUnLimited"] as! Bool
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Scheme") && dict["Scheme"] != nil {
            self.scheme = dict["Scheme"] as! String
        }
        if dict.keys.contains("SeekTime") && dict["SeekTime"] != nil {
            self.seekTime = dict["SeekTime"] as! Int32
        }
        if dict.keys.contains("ShouldEncrypt") && dict["ShouldEncrypt"] != nil {
            self.shouldEncrypt = dict["ShouldEncrypt"] as! Bool
        }
        if dict.keys.contains("UrlValidDuration") && dict["UrlValidDuration"] != nil {
            self.urlValidDuration = dict["UrlValidDuration"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DecryptKey") && dict["DecryptKey"] != nil {
                self.decryptKey = dict["DecryptKey"] as! String
            }
            if dict.keys.contains("StunInfo") && dict["StunInfo"] != nil {
                self.stunInfo = dict["StunInfo"] as! String
            }
            if dict.keys.contains("VodUrl") && dict["VodUrl"] != nil {
                self.vodUrl = dict["VodUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDeviceVodUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDeviceVodUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EnableStun") && dict["EnableStun"] != nil {
            self.enableStun = dict["EnableStun"] as! Bool
        }
        if dict.keys.contains("EncryptType") && dict["EncryptType"] != nil {
            self.encryptType = dict["EncryptType"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PlayUnLimited") && dict["PlayUnLimited"] != nil {
            self.playUnLimited = dict["PlayUnLimited"] as! Bool
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Scheme") && dict["Scheme"] != nil {
            self.scheme = dict["Scheme"] as! String
        }
        if dict.keys.contains("SeekTime") && dict["SeekTime"] != nil {
            self.seekTime = dict["SeekTime"] as! Int32
        }
        if dict.keys.contains("ShouldEncrypt") && dict["ShouldEncrypt"] != nil {
            self.shouldEncrypt = dict["ShouldEncrypt"] as! Bool
        }
        if dict.keys.contains("UrlValidDuration") && dict["UrlValidDuration"] != nil {
            self.urlValidDuration = dict["UrlValidDuration"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DecryptKey") && dict["DecryptKey"] != nil {
                self.decryptKey = dict["DecryptKey"] as! String
            }
            if dict.keys.contains("StunInfo") && dict["StunInfo"] != nil {
                self.stunInfo = dict["StunInfo"] as! String
            }
            if dict.keys.contains("VodUrl") && dict["VodUrl"] != nil {
                self.vodUrl = dict["VodUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDeviceVodUrlByTimeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDeviceVodUrlByTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                        self.dayOfWeek = dict["DayOfWeek"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
                    self.allDay = dict["AllDay"] as! Int32
                }
                if dict.keys.contains("Default") && dict["Default"] != nil {
                    self.default_ = dict["Default"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TimeSectionList") && dict["TimeSectionList"] != nil {
                    var tmp : [QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in dict["TimeSectionList"] as! [Any] {
                        var model = QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("PreRecordDuration") && dict["PreRecordDuration"] != nil {
                self.preRecordDuration = dict["PreRecordDuration"] as! Int32
            }
            if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
                self.recordDuration = dict["RecordDuration"] as! Int32
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateInfo") && dict["TemplateInfo"] != nil {
                var model = QueryEventRecordPlanDetailResponseBody.Data.TemplateInfo()
                model.fromMap(dict["TemplateInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEventRecordPlanDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEventRecordPlanDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                        self.dayOfWeek = dict["DayOfWeek"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
                    self.allDay = dict["AllDay"] as! Int32
                }
                if dict.keys.contains("Default") && dict["Default"] != nil {
                    self.default_ = dict["Default"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TimeSectionList") && dict["TimeSectionList"] != nil {
                    var tmp : [QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in dict["TimeSectionList"] as! [Any] {
                        var model = QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("PreRecordDuration") && dict["PreRecordDuration"] != nil {
                self.preRecordDuration = dict["PreRecordDuration"] as! Int32
            }
            if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
                self.recordDuration = dict["RecordDuration"] as! Int32
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateInfo") && dict["TemplateInfo"] != nil {
                var model = QueryEventRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo()
                model.fromMap(dict["TemplateInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEventRecordPlanDeviceByDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEventRecordPlanDeviceByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                    self.streamType = dict["StreamType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryEventRecordPlanDeviceByPlanResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryEventRecordPlanDeviceByPlanResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEventRecordPlanDeviceByPlanResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEventRecordPlanDeviceByPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventType") && dict["EventType"] != nil {
                    self.eventType = dict["EventType"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                    self.planId = dict["PlanId"] as! String
                }
                if dict.keys.contains("PreRecordDuration") && dict["PreRecordDuration"] != nil {
                    self.preRecordDuration = dict["PreRecordDuration"] as! Int32
                }
                if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
                    self.recordDuration = dict["RecordDuration"] as! Int32
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryEventRecordPlansResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryEventRecordPlansResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEventRecordPlansResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEventRecordPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
                    self.deviceGroupId = dict["DeviceGroupId"] as! String
                }
                if dict.keys.contains("DeviceGroupName") && dict["DeviceGroupName"] != nil {
                    self.deviceGroupName = dict["DeviceGroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceGroupList") && dict["DeviceGroupList"] != nil {
                var tmp : [QueryFaceAllDeviceGroupResponseBody.Data.DeviceGroupList] = []
                for v in dict["DeviceGroupList"] as! [Any] {
                    var model = QueryFaceAllDeviceGroupResponseBody.Data.DeviceGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceGroupList = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceAllDeviceGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceAllDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
                if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
                    self.userGroupName = dict["UserGroupName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
            if dict.keys.contains("UserGroupList") && dict["UserGroupList"] != nil {
                var tmp : [QueryFaceAllUserGroupResponseBody.Data.UserGroupList] = []
                for v in dict["UserGroupList"] as! [Any] {
                    var model = QueryFaceAllUserGroupResponseBody.Data.UserGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceAllUserGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceAllUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
                    self.controlId = dict["ControlId"] as! String
                }
                if dict.keys.contains("ControlType") && dict["ControlType"] != nil {
                    self.controlType = dict["ControlType"] as! String
                }
                if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
                    self.deviceGroupId = dict["DeviceGroupId"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                    self.userGroupId = dict["UserGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceAllUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                    self.customUserId = dict["CustomUserId"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Params") && dict["Params"] != nil {
                    self.params = dict["Params"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryFaceAllUserIdsByGroupIdResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryFaceAllUserIdsByGroupIdResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceAllUserIdsByGroupIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceAllUserIdsByGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceCustomUserIdByUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
                    self.deviceGroupId = dict["DeviceGroupId"] as! String
                }
                if dict.keys.contains("DeviceGroupName") && dict["DeviceGroupName"] != nil {
                    self.deviceGroupName = dict["DeviceGroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceGroupList") && dict["DeviceGroupList"] != nil {
                var tmp : [QueryFaceDeviceGroupsByDeviceResponseBody.Data.DeviceGroupList] = []
                for v in dict["DeviceGroupList"] as! [Any] {
                    var model = QueryFaceDeviceGroupsByDeviceResponseBody.Data.DeviceGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceGroupList = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceDeviceGroupsByDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceDeviceGroupsByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AlgorithmName") && dict["AlgorithmName"] != nil {
                        self.algorithmName = dict["AlgorithmName"] as! String
                    }
                    if dict.keys.contains("AlgorithmProvider") && dict["AlgorithmProvider"] != nil {
                        self.algorithmProvider = dict["AlgorithmProvider"] as! String
                    }
                    if dict.keys.contains("AlgorithmVersion") && dict["AlgorithmVersion"] != nil {
                        self.algorithmVersion = dict["AlgorithmVersion"] as! String
                    }
                    if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("FaceMd5") && dict["FaceMd5"] != nil {
                        self.faceMd5 = dict["FaceMd5"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceMd5") && dict["FaceMd5"] != nil {
                    self.faceMd5 = dict["FaceMd5"] as! String
                }
                if dict.keys.contains("FaceUrl") && dict["FaceUrl"] != nil {
                    self.faceUrl = dict["FaceUrl"] as! String
                }
                if dict.keys.contains("FeatureDTOList") && dict["FeatureDTOList"] != nil {
                    var tmp : [QueryFaceUserResponseBody.Data.FacePicList.FeatureDTOList] = []
                    for v in dict["FeatureDTOList"] as! [Any] {
                        var model = QueryFaceUserResponseBody.Data.FacePicList.FeatureDTOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                self.customUserId = dict["CustomUserId"] as! String
            }
            if dict.keys.contains("FacePicList") && dict["FacePicList"] != nil {
                var tmp : [QueryFaceUserResponseBody.Data.FacePicList] = []
                for v in dict["FacePicList"] as! [Any] {
                    var model = QueryFaceUserResponseBody.Data.FacePicList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.facePicList = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") && dict["Params"] != nil {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserIdList") && dict["UserIdList"] != nil {
            self.userIdList = dict["UserIdList"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AlgorithmName") && dict["AlgorithmName"] != nil {
                        self.algorithmName = dict["AlgorithmName"] as! String
                    }
                    if dict.keys.contains("AlgorithmProvider") && dict["AlgorithmProvider"] != nil {
                        self.algorithmProvider = dict["AlgorithmProvider"] as! String
                    }
                    if dict.keys.contains("AlgorithmVersion") && dict["AlgorithmVersion"] != nil {
                        self.algorithmVersion = dict["AlgorithmVersion"] as! String
                    }
                    if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("FaceMd5") && dict["FaceMd5"] != nil {
                        self.faceMd5 = dict["FaceMd5"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceMd5") && dict["FaceMd5"] != nil {
                    self.faceMd5 = dict["FaceMd5"] as! String
                }
                if dict.keys.contains("FaceUrl") && dict["FaceUrl"] != nil {
                    self.faceUrl = dict["FaceUrl"] as! String
                }
                if dict.keys.contains("FeatureDTOList") && dict["FeatureDTOList"] != nil {
                    var tmp : [QueryFaceUserBatchResponseBody.Data.FacePicList.FeatureDTOList] = []
                    for v in dict["FeatureDTOList"] as! [Any] {
                        var model = QueryFaceUserBatchResponseBody.Data.FacePicList.FeatureDTOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                self.customUserId = dict["CustomUserId"] as! String
            }
            if dict.keys.contains("FacePicList") && dict["FacePicList"] != nil {
                var tmp : [QueryFaceUserBatchResponseBody.Data.FacePicList] = []
                for v in dict["FacePicList"] as! [Any] {
                    var model = QueryFaceUserBatchResponseBody.Data.FacePicList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.facePicList = tmp
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") && dict["Params"] != nil {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryFaceUserBatchResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryFaceUserBatchResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceUserBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AlgorithmName") && dict["AlgorithmName"] != nil {
                            self.algorithmName = dict["AlgorithmName"] as! String
                        }
                        if dict.keys.contains("AlgorithmProvider") && dict["AlgorithmProvider"] != nil {
                            self.algorithmProvider = dict["AlgorithmProvider"] as! String
                        }
                        if dict.keys.contains("AlgorithmVersion") && dict["AlgorithmVersion"] != nil {
                            self.algorithmVersion = dict["AlgorithmVersion"] as! String
                        }
                        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                            self.errorMessage = dict["ErrorMessage"] as! String
                        }
                        if dict.keys.contains("FaceMd5") && dict["FaceMd5"] != nil {
                            self.faceMd5 = dict["FaceMd5"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FaceMd5") && dict["FaceMd5"] != nil {
                        self.faceMd5 = dict["FaceMd5"] as! String
                    }
                    if dict.keys.contains("FaceUrl") && dict["FaceUrl"] != nil {
                        self.faceUrl = dict["FaceUrl"] as! String
                    }
                    if dict.keys.contains("FeatureDTOList") && dict["FeatureDTOList"] != nil {
                        var tmp : [QueryFaceUserByNameResponseBody.Data.List.FacePicList.FeatureDTOList] = []
                        for v in dict["FeatureDTOList"] as! [Any] {
                            var model = QueryFaceUserByNameResponseBody.Data.List.FacePicList.FeatureDTOList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                    self.customUserId = dict["CustomUserId"] as! String
                }
                if dict.keys.contains("FacePicList") && dict["FacePicList"] != nil {
                    var tmp : [QueryFaceUserByNameResponseBody.Data.List.FacePicList] = []
                    for v in dict["FacePicList"] as! [Any] {
                        var model = QueryFaceUserByNameResponseBody.Data.List.FacePicList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.facePicList = tmp
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Params") && dict["Params"] != nil {
                    self.params = dict["Params"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryFaceUserByNameResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryFaceUserByNameResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceUserByNameResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceUserByNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
                if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
                    self.userGroupName = dict["UserGroupName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
            if dict.keys.contains("UserGroupList") && dict["UserGroupList"] != nil {
                var tmp : [QueryFaceUserGroupResponseBody.Data.UserGroupList] = []
                for v in dict["UserGroupList"] as! [Any] {
                    var model = QueryFaceUserGroupResponseBody.Data.UserGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceUserGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
            self.controlId = dict["ControlId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
                self.controlId = dict["ControlId"] as! String
            }
            if dict.keys.contains("ControlType") && dict["ControlType"] != nil {
                self.controlType = dict["ControlType"] as! String
            }
            if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
                self.deviceGroupId = dict["DeviceGroupId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
            self.customUserId = dict["CustomUserId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                self.customUserId = dict["CustomUserId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") && dict["Params"] != nil {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryFaceUserIdByCustomUserIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFaceUserIdByCustomUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PageStart") && dict["PageStart"] != nil {
            self.pageStart = dict["PageStart"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceEnable") && dict["DeviceEnable"] != nil {
                    self.deviceEnable = dict["DeviceEnable"] as! Int32
                }
                if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                    self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GbSubDeviceList") && dict["GbSubDeviceList"] != nil {
                var tmp : [QueryGbSubDeviceListResponseBody.Data.GbSubDeviceList] = []
                for v in dict["GbSubDeviceList"] as! [Any] {
                    var model = QueryGbSubDeviceListResponseBody.Data.GbSubDeviceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gbSubDeviceList = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryGbSubDeviceListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryGbSubDeviceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheDuration") && dict["CacheDuration"] != nil {
            self.cacheDuration = dict["CacheDuration"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EnableStun") && dict["EnableStun"] != nil {
            self.enableStun = dict["EnableStun"] as! Bool
        }
        if dict.keys.contains("EncryptType") && dict["EncryptType"] != nil {
            self.encryptType = dict["EncryptType"] as! Int32
        }
        if dict.keys.contains("ForceIFrame") && dict["ForceIFrame"] != nil {
            self.forceIFrame = dict["ForceIFrame"] as! Bool
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PlayUnLimited") && dict["PlayUnLimited"] != nil {
            self.playUnLimited = dict["PlayUnLimited"] as! Bool
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Scheme") && dict["Scheme"] != nil {
            self.scheme = dict["Scheme"] as! String
        }
        if dict.keys.contains("ShouldEncrypt") && dict["ShouldEncrypt"] != nil {
            self.shouldEncrypt = dict["ShouldEncrypt"] as! Bool
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
        }
        if dict.keys.contains("UrlValidDuration") && dict["UrlValidDuration"] != nil {
            self.urlValidDuration = dict["UrlValidDuration"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Path") && dict["Path"] != nil {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("RelayDecryptKey") && dict["RelayDecryptKey"] != nil {
                self.relayDecryptKey = dict["RelayDecryptKey"] as! String
            }
            if dict.keys.contains("StunInfo") && dict["StunInfo"] != nil {
                self.stunInfo = dict["StunInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryLiveStreamingResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryLiveStreamingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FileEndTime") && dict["FileEndTime"] != nil {
                        self.fileEndTime = dict["FileEndTime"] as! Int32
                    }
                    if dict.keys.contains("FileName") && dict["FileName"] != nil {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("FileStartTime") && dict["FileStartTime"] != nil {
                        self.fileStartTime = dict["FileStartTime"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("FileList") && dict["FileList"] != nil {
                    var tmp : [QueryLocalFileUploadJobResponseBody.Data.ResultList.FileList] = []
                    for v in dict["FileList"] as! [Any] {
                        var model = QueryLocalFileUploadJobResponseBody.Data.ResultList.FileList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.fileList = tmp
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                    self.productKey = dict["ProductKey"] as! String
                }
                if dict.keys.contains("SlotEndTime") && dict["SlotEndTime"] != nil {
                    self.slotEndTime = dict["SlotEndTime"] as! Int32
                }
                if dict.keys.contains("SlotStartTime") && dict["SlotStartTime"] != nil {
                    self.slotStartTime = dict["SlotStartTime"] as! Int32
                }
                if dict.keys.contains("SlotStatus") && dict["SlotStatus"] != nil {
                    self.slotStatus = dict["SlotStatus"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResultList") && dict["ResultList"] != nil {
                var tmp : [QueryLocalFileUploadJobResponseBody.Data.ResultList] = []
                for v in dict["ResultList"] as! [Any] {
                    var model = QueryLocalFileUploadJobResponseBody.Data.ResultList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resultList = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryLocalFileUploadJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryLocalFileUploadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Month") && dict["Month"] != nil {
            self.month = dict["Month"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryMonthRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PictureSource") && dict["PictureSource"] != nil {
            self.pictureSource = dict["PictureSource"] as! Int32
        }
        if dict.keys.contains("PictureType") && dict["PictureType"] != nil {
            self.pictureType = dict["PictureType"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("PicCreateTime") && dict["PicCreateTime"] != nil {
                    self.picCreateTime = dict["PicCreateTime"] as! Int64
                }
                if dict.keys.contains("PicId") && dict["PicId"] != nil {
                    self.picId = dict["PicId"] as! String
                }
                if dict.keys.contains("PicUrl") && dict["PicUrl"] != nil {
                    self.picUrl = dict["PicUrl"] as! String
                }
                if dict.keys.contains("ThumbUrl") && dict["ThumbUrl"] != nil {
                    self.thumbUrl = dict["ThumbUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryPictureFilesResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryPictureFilesResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPictureFilesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPictureFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("NickName") && dict["NickName"] != nil {
                    self.nickName = dict["NickName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [QueryPictureSearchAiboxesResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = QueryPictureSearchAiboxesResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPictureSearchAiboxesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPictureSearchAiboxesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
                    self.appInstanceId = dict["AppInstanceId"] as! String
                }
                if dict.keys.contains("AppTemplateId") && dict["AppTemplateId"] != nil {
                    self.appTemplateId = dict["AppTemplateId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [QueryPictureSearchAppsResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = QueryPictureSearchAppsResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPictureSearchAppsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPictureSearchAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("NickName") && dict["NickName"] != nil {
                    self.nickName = dict["NickName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [QueryPictureSearchDevicesResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = QueryPictureSearchDevicesResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPictureSearchDevicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPictureSearchDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("JobStatus") && dict["JobStatus"] != nil {
            self.jobStatus = dict["JobStatus"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobStatus") && dict["JobStatus"] != nil {
                    self.jobStatus = dict["JobStatus"] as! Int32
                }
                if dict.keys.contains("SearchPicUrl") && dict["SearchPicUrl"] != nil {
                    self.searchPicUrl = dict["SearchPicUrl"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
                    self.threshold = dict["Threshold"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [QueryPictureSearchJobResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = QueryPictureSearchJobResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPictureSearchJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPictureSearchJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceNickName") && dict["DeviceNickName"] != nil {
                    self.deviceNickName = dict["DeviceNickName"] as! String
                }
                if dict.keys.contains("EventTime") && dict["EventTime"] != nil {
                    self.eventTime = dict["EventTime"] as! Int64
                }
                if dict.keys.contains("GatewayIotId") && dict["GatewayIotId"] != nil {
                    self.gatewayIotId = dict["GatewayIotId"] as! String
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("PicUrl") && dict["PicUrl"] != nil {
                    self.picUrl = dict["PicUrl"] as! String
                }
                if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
                    self.threshold = dict["Threshold"] as! Double
                }
                if dict.keys.contains("VectorId") && dict["VectorId"] != nil {
                    self.vectorId = dict["VectorId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [QueryPictureSearchJobResultResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = QueryPictureSearchJobResultResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPictureSearchJobResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPictureSearchJobResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int32
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("NeedSnapshot") && dict["NeedSnapshot"] != nil {
            self.needSnapshot = dict["NeedSnapshot"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
            self.recordType = dict["RecordType"] as! Int32
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                    self.beginTime = dict["BeginTime"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("EventType") && dict["EventType"] != nil {
                    self.eventType = dict["EventType"] as! Int32
                }
                if dict.keys.contains("FileName") && dict["FileName"] != nil {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileSize") && dict["FileSize"] != nil {
                    self.fileSize = dict["FileSize"] as! Int32
                }
                if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                    self.recordType = dict["RecordType"] as! Int32
                }
                if dict.keys.contains("SnapshotUrl") && dict["SnapshotUrl"] != nil {
                    self.snapshotUrl = dict["SnapshotUrl"] as! String
                }
                if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                    self.streamType = dict["StreamType"] as! Int32
                }
                if dict.keys.contains("VideoFrameNumber") && dict["VideoFrameNumber"] != nil {
                    self.videoFrameNumber = dict["VideoFrameNumber"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryRecordResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryRecordResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("VodUrl") && dict["VodUrl"] != nil {
                self.vodUrl = dict["VodUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryRecordByRecordIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryRecordByRecordIdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordByRecordIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! Int32
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int32
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
            }
            if dict.keys.contains("JobErrorCode") && dict["JobErrorCode"] != nil {
                self.jobErrorCode = dict["JobErrorCode"] as! Int32
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                self.recordType = dict["RecordType"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                self.streamType = dict["StreamType"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordDownloadJobByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordDownloadJobByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                    self.beginTime = dict["BeginTime"] as! Int32
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int32
                }
                if dict.keys.contains("FileName") && dict["FileName"] != nil {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("JobErrorCode") && dict["JobErrorCode"] != nil {
                    self.jobErrorCode = dict["JobErrorCode"] as! Int32
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                    self.recordType = dict["RecordType"] as! Int32
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                    self.streamType = dict["StreamType"] as! Int32
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobList") && dict["JobList"] != nil {
                var tmp : [QueryRecordDownloadJobListResponseBody.Data.JobList] = []
                for v in dict["JobList"] as! [Any] {
                    var model = QueryRecordDownloadJobListResponseBody.Data.JobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobList = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordDownloadJobListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordDownloadJobListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordDownloadUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                        self.dayOfWeek = dict["DayOfWeek"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
                    self.allDay = dict["AllDay"] as! Int32
                }
                if dict.keys.contains("Default") && dict["Default"] != nil {
                    self.default_ = dict["Default"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TimeSectionList") && dict["TimeSectionList"] != nil {
                    var tmp : [QueryRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in dict["TimeSectionList"] as! [Any] {
                        var model = QueryRecordPlanDetailResponseBody.Data.TemplateInfo.TimeSectionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateInfo") && dict["TemplateInfo"] != nil {
                var model = QueryRecordPlanDetailResponseBody.Data.TemplateInfo()
                model.fromMap(dict["TemplateInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordPlanDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordPlanDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                        self.dayOfWeek = dict["DayOfWeek"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
                    self.allDay = dict["AllDay"] as! Int32
                }
                if dict.keys.contains("Default") && dict["Default"] != nil {
                    self.default_ = dict["Default"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TimeSectionList") && dict["TimeSectionList"] != nil {
                    var tmp : [QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList] = []
                    for v in dict["TimeSectionList"] as! [Any] {
                        var model = QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo.TimeSectionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateInfo") && dict["TemplateInfo"] != nil {
                var model = QueryRecordPlanDeviceByDeviceResponseBody.Data.TemplateInfo()
                model.fromMap(dict["TemplateInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordPlanDeviceByDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordPlanDeviceByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                    self.streamType = dict["StreamType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryRecordPlanDeviceByPlanResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryRecordPlanDeviceByPlanResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordPlanDeviceByPlanResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordPlanDeviceByPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                    self.planId = dict["PlanId"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryRecordPlansResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryRecordPlansResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRecordPlansResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("SeekTime") && dict["SeekTime"] != nil {
            self.seekTime = dict["SeekTime"] as! Int32
        }
        if dict.keys.contains("UrlValidDuration") && dict["UrlValidDuration"] != nil {
            self.urlValidDuration = dict["UrlValidDuration"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
        }
        if dict.keys.contains("UrlValidDuration") && dict["UrlValidDuration"] != nil {
            self.urlValidDuration = dict["UrlValidDuration"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordUrlByTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PullAuthKey") && dict["PullAuthKey"] != nil {
                self.pullAuthKey = dict["PullAuthKey"] as! String
            }
            if dict.keys.contains("PullKeyExpireTime") && dict["PullKeyExpireTime"] != nil {
                self.pullKeyExpireTime = dict["PullKeyExpireTime"] as! Int32
            }
            if dict.keys.contains("PushAuthKey") && dict["PushAuthKey"] != nil {
                self.pushAuthKey = dict["PushAuthKey"] as! String
            }
            if dict.keys.contains("PushKeyExpireTime") && dict["PushKeyExpireTime"] != nil {
                self.pushKeyExpireTime = dict["PushKeyExpireTime"] as! Int32
            }
            if dict.keys.contains("StreamName") && dict["StreamName"] != nil {
                self.streamName = dict["StreamName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRtmpKeyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRtmpKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int32
            }
            if dict.keys.contains("JobType") && dict["JobType"] != nil {
                self.jobType = dict["JobType"] as! Int32
            }
            if dict.keys.contains("PushStatus") && dict["PushStatus"] != nil {
                self.pushStatus = dict["PushStatus"] as! Int32
            }
            if dict.keys.contains("PushUrl") && dict["PushUrl"] != nil {
                self.pushUrl = dict["PushUrl"] as! String
            }
            if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryStreamPushJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryStreamPushJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int32
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobType") && dict["JobType"] != nil {
                    self.jobType = dict["JobType"] as! Int32
                }
                if dict.keys.contains("PushStatus") && dict["PushStatus"] != nil {
                    self.pushStatus = dict["PushStatus"] as! Int32
                }
                if dict.keys.contains("PushUrl") && dict["PushUrl"] != nil {
                    self.pushUrl = dict["PushUrl"] as! String
                }
                if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                    self.streamType = dict["StreamType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobList") && dict["JobList"] != nil {
                var tmp : [QueryStreamPushJobListResponseBody.Data.JobList] = []
                for v in dict["JobList"] as! [Any] {
                    var model = QueryStreamPushJobListResponseBody.Data.JobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobList = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryStreamPushJobListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryStreamPushJobListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SnapshotInterval") && dict["SnapshotInterval"] != nil {
                    self.snapshotInterval = dict["SnapshotInterval"] as! Int32
                }
                if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                    self.streamType = dict["StreamType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobList") && dict["JobList"] != nil {
                var tmp : [QueryStreamSnapshotJobResponseBody.Data.JobList] = []
                for v in dict["JobList"] as! [Any] {
                    var model = QueryStreamSnapshotJobResponseBody.Data.JobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryStreamSnapshotJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryStreamSnapshotJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                        self.dayOfWeek = dict["DayOfWeek"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
                    self.allDay = dict["AllDay"] as! Int32
                }
                if dict.keys.contains("Default") && dict["Default"] != nil {
                    self.default_ = dict["Default"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TimeSectionList") && dict["TimeSectionList"] != nil {
                    var tmp : [QueryTimeTemplateResponseBody.Data.List.TimeSectionList] = []
                    for v in dict["TimeSectionList"] as! [Any] {
                        var model = QueryTimeTemplateResponseBody.Data.List.TimeSectionList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryTimeTemplateResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryTimeTemplateResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryTimeTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTimeTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") && dict["Begin"] != nil {
                    self.begin = dict["Begin"] as! Int32
                }
                if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                    self.dayOfWeek = dict["DayOfWeek"] as! Int32
                }
                if dict.keys.contains("End") && dict["End"] != nil {
                    self.end = dict["End"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
                self.allDay = dict["AllDay"] as! Int32
            }
            if dict.keys.contains("Default") && dict["Default"] != nil {
                self.default_ = dict["Default"] as! Int32
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TimeSectionList") && dict["TimeSectionList"] != nil {
                var tmp : [QueryTimeTemplateDetailResponseBody.Data.TimeSectionList] = []
                for v in dict["TimeSectionList"] as! [Any] {
                    var model = QueryTimeTemplateDetailResponseBody.Data.TimeSectionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryTimeTemplateDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTimeTemplateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceProtocol") && dict["DeviceProtocol"] != nil {
                    self.deviceProtocol = dict["DeviceProtocol"] as! Int32
                }
                if dict.keys.contains("GbId") && dict["GbId"] != nil {
                    self.gbId = dict["GbId"] as! String
                }
                if dict.keys.contains("NetProtocol") && dict["NetProtocol"] != nil {
                    self.netProtocol = dict["NetProtocol"] as! Int32
                }
                if dict.keys.contains("NickName") && dict["NickName"] != nil {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("Password") && dict["Password"] != nil {
                    self.password = dict["Password"] as! String
                }
                if dict.keys.contains("SubProductKey") && dict["SubProductKey"] != nil {
                    self.subProductKey = dict["SubProductKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PullAuthKey") && dict["PullAuthKey"] != nil {
                    self.pullAuthKey = dict["PullAuthKey"] as! String
                }
                if dict.keys.contains("PullKeyExpireTime") && dict["PullKeyExpireTime"] != nil {
                    self.pullKeyExpireTime = dict["PullKeyExpireTime"] as! Int32
                }
                if dict.keys.contains("PushAuthKey") && dict["PushAuthKey"] != nil {
                    self.pushAuthKey = dict["PushAuthKey"] as! String
                }
                if dict.keys.contains("PushKeyExpireTime") && dict["PushKeyExpireTime"] != nil {
                    self.pushKeyExpireTime = dict["PushKeyExpireTime"] as! Int32
                }
                if dict.keys.contains("PushUrlSample") && dict["PushUrlSample"] != nil {
                    self.pushUrlSample = dict["PushUrlSample"] as! String
                }
                if dict.keys.contains("StreamName") && dict["StreamName"] != nil {
                    self.streamName = dict["StreamName"] as! String
                }
                if dict.keys.contains("StreamStatus") && dict["StreamStatus"] != nil {
                    self.streamStatus = dict["StreamStatus"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! Int32
            }
            if dict.keys.contains("GbDeviceInfo") && dict["GbDeviceInfo"] != nil {
                var model = QueryVisionDeviceInfoResponseBody.Data.GbDeviceInfo()
                model.fromMap(dict["GbDeviceInfo"] as! [String: Any])
                self.gbDeviceInfo = model
            }
            if dict.keys.contains("RtmpDeviceInfo") && dict["RtmpDeviceInfo"] != nil {
                var model = QueryVisionDeviceInfoResponseBody.Data.RtmpDeviceInfo()
                model.fromMap(dict["RtmpDeviceInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryVisionDeviceInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryVisionDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Scheme") && dict["Scheme"] != nil {
            self.scheme = dict["Scheme"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Iv") && dict["Iv"] != nil {
                    self.iv = dict["Iv"] as! String
                }
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CryptoKey") && dict["CryptoKey"] != nil {
                var model = QueryVoiceIntercomResponseBody.Data.CryptoKey()
                model.fromMap(dict["CryptoKey"] as! [String: Any])
                self.cryptoKey = model
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryVoiceIntercomResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryVoiceIntercomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefreshGbSubDeviceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveFaceDeviceFromDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveFaceUserFromUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Day") && dict["Day"] != nil {
            self.day = dict["Day"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetDevicePictureLifeCycleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Day") && dict["Day"] != nil {
            self.day = dict["Day"] as! Int32
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetDeviceRecordLifeCycleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StopLiveStreamingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StopTriggeredRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceNameList") && dict["DeviceNameList"] != nil {
            self.deviceNameList = dict["DeviceNameList"] as! [String]
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedList") && dict["FailedList"] != nil {
                var tmp : [TransferDeviceInstanceResponseBody.Data.FailedList] = []
                for v in dict["FailedList"] as! [Any] {
                    var model = TransferDeviceInstanceResponseBody.Data.FailedList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failedList = tmp
            }
            if dict.keys.contains("SuccessList") && dict["SuccessList"] != nil {
                var tmp : [TransferDeviceInstanceResponseBody.Data.SuccessList] = []
                for v in dict["SuccessList"] as! [Any] {
                    var model = TransferDeviceInstanceResponseBody.Data.SuccessList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TransferDeviceInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TransferDeviceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TriggerCapturePictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PreRecordDuration") && dict["PreRecordDuration"] != nil {
            self.preRecordDuration = dict["PreRecordDuration"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
            self.recordDuration = dict["RecordDuration"] as! Int32
        }
        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
            self.streamType = dict["StreamType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TriggerRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("DeviceIotIds") && dict["DeviceIotIds"] != nil {
            self.deviceIotIds = dict["DeviceIotIds"] as! [String]
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UnbindPictureSearchAppWithDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventTypes") && dict["EventTypes"] != nil {
            self.eventTypes = dict["EventTypes"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PreRecordDuration") && dict["PreRecordDuration"] != nil {
            self.preRecordDuration = dict["PreRecordDuration"] as! Int32
        }
        if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
            self.recordDuration = dict["RecordDuration"] as! Int32
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEventRecordPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
            self.customUserId = dict["CustomUserId"] as! String
        }
        if dict.keys.contains("FacePicUrl") && dict["FacePicUrl"] != nil {
            self.facePicUrl = dict["FacePicUrl"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateFaceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
            self.controlId = dict["ControlId"] as! String
        }
        if dict.keys.contains("IsolationId") && dict["IsolationId"] != nil {
            self.isolationId = dict["IsolationId"] as! String
        }
        if dict.keys.contains("Relation") && dict["Relation"] != nil {
            self.relation = dict["Relation"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ControlId") && dict["ControlId"] != nil {
                self.controlId = dict["ControlId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateFaceUserGroupAndDeviceGroupRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateFaceUserGroupAndDeviceGroupRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("GbId") && dict["GbId"] != nil {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateGbDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateInstanceInternetProtocolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdatePictureSearchAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRecordPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotInstanceId") && dict["IotInstanceId"] != nil {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("PullAuthKey") && dict["PullAuthKey"] != nil {
            self.pullAuthKey = dict["PullAuthKey"] as! String
        }
        if dict.keys.contains("PullKeyExpireTime") && dict["PullKeyExpireTime"] != nil {
            self.pullKeyExpireTime = dict["PullKeyExpireTime"] as! Int32
        }
        if dict.keys.contains("PushAuthKey") && dict["PushAuthKey"] != nil {
            self.pushAuthKey = dict["PushAuthKey"] as! String
        }
        if dict.keys.contains("PushKeyExpireTime") && dict["PushKeyExpireTime"] != nil {
            self.pushKeyExpireTime = dict["PushKeyExpireTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRtmpKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Begin") && dict["Begin"] != nil {
                self.begin = dict["Begin"] as! Int32
            }
            if dict.keys.contains("DayOfWeek") && dict["DayOfWeek"] != nil {
                self.dayOfWeek = dict["DayOfWeek"] as! Int32
            }
            if dict.keys.contains("End") && dict["End"] != nil {
                self.end = dict["End"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllDay") && dict["AllDay"] != nil {
            self.allDay = dict["AllDay"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TimeSections") && dict["TimeSections"] != nil {
            var tmp : [UpdateTimeTemplateRequest.TimeSections] = []
            for v in dict["TimeSections"] as! [Any] {
                var model = UpdateTimeTemplateRequest.TimeSections()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTimeTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
