import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddRtcAccountRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AddRtcAccountResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddRtcAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRtcAccountResponseBody?

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
            var model = AddRtcAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVirtualNumberRelationRequest : Tea.TeaModel {
    public var corpNameList: String?

    public var numberList: String?

    public var ownerId: Int64?

    public var phoneNum: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpNameList != nil {
            map["CorpNameList"] = self.corpNameList!
        }
        if self.numberList != nil {
            map["NumberList"] = self.numberList!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNum != nil {
            map["PhoneNum"] = self.phoneNum!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpNameList") {
            self.corpNameList = dict["CorpNameList"] as! String
        }
        if dict.keys.contains("NumberList") {
            self.numberList = dict["NumberList"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNum") {
            self.phoneNum = dict["PhoneNum"] as! String
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteType") {
            self.routeType = dict["RouteType"] as! Int32
        }
    }
}

public class AddVirtualNumberRelationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class AddVirtualNumberRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVirtualNumberRelationResponseBody?

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
            var model = AddVirtualNumberRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchRobotSmartCallRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var calledShowNumber: String?

    public var corpName: String?

    public var dialogId: String?

    public var earlyMediaAsr: Bool?

    public var isSelfLine: Bool?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduleCall: Bool?

    public var scheduleTime: Int64?

    public var taskName: String?

    public var ttsParam: String?

    public var ttsParamHead: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.calledShowNumber != nil {
            map["CalledShowNumber"] = self.calledShowNumber!
        }
        if self.corpName != nil {
            map["CorpName"] = self.corpName!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.earlyMediaAsr != nil {
            map["EarlyMediaAsr"] = self.earlyMediaAsr!
        }
        if self.isSelfLine != nil {
            map["IsSelfLine"] = self.isSelfLine!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduleCall != nil {
            map["ScheduleCall"] = self.scheduleCall!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.ttsParam != nil {
            map["TtsParam"] = self.ttsParam!
        }
        if self.ttsParamHead != nil {
            map["TtsParamHead"] = self.ttsParamHead!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CalledShowNumber") {
            self.calledShowNumber = dict["CalledShowNumber"] as! String
        }
        if dict.keys.contains("CorpName") {
            self.corpName = dict["CorpName"] as! String
        }
        if dict.keys.contains("DialogId") {
            self.dialogId = dict["DialogId"] as! String
        }
        if dict.keys.contains("EarlyMediaAsr") {
            self.earlyMediaAsr = dict["EarlyMediaAsr"] as! Bool
        }
        if dict.keys.contains("IsSelfLine") {
            self.isSelfLine = dict["IsSelfLine"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScheduleCall") {
            self.scheduleCall = dict["ScheduleCall"] as! Bool
        }
        if dict.keys.contains("ScheduleTime") {
            self.scheduleTime = dict["ScheduleTime"] as! Int64
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TtsParam") {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("TtsParamHead") {
            self.ttsParamHead = dict["TtsParamHead"] as! String
        }
    }
}

public class BatchRobotSmartCallResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class BatchRobotSmartCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchRobotSmartCallResponseBody?

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
            var model = BatchRobotSmartCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelOrderRobotTaskRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class CancelOrderRobotTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class CancelOrderRobotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOrderRobotTaskResponseBody?

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
            var model = CancelOrderRobotTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelRobotTaskRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class CancelRobotTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class CancelRobotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRobotTaskResponseBody?

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
            var model = CancelRobotTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCallTaskRequest : Tea.TeaModel {
    public var bizType: String?

    public var data: String?

    public var dataType: String?

    public var fireTime: String?

    public var ownerId: Int64?

    public var resource: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var scheduleType: String?

    public var stopTime: String?

    public var taskName: String?

    public var templateCode: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.fireTime != nil {
            map["FireTime"] = self.fireTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.stopTime != nil {
            map["StopTime"] = self.stopTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("DataType") {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("FireTime") {
            self.fireTime = dict["FireTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ScheduleType") {
            self.scheduleType = dict["ScheduleType"] as! String
        }
        if dict.keys.contains("StopTime") {
            self.stopTime = dict["StopTime"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class CreateCallTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCallTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCallTaskResponseBody?

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
            var model = CreateCallTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRobotTaskRequest : Tea.TeaModel {
    public var caller: String?

    public var corpName: String?

    public var dialogId: Int64?

    public var isSelfLine: Bool?

    public var numberStatusIdent: Bool?

    public var ownerId: Int64?

    public var recallInterval: Int32?

    public var recallStateCodes: String?

    public var recallTimes: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retryType: Int32?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.corpName != nil {
            map["CorpName"] = self.corpName!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.isSelfLine != nil {
            map["IsSelfLine"] = self.isSelfLine!
        }
        if self.numberStatusIdent != nil {
            map["NumberStatusIdent"] = self.numberStatusIdent!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.recallInterval != nil {
            map["RecallInterval"] = self.recallInterval!
        }
        if self.recallStateCodes != nil {
            map["RecallStateCodes"] = self.recallStateCodes!
        }
        if self.recallTimes != nil {
            map["RecallTimes"] = self.recallTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retryType != nil {
            map["RetryType"] = self.retryType!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("CorpName") {
            self.corpName = dict["CorpName"] as! String
        }
        if dict.keys.contains("DialogId") {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("IsSelfLine") {
            self.isSelfLine = dict["IsSelfLine"] as! Bool
        }
        if dict.keys.contains("NumberStatusIdent") {
            self.numberStatusIdent = dict["NumberStatusIdent"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RecallInterval") {
            self.recallInterval = dict["RecallInterval"] as! Int32
        }
        if dict.keys.contains("RecallStateCodes") {
            self.recallStateCodes = dict["RecallStateCodes"] as! String
        }
        if dict.keys.contains("RecallTimes") {
            self.recallTimes = dict["RecallTimes"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RetryType") {
            self.retryType = dict["RetryType"] as! Int32
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateRobotTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class CreateRobotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRobotTaskResponseBody?

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
            var model = CreateRobotTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRobotTaskRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class DeleteRobotTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class DeleteRobotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRobotTaskResponseBody?

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
            var model = DeleteRobotTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteCallTaskRequest : Tea.TeaModel {
    public var fireTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: String?

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
        if self.fireTime != nil {
            map["FireTime"] = self.fireTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FireTime") {
            self.fireTime = dict["FireTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class ExecuteCallTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExecuteCallTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteCallTaskResponseBody?

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
            var model = ExecuteCallTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCallInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var rtcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.rtcId != nil {
            map["RtcId"] = self.rtcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RtcId") {
            self.rtcId = dict["RtcId"] as! String
        }
    }
}

public class GetCallInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelId: String?

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
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetCallInfoResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCallInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCallInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCallInfoResponseBody?

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
            var model = GetCallInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotlineQualificationByOrderRequest : Tea.TeaModel {
    public var orderId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetHotlineQualificationByOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public var qualificationId: String?

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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("QualificationId") {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetHotlineQualificationByOrderResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetHotlineQualificationByOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHotlineQualificationByOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotlineQualificationByOrderResponseBody?

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
            var model = GetHotlineQualificationByOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMqttTokenRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetMqttTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientId: String?

        public var expireTime: String?

        public var host: String?

        public var instanceId: String?

        public var p2pTopic: String?

        public var serverId: String?

        public var token: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.p2pTopic != nil {
                map["P2pTopic"] = self.p2pTopic!
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("P2pTopic") {
                self.p2pTopic = dict["P2pTopic"] as! String
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMqttTokenResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetMqttTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMqttTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMqttTokenResponseBody?

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
            var model = GetMqttTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRtcTokenRequest : Tea.TeaModel {
    public var deviceId: String?

    public var isCustomAccount: Bool?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.isCustomAccount != nil {
            map["IsCustomAccount"] = self.isCustomAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("IsCustomAccount") {
            self.isCustomAccount = dict["IsCustomAccount"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetRtcTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRtcTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRtcTokenResponseBody?

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
            var model = GetRtcTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tokenType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tokenType != nil {
            map["TokenType"] = self.tokenType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TokenType") {
            self.tokenType = dict["TokenType"] as! String
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

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
            var model = GetTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IvrCallRequest : Tea.TeaModel {
    public class MenuKeyMap : Tea.TeaModel {
        public var code: String?

        public var key: String?

        public var ttsParams: String?

        public override init() {
            super.init()
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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.ttsParams != nil {
                map["TtsParams"] = self.ttsParams!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("TtsParams") {
                self.ttsParams = dict["TtsParams"] as! String
            }
        }
    }
    public var byeCode: String?

    public var byeTtsParams: String?

    public var calledNumber: String?

    public var calledShowNumber: String?

    public var menuKeyMap: [IvrCallRequest.MenuKeyMap]?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startCode: String?

    public var startTtsParams: String?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.byeCode != nil {
            map["ByeCode"] = self.byeCode!
        }
        if self.byeTtsParams != nil {
            map["ByeTtsParams"] = self.byeTtsParams!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.calledShowNumber != nil {
            map["CalledShowNumber"] = self.calledShowNumber!
        }
        if self.menuKeyMap != nil {
            var tmp : [Any] = []
            for k in self.menuKeyMap! {
                tmp.append(k.toMap())
            }
            map["MenuKeyMap"] = tmp
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startCode != nil {
            map["StartCode"] = self.startCode!
        }
        if self.startTtsParams != nil {
            map["StartTtsParams"] = self.startTtsParams!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ByeCode") {
            self.byeCode = dict["ByeCode"] as! String
        }
        if dict.keys.contains("ByeTtsParams") {
            self.byeTtsParams = dict["ByeTtsParams"] as! String
        }
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CalledShowNumber") {
            self.calledShowNumber = dict["CalledShowNumber"] as! String
        }
        if dict.keys.contains("MenuKeyMap") {
            self.menuKeyMap = dict["MenuKeyMap"] as! [IvrCallRequest.MenuKeyMap]
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartCode") {
            self.startCode = dict["StartCode"] as! String
        }
        if dict.keys.contains("StartTtsParams") {
            self.startTtsParams = dict["StartTtsParams"] as! String
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int32
        }
    }
}

public class IvrCallResponseBody : Tea.TeaModel {
    public var callId: String?

    public var code: String?

    public var message: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IvrCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IvrCallResponseBody?

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
            var model = IvrCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCallTaskRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: String?

    public var taskId: String?

    public var taskName: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListCallTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizType: String?

        public var completeTime: String?

        public var completedCount: Int64?

        public var completedRate: Int32?

        public var data: String?

        public var dataType: String?

        public var fireTime: String?

        public var id: Int64?

        public var resource: String?

        public var status: String?

        public var stopTime: String?

        public var taskName: String?

        public var templateCode: String?

        public var templateName: String?

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
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.completeTime != nil {
                map["CompleteTime"] = self.completeTime!
            }
            if self.completedCount != nil {
                map["CompletedCount"] = self.completedCount!
            }
            if self.completedRate != nil {
                map["CompletedRate"] = self.completedRate!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.fireTime != nil {
                map["FireTime"] = self.fireTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stopTime != nil {
                map["StopTime"] = self.stopTime!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("CompleteTime") {
                self.completeTime = dict["CompleteTime"] as! String
            }
            if dict.keys.contains("CompletedCount") {
                self.completedCount = dict["CompletedCount"] as! Int64
            }
            if dict.keys.contains("CompletedRate") {
                self.completedRate = dict["CompletedRate"] as! Int32
            }
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("FireTime") {
                self.fireTime = dict["FireTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StopTime") {
                self.stopTime = dict["StopTime"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [ListCallTaskResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListCallTaskResponseBody.Data]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListCallTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCallTaskResponseBody?

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
            var model = ListCallTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCallTaskDetailRequest : Tea.TeaModel {
    public var calledNum: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: String?

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
        if self.calledNum != nil {
            map["CalledNum"] = self.calledNum!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNum") {
            self.calledNum = dict["CalledNum"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class ListCallTaskDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var calledNum: String?

        public var caller: String?

        public var duration: Int64?

        public var id: Int64?

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
            if self.calledNum != nil {
                map["CalledNum"] = self.calledNum!
            }
            if self.caller != nil {
                map["Caller"] = self.caller!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CalledNum") {
                self.calledNum = dict["CalledNum"] as! String
            }
            if dict.keys.contains("Caller") {
                self.caller = dict["Caller"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListCallTaskDetailResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public var totalPage: Int64?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListCallTaskDetailResponseBody.Data]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class ListCallTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCallTaskDetailResponseBody?

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
            var model = ListCallTaskDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotlineTransferNumberRequest : Tea.TeaModel {
    public var hotlineNumber: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotlineNumber != nil {
            map["HotlineNumber"] = self.hotlineNumber!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HotlineNumber") {
            self.hotlineNumber = dict["HotlineNumber"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QualificationId") {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListHotlineTransferNumberResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var hotlineNumber: String?

            public var identityCard: String?

            public var numberOwnerName: String?

            public var phoneNumber: String?

            public var qualificationId: String?

            public var resUniqueCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hotlineNumber != nil {
                    map["HotlineNumber"] = self.hotlineNumber!
                }
                if self.identityCard != nil {
                    map["IdentityCard"] = self.identityCard!
                }
                if self.numberOwnerName != nil {
                    map["NumberOwnerName"] = self.numberOwnerName!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.qualificationId != nil {
                    map["QualificationId"] = self.qualificationId!
                }
                if self.resUniqueCode != nil {
                    map["ResUniqueCode"] = self.resUniqueCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HotlineNumber") {
                    self.hotlineNumber = dict["HotlineNumber"] as! String
                }
                if dict.keys.contains("IdentityCard") {
                    self.identityCard = dict["IdentityCard"] as! String
                }
                if dict.keys.contains("NumberOwnerName") {
                    self.numberOwnerName = dict["NumberOwnerName"] as! String
                }
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("QualificationId") {
                    self.qualificationId = dict["QualificationId"] as! String
                }
                if dict.keys.contains("ResUniqueCode") {
                    self.resUniqueCode = dict["ResUniqueCode"] as! String
                }
            }
        }
        public var pageNo: Int32?

        public var pageSize: Int32?

        public var total: Int64?

        public var values: [ListHotlineTransferNumberResponseBody.Data.Values]?

        public override init() {
            super.init()
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
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [ListHotlineTransferNumberResponseBody.Data.Values]
            }
        }
    }
    public var code: String?

    public var data: ListHotlineTransferNumberResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListHotlineTransferNumberResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHotlineTransferNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotlineTransferNumberResponseBody?

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
            var model = ListHotlineTransferNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotlineTransferRegisterFileRequest : Tea.TeaModel {
    public var hotlineNumber: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotlineNumber != nil {
            map["HotlineNumber"] = self.hotlineNumber!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HotlineNumber") {
            self.hotlineNumber = dict["HotlineNumber"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QualificationId") {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListHotlineTransferRegisterFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var agree: String?

            public var corpName: String?

            public var hotlineNumber: String?

            public var mngOpIdentityCard: String?

            public var mngOpMail: String?

            public var mngOpMobile: String?

            public var mngOpName: String?

            public var qualificationId: String?

            public var resUniqueCode: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agree != nil {
                    map["Agree"] = self.agree!
                }
                if self.corpName != nil {
                    map["CorpName"] = self.corpName!
                }
                if self.hotlineNumber != nil {
                    map["HotlineNumber"] = self.hotlineNumber!
                }
                if self.mngOpIdentityCard != nil {
                    map["MngOpIdentityCard"] = self.mngOpIdentityCard!
                }
                if self.mngOpMail != nil {
                    map["MngOpMail"] = self.mngOpMail!
                }
                if self.mngOpMobile != nil {
                    map["MngOpMobile"] = self.mngOpMobile!
                }
                if self.mngOpName != nil {
                    map["MngOpName"] = self.mngOpName!
                }
                if self.qualificationId != nil {
                    map["QualificationId"] = self.qualificationId!
                }
                if self.resUniqueCode != nil {
                    map["ResUniqueCode"] = self.resUniqueCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Agree") {
                    self.agree = dict["Agree"] as! String
                }
                if dict.keys.contains("CorpName") {
                    self.corpName = dict["CorpName"] as! String
                }
                if dict.keys.contains("HotlineNumber") {
                    self.hotlineNumber = dict["HotlineNumber"] as! String
                }
                if dict.keys.contains("MngOpIdentityCard") {
                    self.mngOpIdentityCard = dict["MngOpIdentityCard"] as! String
                }
                if dict.keys.contains("MngOpMail") {
                    self.mngOpMail = dict["MngOpMail"] as! String
                }
                if dict.keys.contains("MngOpMobile") {
                    self.mngOpMobile = dict["MngOpMobile"] as! String
                }
                if dict.keys.contains("MngOpName") {
                    self.mngOpName = dict["MngOpName"] as! String
                }
                if dict.keys.contains("QualificationId") {
                    self.qualificationId = dict["QualificationId"] as! String
                }
                if dict.keys.contains("ResUniqueCode") {
                    self.resUniqueCode = dict["ResUniqueCode"] as! Int64
                }
            }
        }
        public var pageNo: Int32?

        public var pageSize: Int32?

        public var total: Int64?

        public var values: [ListHotlineTransferRegisterFileResponseBody.Data.Values]?

        public override init() {
            super.init()
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
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [ListHotlineTransferRegisterFileResponseBody.Data.Values]
            }
        }
    }
    public var code: String?

    public var data: ListHotlineTransferRegisterFileResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListHotlineTransferRegisterFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHotlineTransferRegisterFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotlineTransferRegisterFileResponseBody?

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
            var model = ListHotlineTransferRegisterFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCallDetailByCallIdRequest : Tea.TeaModel {
    public var callId: String?

    public var ownerId: Int64?

    public var prodId: Int64?

    public var queryDate: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodId != nil {
            map["ProdId"] = self.prodId!
        }
        if self.queryDate != nil {
            map["QueryDate"] = self.queryDate!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdId") {
            self.prodId = dict["ProdId"] as! Int64
        }
        if dict.keys.contains("QueryDate") {
            self.queryDate = dict["QueryDate"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryCallDetailByCallIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryCallDetailByCallIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallDetailByCallIdResponseBody?

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
            var model = QueryCallDetailByCallIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCallDetailByTaskIdRequest : Tea.TeaModel {
    public var callee: String?

    public var ownerId: Int64?

    public var queryDate: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.callee != nil {
            map["Callee"] = self.callee!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.queryDate != nil {
            map["QueryDate"] = self.queryDate!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callee") {
            self.callee = dict["Callee"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QueryDate") {
            self.queryDate = dict["QueryDate"] as! Int64
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
    }
}

public class QueryCallDetailByTaskIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryCallDetailByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallDetailByTaskIdResponseBody?

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
            var model = QueryCallDetailByTaskIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCallInPoolTransferConfigRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryCallInPoolTransferConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var called: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.called != nil {
                    map["Called"] = self.called!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Called") {
                    self.called = dict["Called"] as! String
                }
            }
        }
        public var calledRouteMode: String?

        public var details: [QueryCallInPoolTransferConfigResponseBody.Data.Details]?

        public var gmtCreate: Int64?

        public var transferTimeout: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.calledRouteMode != nil {
                map["CalledRouteMode"] = self.calledRouteMode!
            }
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.transferTimeout != nil {
                map["TransferTimeout"] = self.transferTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CalledRouteMode") {
                self.calledRouteMode = dict["CalledRouteMode"] as! String
            }
            if dict.keys.contains("Details") {
                self.details = dict["Details"] as! [QueryCallInPoolTransferConfigResponseBody.Data.Details]
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("TransferTimeout") {
                self.transferTimeout = dict["TransferTimeout"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryCallInPoolTransferConfigResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryCallInPoolTransferConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryCallInPoolTransferConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallInPoolTransferConfigResponseBody?

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
            var model = QueryCallInPoolTransferConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCallInTransferRecordRequest : Tea.TeaModel {
    public var callInCaller: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public var queryDate: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInCaller != nil {
            map["CallInCaller"] = self.callInCaller!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.queryDate != nil {
            map["QueryDate"] = self.queryDate!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInCaller") {
            self.callInCaller = dict["CallInCaller"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("QueryDate") {
            self.queryDate = dict["QueryDate"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryCallInTransferRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var callInCalled: String?

            public var callInCaller: String?

            public var gmtCreate: Int64?

            public var recordUrl: String?

            public var transferCalled: String?

            public var transferCaller: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callInCalled != nil {
                    map["CallInCalled"] = self.callInCalled!
                }
                if self.callInCaller != nil {
                    map["CallInCaller"] = self.callInCaller!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.recordUrl != nil {
                    map["RecordUrl"] = self.recordUrl!
                }
                if self.transferCalled != nil {
                    map["TransferCalled"] = self.transferCalled!
                }
                if self.transferCaller != nil {
                    map["TransferCaller"] = self.transferCaller!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallInCalled") {
                    self.callInCalled = dict["CallInCalled"] as! String
                }
                if dict.keys.contains("CallInCaller") {
                    self.callInCaller = dict["CallInCaller"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("RecordUrl") {
                    self.recordUrl = dict["RecordUrl"] as! String
                }
                if dict.keys.contains("TransferCalled") {
                    self.transferCalled = dict["TransferCalled"] as! String
                }
                if dict.keys.contains("TransferCaller") {
                    self.transferCaller = dict["TransferCaller"] as! String
                }
            }
        }
        public var pageNo: Int64?

        public var pageSize: Int64?

        public var total: Int64?

        public var values: [QueryCallInTransferRecordResponseBody.Data.Values]?

        public override init() {
            super.init()
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
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [QueryCallInTransferRecordResponseBody.Data.Values]
            }
        }
    }
    public var code: String?

    public var data: QueryCallInTransferRecordResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryCallInTransferRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryCallInTransferRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallInTransferRecordResponseBody?

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
            var model = QueryCallInTransferRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRobotInfoListRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRobotInfoListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryRobotInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRobotInfoListResponseBody?

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
            var model = QueryRobotInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRobotTaskCallDetailRequest : Tea.TeaModel {
    public var callee: String?

    public var ownerId: Int64?

    public var queryDate: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.callee != nil {
            map["Callee"] = self.callee!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.queryDate != nil {
            map["QueryDate"] = self.queryDate!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callee") {
            self.callee = dict["Callee"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QueryDate") {
            self.queryDate = dict["QueryDate"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class QueryRobotTaskCallDetailResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryRobotTaskCallDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRobotTaskCallDetailResponseBody?

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
            var model = QueryRobotTaskCallDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRobotTaskCallListRequest : Tea.TeaModel {
    public var callResult: String?

    public var called: String?

    public var dialogCountFrom: String?

    public var dialogCountTo: String?

    public var durationFrom: String?

    public var durationTo: String?

    public var hangupDirection: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.callResult != nil {
            map["CallResult"] = self.callResult!
        }
        if self.called != nil {
            map["Called"] = self.called!
        }
        if self.dialogCountFrom != nil {
            map["DialogCountFrom"] = self.dialogCountFrom!
        }
        if self.dialogCountTo != nil {
            map["DialogCountTo"] = self.dialogCountTo!
        }
        if self.durationFrom != nil {
            map["DurationFrom"] = self.durationFrom!
        }
        if self.durationTo != nil {
            map["DurationTo"] = self.durationTo!
        }
        if self.hangupDirection != nil {
            map["HangupDirection"] = self.hangupDirection!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallResult") {
            self.callResult = dict["CallResult"] as! String
        }
        if dict.keys.contains("Called") {
            self.called = dict["Called"] as! String
        }
        if dict.keys.contains("DialogCountFrom") {
            self.dialogCountFrom = dict["DialogCountFrom"] as! String
        }
        if dict.keys.contains("DialogCountTo") {
            self.dialogCountTo = dict["DialogCountTo"] as! String
        }
        if dict.keys.contains("DurationFrom") {
            self.durationFrom = dict["DurationFrom"] as! String
        }
        if dict.keys.contains("DurationTo") {
            self.durationTo = dict["DurationTo"] as! String
        }
        if dict.keys.contains("HangupDirection") {
            self.hangupDirection = dict["HangupDirection"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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
    }
}

public class QueryRobotTaskCallListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryRobotTaskCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRobotTaskCallListResponseBody?

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
            var model = QueryRobotTaskCallListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRobotTaskDetailRequest : Tea.TeaModel {
    public var id: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRobotTaskDetailResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryRobotTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRobotTaskDetailResponseBody?

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
            var model = QueryRobotTaskDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRobotTaskListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: String?

    public var taskName: String?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("Time") {
            self.time = dict["Time"] as! String
        }
    }
}

public class QueryRobotTaskListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var pageNo: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class QueryRobotTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRobotTaskListResponseBody?

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
            var model = QueryRobotTaskListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRobotv2AllListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRobotv2AllListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class QueryRobotv2AllListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRobotv2AllListResponseBody?

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
            var model = QueryRobotv2AllListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryVirtualNumberRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteType") {
            self.routeType = dict["RouteType"] as! Int32
        }
    }
}

public class QueryVirtualNumberResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryVirtualNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVirtualNumberResponseBody?

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
            var model = QueryVirtualNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryVirtualNumberRelationRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var phoneNum: String?

    public var prodCode: String?

    public var qualificationId: Int64?

    public var regionNameCity: String?

    public var relatedNum: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var routeType: Int32?

    public var specId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNum != nil {
            map["PhoneNum"] = self.phoneNum!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.regionNameCity != nil {
            map["RegionNameCity"] = self.regionNameCity!
        }
        if self.relatedNum != nil {
            map["RelatedNum"] = self.relatedNum!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PhoneNum") {
            self.phoneNum = dict["PhoneNum"] as! String
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("QualificationId") {
            self.qualificationId = dict["QualificationId"] as! Int64
        }
        if dict.keys.contains("RegionNameCity") {
            self.regionNameCity = dict["RegionNameCity"] as! String
        }
        if dict.keys.contains("RelatedNum") {
            self.relatedNum = dict["RelatedNum"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RouteType") {
            self.routeType = dict["RouteType"] as! Int32
        }
        if dict.keys.contains("SpecId") {
            self.specId = dict["SpecId"] as! Int64
        }
    }
}

public class QueryVirtualNumberRelationResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryVirtualNumberRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVirtualNumberRelationResponseBody?

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
            var model = QueryVirtualNumberRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryVoiceFileAuditInfoRequest : Tea.TeaModel {
    public var businessType: Int32?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var voiceCodes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.voiceCodes != nil {
            map["VoiceCodes"] = self.voiceCodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VoiceCodes") {
            self.voiceCodes = dict["VoiceCodes"] as! String
        }
    }
}

public class QueryVoiceFileAuditInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var auditState: String?

        public var rejectInfo: String?

        public var voiceCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditState != nil {
                map["AuditState"] = self.auditState!
            }
            if self.rejectInfo != nil {
                map["RejectInfo"] = self.rejectInfo!
            }
            if self.voiceCode != nil {
                map["VoiceCode"] = self.voiceCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditState") {
                self.auditState = dict["AuditState"] as! String
            }
            if dict.keys.contains("RejectInfo") {
                self.rejectInfo = dict["RejectInfo"] as! String
            }
            if dict.keys.contains("VoiceCode") {
                self.voiceCode = dict["VoiceCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: [QueryVoiceFileAuditInfoResponseBody.Data]?

    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [QueryVoiceFileAuditInfoResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryVoiceFileAuditInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVoiceFileAuditInfoResponseBody?

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
            var model = QueryVoiceFileAuditInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoverCallInConfigRequest : Tea.TeaModel {
    public var number: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Number") {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RecoverCallInConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
    }
}

public class RecoverCallInConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverCallInConfigResponseBody?

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
            var model = RecoverCallInConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshMqttTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RefreshMqttTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientId: String?

        public var expireTime: String?

        public var host: String?

        public var instanceId: String?

        public var p2pTopic: String?

        public var serverId: String?

        public var token: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.p2pTopic != nil {
                map["P2pTopic"] = self.p2pTopic!
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("P2pTopic") {
                self.p2pTopic = dict["P2pTopic"] as! String
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var code: String?

    public var data: RefreshMqttTokenResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RefreshMqttTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshMqttTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshMqttTokenResponseBody?

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
            var model = RefreshMqttTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendVerificationRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var target: String?

    public var verifyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("VerifyType") {
            self.verifyType = dict["VerifyType"] as! String
        }
    }
}

public class SendVerificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
    }
}

public class SendVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVerificationResponseBody?

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
            var model = SendVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetTransferCalleePoolConfigRequest : Tea.TeaModel {
    public class Details : Tea.TeaModel {
        public var called: String?

        public var caller: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.called != nil {
                map["Called"] = self.called!
            }
            if self.caller != nil {
                map["Caller"] = self.caller!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Called") {
                self.called = dict["Called"] as! String
            }
            if dict.keys.contains("Caller") {
                self.caller = dict["Caller"] as! String
            }
        }
    }
    public var calledRouteMode: String?

    public var details: [SetTransferCalleePoolConfigRequest.Details]?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledRouteMode != nil {
            map["CalledRouteMode"] = self.calledRouteMode!
        }
        if self.details != nil {
            var tmp : [Any] = []
            for k in self.details! {
                tmp.append(k.toMap())
            }
            map["Details"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledRouteMode") {
            self.calledRouteMode = dict["CalledRouteMode"] as! String
        }
        if dict.keys.contains("Details") {
            self.details = dict["Details"] as! [SetTransferCalleePoolConfigRequest.Details]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("QualificationId") {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class SetTransferCalleePoolConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
    }
}

public class SetTransferCalleePoolConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTransferCalleePoolConfigResponseBody?

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
            var model = SetTransferCalleePoolConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SingleCallByTtsRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var calledShowNumber: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var speed: Int32?

    public var ttsCode: String?

    public var ttsParam: String?

    public var volume: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.calledShowNumber != nil {
            map["CalledShowNumber"] = self.calledShowNumber!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.ttsCode != nil {
            map["TtsCode"] = self.ttsCode!
        }
        if self.ttsParam != nil {
            map["TtsParam"] = self.ttsParam!
        }
        if self.volume != nil {
            map["Volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CalledShowNumber") {
            self.calledShowNumber = dict["CalledShowNumber"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Speed") {
            self.speed = dict["Speed"] as! Int32
        }
        if dict.keys.contains("TtsCode") {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("TtsParam") {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! Int32
        }
    }
}

public class SingleCallByTtsResponseBody : Tea.TeaModel {
    public var callId: String?

    public var code: String?

    public var message: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SingleCallByTtsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleCallByTtsResponseBody?

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
            var model = SingleCallByTtsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SingleCallByVoiceRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var calledShowNumber: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var speed: Int32?

    public var voiceCode: String?

    public var volume: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.calledShowNumber != nil {
            map["CalledShowNumber"] = self.calledShowNumber!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.voiceCode != nil {
            map["VoiceCode"] = self.voiceCode!
        }
        if self.volume != nil {
            map["Volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CalledShowNumber") {
            self.calledShowNumber = dict["CalledShowNumber"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Speed") {
            self.speed = dict["Speed"] as! Int32
        }
        if dict.keys.contains("VoiceCode") {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! Int32
        }
    }
}

public class SingleCallByVoiceResponseBody : Tea.TeaModel {
    public var callId: String?

    public var code: String?

    public var message: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SingleCallByVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleCallByVoiceResponseBody?

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
            var model = SingleCallByVoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SmartCallRequest : Tea.TeaModel {
    public var actionCodeBreak: Bool?

    public var actionCodeTimeBreak: Int32?

    public var asrBaseId: String?

    public var asrModelId: String?

    public var backgroundFileCode: String?

    public var backgroundSpeed: Int32?

    public var backgroundVolume: Int32?

    public var calledNumber: String?

    public var calledShowNumber: String?

    public var dynamicId: String?

    public var earlyMediaAsr: Bool?

    public var enableITN: Bool?

    public var muteTime: Int32?

    public var outId: String?

    public var ownerId: Int64?

    public var pauseTime: Int32?

    public var recordFlag: Bool?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sessionTimeout: Int32?

    public var speed: Int32?

    public var streamAsr: Int32?

    public var ttsConf: Bool?

    public var ttsSpeed: Int32?

    public var ttsStyle: String?

    public var ttsVolume: Int32?

    public var voiceCode: String?

    public var voiceCodeParam: String?

    public var volume: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCodeBreak != nil {
            map["ActionCodeBreak"] = self.actionCodeBreak!
        }
        if self.actionCodeTimeBreak != nil {
            map["ActionCodeTimeBreak"] = self.actionCodeTimeBreak!
        }
        if self.asrBaseId != nil {
            map["AsrBaseId"] = self.asrBaseId!
        }
        if self.asrModelId != nil {
            map["AsrModelId"] = self.asrModelId!
        }
        if self.backgroundFileCode != nil {
            map["BackgroundFileCode"] = self.backgroundFileCode!
        }
        if self.backgroundSpeed != nil {
            map["BackgroundSpeed"] = self.backgroundSpeed!
        }
        if self.backgroundVolume != nil {
            map["BackgroundVolume"] = self.backgroundVolume!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.calledShowNumber != nil {
            map["CalledShowNumber"] = self.calledShowNumber!
        }
        if self.dynamicId != nil {
            map["DynamicId"] = self.dynamicId!
        }
        if self.earlyMediaAsr != nil {
            map["EarlyMediaAsr"] = self.earlyMediaAsr!
        }
        if self.enableITN != nil {
            map["EnableITN"] = self.enableITN!
        }
        if self.muteTime != nil {
            map["MuteTime"] = self.muteTime!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pauseTime != nil {
            map["PauseTime"] = self.pauseTime!
        }
        if self.recordFlag != nil {
            map["RecordFlag"] = self.recordFlag!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.streamAsr != nil {
            map["StreamAsr"] = self.streamAsr!
        }
        if self.ttsConf != nil {
            map["TtsConf"] = self.ttsConf!
        }
        if self.ttsSpeed != nil {
            map["TtsSpeed"] = self.ttsSpeed!
        }
        if self.ttsStyle != nil {
            map["TtsStyle"] = self.ttsStyle!
        }
        if self.ttsVolume != nil {
            map["TtsVolume"] = self.ttsVolume!
        }
        if self.voiceCode != nil {
            map["VoiceCode"] = self.voiceCode!
        }
        if self.voiceCodeParam != nil {
            map["VoiceCodeParam"] = self.voiceCodeParam!
        }
        if self.volume != nil {
            map["Volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCodeBreak") {
            self.actionCodeBreak = dict["ActionCodeBreak"] as! Bool
        }
        if dict.keys.contains("ActionCodeTimeBreak") {
            self.actionCodeTimeBreak = dict["ActionCodeTimeBreak"] as! Int32
        }
        if dict.keys.contains("AsrBaseId") {
            self.asrBaseId = dict["AsrBaseId"] as! String
        }
        if dict.keys.contains("AsrModelId") {
            self.asrModelId = dict["AsrModelId"] as! String
        }
        if dict.keys.contains("BackgroundFileCode") {
            self.backgroundFileCode = dict["BackgroundFileCode"] as! String
        }
        if dict.keys.contains("BackgroundSpeed") {
            self.backgroundSpeed = dict["BackgroundSpeed"] as! Int32
        }
        if dict.keys.contains("BackgroundVolume") {
            self.backgroundVolume = dict["BackgroundVolume"] as! Int32
        }
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CalledShowNumber") {
            self.calledShowNumber = dict["CalledShowNumber"] as! String
        }
        if dict.keys.contains("DynamicId") {
            self.dynamicId = dict["DynamicId"] as! String
        }
        if dict.keys.contains("EarlyMediaAsr") {
            self.earlyMediaAsr = dict["EarlyMediaAsr"] as! Bool
        }
        if dict.keys.contains("EnableITN") {
            self.enableITN = dict["EnableITN"] as! Bool
        }
        if dict.keys.contains("MuteTime") {
            self.muteTime = dict["MuteTime"] as! Int32
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PauseTime") {
            self.pauseTime = dict["PauseTime"] as! Int32
        }
        if dict.keys.contains("RecordFlag") {
            self.recordFlag = dict["RecordFlag"] as! Bool
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("Speed") {
            self.speed = dict["Speed"] as! Int32
        }
        if dict.keys.contains("StreamAsr") {
            self.streamAsr = dict["StreamAsr"] as! Int32
        }
        if dict.keys.contains("TtsConf") {
            self.ttsConf = dict["TtsConf"] as! Bool
        }
        if dict.keys.contains("TtsSpeed") {
            self.ttsSpeed = dict["TtsSpeed"] as! Int32
        }
        if dict.keys.contains("TtsStyle") {
            self.ttsStyle = dict["TtsStyle"] as! String
        }
        if dict.keys.contains("TtsVolume") {
            self.ttsVolume = dict["TtsVolume"] as! Int32
        }
        if dict.keys.contains("VoiceCode") {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("VoiceCodeParam") {
            self.voiceCodeParam = dict["VoiceCodeParam"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! Int32
        }
    }
}

public class SmartCallResponseBody : Tea.TeaModel {
    public var callId: String?

    public var code: String?

    public var message: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SmartCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmartCallResponseBody?

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
            var model = SmartCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SmartCallOperateRequest : Tea.TeaModel {
    public var callId: String?

    public var command: String?

    public var ownerId: Int64?

    public var param: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Param") {
            self.param = dict["Param"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class SmartCallOperateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class SmartCallOperateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmartCallOperateResponseBody?

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
            var model = SmartCallOperateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartRobotTaskRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduleTime: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScheduleTime") {
            self.scheduleTime = dict["ScheduleTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class StartRobotTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class StartRobotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRobotTaskResponseBody?

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
            var model = StartRobotTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopCallInConfigRequest : Tea.TeaModel {
    public var number: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Number") {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class StopCallInConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
    }
}

public class StopCallInConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopCallInConfigResponseBody?

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
            var model = StopCallInConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopRobotTaskRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class StopRobotTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class StopRobotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopRobotTaskResponseBody?

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
            var model = StopRobotTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitHotlineTransferRegisterRequest : Tea.TeaModel {
    public class TransferPhoneNumberInfos : Tea.TeaModel {
        public var identityCard: String?

        public var phoneNumber: String?

        public var phoneNumberOwnerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.identityCard != nil {
                map["IdentityCard"] = self.identityCard!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.phoneNumberOwnerName != nil {
                map["PhoneNumberOwnerName"] = self.phoneNumberOwnerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdentityCard") {
                self.identityCard = dict["IdentityCard"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PhoneNumberOwnerName") {
                self.phoneNumberOwnerName = dict["PhoneNumberOwnerName"] as! String
            }
        }
    }
    public var agreement: String?

    public var hotlineNumber: String?

    public var operatorIdentityCard: String?

    public var operatorMail: String?

    public var operatorMailVerifyCode: String?

    public var operatorMobile: String?

    public var operatorMobileVerifyCode: String?

    public var operatorName: String?

    public var ownerId: Int64?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var transferPhoneNumberInfos: [SubmitHotlineTransferRegisterRequest.TransferPhoneNumberInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreement != nil {
            map["Agreement"] = self.agreement!
        }
        if self.hotlineNumber != nil {
            map["HotlineNumber"] = self.hotlineNumber!
        }
        if self.operatorIdentityCard != nil {
            map["OperatorIdentityCard"] = self.operatorIdentityCard!
        }
        if self.operatorMail != nil {
            map["OperatorMail"] = self.operatorMail!
        }
        if self.operatorMailVerifyCode != nil {
            map["OperatorMailVerifyCode"] = self.operatorMailVerifyCode!
        }
        if self.operatorMobile != nil {
            map["OperatorMobile"] = self.operatorMobile!
        }
        if self.operatorMobileVerifyCode != nil {
            map["OperatorMobileVerifyCode"] = self.operatorMobileVerifyCode!
        }
        if self.operatorName != nil {
            map["OperatorName"] = self.operatorName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.transferPhoneNumberInfos != nil {
            var tmp : [Any] = []
            for k in self.transferPhoneNumberInfos! {
                tmp.append(k.toMap())
            }
            map["TransferPhoneNumberInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Agreement") {
            self.agreement = dict["Agreement"] as! String
        }
        if dict.keys.contains("HotlineNumber") {
            self.hotlineNumber = dict["HotlineNumber"] as! String
        }
        if dict.keys.contains("OperatorIdentityCard") {
            self.operatorIdentityCard = dict["OperatorIdentityCard"] as! String
        }
        if dict.keys.contains("OperatorMail") {
            self.operatorMail = dict["OperatorMail"] as! String
        }
        if dict.keys.contains("OperatorMailVerifyCode") {
            self.operatorMailVerifyCode = dict["OperatorMailVerifyCode"] as! String
        }
        if dict.keys.contains("OperatorMobile") {
            self.operatorMobile = dict["OperatorMobile"] as! String
        }
        if dict.keys.contains("OperatorMobileVerifyCode") {
            self.operatorMobileVerifyCode = dict["OperatorMobileVerifyCode"] as! String
        }
        if dict.keys.contains("OperatorName") {
            self.operatorName = dict["OperatorName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TransferPhoneNumberInfos") {
            self.transferPhoneNumberInfos = dict["TransferPhoneNumberInfos"] as! [SubmitHotlineTransferRegisterRequest.TransferPhoneNumberInfos]
        }
    }
}

public class SubmitHotlineTransferRegisterResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitHotlineTransferRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitHotlineTransferRegisterResponseBody?

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
            var model = SubmitHotlineTransferRegisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadRobotTaskCalledFileRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var id: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ttsParam: String?

    public var ttsParamHead: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ttsParam != nil {
            map["TtsParam"] = self.ttsParam!
        }
        if self.ttsParamHead != nil {
            map["TtsParamHead"] = self.ttsParamHead!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TtsParam") {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("TtsParamHead") {
            self.ttsParamHead = dict["TtsParamHead"] as! String
        }
    }
}

public class UploadRobotTaskCalledFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
    }
}

public class UploadRobotTaskCalledFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadRobotTaskCalledFileResponseBody?

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
            var model = UploadRobotTaskCalledFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
