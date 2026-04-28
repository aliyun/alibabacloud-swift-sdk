import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CorpNameList"] as? String {
            self.corpNameList = value
        }
        if let value = dict["NumberList"] as? String {
            self.numberList = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNum"] as? String {
            self.phoneNum = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RouteType"] as? Int32 {
            self.routeType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddVirtualNumberRelationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CalledShowNumber"] as? String {
            self.calledShowNumber = value
        }
        if let value = dict["CorpName"] as? String {
            self.corpName = value
        }
        if let value = dict["DialogId"] as? String {
            self.dialogId = value
        }
        if let value = dict["EarlyMediaAsr"] as? Bool {
            self.earlyMediaAsr = value
        }
        if let value = dict["IsSelfLine"] as? Bool {
            self.isSelfLine = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScheduleCall"] as? Bool {
            self.scheduleCall = value
        }
        if let value = dict["ScheduleTime"] as? Int64 {
            self.scheduleTime = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TtsParam"] as? String {
            self.ttsParam = value
        }
        if let value = dict["TtsParamHead"] as? String {
            self.ttsParamHead = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchRobotSmartCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelCallRequest : Tea.TeaModel {
    public var callId: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CancelCallResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class CancelCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelCallResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelOrderRobotTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelRobotTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeMediaTypeRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNum: String?

    public var mediaType: String?

    public var outId: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNum != nil {
            map["CalledNum"] = self.calledNum!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNum"] as? String {
            self.calledNum = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ChangeMediaTypeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? Bool {
            self.model = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChangeMediaTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeMediaTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeMediaTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudAgentLoginRequest : Tea.TeaModel {
    public var bindTel: String?

    public var bindType: Int64?

    public var cno: String?

    public var enterpriseId: Int64?

    public var loginStatus: Int64?

    public var pauseDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindTel != nil {
            map["BindTel"] = self.bindTel!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.loginStatus != nil {
            map["LoginStatus"] = self.loginStatus!
        }
        if self.pauseDescription != nil {
            map["PauseDescription"] = self.pauseDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindTel"] as? String {
            self.bindTel = value
        }
        if let value = dict["BindType"] as? Int64 {
            self.bindType = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["LoginStatus"] as? Int64 {
            self.loginStatus = value
        }
        if let value = dict["PauseDescription"] as? String {
            self.pauseDescription = value
        }
    }
}

public class CloudAgentLoginResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudAgentLoginResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudAgentLoginResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudAgentLoginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudAgentLoginResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudAgentLoginResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudAgentLogoutRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

    public var ignoreOffline: Int64?

    public var isKickout: Int64?

    public var removeBinding: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.ignoreOffline != nil {
            map["IgnoreOffline"] = self.ignoreOffline!
        }
        if self.isKickout != nil {
            map["IsKickout"] = self.isKickout!
        }
        if self.removeBinding != nil {
            map["RemoveBinding"] = self.removeBinding!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["IgnoreOffline"] as? Int64 {
            self.ignoreOffline = value
        }
        if let value = dict["IsKickout"] as? Int64 {
            self.isKickout = value
        }
        if let value = dict["RemoveBinding"] as? Int64 {
            self.removeBinding = value
        }
    }
}

public class CloudAgentLogoutResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudAgentLogoutResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudAgentLogoutResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudAgentLogoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudAgentLogoutResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudAgentLogoutResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudAgentSetUserDataRequest : Tea.TeaModel {
    public var cno: String?

    public var direction: Int64?

    public var enterpriseId: Int64?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["Direction"] as? Int64 {
            self.direction = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CloudAgentSetUserDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudAgentSetUserDataResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudAgentSetUserDataResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudAgentSetUserDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudAgentSetUserDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudAgentSetUserDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudAgentUnlinkRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

    public var requestUniqueId: String?

    public var side: Int64?

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
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.requestUniqueId != nil {
            map["RequestUniqueId"] = self.requestUniqueId!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["RequestUniqueId"] as? String {
            self.requestUniqueId = value
        }
        if let value = dict["Side"] as? Int64 {
            self.side = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
    }
}

public class CloudAgentUnlinkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudAgentUnlinkResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudAgentUnlinkResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudAgentUnlinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudAgentUnlinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudAgentUnlinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudBatchCreateAgentRequest : Tea.TeaModel {
    public var active: Int64?

    public var areaCode: String?

    public var callPower: Int64?

    public var cno: String?

    public var comment: String?

    public var endCno: String?

    public var enterpriseId: Int64?

    public var ibRecord: Int64?

    public var isAsr: Int64?

    public var isOb: Int64?

    public var isQualityCheck: Int64?

    public var name: String?

    public var obClid: String?

    public var obClidProperty: String?

    public var obClidType: Int64?

    public var obRecord: Int64?

    public var ownerId: Int64?

    public var power: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var skillIds: String?

    public var skillLevels: String?

    public var webrtcUrlType: Int64?

    public var wrapup: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.areaCode != nil {
            map["AreaCode"] = self.areaCode!
        }
        if self.callPower != nil {
            map["CallPower"] = self.callPower!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.endCno != nil {
            map["EndCno"] = self.endCno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.ibRecord != nil {
            map["IbRecord"] = self.ibRecord!
        }
        if self.isAsr != nil {
            map["IsAsr"] = self.isAsr!
        }
        if self.isOb != nil {
            map["IsOb"] = self.isOb!
        }
        if self.isQualityCheck != nil {
            map["IsQualityCheck"] = self.isQualityCheck!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.obClid != nil {
            map["ObClid"] = self.obClid!
        }
        if self.obClidProperty != nil {
            map["ObClidProperty"] = self.obClidProperty!
        }
        if self.obClidType != nil {
            map["ObClidType"] = self.obClidType!
        }
        if self.obRecord != nil {
            map["ObRecord"] = self.obRecord!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.power != nil {
            map["Power"] = self.power!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        if self.skillLevels != nil {
            map["SkillLevels"] = self.skillLevels!
        }
        if self.webrtcUrlType != nil {
            map["WebrtcUrlType"] = self.webrtcUrlType!
        }
        if self.wrapup != nil {
            map["Wrapup"] = self.wrapup!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int64 {
            self.active = value
        }
        if let value = dict["AreaCode"] as? String {
            self.areaCode = value
        }
        if let value = dict["CallPower"] as? Int64 {
            self.callPower = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EndCno"] as? String {
            self.endCno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["IbRecord"] as? Int64 {
            self.ibRecord = value
        }
        if let value = dict["IsAsr"] as? Int64 {
            self.isAsr = value
        }
        if let value = dict["IsOb"] as? Int64 {
            self.isOb = value
        }
        if let value = dict["IsQualityCheck"] as? Int64 {
            self.isQualityCheck = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObClid"] as? String {
            self.obClid = value
        }
        if let value = dict["ObClidProperty"] as? String {
            self.obClidProperty = value
        }
        if let value = dict["ObClidType"] as? Int64 {
            self.obClidType = value
        }
        if let value = dict["ObRecord"] as? Int64 {
            self.obRecord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Power"] as? Int64 {
            self.power = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SkillIds"] as? String {
            self.skillIds = value
        }
        if let value = dict["SkillLevels"] as? String {
            self.skillLevels = value
        }
        if let value = dict["WebrtcUrlType"] as? Int64 {
            self.webrtcUrlType = value
        }
        if let value = dict["Wrapup"] as? Int64 {
            self.wrapup = value
        }
    }
}

public class CloudBatchCreateAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cnos: String?

        public var fail: String?

        public var other: String?

        public var success: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cnos != nil {
                map["Cnos"] = self.cnos!
            }
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.other != nil {
                map["Other"] = self.other!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cnos"] as? String {
                self.cnos = value
            }
            if let value = dict["Fail"] as? String {
                self.fail = value
            }
            if let value = dict["Other"] as? String {
                self.other = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudBatchCreateAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudBatchCreateAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudBatchCreateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudBatchCreateAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudBatchCreateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudBatchGetAgentStatusRequest : Tea.TeaModel {
    public var cnos: String?

    public var enterpriseId: Int64?

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
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudBatchGetAgentStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceStatus: String?

        public var loginStatus: String?

        public var mainUniqueId: String?

        public var state: String?

        public var stateAction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.loginStatus != nil {
                map["LoginStatus"] = self.loginStatus!
            }
            if self.mainUniqueId != nil {
                map["MainUniqueId"] = self.mainUniqueId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.stateAction != nil {
                map["StateAction"] = self.stateAction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceStatus"] as? String {
                self.deviceStatus = value
            }
            if let value = dict["LoginStatus"] as? String {
                self.loginStatus = value
            }
            if let value = dict["MainUniqueId"] as? String {
                self.mainUniqueId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["StateAction"] as? String {
                self.stateAction = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudBatchGetAgentStatusResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudBatchGetAgentStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudBatchGetAgentStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudBatchGetAgentStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudBatchGetAgentStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudBatchUpdateAgentRequest : Tea.TeaModel {
    public var active: Int64?

    public var agentType: Int64?

    public var areaCode: String?

    public var callPower: Int64?

    public var cnos: String?

    public var comment: String?

    public var enterpriseId: Int64?

    public var ibRecord: Int64?

    public var isAsr: Int64?

    public var isOb: Int64?

    public var isObRemember: String?

    public var isQualityCheck: Int64?

    public var isRandom: String?

    public var name: String?

    public var obClid: String?

    public var obClidProperty: String?

    public var obClidType: Int64?

    public var obRecord: Int64?

    public var ownerId: Int64?

    public var permitObPreviewTime: String?

    public var power: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var webrtcUrlType: Int64?

    public var wrapup: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.areaCode != nil {
            map["AreaCode"] = self.areaCode!
        }
        if self.callPower != nil {
            map["CallPower"] = self.callPower!
        }
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.ibRecord != nil {
            map["IbRecord"] = self.ibRecord!
        }
        if self.isAsr != nil {
            map["IsAsr"] = self.isAsr!
        }
        if self.isOb != nil {
            map["IsOb"] = self.isOb!
        }
        if self.isObRemember != nil {
            map["IsObRemember"] = self.isObRemember!
        }
        if self.isQualityCheck != nil {
            map["IsQualityCheck"] = self.isQualityCheck!
        }
        if self.isRandom != nil {
            map["IsRandom"] = self.isRandom!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.obClid != nil {
            map["ObClid"] = self.obClid!
        }
        if self.obClidProperty != nil {
            map["ObClidProperty"] = self.obClidProperty!
        }
        if self.obClidType != nil {
            map["ObClidType"] = self.obClidType!
        }
        if self.obRecord != nil {
            map["ObRecord"] = self.obRecord!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permitObPreviewTime != nil {
            map["PermitObPreviewTime"] = self.permitObPreviewTime!
        }
        if self.power != nil {
            map["Power"] = self.power!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.webrtcUrlType != nil {
            map["WebrtcUrlType"] = self.webrtcUrlType!
        }
        if self.wrapup != nil {
            map["Wrapup"] = self.wrapup!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int64 {
            self.active = value
        }
        if let value = dict["AgentType"] as? Int64 {
            self.agentType = value
        }
        if let value = dict["AreaCode"] as? String {
            self.areaCode = value
        }
        if let value = dict["CallPower"] as? Int64 {
            self.callPower = value
        }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["IbRecord"] as? Int64 {
            self.ibRecord = value
        }
        if let value = dict["IsAsr"] as? Int64 {
            self.isAsr = value
        }
        if let value = dict["IsOb"] as? Int64 {
            self.isOb = value
        }
        if let value = dict["IsObRemember"] as? String {
            self.isObRemember = value
        }
        if let value = dict["IsQualityCheck"] as? Int64 {
            self.isQualityCheck = value
        }
        if let value = dict["IsRandom"] as? String {
            self.isRandom = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObClid"] as? String {
            self.obClid = value
        }
        if let value = dict["ObClidProperty"] as? String {
            self.obClidProperty = value
        }
        if let value = dict["ObClidType"] as? Int64 {
            self.obClidType = value
        }
        if let value = dict["ObRecord"] as? Int64 {
            self.obRecord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PermitObPreviewTime"] as? String {
            self.permitObPreviewTime = value
        }
        if let value = dict["Power"] as? Int64 {
            self.power = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WebrtcUrlType"] as? Int64 {
            self.webrtcUrlType = value
        }
        if let value = dict["Wrapup"] as? Int64 {
            self.wrapup = value
        }
    }
}

public class CloudBatchUpdateAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fail: String?

        public var success: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Fail"] as? String {
                self.fail = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudBatchUpdateAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudBatchUpdateAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudBatchUpdateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudBatchUpdateAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudBatchUpdateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudCreateAgentRequest : Tea.TeaModel {
    public var active: Int64?

    public var areaCode: String?

    public var callPower: Int64?

    public var cno: String?

    public var comment: String?

    public var enterpriseId: Int64?

    public var ibRecord: Int64?

    public var isAsr: Int64?

    public var isOb: Int64?

    public var isObRemember: String?

    public var isQualityCheck: Int64?

    public var name: String?

    public var obClid: String?

    public var obClidProperty: String?

    public var obClidType: Int64?

    public var obRecord: Int64?

    public var ownerId: Int64?

    public var permitObPreviewTime: String?

    public var power: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var skillIds: String?

    public var skillLevels: String?

    public var webrtcUrlType: Int64?

    public var wrapup: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.areaCode != nil {
            map["AreaCode"] = self.areaCode!
        }
        if self.callPower != nil {
            map["CallPower"] = self.callPower!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.ibRecord != nil {
            map["IbRecord"] = self.ibRecord!
        }
        if self.isAsr != nil {
            map["IsAsr"] = self.isAsr!
        }
        if self.isOb != nil {
            map["IsOb"] = self.isOb!
        }
        if self.isObRemember != nil {
            map["IsObRemember"] = self.isObRemember!
        }
        if self.isQualityCheck != nil {
            map["IsQualityCheck"] = self.isQualityCheck!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.obClid != nil {
            map["ObClid"] = self.obClid!
        }
        if self.obClidProperty != nil {
            map["ObClidProperty"] = self.obClidProperty!
        }
        if self.obClidType != nil {
            map["ObClidType"] = self.obClidType!
        }
        if self.obRecord != nil {
            map["ObRecord"] = self.obRecord!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permitObPreviewTime != nil {
            map["PermitObPreviewTime"] = self.permitObPreviewTime!
        }
        if self.power != nil {
            map["Power"] = self.power!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        if self.skillLevels != nil {
            map["SkillLevels"] = self.skillLevels!
        }
        if self.webrtcUrlType != nil {
            map["WebrtcUrlType"] = self.webrtcUrlType!
        }
        if self.wrapup != nil {
            map["Wrapup"] = self.wrapup!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int64 {
            self.active = value
        }
        if let value = dict["AreaCode"] as? String {
            self.areaCode = value
        }
        if let value = dict["CallPower"] as? Int64 {
            self.callPower = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["IbRecord"] as? Int64 {
            self.ibRecord = value
        }
        if let value = dict["IsAsr"] as? Int64 {
            self.isAsr = value
        }
        if let value = dict["IsOb"] as? Int64 {
            self.isOb = value
        }
        if let value = dict["IsObRemember"] as? String {
            self.isObRemember = value
        }
        if let value = dict["IsQualityCheck"] as? Int64 {
            self.isQualityCheck = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObClid"] as? String {
            self.obClid = value
        }
        if let value = dict["ObClidProperty"] as? String {
            self.obClidProperty = value
        }
        if let value = dict["ObClidType"] as? Int64 {
            self.obClidType = value
        }
        if let value = dict["ObRecord"] as? Int64 {
            self.obRecord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PermitObPreviewTime"] as? String {
            self.permitObPreviewTime = value
        }
        if let value = dict["Power"] as? Int64 {
            self.power = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SkillIds"] as? String {
            self.skillIds = value
        }
        if let value = dict["SkillLevels"] as? String {
            self.skillLevels = value
        }
        if let value = dict["WebrtcUrlType"] as? Int64 {
            self.webrtcUrlType = value
        }
        if let value = dict["Wrapup"] as? Int64 {
            self.wrapup = value
        }
    }
}

public class CloudCreateAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agent : Tea.TeaModel {
            public var active: String?

            public var areaCode: String?

            public var bindTel: String?

            public var bindTelType: String?

            public var callPower: String?

            public var cno: String?

            public var createTime: String?

            public var enterpriseId: String?

            public var ibRecord: String?

            public var id: String?

            public var isAsr: String?

            public var isOb: String?

            public var isQualityCheck: String?

            public var name: String?

            public var obClid: String?

            public var obClidProperty: String?

            public var obClidType: String?

            public var obRecord: String?

            public var power: String?

            public var status: String?

            public var webrtcUrlType: String?

            public var wrapup: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.active != nil {
                    map["Active"] = self.active!
                }
                if self.areaCode != nil {
                    map["AreaCode"] = self.areaCode!
                }
                if self.bindTel != nil {
                    map["BindTel"] = self.bindTel!
                }
                if self.bindTelType != nil {
                    map["BindTelType"] = self.bindTelType!
                }
                if self.callPower != nil {
                    map["CallPower"] = self.callPower!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.ibRecord != nil {
                    map["IbRecord"] = self.ibRecord!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isAsr != nil {
                    map["IsAsr"] = self.isAsr!
                }
                if self.isOb != nil {
                    map["IsOb"] = self.isOb!
                }
                if self.isQualityCheck != nil {
                    map["IsQualityCheck"] = self.isQualityCheck!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.obClid != nil {
                    map["ObClid"] = self.obClid!
                }
                if self.obClidProperty != nil {
                    map["ObClidProperty"] = self.obClidProperty!
                }
                if self.obClidType != nil {
                    map["ObClidType"] = self.obClidType!
                }
                if self.obRecord != nil {
                    map["ObRecord"] = self.obRecord!
                }
                if self.power != nil {
                    map["Power"] = self.power!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.webrtcUrlType != nil {
                    map["WebrtcUrlType"] = self.webrtcUrlType!
                }
                if self.wrapup != nil {
                    map["Wrapup"] = self.wrapup!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Active"] as? String {
                    self.active = value
                }
                if let value = dict["AreaCode"] as? String {
                    self.areaCode = value
                }
                if let value = dict["BindTel"] as? String {
                    self.bindTel = value
                }
                if let value = dict["BindTelType"] as? String {
                    self.bindTelType = value
                }
                if let value = dict["CallPower"] as? String {
                    self.callPower = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? String {
                    self.enterpriseId = value
                }
                if let value = dict["IbRecord"] as? String {
                    self.ibRecord = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IsAsr"] as? String {
                    self.isAsr = value
                }
                if let value = dict["IsOb"] as? String {
                    self.isOb = value
                }
                if let value = dict["IsQualityCheck"] as? String {
                    self.isQualityCheck = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ObClid"] as? String {
                    self.obClid = value
                }
                if let value = dict["ObClidProperty"] as? String {
                    self.obClidProperty = value
                }
                if let value = dict["ObClidType"] as? String {
                    self.obClidType = value
                }
                if let value = dict["ObRecord"] as? String {
                    self.obRecord = value
                }
                if let value = dict["Power"] as? String {
                    self.power = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["WebrtcUrlType"] as? String {
                    self.webrtcUrlType = value
                }
                if let value = dict["Wrapup"] as? String {
                    self.wrapup = value
                }
            }
        }
        public class AgentSkills : Tea.TeaModel {
            public var agentId: String?

            public var cno: String?

            public var createTime: String?

            public var enterpriseId: String?

            public var id: String?

            public var skillId: String?

            public var skillLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.skillId != nil {
                    map["SkillId"] = self.skillId!
                }
                if self.skillLevel != nil {
                    map["SkillLevel"] = self.skillLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? String {
                    self.enterpriseId = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["SkillId"] as? String {
                    self.skillId = value
                }
                if let value = dict["SkillLevel"] as? String {
                    self.skillLevel = value
                }
            }
        }
        public var agent: CloudCreateAgentResponseBody.Data.Agent?

        public var agentSkills: [CloudCreateAgentResponseBody.Data.AgentSkills]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agent?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agent != nil {
                map["Agent"] = self.agent?.toMap()
            }
            if self.agentSkills != nil {
                var tmp : [Any] = []
                for k in self.agentSkills! {
                    tmp.append(k.toMap())
                }
                map["AgentSkills"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agent"] as? [String: Any?] {
                var model = CloudCreateAgentResponseBody.Data.Agent()
                model.fromMap(value)
                self.agent = model
            }
            if let value = dict["AgentSkills"] as? [Any?] {
                var tmp : [CloudCreateAgentResponseBody.Data.AgentSkills] = []
                for v in value {
                    if v != nil {
                        var model = CloudCreateAgentResponseBody.Data.AgentSkills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agentSkills = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudCreateAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudCreateAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudCreateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudCreateAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudCreateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudCreateTaskRequest : Tea.TeaModel {
    public var agentGroup: String?

    public var agentTimeout: Int64?

    public var answerRate: Int64?

    public var autoComplete: Int64?

    public var autoDelete: Int64?

    public var autoStart: Int64?

    public var autoStartDay: String?

    public var autoStartTime: String?

    public var autoStop: Int64?

    public var autoStopDay: String?

    public var autoStopTime: String?

    public var autoTaskType: Int64?

    public var autoTriggerTimeStrategy: String?

    public var callGroupType: Int64?

    public var callLimitStrategy: String?

    public var callPriorityStrategy: String?

    public var callRouteStrategy: Int64?

    public var callStrategy: String?

    public var callVariables: String?

    public var clidProperty: String?

    public var cnos: String?

    public var concurrency: Int64?

    public var customerClidType: Int64?

    public var customerClidWeight: String?

    public var customerClidWeightFlag: Int64?

    public var customerClids: String?

    public var customerClidsCategory: Int64?

    public var customerClidsGroup: String?

    public var customerMoh: String?

    public var customerTimeout: Int64?

    public var customerVoice: String?

    public var description_: String?

    public var enterpriseId: Int64?

    public var forceEndFlag: Int64?

    public var isRewarm: Int64?

    public var ivrId: Int64?

    public var ivrName: String?

    public var maxWaitTime: Int64?

    public var minAvailableAgentCount: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var predictAdjust: Int64?

    public var quotiety: Double?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retryStrategy: String?

    public var retryStrategyOnlyToday: Int64?

    public var retryStrategyTimeType: Int64?

    public var templateName: String?

    public var timeStrategy: String?

    public var type: Int64?

    public var userFields: String?

    public var warmUpDuration: Int64?

    public var wrapup: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentGroup != nil {
            map["AgentGroup"] = self.agentGroup!
        }
        if self.agentTimeout != nil {
            map["AgentTimeout"] = self.agentTimeout!
        }
        if self.answerRate != nil {
            map["AnswerRate"] = self.answerRate!
        }
        if self.autoComplete != nil {
            map["AutoComplete"] = self.autoComplete!
        }
        if self.autoDelete != nil {
            map["AutoDelete"] = self.autoDelete!
        }
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.autoStartDay != nil {
            map["AutoStartDay"] = self.autoStartDay!
        }
        if self.autoStartTime != nil {
            map["AutoStartTime"] = self.autoStartTime!
        }
        if self.autoStop != nil {
            map["AutoStop"] = self.autoStop!
        }
        if self.autoStopDay != nil {
            map["AutoStopDay"] = self.autoStopDay!
        }
        if self.autoStopTime != nil {
            map["AutoStopTime"] = self.autoStopTime!
        }
        if self.autoTaskType != nil {
            map["AutoTaskType"] = self.autoTaskType!
        }
        if self.autoTriggerTimeStrategy != nil {
            map["AutoTriggerTimeStrategy"] = self.autoTriggerTimeStrategy!
        }
        if self.callGroupType != nil {
            map["CallGroupType"] = self.callGroupType!
        }
        if self.callLimitStrategy != nil {
            map["CallLimitStrategy"] = self.callLimitStrategy!
        }
        if self.callPriorityStrategy != nil {
            map["CallPriorityStrategy"] = self.callPriorityStrategy!
        }
        if self.callRouteStrategy != nil {
            map["CallRouteStrategy"] = self.callRouteStrategy!
        }
        if self.callStrategy != nil {
            map["CallStrategy"] = self.callStrategy!
        }
        if self.callVariables != nil {
            map["CallVariables"] = self.callVariables!
        }
        if self.clidProperty != nil {
            map["ClidProperty"] = self.clidProperty!
        }
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.customerClidType != nil {
            map["CustomerClidType"] = self.customerClidType!
        }
        if self.customerClidWeight != nil {
            map["CustomerClidWeight"] = self.customerClidWeight!
        }
        if self.customerClidWeightFlag != nil {
            map["CustomerClidWeightFlag"] = self.customerClidWeightFlag!
        }
        if self.customerClids != nil {
            map["CustomerClids"] = self.customerClids!
        }
        if self.customerClidsCategory != nil {
            map["CustomerClidsCategory"] = self.customerClidsCategory!
        }
        if self.customerClidsGroup != nil {
            map["CustomerClidsGroup"] = self.customerClidsGroup!
        }
        if self.customerMoh != nil {
            map["CustomerMoh"] = self.customerMoh!
        }
        if self.customerTimeout != nil {
            map["CustomerTimeout"] = self.customerTimeout!
        }
        if self.customerVoice != nil {
            map["CustomerVoice"] = self.customerVoice!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.forceEndFlag != nil {
            map["ForceEndFlag"] = self.forceEndFlag!
        }
        if self.isRewarm != nil {
            map["IsRewarm"] = self.isRewarm!
        }
        if self.ivrId != nil {
            map["IvrId"] = self.ivrId!
        }
        if self.ivrName != nil {
            map["IvrName"] = self.ivrName!
        }
        if self.maxWaitTime != nil {
            map["MaxWaitTime"] = self.maxWaitTime!
        }
        if self.minAvailableAgentCount != nil {
            map["MinAvailableAgentCount"] = self.minAvailableAgentCount!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.predictAdjust != nil {
            map["PredictAdjust"] = self.predictAdjust!
        }
        if self.quotiety != nil {
            map["Quotiety"] = self.quotiety!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retryStrategy != nil {
            map["RetryStrategy"] = self.retryStrategy!
        }
        if self.retryStrategyOnlyToday != nil {
            map["RetryStrategyOnlyToday"] = self.retryStrategyOnlyToday!
        }
        if self.retryStrategyTimeType != nil {
            map["RetryStrategyTimeType"] = self.retryStrategyTimeType!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.timeStrategy != nil {
            map["TimeStrategy"] = self.timeStrategy!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userFields != nil {
            map["UserFields"] = self.userFields!
        }
        if self.warmUpDuration != nil {
            map["WarmUpDuration"] = self.warmUpDuration!
        }
        if self.wrapup != nil {
            map["Wrapup"] = self.wrapup!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroup"] as? String {
            self.agentGroup = value
        }
        if let value = dict["AgentTimeout"] as? Int64 {
            self.agentTimeout = value
        }
        if let value = dict["AnswerRate"] as? Int64 {
            self.answerRate = value
        }
        if let value = dict["AutoComplete"] as? Int64 {
            self.autoComplete = value
        }
        if let value = dict["AutoDelete"] as? Int64 {
            self.autoDelete = value
        }
        if let value = dict["AutoStart"] as? Int64 {
            self.autoStart = value
        }
        if let value = dict["AutoStartDay"] as? String {
            self.autoStartDay = value
        }
        if let value = dict["AutoStartTime"] as? String {
            self.autoStartTime = value
        }
        if let value = dict["AutoStop"] as? Int64 {
            self.autoStop = value
        }
        if let value = dict["AutoStopDay"] as? String {
            self.autoStopDay = value
        }
        if let value = dict["AutoStopTime"] as? String {
            self.autoStopTime = value
        }
        if let value = dict["AutoTaskType"] as? Int64 {
            self.autoTaskType = value
        }
        if let value = dict["AutoTriggerTimeStrategy"] as? String {
            self.autoTriggerTimeStrategy = value
        }
        if let value = dict["CallGroupType"] as? Int64 {
            self.callGroupType = value
        }
        if let value = dict["CallLimitStrategy"] as? String {
            self.callLimitStrategy = value
        }
        if let value = dict["CallPriorityStrategy"] as? String {
            self.callPriorityStrategy = value
        }
        if let value = dict["CallRouteStrategy"] as? Int64 {
            self.callRouteStrategy = value
        }
        if let value = dict["CallStrategy"] as? String {
            self.callStrategy = value
        }
        if let value = dict["CallVariables"] as? String {
            self.callVariables = value
        }
        if let value = dict["ClidProperty"] as? String {
            self.clidProperty = value
        }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["CustomerClidType"] as? Int64 {
            self.customerClidType = value
        }
        if let value = dict["CustomerClidWeight"] as? String {
            self.customerClidWeight = value
        }
        if let value = dict["CustomerClidWeightFlag"] as? Int64 {
            self.customerClidWeightFlag = value
        }
        if let value = dict["CustomerClids"] as? String {
            self.customerClids = value
        }
        if let value = dict["CustomerClidsCategory"] as? Int64 {
            self.customerClidsCategory = value
        }
        if let value = dict["CustomerClidsGroup"] as? String {
            self.customerClidsGroup = value
        }
        if let value = dict["CustomerMoh"] as? String {
            self.customerMoh = value
        }
        if let value = dict["CustomerTimeout"] as? Int64 {
            self.customerTimeout = value
        }
        if let value = dict["CustomerVoice"] as? String {
            self.customerVoice = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["ForceEndFlag"] as? Int64 {
            self.forceEndFlag = value
        }
        if let value = dict["IsRewarm"] as? Int64 {
            self.isRewarm = value
        }
        if let value = dict["IvrId"] as? Int64 {
            self.ivrId = value
        }
        if let value = dict["IvrName"] as? String {
            self.ivrName = value
        }
        if let value = dict["MaxWaitTime"] as? Int64 {
            self.maxWaitTime = value
        }
        if let value = dict["MinAvailableAgentCount"] as? Int64 {
            self.minAvailableAgentCount = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PredictAdjust"] as? Int64 {
            self.predictAdjust = value
        }
        if let value = dict["Quotiety"] as? Double {
            self.quotiety = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetryStrategy"] as? String {
            self.retryStrategy = value
        }
        if let value = dict["RetryStrategyOnlyToday"] as? Int64 {
            self.retryStrategyOnlyToday = value
        }
        if let value = dict["RetryStrategyTimeType"] as? Int64 {
            self.retryStrategyTimeType = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TimeStrategy"] as? String {
            self.timeStrategy = value
        }
        if let value = dict["Type"] as? Int64 {
            self.type = value
        }
        if let value = dict["UserFields"] as? String {
            self.userFields = value
        }
        if let value = dict["WarmUpDuration"] as? Int64 {
            self.warmUpDuration = value
        }
        if let value = dict["Wrapup"] as? Int64 {
            self.wrapup = value
        }
    }
}

public class CloudCreateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentTimeout: String?

        public var answerRate: String?

        public var autoComplete: Int64?

        public var autoStart: String?

        public var autoStartDay: String?

        public var autoStartTime: String?

        public var autoStop: String?

        public var autoStopDay: String?

        public var autoStopTime: String?

        public var cnos: String?

        public var concurrency: String?

        public var createTime: String?

        public var customerClids: String?

        public var customerMoh: String?

        public var customerTimeout: String?

        public var description_: String?

        public var enterpriseId: String?

        public var id: String?

        public var isRandom: String?

        public var ivrId: String?

        public var maxWaitTime: String?

        public var name: String?

        public var overTime: String?

        public var predictAdjust: String?

        public var quotiety: String?

        public var startTime: String?

        public var status: String?

        public var type: String?

        public var userFields: String?

        public var wrapup: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentTimeout != nil {
                map["AgentTimeout"] = self.agentTimeout!
            }
            if self.answerRate != nil {
                map["AnswerRate"] = self.answerRate!
            }
            if self.autoComplete != nil {
                map["AutoComplete"] = self.autoComplete!
            }
            if self.autoStart != nil {
                map["AutoStart"] = self.autoStart!
            }
            if self.autoStartDay != nil {
                map["AutoStartDay"] = self.autoStartDay!
            }
            if self.autoStartTime != nil {
                map["AutoStartTime"] = self.autoStartTime!
            }
            if self.autoStop != nil {
                map["AutoStop"] = self.autoStop!
            }
            if self.autoStopDay != nil {
                map["AutoStopDay"] = self.autoStopDay!
            }
            if self.autoStopTime != nil {
                map["AutoStopTime"] = self.autoStopTime!
            }
            if self.cnos != nil {
                map["Cnos"] = self.cnos!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customerClids != nil {
                map["CustomerClids"] = self.customerClids!
            }
            if self.customerMoh != nil {
                map["CustomerMoh"] = self.customerMoh!
            }
            if self.customerTimeout != nil {
                map["CustomerTimeout"] = self.customerTimeout!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enterpriseId != nil {
                map["EnterpriseId"] = self.enterpriseId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isRandom != nil {
                map["IsRandom"] = self.isRandom!
            }
            if self.ivrId != nil {
                map["IvrId"] = self.ivrId!
            }
            if self.maxWaitTime != nil {
                map["MaxWaitTime"] = self.maxWaitTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.overTime != nil {
                map["OverTime"] = self.overTime!
            }
            if self.predictAdjust != nil {
                map["PredictAdjust"] = self.predictAdjust!
            }
            if self.quotiety != nil {
                map["Quotiety"] = self.quotiety!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userFields != nil {
                map["UserFields"] = self.userFields!
            }
            if self.wrapup != nil {
                map["Wrapup"] = self.wrapup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentTimeout"] as? String {
                self.agentTimeout = value
            }
            if let value = dict["AnswerRate"] as? String {
                self.answerRate = value
            }
            if let value = dict["AutoComplete"] as? Int64 {
                self.autoComplete = value
            }
            if let value = dict["AutoStart"] as? String {
                self.autoStart = value
            }
            if let value = dict["AutoStartDay"] as? String {
                self.autoStartDay = value
            }
            if let value = dict["AutoStartTime"] as? String {
                self.autoStartTime = value
            }
            if let value = dict["AutoStop"] as? String {
                self.autoStop = value
            }
            if let value = dict["AutoStopDay"] as? String {
                self.autoStopDay = value
            }
            if let value = dict["AutoStopTime"] as? String {
                self.autoStopTime = value
            }
            if let value = dict["Cnos"] as? String {
                self.cnos = value
            }
            if let value = dict["Concurrency"] as? String {
                self.concurrency = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CustomerClids"] as? String {
                self.customerClids = value
            }
            if let value = dict["CustomerMoh"] as? String {
                self.customerMoh = value
            }
            if let value = dict["CustomerTimeout"] as? String {
                self.customerTimeout = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EnterpriseId"] as? String {
                self.enterpriseId = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsRandom"] as? String {
                self.isRandom = value
            }
            if let value = dict["IvrId"] as? String {
                self.ivrId = value
            }
            if let value = dict["MaxWaitTime"] as? String {
                self.maxWaitTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OverTime"] as? String {
                self.overTime = value
            }
            if let value = dict["PredictAdjust"] as? String {
                self.predictAdjust = value
            }
            if let value = dict["Quotiety"] as? String {
                self.quotiety = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserFields"] as? String {
                self.userFields = value
            }
            if let value = dict["Wrapup"] as? String {
                self.wrapup = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudCreateTaskResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudCreateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudCreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudCreateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudCreateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudDeleteAgentRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

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
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudDeleteAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudDeleteAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudDeleteAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudDeleteAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudDeleteAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudDeleteAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudDeleteAgentTelRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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
        if self.tel != nil {
            map["Tel"] = self.tel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tel"] as? String {
            self.tel = value
        }
    }
}

public class CloudDeleteAgentTelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudDeleteAgentTelResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudDeleteAgentTelResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudDeleteAgentTelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudDeleteAgentTelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudDeleteAgentTelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudGetAgentRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

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
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudGetAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agent : Tea.TeaModel {
            public var active: Int64?

            public var agentType: Int64?

            public var areaCode: String?

            public var asrCallType: String?

            public var bindTel: String?

            public var bindTelType: Int64?

            public var callPower: Int64?

            public var cno: String?

            public var comment: String?

            public var createTime: String?

            public var enterpriseId: Int64?

            public var ibRecord: Int64?

            public var id: Int64?

            public var isAsr: Int64?

            public var isAxbCall: String?

            public var isOb: Int64?

            public var isObRemember: String?

            public var loginTime: String?

            public var mrcpProperty: String?

            public var name: String?

            public var obClid: String?

            public var obClidProperty: String?

            public var obClidType: Int64?

            public var obRecord: Int64?

            public var permitObPreviewTime: String?

            public var power: Int64?

            public var property: String?

            public var queueList: [String]?

            public var status: Int64?

            public var updateTime: String?

            public var webrtcUrlType: String?

            public var wrapup: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.active != nil {
                    map["Active"] = self.active!
                }
                if self.agentType != nil {
                    map["AgentType"] = self.agentType!
                }
                if self.areaCode != nil {
                    map["AreaCode"] = self.areaCode!
                }
                if self.asrCallType != nil {
                    map["AsrCallType"] = self.asrCallType!
                }
                if self.bindTel != nil {
                    map["BindTel"] = self.bindTel!
                }
                if self.bindTelType != nil {
                    map["BindTelType"] = self.bindTelType!
                }
                if self.callPower != nil {
                    map["CallPower"] = self.callPower!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.ibRecord != nil {
                    map["IbRecord"] = self.ibRecord!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isAsr != nil {
                    map["IsAsr"] = self.isAsr!
                }
                if self.isAxbCall != nil {
                    map["IsAxbCall"] = self.isAxbCall!
                }
                if self.isOb != nil {
                    map["IsOb"] = self.isOb!
                }
                if self.isObRemember != nil {
                    map["IsObRemember"] = self.isObRemember!
                }
                if self.loginTime != nil {
                    map["LoginTime"] = self.loginTime!
                }
                if self.mrcpProperty != nil {
                    map["MrcpProperty"] = self.mrcpProperty!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.obClid != nil {
                    map["ObClid"] = self.obClid!
                }
                if self.obClidProperty != nil {
                    map["ObClidProperty"] = self.obClidProperty!
                }
                if self.obClidType != nil {
                    map["ObClidType"] = self.obClidType!
                }
                if self.obRecord != nil {
                    map["ObRecord"] = self.obRecord!
                }
                if self.permitObPreviewTime != nil {
                    map["PermitObPreviewTime"] = self.permitObPreviewTime!
                }
                if self.power != nil {
                    map["Power"] = self.power!
                }
                if self.property != nil {
                    map["Property"] = self.property!
                }
                if self.queueList != nil {
                    map["QueueList"] = self.queueList!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.webrtcUrlType != nil {
                    map["WebrtcUrlType"] = self.webrtcUrlType!
                }
                if self.wrapup != nil {
                    map["Wrapup"] = self.wrapup!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Active"] as? Int64 {
                    self.active = value
                }
                if let value = dict["AgentType"] as? Int64 {
                    self.agentType = value
                }
                if let value = dict["AreaCode"] as? String {
                    self.areaCode = value
                }
                if let value = dict["AsrCallType"] as? String {
                    self.asrCallType = value
                }
                if let value = dict["BindTel"] as? String {
                    self.bindTel = value
                }
                if let value = dict["BindTelType"] as? Int64 {
                    self.bindTelType = value
                }
                if let value = dict["CallPower"] as? Int64 {
                    self.callPower = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? Int64 {
                    self.enterpriseId = value
                }
                if let value = dict["IbRecord"] as? Int64 {
                    self.ibRecord = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IsAsr"] as? Int64 {
                    self.isAsr = value
                }
                if let value = dict["IsAxbCall"] as? String {
                    self.isAxbCall = value
                }
                if let value = dict["IsOb"] as? Int64 {
                    self.isOb = value
                }
                if let value = dict["IsObRemember"] as? String {
                    self.isObRemember = value
                }
                if let value = dict["LoginTime"] as? String {
                    self.loginTime = value
                }
                if let value = dict["MrcpProperty"] as? String {
                    self.mrcpProperty = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ObClid"] as? String {
                    self.obClid = value
                }
                if let value = dict["ObClidProperty"] as? String {
                    self.obClidProperty = value
                }
                if let value = dict["ObClidType"] as? Int64 {
                    self.obClidType = value
                }
                if let value = dict["ObRecord"] as? Int64 {
                    self.obRecord = value
                }
                if let value = dict["PermitObPreviewTime"] as? String {
                    self.permitObPreviewTime = value
                }
                if let value = dict["Power"] as? Int64 {
                    self.power = value
                }
                if let value = dict["Property"] as? String {
                    self.property = value
                }
                if let value = dict["QueueList"] as? [String] {
                    self.queueList = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["WebrtcUrlType"] as? String {
                    self.webrtcUrlType = value
                }
                if let value = dict["Wrapup"] as? Int64 {
                    self.wrapup = value
                }
            }
        }
        public var agent: [CloudGetAgentResponseBody.Data.Agent]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agent != nil {
                var tmp : [Any] = []
                for k in self.agent! {
                    tmp.append(k.toMap())
                }
                map["Agent"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agent"] as? [Any?] {
                var tmp : [CloudGetAgentResponseBody.Data.Agent] = []
                for v in value {
                    if v != nil {
                        var model = CloudGetAgentResponseBody.Data.Agent()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agent = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudGetAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudGetAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudGetAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudGetAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudGetAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudGetAgentStatusRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

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
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudGetAgentStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceStatus: Int64?

        public var loginStatus: Int64?

        public var mainUniqueId: String?

        public var state: String?

        public var stateAction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.loginStatus != nil {
                map["LoginStatus"] = self.loginStatus!
            }
            if self.mainUniqueId != nil {
                map["MainUniqueId"] = self.mainUniqueId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.stateAction != nil {
                map["StateAction"] = self.stateAction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceStatus"] as? Int64 {
                self.deviceStatus = value
            }
            if let value = dict["LoginStatus"] as? Int64 {
                self.loginStatus = value
            }
            if let value = dict["MainUniqueId"] as? String {
                self.mainUniqueId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["StateAction"] as? String {
                self.stateAction = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudGetAgentStatusResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudGetAgentStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudGetAgentStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudGetAgentStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudGetAgentStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudGetObCdrRequest : Tea.TeaModel {
    public var enterpriseId: Int64?

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
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
    }
}

public class CloudGetObCdrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var agentName: String?

            public var answerTime: String?

            public var callId: String?

            public var callType: String?

            public var callTypeCode: String?

            public var calleeAreaCode: String?

            public var calleeNumber: String?

            public var clid: String?

            public var cno: String?

            public var displayNumber: String?

            public var endReason: String?

            public var endTime: String?

            public var gno: String?

            public var id: String?

            public var joinQueueTime: String?

            public var mainCallType: String?

            public var mainUniqueId: String?

            public var qno: String?

            public var queueName: String?

            public var recordFile: [String]?

            public var ringingTime: String?

            public var sipCause: String?

            public var sipCauseStr: String?

            public var startTime: String?

            public var status: String?

            public var statusCode: String?

            public var taskName: String?

            public var totalDuration: String?

            public var trunkGroupKey: String?

            public var tsiFile: String?

            public var uniqueId: String?

            public var XNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.callTypeCode != nil {
                    map["CallTypeCode"] = self.callTypeCode!
                }
                if self.calleeAreaCode != nil {
                    map["CalleeAreaCode"] = self.calleeAreaCode!
                }
                if self.calleeNumber != nil {
                    map["CalleeNumber"] = self.calleeNumber!
                }
                if self.clid != nil {
                    map["Clid"] = self.clid!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.displayNumber != nil {
                    map["DisplayNumber"] = self.displayNumber!
                }
                if self.endReason != nil {
                    map["EndReason"] = self.endReason!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gno != nil {
                    map["Gno"] = self.gno!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.joinQueueTime != nil {
                    map["JoinQueueTime"] = self.joinQueueTime!
                }
                if self.mainCallType != nil {
                    map["MainCallType"] = self.mainCallType!
                }
                if self.mainUniqueId != nil {
                    map["MainUniqueId"] = self.mainUniqueId!
                }
                if self.qno != nil {
                    map["Qno"] = self.qno!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.recordFile != nil {
                    map["RecordFile"] = self.recordFile!
                }
                if self.ringingTime != nil {
                    map["RingingTime"] = self.ringingTime!
                }
                if self.sipCause != nil {
                    map["SipCause"] = self.sipCause!
                }
                if self.sipCauseStr != nil {
                    map["SipCauseStr"] = self.sipCauseStr!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.trunkGroupKey != nil {
                    map["TrunkGroupKey"] = self.trunkGroupKey!
                }
                if self.tsiFile != nil {
                    map["TsiFile"] = self.tsiFile!
                }
                if self.uniqueId != nil {
                    map["UniqueId"] = self.uniqueId!
                }
                if self.XNumber != nil {
                    map["XNumber"] = self.XNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallType"] as? String {
                    self.callType = value
                }
                if let value = dict["CallTypeCode"] as? String {
                    self.callTypeCode = value
                }
                if let value = dict["CalleeAreaCode"] as? String {
                    self.calleeAreaCode = value
                }
                if let value = dict["CalleeNumber"] as? String {
                    self.calleeNumber = value
                }
                if let value = dict["Clid"] as? String {
                    self.clid = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["DisplayNumber"] as? String {
                    self.displayNumber = value
                }
                if let value = dict["EndReason"] as? String {
                    self.endReason = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Gno"] as? String {
                    self.gno = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["JoinQueueTime"] as? String {
                    self.joinQueueTime = value
                }
                if let value = dict["MainCallType"] as? String {
                    self.mainCallType = value
                }
                if let value = dict["MainUniqueId"] as? String {
                    self.mainUniqueId = value
                }
                if let value = dict["Qno"] as? String {
                    self.qno = value
                }
                if let value = dict["QueueName"] as? String {
                    self.queueName = value
                }
                if let value = dict["RecordFile"] as? [String] {
                    self.recordFile = value
                }
                if let value = dict["RingingTime"] as? String {
                    self.ringingTime = value
                }
                if let value = dict["SipCause"] as? String {
                    self.sipCause = value
                }
                if let value = dict["SipCauseStr"] as? String {
                    self.sipCauseStr = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TotalDuration"] as? String {
                    self.totalDuration = value
                }
                if let value = dict["TrunkGroupKey"] as? String {
                    self.trunkGroupKey = value
                }
                if let value = dict["TsiFile"] as? String {
                    self.tsiFile = value
                }
                if let value = dict["UniqueId"] as? String {
                    self.uniqueId = value
                }
                if let value = dict["XNumber"] as? String {
                    self.XNumber = value
                }
            }
        }
        public var list: [CloudGetObCdrResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudGetObCdrResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudGetObCdrResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudGetObCdrResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudGetObCdrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudGetObCdrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudGetObCdrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudGetObCdrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudGetRecordUrlRequest : Tea.TeaModel {
    public var callType: Int64?

    public var download: Int64?

    public var enterpriseId: Int64?

    public var recordFile: String?

    public var recordFormat: Int64?

    public var recordSide: Int64?

    public var recordType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callType != nil {
            map["CallType"] = self.callType!
        }
        if self.download != nil {
            map["Download"] = self.download!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.recordFile != nil {
            map["RecordFile"] = self.recordFile!
        }
        if self.recordFormat != nil {
            map["RecordFormat"] = self.recordFormat!
        }
        if self.recordSide != nil {
            map["RecordSide"] = self.recordSide!
        }
        if self.recordType != nil {
            map["RecordType"] = self.recordType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallType"] as? Int64 {
            self.callType = value
        }
        if let value = dict["Download"] as? Int64 {
            self.download = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["RecordFile"] as? String {
            self.recordFile = value
        }
        if let value = dict["RecordFormat"] as? Int64 {
            self.recordFormat = value
        }
        if let value = dict["RecordSide"] as? Int64 {
            self.recordSide = value
        }
        if let value = dict["RecordType"] as? String {
            self.recordType = value
        }
    }
}

public class CloudGetRecordUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudGetRecordUrlResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudGetRecordUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudGetRecordUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudGetRecordUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudGetRecordUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudImportTaskTelRequest : Tea.TeaModel {
    public class TaskTelList : Tea.TeaModel {
        public var backupTels: String?

        public var clid: String?

        public var clidGroup: String?

        public var priority: Int64?

        public var property: String?

        public var tel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupTels != nil {
                map["BackupTels"] = self.backupTels!
            }
            if self.clid != nil {
                map["Clid"] = self.clid!
            }
            if self.clidGroup != nil {
                map["ClidGroup"] = self.clidGroup!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.property != nil {
                map["Property"] = self.property!
            }
            if self.tel != nil {
                map["Tel"] = self.tel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupTels"] as? String {
                self.backupTels = value
            }
            if let value = dict["Clid"] as? String {
                self.clid = value
            }
            if let value = dict["ClidGroup"] as? String {
                self.clidGroup = value
            }
            if let value = dict["Priority"] as? Int64 {
                self.priority = value
            }
            if let value = dict["Property"] as? String {
                self.property = value
            }
            if let value = dict["Tel"] as? String {
                self.tel = value
            }
        }
    }
    public var bridgeVoicePath: String?

    public var bridgeVoiceType: Int64?

    public var enterpriseId: Int64?

    public var fileId: Int64?

    public var importTelAutoStart: Int64?

    public var isRepeat: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var priority: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public var taskTelList: [CloudImportTaskTelRequest.TaskTelList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bridgeVoicePath != nil {
            map["BridgeVoicePath"] = self.bridgeVoicePath!
        }
        if self.bridgeVoiceType != nil {
            map["BridgeVoiceType"] = self.bridgeVoiceType!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.importTelAutoStart != nil {
            map["ImportTelAutoStart"] = self.importTelAutoStart!
        }
        if self.isRepeat != nil {
            map["IsRepeat"] = self.isRepeat!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
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
        if self.taskTelList != nil {
            var tmp : [Any] = []
            for k in self.taskTelList! {
                tmp.append(k.toMap())
            }
            map["TaskTelList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BridgeVoicePath"] as? String {
            self.bridgeVoicePath = value
        }
        if let value = dict["BridgeVoiceType"] as? Int64 {
            self.bridgeVoiceType = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["FileId"] as? Int64 {
            self.fileId = value
        }
        if let value = dict["ImportTelAutoStart"] as? Int64 {
            self.importTelAutoStart = value
        }
        if let value = dict["IsRepeat"] as? Int64 {
            self.isRepeat = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Priority"] as? Int64 {
            self.priority = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TaskTelList"] as? [Any?] {
            var tmp : [CloudImportTaskTelRequest.TaskTelList] = []
            for v in value {
                if v != nil {
                    var model = CloudImportTaskTelRequest.TaskTelList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskTelList = tmp
        }
    }
}

public class CloudImportTaskTelShrinkRequest : Tea.TeaModel {
    public var bridgeVoicePath: String?

    public var bridgeVoiceType: Int64?

    public var enterpriseId: Int64?

    public var fileId: Int64?

    public var importTelAutoStart: Int64?

    public var isRepeat: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var priority: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public var taskTelListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bridgeVoicePath != nil {
            map["BridgeVoicePath"] = self.bridgeVoicePath!
        }
        if self.bridgeVoiceType != nil {
            map["BridgeVoiceType"] = self.bridgeVoiceType!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.importTelAutoStart != nil {
            map["ImportTelAutoStart"] = self.importTelAutoStart!
        }
        if self.isRepeat != nil {
            map["IsRepeat"] = self.isRepeat!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
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
        if self.taskTelListShrink != nil {
            map["TaskTelList"] = self.taskTelListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BridgeVoicePath"] as? String {
            self.bridgeVoicePath = value
        }
        if let value = dict["BridgeVoiceType"] as? Int64 {
            self.bridgeVoiceType = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["FileId"] as? Int64 {
            self.fileId = value
        }
        if let value = dict["ImportTelAutoStart"] as? Int64 {
            self.importTelAutoStart = value
        }
        if let value = dict["IsRepeat"] as? Int64 {
            self.isRepeat = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Priority"] as? Int64 {
            self.priority = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TaskTelList"] as? String {
            self.taskTelListShrink = value
        }
    }
}

public class CloudImportTaskTelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileId: String?

        public var importTotal: String?

        public var invalidTotal: String?

        public var successTotal: String?

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
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.importTotal != nil {
                map["ImportTotal"] = self.importTotal!
            }
            if self.invalidTotal != nil {
                map["InvalidTotal"] = self.invalidTotal!
            }
            if self.successTotal != nil {
                map["SuccessTotal"] = self.successTotal!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["ImportTotal"] as? String {
                self.importTotal = value
            }
            if let value = dict["InvalidTotal"] as? String {
                self.invalidTotal = value
            }
            if let value = dict["SuccessTotal"] as? String {
                self.successTotal = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudImportTaskTelResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudImportTaskTelResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudImportTaskTelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudImportTaskTelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudImportTaskTelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudInterruptIvrRequest : Tea.TeaModel {
    public var checkName: String?

    public var checkValue: String?

    public var enterpriseId: Int64?

    public var uniqueId: String?

    public var userField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkName != nil {
            map["CheckName"] = self.checkName!
        }
        if self.checkValue != nil {
            map["CheckValue"] = self.checkValue!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.userField != nil {
            map["UserField"] = self.userField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckName"] as? String {
            self.checkName = value
        }
        if let value = dict["CheckValue"] as? String {
            self.checkValue = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["UserField"] as? String {
            self.userField = value
        }
    }
}

public class CloudInterruptIvrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudInterruptIvrResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudInterruptIvrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudInterruptIvrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudInterruptIvrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudInterruptIvrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudListAgentTelRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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
        if self.tel != nil {
            map["Tel"] = self.tel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tel"] as? String {
            self.tel = value
        }
    }
}

public class CloudListAgentTelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var agentId: Int64?

            public var areaCode: String?

            public var cno: String?

            public var createTime: String?

            public var enterpriseId: Int64?

            public var id: Int64?

            public var isBind: Int64?

            public var isValidity: Int64?

            public var tel: String?

            public var telType: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.areaCode != nil {
                    map["AreaCode"] = self.areaCode!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isBind != nil {
                    map["IsBind"] = self.isBind!
                }
                if self.isValidity != nil {
                    map["IsValidity"] = self.isValidity!
                }
                if self.tel != nil {
                    map["Tel"] = self.tel!
                }
                if self.telType != nil {
                    map["TelType"] = self.telType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentId"] as? Int64 {
                    self.agentId = value
                }
                if let value = dict["AreaCode"] as? String {
                    self.areaCode = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? Int64 {
                    self.enterpriseId = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IsBind"] as? Int64 {
                    self.isBind = value
                }
                if let value = dict["IsValidity"] as? Int64 {
                    self.isValidity = value
                }
                if let value = dict["Tel"] as? String {
                    self.tel = value
                }
                if let value = dict["TelType"] as? Int64 {
                    self.telType = value
                }
            }
        }
        public var list: [CloudListAgentTelResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudListAgentTelResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudListAgentTelResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudListAgentTelResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudListAgentTelResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudListAgentTelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudListAgentTelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudListAgentTelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudListFreeAgentRequest : Tea.TeaModel {
    public var enterpriseId: Int64?

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
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudListFreeAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var cno: String?

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
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var list: [CloudListFreeAgentResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudListFreeAgentResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudListFreeAgentResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudListFreeAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudListFreeAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudListFreeAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudListFreeAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudListFreeAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudListOnlineAgentRequest : Tea.TeaModel {
    public var cnos: String?

    public var enterpriseId: Int64?

    public var ownerId: Int64?

    public var pauseDescription: String?

    public var pauseType: String?

    public var qnos: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var stateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pauseDescription != nil {
            map["PauseDescription"] = self.pauseDescription!
        }
        if self.pauseType != nil {
            map["PauseType"] = self.pauseType!
        }
        if self.qnos != nil {
            map["Qnos"] = self.qnos!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.stateCode != nil {
            map["StateCode"] = self.stateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PauseDescription"] as? String {
            self.pauseDescription = value
        }
        if let value = dict["PauseType"] as? String {
            self.pauseType = value
        }
        if let value = dict["Qnos"] as? String {
            self.qnos = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StateCode"] as? String {
            self.stateCode = value
        }
    }
}

public class CloudListOnlineAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AgentStatuses : Tea.TeaModel {
            public var bindTel: String?

            public var cno: String?

            public var deviceStatus: Int64?

            public var deviceStatusDuration: Int64?

            public var loginStatus: Int64?

            public var loginStatusDuration: Int64?

            public var loginTime: String?

            public var name: String?

            public var state: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindTel != nil {
                    map["BindTel"] = self.bindTel!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.deviceStatus != nil {
                    map["DeviceStatus"] = self.deviceStatus!
                }
                if self.deviceStatusDuration != nil {
                    map["DeviceStatusDuration"] = self.deviceStatusDuration!
                }
                if self.loginStatus != nil {
                    map["LoginStatus"] = self.loginStatus!
                }
                if self.loginStatusDuration != nil {
                    map["LoginStatusDuration"] = self.loginStatusDuration!
                }
                if self.loginTime != nil {
                    map["LoginTime"] = self.loginTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindTel"] as? String {
                    self.bindTel = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["DeviceStatus"] as? Int64 {
                    self.deviceStatus = value
                }
                if let value = dict["DeviceStatusDuration"] as? Int64 {
                    self.deviceStatusDuration = value
                }
                if let value = dict["LoginStatus"] as? Int64 {
                    self.loginStatus = value
                }
                if let value = dict["LoginStatusDuration"] as? Int64 {
                    self.loginStatusDuration = value
                }
                if let value = dict["LoginTime"] as? String {
                    self.loginTime = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var agentStatuses: [CloudListOnlineAgentResponseBody.Data.AgentStatuses]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentStatuses != nil {
                var tmp : [Any] = []
                for k in self.agentStatuses! {
                    tmp.append(k.toMap())
                }
                map["AgentStatuses"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentStatuses"] as? [Any?] {
                var tmp : [CloudListOnlineAgentResponseBody.Data.AgentStatuses] = []
                for v in value {
                    if v != nil {
                        var model = CloudListOnlineAgentResponseBody.Data.AgentStatuses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agentStatuses = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudListOnlineAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudListOnlineAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudListOnlineAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudListOnlineAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudListOnlineAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudOutboundObClidReportRequest : Tea.TeaModel {
    public var areaCodes: String?

    public var endHour: Int64?

    public var endTime: String?

    public var enterpriseId: Int64?

    public var limit: Int64?

    public var start: Int64?

    public var startHour: Int64?

    public var startTime: String?

    public var statisticMethod: Int64?

    public var timeRangeType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.areaCodes != nil {
            map["AreaCodes"] = self.areaCodes!
        }
        if self.endHour != nil {
            map["EndHour"] = self.endHour!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startHour != nil {
            map["StartHour"] = self.startHour!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisticMethod != nil {
            map["StatisticMethod"] = self.statisticMethod!
        }
        if self.timeRangeType != nil {
            map["TimeRangeType"] = self.timeRangeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AreaCodes"] as? String {
            self.areaCodes = value
        }
        if let value = dict["EndHour"] as? Int64 {
            self.endHour = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartHour"] as? Int64 {
            self.startHour = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisticMethod"] as? Int64 {
            self.statisticMethod = value
        }
        if let value = dict["TimeRangeType"] as? Int64 {
            self.timeRangeType = value
        }
    }
}

public class CloudOutboundObClidReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var answeredCount: String?

            public var avgBridgeTime: String?

            public var avgPreviewObWaitTime: Int64?

            public var callType: String?

            public var city: String?

            public var clid: String?

            public var clidRate: String?

            public var createTime: String?

            public var customerBillMinute: Int64?

            public var dateTimeRange: String?

            public var day: String?

            public var enterpriseId: Int64?

            public var hour: String?

            public var maxBridgeTime: String?

            public var minBridgeTime: String?

            public var previewObCustomerRingingCount: Int64?

            public var previewObCustomerRingingRate: String?

            public var province: String?

            public var rowName: String?

            public var totalBridgeTime: String?

            public var totalCount: String?

            public var trunkGroupKey: String?

            public var validAvgBridgeTime: String?

            public var validCalls: String?

            public var validTotalBridgeTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answeredCount != nil {
                    map["AnsweredCount"] = self.answeredCount!
                }
                if self.avgBridgeTime != nil {
                    map["AvgBridgeTime"] = self.avgBridgeTime!
                }
                if self.avgPreviewObWaitTime != nil {
                    map["AvgPreviewObWaitTime"] = self.avgPreviewObWaitTime!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.clid != nil {
                    map["Clid"] = self.clid!
                }
                if self.clidRate != nil {
                    map["ClidRate"] = self.clidRate!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customerBillMinute != nil {
                    map["CustomerBillMinute"] = self.customerBillMinute!
                }
                if self.dateTimeRange != nil {
                    map["DateTimeRange"] = self.dateTimeRange!
                }
                if self.day != nil {
                    map["Day"] = self.day!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.hour != nil {
                    map["Hour"] = self.hour!
                }
                if self.maxBridgeTime != nil {
                    map["MaxBridgeTime"] = self.maxBridgeTime!
                }
                if self.minBridgeTime != nil {
                    map["MinBridgeTime"] = self.minBridgeTime!
                }
                if self.previewObCustomerRingingCount != nil {
                    map["PreviewObCustomerRingingCount"] = self.previewObCustomerRingingCount!
                }
                if self.previewObCustomerRingingRate != nil {
                    map["PreviewObCustomerRingingRate"] = self.previewObCustomerRingingRate!
                }
                if self.province != nil {
                    map["Province"] = self.province!
                }
                if self.rowName != nil {
                    map["RowName"] = self.rowName!
                }
                if self.totalBridgeTime != nil {
                    map["TotalBridgeTime"] = self.totalBridgeTime!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.trunkGroupKey != nil {
                    map["TrunkGroupKey"] = self.trunkGroupKey!
                }
                if self.validAvgBridgeTime != nil {
                    map["ValidAvgBridgeTime"] = self.validAvgBridgeTime!
                }
                if self.validCalls != nil {
                    map["ValidCalls"] = self.validCalls!
                }
                if self.validTotalBridgeTime != nil {
                    map["ValidTotalBridgeTime"] = self.validTotalBridgeTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AnsweredCount"] as? String {
                    self.answeredCount = value
                }
                if let value = dict["AvgBridgeTime"] as? String {
                    self.avgBridgeTime = value
                }
                if let value = dict["AvgPreviewObWaitTime"] as? Int64 {
                    self.avgPreviewObWaitTime = value
                }
                if let value = dict["CallType"] as? String {
                    self.callType = value
                }
                if let value = dict["City"] as? String {
                    self.city = value
                }
                if let value = dict["Clid"] as? String {
                    self.clid = value
                }
                if let value = dict["ClidRate"] as? String {
                    self.clidRate = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CustomerBillMinute"] as? Int64 {
                    self.customerBillMinute = value
                }
                if let value = dict["DateTimeRange"] as? String {
                    self.dateTimeRange = value
                }
                if let value = dict["Day"] as? String {
                    self.day = value
                }
                if let value = dict["EnterpriseId"] as? Int64 {
                    self.enterpriseId = value
                }
                if let value = dict["Hour"] as? String {
                    self.hour = value
                }
                if let value = dict["MaxBridgeTime"] as? String {
                    self.maxBridgeTime = value
                }
                if let value = dict["MinBridgeTime"] as? String {
                    self.minBridgeTime = value
                }
                if let value = dict["PreviewObCustomerRingingCount"] as? Int64 {
                    self.previewObCustomerRingingCount = value
                }
                if let value = dict["PreviewObCustomerRingingRate"] as? String {
                    self.previewObCustomerRingingRate = value
                }
                if let value = dict["Province"] as? String {
                    self.province = value
                }
                if let value = dict["RowName"] as? String {
                    self.rowName = value
                }
                if let value = dict["TotalBridgeTime"] as? String {
                    self.totalBridgeTime = value
                }
                if let value = dict["TotalCount"] as? String {
                    self.totalCount = value
                }
                if let value = dict["TrunkGroupKey"] as? String {
                    self.trunkGroupKey = value
                }
                if let value = dict["ValidAvgBridgeTime"] as? String {
                    self.validAvgBridgeTime = value
                }
                if let value = dict["ValidCalls"] as? String {
                    self.validCalls = value
                }
                if let value = dict["ValidTotalBridgeTime"] as? String {
                    self.validTotalBridgeTime = value
                }
            }
        }
        public var list: [CloudOutboundObClidReportResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudOutboundObClidReportResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudOutboundObClidReportResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudOutboundObClidReportResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudOutboundObClidReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudOutboundObClidReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudOutboundObClidReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudOutboundObClidReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudOutboundPreviewObReportRequest : Tea.TeaModel {
    public var cnos: String?

    public var endHour: Int64?

    public var endTime: String?

    public var enterpriseId: Int64?

    public var limit: Int64?

    public var start: Int64?

    public var startHour: Int64?

    public var startTime: String?

    public var statisticMethod: Int64?

    public var timeRangeType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.endHour != nil {
            map["EndHour"] = self.endHour!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startHour != nil {
            map["StartHour"] = self.startHour!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisticMethod != nil {
            map["StatisticMethod"] = self.statisticMethod!
        }
        if self.timeRangeType != nil {
            map["TimeRangeType"] = self.timeRangeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["EndHour"] as? Int64 {
            self.endHour = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartHour"] as? Int64 {
            self.startHour = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisticMethod"] as? Int64 {
            self.statisticMethod = value
        }
        if let value = dict["TimeRangeType"] as? Int64 {
            self.timeRangeType = value
        }
    }
}

public class CloudOutboundPreviewObReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var agentAnsweredCount: String?

            public var agentName: String?

            public var agentRate: String?

            public var avgBridgeTime: String?

            public var axbBothAnsweredCount: String?

            public var axbBothAnsweredRate: String?

            public var axbBothAnsweredTime: String?

            public var axbObTotalCount: String?

            public var bothAnsweredCount: String?

            public var bothAnsweredTime: String?

            public var callBridgedRate: String?

            public var callTotalCount: String?

            public var cno: String?

            public var customerAnsweredCount: String?

            public var customerRate: String?

            public var dateTimeRange: String?

            public var enterpriseId: String?

            public var interceptionCount: String?

            public var interceptionRate: String?

            public var landlineBothAnsweredCount: String?

            public var landlineBothAnsweredRate: String?

            public var landlineBothAnsweredTime: String?

            public var landlineObTotalCount: String?

            public var maxBridgeTime: String?

            public var minBridgeTime: String?

            public var totalBridgeTime: String?

            public var totalCount: String?

            public var vadRate: String?

            public var validAvgBridgeTime: String?

            public var validCalls: String?

            public var validTotalBridgeTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentAnsweredCount != nil {
                    map["AgentAnsweredCount"] = self.agentAnsweredCount!
                }
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.agentRate != nil {
                    map["AgentRate"] = self.agentRate!
                }
                if self.avgBridgeTime != nil {
                    map["AvgBridgeTime"] = self.avgBridgeTime!
                }
                if self.axbBothAnsweredCount != nil {
                    map["AxbBothAnsweredCount"] = self.axbBothAnsweredCount!
                }
                if self.axbBothAnsweredRate != nil {
                    map["AxbBothAnsweredRate"] = self.axbBothAnsweredRate!
                }
                if self.axbBothAnsweredTime != nil {
                    map["AxbBothAnsweredTime"] = self.axbBothAnsweredTime!
                }
                if self.axbObTotalCount != nil {
                    map["AxbObTotalCount"] = self.axbObTotalCount!
                }
                if self.bothAnsweredCount != nil {
                    map["BothAnsweredCount"] = self.bothAnsweredCount!
                }
                if self.bothAnsweredTime != nil {
                    map["BothAnsweredTime"] = self.bothAnsweredTime!
                }
                if self.callBridgedRate != nil {
                    map["CallBridgedRate"] = self.callBridgedRate!
                }
                if self.callTotalCount != nil {
                    map["CallTotalCount"] = self.callTotalCount!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.customerAnsweredCount != nil {
                    map["CustomerAnsweredCount"] = self.customerAnsweredCount!
                }
                if self.customerRate != nil {
                    map["CustomerRate"] = self.customerRate!
                }
                if self.dateTimeRange != nil {
                    map["DateTimeRange"] = self.dateTimeRange!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.interceptionCount != nil {
                    map["InterceptionCount"] = self.interceptionCount!
                }
                if self.interceptionRate != nil {
                    map["InterceptionRate"] = self.interceptionRate!
                }
                if self.landlineBothAnsweredCount != nil {
                    map["LandlineBothAnsweredCount"] = self.landlineBothAnsweredCount!
                }
                if self.landlineBothAnsweredRate != nil {
                    map["LandlineBothAnsweredRate"] = self.landlineBothAnsweredRate!
                }
                if self.landlineBothAnsweredTime != nil {
                    map["LandlineBothAnsweredTime"] = self.landlineBothAnsweredTime!
                }
                if self.landlineObTotalCount != nil {
                    map["LandlineObTotalCount"] = self.landlineObTotalCount!
                }
                if self.maxBridgeTime != nil {
                    map["MaxBridgeTime"] = self.maxBridgeTime!
                }
                if self.minBridgeTime != nil {
                    map["MinBridgeTime"] = self.minBridgeTime!
                }
                if self.totalBridgeTime != nil {
                    map["TotalBridgeTime"] = self.totalBridgeTime!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.vadRate != nil {
                    map["VadRate"] = self.vadRate!
                }
                if self.validAvgBridgeTime != nil {
                    map["ValidAvgBridgeTime"] = self.validAvgBridgeTime!
                }
                if self.validCalls != nil {
                    map["ValidCalls"] = self.validCalls!
                }
                if self.validTotalBridgeTime != nil {
                    map["ValidTotalBridgeTime"] = self.validTotalBridgeTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentAnsweredCount"] as? String {
                    self.agentAnsweredCount = value
                }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["AgentRate"] as? String {
                    self.agentRate = value
                }
                if let value = dict["AvgBridgeTime"] as? String {
                    self.avgBridgeTime = value
                }
                if let value = dict["AxbBothAnsweredCount"] as? String {
                    self.axbBothAnsweredCount = value
                }
                if let value = dict["AxbBothAnsweredRate"] as? String {
                    self.axbBothAnsweredRate = value
                }
                if let value = dict["AxbBothAnsweredTime"] as? String {
                    self.axbBothAnsweredTime = value
                }
                if let value = dict["AxbObTotalCount"] as? String {
                    self.axbObTotalCount = value
                }
                if let value = dict["BothAnsweredCount"] as? String {
                    self.bothAnsweredCount = value
                }
                if let value = dict["BothAnsweredTime"] as? String {
                    self.bothAnsweredTime = value
                }
                if let value = dict["CallBridgedRate"] as? String {
                    self.callBridgedRate = value
                }
                if let value = dict["CallTotalCount"] as? String {
                    self.callTotalCount = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CustomerAnsweredCount"] as? String {
                    self.customerAnsweredCount = value
                }
                if let value = dict["CustomerRate"] as? String {
                    self.customerRate = value
                }
                if let value = dict["DateTimeRange"] as? String {
                    self.dateTimeRange = value
                }
                if let value = dict["EnterpriseId"] as? String {
                    self.enterpriseId = value
                }
                if let value = dict["InterceptionCount"] as? String {
                    self.interceptionCount = value
                }
                if let value = dict["InterceptionRate"] as? String {
                    self.interceptionRate = value
                }
                if let value = dict["LandlineBothAnsweredCount"] as? String {
                    self.landlineBothAnsweredCount = value
                }
                if let value = dict["LandlineBothAnsweredRate"] as? String {
                    self.landlineBothAnsweredRate = value
                }
                if let value = dict["LandlineBothAnsweredTime"] as? String {
                    self.landlineBothAnsweredTime = value
                }
                if let value = dict["LandlineObTotalCount"] as? String {
                    self.landlineObTotalCount = value
                }
                if let value = dict["MaxBridgeTime"] as? String {
                    self.maxBridgeTime = value
                }
                if let value = dict["MinBridgeTime"] as? String {
                    self.minBridgeTime = value
                }
                if let value = dict["TotalBridgeTime"] as? String {
                    self.totalBridgeTime = value
                }
                if let value = dict["TotalCount"] as? String {
                    self.totalCount = value
                }
                if let value = dict["VadRate"] as? String {
                    self.vadRate = value
                }
                if let value = dict["ValidAvgBridgeTime"] as? String {
                    self.validAvgBridgeTime = value
                }
                if let value = dict["ValidCalls"] as? String {
                    self.validCalls = value
                }
                if let value = dict["ValidTotalBridgeTime"] as? String {
                    self.validTotalBridgeTime = value
                }
            }
        }
        public var list: [CloudOutboundPreviewObReportResponseBody.Data.List]?

        public var pageSize: String?

        public var totalCount: String?

        public var totalPageCount: String?

        public override init() {
            super.init()
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
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPageCount != nil {
                map["TotalPageCount"] = self.totalPageCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudOutboundPreviewObReportResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudOutboundPreviewObReportResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? String {
                self.totalCount = value
            }
            if let value = dict["TotalPageCount"] as? String {
                self.totalPageCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudOutboundPreviewObReportResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudOutboundPreviewObReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudOutboundPreviewObReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudOutboundPreviewObReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudOutboundPreviewObReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudPreviewoutcallRequest : Tea.TeaModel {
    public var backupTels: String?

    public var callVariables: String?

    public var cdrIsAsr: Int64?

    public var clidList: String?

    public var cno: String?

    public var crnId: String?

    public var dialTelTimeout: Int64?

    public var enterpriseId: Int64?

    public var isInvestigation: Int64?

    public var obClid: String?

    public var obClidAreaCode: String?

    public var obClidGroup: String?

    public var requestUniqueId: String?

    public var tel: String?

    public var timeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupTels != nil {
            map["BackupTels"] = self.backupTels!
        }
        if self.callVariables != nil {
            map["CallVariables"] = self.callVariables!
        }
        if self.cdrIsAsr != nil {
            map["CdrIsAsr"] = self.cdrIsAsr!
        }
        if self.clidList != nil {
            map["ClidList"] = self.clidList!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.crnId != nil {
            map["CrnId"] = self.crnId!
        }
        if self.dialTelTimeout != nil {
            map["DialTelTimeout"] = self.dialTelTimeout!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.isInvestigation != nil {
            map["IsInvestigation"] = self.isInvestigation!
        }
        if self.obClid != nil {
            map["ObClid"] = self.obClid!
        }
        if self.obClidAreaCode != nil {
            map["ObClidAreaCode"] = self.obClidAreaCode!
        }
        if self.obClidGroup != nil {
            map["ObClidGroup"] = self.obClidGroup!
        }
        if self.requestUniqueId != nil {
            map["RequestUniqueId"] = self.requestUniqueId!
        }
        if self.tel != nil {
            map["Tel"] = self.tel!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupTels"] as? String {
            self.backupTels = value
        }
        if let value = dict["CallVariables"] as? String {
            self.callVariables = value
        }
        if let value = dict["CdrIsAsr"] as? Int64 {
            self.cdrIsAsr = value
        }
        if let value = dict["ClidList"] as? String {
            self.clidList = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["CrnId"] as? String {
            self.crnId = value
        }
        if let value = dict["DialTelTimeout"] as? Int64 {
            self.dialTelTimeout = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["IsInvestigation"] as? Int64 {
            self.isInvestigation = value
        }
        if let value = dict["ObClid"] as? String {
            self.obClid = value
        }
        if let value = dict["ObClidAreaCode"] as? String {
            self.obClidAreaCode = value
        }
        if let value = dict["ObClidGroup"] as? String {
            self.obClidGroup = value
        }
        if let value = dict["RequestUniqueId"] as? String {
            self.requestUniqueId = value
        }
        if let value = dict["Tel"] as? String {
            self.tel = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
    }
}

public class CloudPreviewoutcallResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudPreviewoutcallResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudPreviewoutcallResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudPreviewoutcallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudPreviewoutcallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudPreviewoutcallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryAgentRequest : Tea.TeaModel {
    public var active: Int64?

    public var cnos: String?

    public var comment: String?

    public var endTime: String?

    public var enterpriseId: Int64?

    public var limit: Int64?

    public var name: String?

    public var order: Int64?

    public var ownerId: Int64?

    public var qno: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var returnQueue: Int64?

    public var start: Int64?

    public var startTime: String?

    public var status: Int64?

    public var webrtcUrlType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qno != nil {
            map["Qno"] = self.qno!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.returnQueue != nil {
            map["ReturnQueue"] = self.returnQueue!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.webrtcUrlType != nil {
            map["WebrtcUrlType"] = self.webrtcUrlType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int64 {
            self.active = value
        }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? Int64 {
            self.order = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Qno"] as? String {
            self.qno = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ReturnQueue"] as? Int64 {
            self.returnQueue = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["WebrtcUrlType"] as? Int64 {
            self.webrtcUrlType = value
        }
    }
}

public class CloudQueryAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public class Agent : Tea.TeaModel {
                public var active: String?

                public var agentType: String?

                public var areaCode: String?

                public var bindTel: String?

                public var bindTelType: String?

                public var callPower: String?

                public var cno: String?

                public var createTime: String?

                public var enterpriseId: String?

                public var ibRecord: String?

                public var id: String?

                public var isAsr: String?

                public var isOb: String?

                public var isQualityCheck: String?

                public var name: String?

                public var obClid: String?

                public var obClidType: String?

                public var obRecord: String?

                public var power: String?

                public var status: String?

                public var webrtcUrlType: String?

                public var wrapup: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.active != nil {
                        map["Active"] = self.active!
                    }
                    if self.agentType != nil {
                        map["AgentType"] = self.agentType!
                    }
                    if self.areaCode != nil {
                        map["AreaCode"] = self.areaCode!
                    }
                    if self.bindTel != nil {
                        map["BindTel"] = self.bindTel!
                    }
                    if self.bindTelType != nil {
                        map["BindTelType"] = self.bindTelType!
                    }
                    if self.callPower != nil {
                        map["CallPower"] = self.callPower!
                    }
                    if self.cno != nil {
                        map["Cno"] = self.cno!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.enterpriseId != nil {
                        map["EnterpriseId"] = self.enterpriseId!
                    }
                    if self.ibRecord != nil {
                        map["IbRecord"] = self.ibRecord!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.isAsr != nil {
                        map["IsAsr"] = self.isAsr!
                    }
                    if self.isOb != nil {
                        map["IsOb"] = self.isOb!
                    }
                    if self.isQualityCheck != nil {
                        map["IsQualityCheck"] = self.isQualityCheck!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.obClid != nil {
                        map["ObClid"] = self.obClid!
                    }
                    if self.obClidType != nil {
                        map["ObClidType"] = self.obClidType!
                    }
                    if self.obRecord != nil {
                        map["ObRecord"] = self.obRecord!
                    }
                    if self.power != nil {
                        map["Power"] = self.power!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.webrtcUrlType != nil {
                        map["WebrtcUrlType"] = self.webrtcUrlType!
                    }
                    if self.wrapup != nil {
                        map["Wrapup"] = self.wrapup!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Active"] as? String {
                        self.active = value
                    }
                    if let value = dict["AgentType"] as? String {
                        self.agentType = value
                    }
                    if let value = dict["AreaCode"] as? String {
                        self.areaCode = value
                    }
                    if let value = dict["BindTel"] as? String {
                        self.bindTel = value
                    }
                    if let value = dict["BindTelType"] as? String {
                        self.bindTelType = value
                    }
                    if let value = dict["CallPower"] as? String {
                        self.callPower = value
                    }
                    if let value = dict["Cno"] as? String {
                        self.cno = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["EnterpriseId"] as? String {
                        self.enterpriseId = value
                    }
                    if let value = dict["IbRecord"] as? String {
                        self.ibRecord = value
                    }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["IsAsr"] as? String {
                        self.isAsr = value
                    }
                    if let value = dict["IsOb"] as? String {
                        self.isOb = value
                    }
                    if let value = dict["IsQualityCheck"] as? String {
                        self.isQualityCheck = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ObClid"] as? String {
                        self.obClid = value
                    }
                    if let value = dict["ObClidType"] as? String {
                        self.obClidType = value
                    }
                    if let value = dict["ObRecord"] as? String {
                        self.obRecord = value
                    }
                    if let value = dict["Power"] as? String {
                        self.power = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["WebrtcUrlType"] as? String {
                        self.webrtcUrlType = value
                    }
                    if let value = dict["Wrapup"] as? String {
                        self.wrapup = value
                    }
                }
            }
            public class QueueList : Tea.TeaModel {
                public var announcePosition: Int64?

                public var announcePositionFrequency: Int64?

                public var announcePositionParam: Int64?

                public var announcePositionYouarenext: Int64?

                public var announceSound: Int64?

                public var announceSoundFile: String?

                public var announceSoundFrequency: Int64?

                public var createTime: String?

                public var description_: String?

                public var enterpriseId: Int64?

                public var id: Int64?

                public var joinEmpty: Int64?

                public var maxLen: Int64?

                public var memberTimeout: Int64?

                public var musicClass: String?

                public var qno: String?

                public var queueTimeout: Int64?

                public var retry: Int64?

                public var sayAgentno: Bool?

                public var serviceLevel: Int64?

                public var strategy: String?

                public var vipSupport: Int64?

                public var weight: Int64?

                public var wrapupTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.announcePosition != nil {
                        map["AnnouncePosition"] = self.announcePosition!
                    }
                    if self.announcePositionFrequency != nil {
                        map["AnnouncePositionFrequency"] = self.announcePositionFrequency!
                    }
                    if self.announcePositionParam != nil {
                        map["AnnouncePositionParam"] = self.announcePositionParam!
                    }
                    if self.announcePositionYouarenext != nil {
                        map["AnnouncePositionYouarenext"] = self.announcePositionYouarenext!
                    }
                    if self.announceSound != nil {
                        map["AnnounceSound"] = self.announceSound!
                    }
                    if self.announceSoundFile != nil {
                        map["AnnounceSoundFile"] = self.announceSoundFile!
                    }
                    if self.announceSoundFrequency != nil {
                        map["AnnounceSoundFrequency"] = self.announceSoundFrequency!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.enterpriseId != nil {
                        map["EnterpriseId"] = self.enterpriseId!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.joinEmpty != nil {
                        map["JoinEmpty"] = self.joinEmpty!
                    }
                    if self.maxLen != nil {
                        map["MaxLen"] = self.maxLen!
                    }
                    if self.memberTimeout != nil {
                        map["MemberTimeout"] = self.memberTimeout!
                    }
                    if self.musicClass != nil {
                        map["MusicClass"] = self.musicClass!
                    }
                    if self.qno != nil {
                        map["Qno"] = self.qno!
                    }
                    if self.queueTimeout != nil {
                        map["QueueTimeout"] = self.queueTimeout!
                    }
                    if self.retry != nil {
                        map["Retry"] = self.retry!
                    }
                    if self.sayAgentno != nil {
                        map["SayAgentno"] = self.sayAgentno!
                    }
                    if self.serviceLevel != nil {
                        map["ServiceLevel"] = self.serviceLevel!
                    }
                    if self.strategy != nil {
                        map["Strategy"] = self.strategy!
                    }
                    if self.vipSupport != nil {
                        map["VipSupport"] = self.vipSupport!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    if self.wrapupTime != nil {
                        map["WrapupTime"] = self.wrapupTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AnnouncePosition"] as? Int64 {
                        self.announcePosition = value
                    }
                    if let value = dict["AnnouncePositionFrequency"] as? Int64 {
                        self.announcePositionFrequency = value
                    }
                    if let value = dict["AnnouncePositionParam"] as? Int64 {
                        self.announcePositionParam = value
                    }
                    if let value = dict["AnnouncePositionYouarenext"] as? Int64 {
                        self.announcePositionYouarenext = value
                    }
                    if let value = dict["AnnounceSound"] as? Int64 {
                        self.announceSound = value
                    }
                    if let value = dict["AnnounceSoundFile"] as? String {
                        self.announceSoundFile = value
                    }
                    if let value = dict["AnnounceSoundFrequency"] as? Int64 {
                        self.announceSoundFrequency = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["EnterpriseId"] as? Int64 {
                        self.enterpriseId = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["JoinEmpty"] as? Int64 {
                        self.joinEmpty = value
                    }
                    if let value = dict["MaxLen"] as? Int64 {
                        self.maxLen = value
                    }
                    if let value = dict["MemberTimeout"] as? Int64 {
                        self.memberTimeout = value
                    }
                    if let value = dict["MusicClass"] as? String {
                        self.musicClass = value
                    }
                    if let value = dict["Qno"] as? String {
                        self.qno = value
                    }
                    if let value = dict["QueueTimeout"] as? Int64 {
                        self.queueTimeout = value
                    }
                    if let value = dict["Retry"] as? Int64 {
                        self.retry = value
                    }
                    if let value = dict["SayAgentno"] as? Bool {
                        self.sayAgentno = value
                    }
                    if let value = dict["ServiceLevel"] as? Int64 {
                        self.serviceLevel = value
                    }
                    if let value = dict["Strategy"] as? String {
                        self.strategy = value
                    }
                    if let value = dict["VipSupport"] as? Int64 {
                        self.vipSupport = value
                    }
                    if let value = dict["Weight"] as? Int64 {
                        self.weight = value
                    }
                    if let value = dict["WrapupTime"] as? Int64 {
                        self.wrapupTime = value
                    }
                }
            }
            public var agent: CloudQueryAgentResponseBody.Data.Agents.Agent?

            public var queueList: [CloudQueryAgentResponseBody.Data.Agents.QueueList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.agent?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agent != nil {
                    map["Agent"] = self.agent?.toMap()
                }
                if self.queueList != nil {
                    var tmp : [Any] = []
                    for k in self.queueList! {
                        tmp.append(k.toMap())
                    }
                    map["QueueList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Agent"] as? [String: Any?] {
                    var model = CloudQueryAgentResponseBody.Data.Agents.Agent()
                    model.fromMap(value)
                    self.agent = model
                }
                if let value = dict["QueueList"] as? [Any?] {
                    var tmp : [CloudQueryAgentResponseBody.Data.Agents.QueueList] = []
                    for v in value {
                        if v != nil {
                            var model = CloudQueryAgentResponseBody.Data.Agents.QueueList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.queueList = tmp
                }
            }
        }
        public var agents: [CloudQueryAgentResponseBody.Data.Agents]?

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
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["Agents"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agents"] as? [Any?] {
                var tmp : [CloudQueryAgentResponseBody.Data.Agents] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryAgentResponseBody.Data.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryAgentCnoAndNameRequest : Tea.TeaModel {
    public var cnos: String?

    public var enterpriseId: Int64?

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
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudQueryAgentCnoAndNameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var cno: String?

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
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var list: [CloudQueryAgentCnoAndNameResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudQueryAgentCnoAndNameResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryAgentCnoAndNameResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryAgentCnoAndNameResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryAgentCnoAndNameResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryAgentCnoAndNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryAgentCnoAndNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryAgentCnoAndNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryAgentGroupRequest : Tea.TeaModel {
    public var cno: String?

    public var enterpriseId: Int64?

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
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudQueryAgentGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var comment: String?

        public var createTime: String?

        public var enterpriseId: Int64?

        public var gno: String?

        public var groupName: String?

        public var id: Int64?

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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enterpriseId != nil {
                map["EnterpriseId"] = self.enterpriseId!
            }
            if self.gno != nil {
                map["Gno"] = self.gno!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnterpriseId"] as? Int64 {
                self.enterpriseId = value
            }
            if let value = dict["Gno"] as? String {
                self.gno = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Type"] as? Int64 {
                self.type = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryAgentGroupResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryAgentGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryAgentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryAgentGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryAgentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryAgentSkillRequest : Tea.TeaModel {
    public var cnos: String?

    public var enterpriseId: Int64?

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
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CloudQueryAgentSkillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var agentId: Int64?

            public var createTime: String?

            public var enterpriseId: Int64?

            public var id: Int64?

            public var skillId: Int64?

            public var skillLevel: Int64?

            public var skillName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.skillId != nil {
                    map["SkillId"] = self.skillId!
                }
                if self.skillLevel != nil {
                    map["SkillLevel"] = self.skillLevel!
                }
                if self.skillName != nil {
                    map["SkillName"] = self.skillName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentId"] as? Int64 {
                    self.agentId = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? Int64 {
                    self.enterpriseId = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["SkillId"] as? Int64 {
                    self.skillId = value
                }
                if let value = dict["SkillLevel"] as? Int64 {
                    self.skillLevel = value
                }
                if let value = dict["SkillName"] as? String {
                    self.skillName = value
                }
            }
        }
        public var list: [CloudQueryAgentSkillResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudQueryAgentSkillResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryAgentSkillResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryAgentSkillResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryAgentSkillResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryAgentSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryAgentSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryAgentSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryIbCdrRequest : Tea.TeaModel {
    public var calleeNumber: String?

    public var city: String?

    public var cno: String?

    public var customerNumber: String?

    public var endTime: Int64?

    public var enterpriseId: Int64?

    public var hotline: String?

    public var joinQueueCode: Int64?

    public var leaveQueueCode: Int64?

    public var limit: Int64?

    public var province: String?

    public var qno: String?

    public var start: Int64?

    public var startTime: Int64?

    public var status: Int64?

    public var timeRangeType: String?

    public var uniqueId: String?

    public var userFieldValue: String?

    public var userFieldkey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calleeNumber != nil {
            map["CalleeNumber"] = self.calleeNumber!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.customerNumber != nil {
            map["CustomerNumber"] = self.customerNumber!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.hotline != nil {
            map["Hotline"] = self.hotline!
        }
        if self.joinQueueCode != nil {
            map["JoinQueueCode"] = self.joinQueueCode!
        }
        if self.leaveQueueCode != nil {
            map["LeaveQueueCode"] = self.leaveQueueCode!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.qno != nil {
            map["Qno"] = self.qno!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeRangeType != nil {
            map["TimeRangeType"] = self.timeRangeType!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.userFieldValue != nil {
            map["UserFieldValue"] = self.userFieldValue!
        }
        if self.userFieldkey != nil {
            map["UserFieldkey"] = self.userFieldkey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalleeNumber"] as? String {
            self.calleeNumber = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["CustomerNumber"] as? String {
            self.customerNumber = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Hotline"] as? String {
            self.hotline = value
        }
        if let value = dict["JoinQueueCode"] as? Int64 {
            self.joinQueueCode = value
        }
        if let value = dict["LeaveQueueCode"] as? Int64 {
            self.leaveQueueCode = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Qno"] as? String {
            self.qno = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TimeRangeType"] as? String {
            self.timeRangeType = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["UserFieldValue"] as? String {
            self.userFieldValue = value
        }
        if let value = dict["UserFieldkey"] as? String {
            self.userFieldkey = value
        }
    }
}

public class CloudQueryIbCdrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class RecordFile : Tea.TeaModel {
                public var file: String?

                public var monitorType: Int64?

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
                    if self.file != nil {
                        map["File"] = self.file!
                    }
                    if self.monitorType != nil {
                        map["Monitor_type"] = self.monitorType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["File"] as? String {
                        self.file = value
                    }
                    if let value = dict["Monitor_type"] as? Int64 {
                        self.monitorType = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var agentName: String?

            public var answerTime: String?

            public var bridgeDuration: String?

            public var bridgeTime: String?

            public var callType: String?

            public var calleeNumber: String?

            public var cno: String?

            public var customerAreaCode: String?

            public var customerCity: String?

            public var customerNumber: String?

            public var customerProvince: String?

            public var endReason: String?

            public var endTime: String?

            public var hotline: String?

            public var ivrName: String?

            public var leaveQueueCode: Int64?

            public var numberTrunk: String?

            public var numberTrunkAreaCode: String?

            public var qno: String?

            public var recordFile: [CloudQueryIbCdrResponseBody.Data.List.RecordFile]?

            public var startTime: String?

            public var status: String?

            public var statusCode: String?

            public var totalDuration: String?

            public var uniqueId: String?

            public var userField: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.bridgeDuration != nil {
                    map["BridgeDuration"] = self.bridgeDuration!
                }
                if self.bridgeTime != nil {
                    map["BridgeTime"] = self.bridgeTime!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.calleeNumber != nil {
                    map["CalleeNumber"] = self.calleeNumber!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.customerAreaCode != nil {
                    map["CustomerAreaCode"] = self.customerAreaCode!
                }
                if self.customerCity != nil {
                    map["CustomerCity"] = self.customerCity!
                }
                if self.customerNumber != nil {
                    map["CustomerNumber"] = self.customerNumber!
                }
                if self.customerProvince != nil {
                    map["CustomerProvince"] = self.customerProvince!
                }
                if self.endReason != nil {
                    map["EndReason"] = self.endReason!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.hotline != nil {
                    map["Hotline"] = self.hotline!
                }
                if self.ivrName != nil {
                    map["IvrName"] = self.ivrName!
                }
                if self.leaveQueueCode != nil {
                    map["LeaveQueueCode"] = self.leaveQueueCode!
                }
                if self.numberTrunk != nil {
                    map["NumberTrunk"] = self.numberTrunk!
                }
                if self.numberTrunkAreaCode != nil {
                    map["NumberTrunkAreaCode"] = self.numberTrunkAreaCode!
                }
                if self.qno != nil {
                    map["Qno"] = self.qno!
                }
                if self.recordFile != nil {
                    var tmp : [Any] = []
                    for k in self.recordFile! {
                        tmp.append(k.toMap())
                    }
                    map["RecordFile"] = tmp
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.uniqueId != nil {
                    map["UniqueId"] = self.uniqueId!
                }
                if self.userField != nil {
                    map["UserField"] = self.userField!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["BridgeDuration"] as? String {
                    self.bridgeDuration = value
                }
                if let value = dict["BridgeTime"] as? String {
                    self.bridgeTime = value
                }
                if let value = dict["CallType"] as? String {
                    self.callType = value
                }
                if let value = dict["CalleeNumber"] as? String {
                    self.calleeNumber = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CustomerAreaCode"] as? String {
                    self.customerAreaCode = value
                }
                if let value = dict["CustomerCity"] as? String {
                    self.customerCity = value
                }
                if let value = dict["CustomerNumber"] as? String {
                    self.customerNumber = value
                }
                if let value = dict["CustomerProvince"] as? String {
                    self.customerProvince = value
                }
                if let value = dict["EndReason"] as? String {
                    self.endReason = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Hotline"] as? String {
                    self.hotline = value
                }
                if let value = dict["IvrName"] as? String {
                    self.ivrName = value
                }
                if let value = dict["LeaveQueueCode"] as? Int64 {
                    self.leaveQueueCode = value
                }
                if let value = dict["NumberTrunk"] as? String {
                    self.numberTrunk = value
                }
                if let value = dict["NumberTrunkAreaCode"] as? String {
                    self.numberTrunkAreaCode = value
                }
                if let value = dict["Qno"] as? String {
                    self.qno = value
                }
                if let value = dict["RecordFile"] as? [Any?] {
                    var tmp : [CloudQueryIbCdrResponseBody.Data.List.RecordFile] = []
                    for v in value {
                        if v != nil {
                            var model = CloudQueryIbCdrResponseBody.Data.List.RecordFile()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recordFile = tmp
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["TotalDuration"] as? String {
                    self.totalDuration = value
                }
                if let value = dict["UniqueId"] as? String {
                    self.uniqueId = value
                }
                if let value = dict["UserField"] as? [String: Any] {
                    self.userField = value
                }
            }
        }
        public var list: [CloudQueryIbCdrResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudQueryIbCdrResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryIbCdrResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryIbCdrResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryIbCdrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryIbCdrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryIbCdrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryIbCdrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryObCdrRequest : Tea.TeaModel {
    public var agentName: String?

    public var agentNumber: String?

    public var callType: Int64?

    public var city: String?

    public var clid: String?

    public var cno: String?

    public var customerNumber: String?

    public var downGrade: Int64?

    public var endTime: Int64?

    public var enterpriseId: Int64?

    public var gno: String?

    public var isRealAnswer: Int64?

    public var leftDisplayNumber: String?

    public var limit: Int64?

    public var order: Int64?

    public var province: String?

    public var requestUniqueId: String?

    public var returnCount: Int64?

    public var start: Int64?

    public var startTime: Int64?

    public var status: Int64?

    public var timeRangeType: String?

    public var uniqueId: String?

    public var userFieldValue: String?

    public var userFieldkey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.agentNumber != nil {
            map["AgentNumber"] = self.agentNumber!
        }
        if self.callType != nil {
            map["CallType"] = self.callType!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.clid != nil {
            map["Clid"] = self.clid!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.customerNumber != nil {
            map["CustomerNumber"] = self.customerNumber!
        }
        if self.downGrade != nil {
            map["DownGrade"] = self.downGrade!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.gno != nil {
            map["Gno"] = self.gno!
        }
        if self.isRealAnswer != nil {
            map["IsRealAnswer"] = self.isRealAnswer!
        }
        if self.leftDisplayNumber != nil {
            map["LeftDisplayNumber"] = self.leftDisplayNumber!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.requestUniqueId != nil {
            map["RequestUniqueId"] = self.requestUniqueId!
        }
        if self.returnCount != nil {
            map["ReturnCount"] = self.returnCount!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeRangeType != nil {
            map["TimeRangeType"] = self.timeRangeType!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.userFieldValue != nil {
            map["UserFieldValue"] = self.userFieldValue!
        }
        if self.userFieldkey != nil {
            map["UserFieldkey"] = self.userFieldkey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["AgentNumber"] as? String {
            self.agentNumber = value
        }
        if let value = dict["CallType"] as? Int64 {
            self.callType = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Clid"] as? String {
            self.clid = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["CustomerNumber"] as? String {
            self.customerNumber = value
        }
        if let value = dict["DownGrade"] as? Int64 {
            self.downGrade = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Gno"] as? String {
            self.gno = value
        }
        if let value = dict["IsRealAnswer"] as? Int64 {
            self.isRealAnswer = value
        }
        if let value = dict["LeftDisplayNumber"] as? String {
            self.leftDisplayNumber = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Order"] as? Int64 {
            self.order = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RequestUniqueId"] as? String {
            self.requestUniqueId = value
        }
        if let value = dict["ReturnCount"] as? Int64 {
            self.returnCount = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TimeRangeType"] as? String {
            self.timeRangeType = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["UserFieldValue"] as? String {
            self.userFieldValue = value
        }
        if let value = dict["UserFieldkey"] as? String {
            self.userFieldkey = value
        }
    }
}

public class CloudQueryObCdrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class RecordFile : Tea.TeaModel {
                public var file: String?

                public var monitorType: Int64?

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
                    if self.file != nil {
                        map["File"] = self.file!
                    }
                    if self.monitorType != nil {
                        map["Monitor_type"] = self.monitorType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["File"] as? String {
                        self.file = value
                    }
                    if let value = dict["Monitor_type"] as? Int64 {
                        self.monitorType = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var agentClid: String?

            public var agentName: String?

            public var agentNumber: String?

            public var answerTime: String?

            public var bridgeDuration: String?

            public var bridgeTime: String?

            public var callId: String?

            public var callType: String?

            public var calleeRingingTime: String?

            public var clid: String?

            public var cno: String?

            public var customerAreaCode: String?

            public var customerCity: String?

            public var customerNumber: String?

            public var customerProvince: String?

            public var displayNumber: String?

            public var downGrade: String?

            public var downGradeCounts: String?

            public var endReason: String?

            public var endTime: String?

            public var gno: String?

            public var hangupReason: String?

            public var id: String?

            public var isRealAnswer: String?

            public var leftDisplayNumber: String?

            public var mainRingingTime: String?

            public var realAnswerTime: String?

            public var recordFile: [CloudQueryObCdrResponseBody.Data.List.RecordFile]?

            public var requestUniqueId: String?

            public var rtcTotalDuration: String?

            public var sipCause: String?

            public var startTime: String?

            public var status: String?

            public var statusCode: String?

            public var statusReason: String?

            public var taskId: String?

            public var totalDuration: String?

            public var trunkGroupKey: String?

            public var tsiFile: String?

            public var tsiFileFormat: String?

            public var uniqueId: String?

            public var userField: [String: Any]?

            public var vadIn: String?

            public var vadOut: String?

            public var waitDuration: String?

            public var XNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentClid != nil {
                    map["AgentClid"] = self.agentClid!
                }
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.agentNumber != nil {
                    map["AgentNumber"] = self.agentNumber!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.bridgeDuration != nil {
                    map["BridgeDuration"] = self.bridgeDuration!
                }
                if self.bridgeTime != nil {
                    map["BridgeTime"] = self.bridgeTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.calleeRingingTime != nil {
                    map["CalleeRingingTime"] = self.calleeRingingTime!
                }
                if self.clid != nil {
                    map["Clid"] = self.clid!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.customerAreaCode != nil {
                    map["CustomerAreaCode"] = self.customerAreaCode!
                }
                if self.customerCity != nil {
                    map["CustomerCity"] = self.customerCity!
                }
                if self.customerNumber != nil {
                    map["CustomerNumber"] = self.customerNumber!
                }
                if self.customerProvince != nil {
                    map["CustomerProvince"] = self.customerProvince!
                }
                if self.displayNumber != nil {
                    map["DisplayNumber"] = self.displayNumber!
                }
                if self.downGrade != nil {
                    map["DownGrade"] = self.downGrade!
                }
                if self.downGradeCounts != nil {
                    map["DownGradeCounts"] = self.downGradeCounts!
                }
                if self.endReason != nil {
                    map["EndReason"] = self.endReason!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gno != nil {
                    map["Gno"] = self.gno!
                }
                if self.hangupReason != nil {
                    map["HangupReason"] = self.hangupReason!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isRealAnswer != nil {
                    map["IsRealAnswer"] = self.isRealAnswer!
                }
                if self.leftDisplayNumber != nil {
                    map["LeftDisplayNumber"] = self.leftDisplayNumber!
                }
                if self.mainRingingTime != nil {
                    map["MainRingingTime"] = self.mainRingingTime!
                }
                if self.realAnswerTime != nil {
                    map["RealAnswerTime"] = self.realAnswerTime!
                }
                if self.recordFile != nil {
                    var tmp : [Any] = []
                    for k in self.recordFile! {
                        tmp.append(k.toMap())
                    }
                    map["RecordFile"] = tmp
                }
                if self.requestUniqueId != nil {
                    map["RequestUniqueId"] = self.requestUniqueId!
                }
                if self.rtcTotalDuration != nil {
                    map["RtcTotalDuration"] = self.rtcTotalDuration!
                }
                if self.sipCause != nil {
                    map["SipCause"] = self.sipCause!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.statusReason != nil {
                    map["StatusReason"] = self.statusReason!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.trunkGroupKey != nil {
                    map["TrunkGroupKey"] = self.trunkGroupKey!
                }
                if self.tsiFile != nil {
                    map["TsiFile"] = self.tsiFile!
                }
                if self.tsiFileFormat != nil {
                    map["TsiFileFormat"] = self.tsiFileFormat!
                }
                if self.uniqueId != nil {
                    map["UniqueId"] = self.uniqueId!
                }
                if self.userField != nil {
                    map["UserField"] = self.userField!
                }
                if self.vadIn != nil {
                    map["VadIn"] = self.vadIn!
                }
                if self.vadOut != nil {
                    map["VadOut"] = self.vadOut!
                }
                if self.waitDuration != nil {
                    map["WaitDuration"] = self.waitDuration!
                }
                if self.XNumber != nil {
                    map["XNumber"] = self.XNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentClid"] as? String {
                    self.agentClid = value
                }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["AgentNumber"] as? String {
                    self.agentNumber = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["BridgeDuration"] as? String {
                    self.bridgeDuration = value
                }
                if let value = dict["BridgeTime"] as? String {
                    self.bridgeTime = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallType"] as? String {
                    self.callType = value
                }
                if let value = dict["CalleeRingingTime"] as? String {
                    self.calleeRingingTime = value
                }
                if let value = dict["Clid"] as? String {
                    self.clid = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CustomerAreaCode"] as? String {
                    self.customerAreaCode = value
                }
                if let value = dict["CustomerCity"] as? String {
                    self.customerCity = value
                }
                if let value = dict["CustomerNumber"] as? String {
                    self.customerNumber = value
                }
                if let value = dict["CustomerProvince"] as? String {
                    self.customerProvince = value
                }
                if let value = dict["DisplayNumber"] as? String {
                    self.displayNumber = value
                }
                if let value = dict["DownGrade"] as? String {
                    self.downGrade = value
                }
                if let value = dict["DownGradeCounts"] as? String {
                    self.downGradeCounts = value
                }
                if let value = dict["EndReason"] as? String {
                    self.endReason = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Gno"] as? String {
                    self.gno = value
                }
                if let value = dict["HangupReason"] as? String {
                    self.hangupReason = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IsRealAnswer"] as? String {
                    self.isRealAnswer = value
                }
                if let value = dict["LeftDisplayNumber"] as? String {
                    self.leftDisplayNumber = value
                }
                if let value = dict["MainRingingTime"] as? String {
                    self.mainRingingTime = value
                }
                if let value = dict["RealAnswerTime"] as? String {
                    self.realAnswerTime = value
                }
                if let value = dict["RecordFile"] as? [Any?] {
                    var tmp : [CloudQueryObCdrResponseBody.Data.List.RecordFile] = []
                    for v in value {
                        if v != nil {
                            var model = CloudQueryObCdrResponseBody.Data.List.RecordFile()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recordFile = tmp
                }
                if let value = dict["RequestUniqueId"] as? String {
                    self.requestUniqueId = value
                }
                if let value = dict["RtcTotalDuration"] as? String {
                    self.rtcTotalDuration = value
                }
                if let value = dict["SipCause"] as? String {
                    self.sipCause = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["StatusReason"] as? String {
                    self.statusReason = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TotalDuration"] as? String {
                    self.totalDuration = value
                }
                if let value = dict["TrunkGroupKey"] as? String {
                    self.trunkGroupKey = value
                }
                if let value = dict["TsiFile"] as? String {
                    self.tsiFile = value
                }
                if let value = dict["TsiFileFormat"] as? String {
                    self.tsiFileFormat = value
                }
                if let value = dict["UniqueId"] as? String {
                    self.uniqueId = value
                }
                if let value = dict["UserField"] as? [String: Any] {
                    self.userField = value
                }
                if let value = dict["VadIn"] as? String {
                    self.vadIn = value
                }
                if let value = dict["VadOut"] as? String {
                    self.vadOut = value
                }
                if let value = dict["WaitDuration"] as? String {
                    self.waitDuration = value
                }
                if let value = dict["XNumber"] as? String {
                    self.XNumber = value
                }
            }
        }
        public var list: [CloudQueryObCdrResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudQueryObCdrResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryObCdrResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryObCdrResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryObCdrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryObCdrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryObCdrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryObCdrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryPredictiveCallCdrRequest : Tea.TeaModel {
    public var agentName: String?

    public var city: String?

    public var clid: String?

    public var cno: String?

    public var customerNumber: String?

    public var displayNumber: String?

    public var downGrade: Int64?

    public var endTime: Int64?

    public var enterpriseId: Int64?

    public var gno: String?

    public var isRealAnswer: Int64?

    public var limit: Int64?

    public var province: String?

    public var requestUniqueId: String?

    public var start: Int64?

    public var startTime: Int64?

    public var status: Int64?

    public var taskFileId: Int64?

    public var taskId: Int64?

    public var timeRangeType: String?

    public var uniqueId: String?

    public var userFieldValue: String?

    public var userFieldkey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.clid != nil {
            map["Clid"] = self.clid!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.customerNumber != nil {
            map["CustomerNumber"] = self.customerNumber!
        }
        if self.displayNumber != nil {
            map["DisplayNumber"] = self.displayNumber!
        }
        if self.downGrade != nil {
            map["DownGrade"] = self.downGrade!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.gno != nil {
            map["Gno"] = self.gno!
        }
        if self.isRealAnswer != nil {
            map["IsRealAnswer"] = self.isRealAnswer!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.requestUniqueId != nil {
            map["RequestUniqueId"] = self.requestUniqueId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskFileId != nil {
            map["TaskFileId"] = self.taskFileId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.timeRangeType != nil {
            map["TimeRangeType"] = self.timeRangeType!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.userFieldValue != nil {
            map["UserFieldValue"] = self.userFieldValue!
        }
        if self.userFieldkey != nil {
            map["UserFieldkey"] = self.userFieldkey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Clid"] as? String {
            self.clid = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["CustomerNumber"] as? String {
            self.customerNumber = value
        }
        if let value = dict["DisplayNumber"] as? String {
            self.displayNumber = value
        }
        if let value = dict["DownGrade"] as? Int64 {
            self.downGrade = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Gno"] as? String {
            self.gno = value
        }
        if let value = dict["IsRealAnswer"] as? Int64 {
            self.isRealAnswer = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RequestUniqueId"] as? String {
            self.requestUniqueId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TaskFileId"] as? Int64 {
            self.taskFileId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TimeRangeType"] as? String {
            self.timeRangeType = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["UserFieldValue"] as? String {
            self.userFieldValue = value
        }
        if let value = dict["UserFieldkey"] as? String {
            self.userFieldkey = value
        }
    }
}

public class CloudQueryPredictiveCallCdrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class RecordFile : Tea.TeaModel {
                public var file: String?

                public var monitorType: Int64?

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
                    if self.file != nil {
                        map["File"] = self.file!
                    }
                    if self.monitorType != nil {
                        map["Monitor_type"] = self.monitorType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["File"] as? String {
                        self.file = value
                    }
                    if let value = dict["Monitor_type"] as? Int64 {
                        self.monitorType = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var agentName: String?

            public var answerTime: String?

            public var bridgeDuration: String?

            public var bridgeTime: String?

            public var callId: String?

            public var callType: String?

            public var calleeClid: String?

            public var calleeDisplayNumber: String?

            public var calleeNumber: String?

            public var calleeRingingTime: String?

            public var clid: String?

            public var cno: String?

            public var customerCity: String?

            public var customerNumber: String?

            public var customerProvince: String?

            public var detailRingingTime: String?

            public var displayNumber: String?

            public var downGrade: String?

            public var downGradeCounts: String?

            public var endReason: String?

            public var endTime: String?

            public var gno: String?

            public var id: String?

            public var isRealAnswer: String?

            public var ivrName: String?

            public var numberTrunk: String?

            public var qno: String?

            public var realAnswerTime: String?

            public var recordFile: [CloudQueryPredictiveCallCdrResponseBody.Data.List.RecordFile]?

            public var requestUniqueId: String?

            public var sipCause: String?

            public var sipCauseStr: String?

            public var startTime: String?

            public var status: String?

            public var statusCode: String?

            public var taskFileId: String?

            public var taskId: String?

            public var taskName: String?

            public var totalDuration: String?

            public var trunkGroupKey: String?

            public var uniqueId: String?

            public var userField: [String: Any]?

            public var vadIn: String?

            public var vadOut: String?

            public var waitDuration: String?

            public var XNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.bridgeDuration != nil {
                    map["BridgeDuration"] = self.bridgeDuration!
                }
                if self.bridgeTime != nil {
                    map["BridgeTime"] = self.bridgeTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.calleeClid != nil {
                    map["CalleeClid"] = self.calleeClid!
                }
                if self.calleeDisplayNumber != nil {
                    map["CalleeDisplayNumber"] = self.calleeDisplayNumber!
                }
                if self.calleeNumber != nil {
                    map["CalleeNumber"] = self.calleeNumber!
                }
                if self.calleeRingingTime != nil {
                    map["CalleeRingingTime"] = self.calleeRingingTime!
                }
                if self.clid != nil {
                    map["Clid"] = self.clid!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.customerCity != nil {
                    map["CustomerCity"] = self.customerCity!
                }
                if self.customerNumber != nil {
                    map["CustomerNumber"] = self.customerNumber!
                }
                if self.customerProvince != nil {
                    map["CustomerProvince"] = self.customerProvince!
                }
                if self.detailRingingTime != nil {
                    map["DetailRingingTime"] = self.detailRingingTime!
                }
                if self.displayNumber != nil {
                    map["DisplayNumber"] = self.displayNumber!
                }
                if self.downGrade != nil {
                    map["DownGrade"] = self.downGrade!
                }
                if self.downGradeCounts != nil {
                    map["DownGradeCounts"] = self.downGradeCounts!
                }
                if self.endReason != nil {
                    map["EndReason"] = self.endReason!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gno != nil {
                    map["Gno"] = self.gno!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isRealAnswer != nil {
                    map["IsRealAnswer"] = self.isRealAnswer!
                }
                if self.ivrName != nil {
                    map["IvrName"] = self.ivrName!
                }
                if self.numberTrunk != nil {
                    map["NumberTrunk"] = self.numberTrunk!
                }
                if self.qno != nil {
                    map["Qno"] = self.qno!
                }
                if self.realAnswerTime != nil {
                    map["RealAnswerTime"] = self.realAnswerTime!
                }
                if self.recordFile != nil {
                    var tmp : [Any] = []
                    for k in self.recordFile! {
                        tmp.append(k.toMap())
                    }
                    map["RecordFile"] = tmp
                }
                if self.requestUniqueId != nil {
                    map["RequestUniqueId"] = self.requestUniqueId!
                }
                if self.sipCause != nil {
                    map["SipCause"] = self.sipCause!
                }
                if self.sipCauseStr != nil {
                    map["SipCauseStr"] = self.sipCauseStr!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.taskFileId != nil {
                    map["TaskFileId"] = self.taskFileId!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.trunkGroupKey != nil {
                    map["TrunkGroupKey"] = self.trunkGroupKey!
                }
                if self.uniqueId != nil {
                    map["UniqueId"] = self.uniqueId!
                }
                if self.userField != nil {
                    map["UserField"] = self.userField!
                }
                if self.vadIn != nil {
                    map["VadIn"] = self.vadIn!
                }
                if self.vadOut != nil {
                    map["VadOut"] = self.vadOut!
                }
                if self.waitDuration != nil {
                    map["WaitDuration"] = self.waitDuration!
                }
                if self.XNumber != nil {
                    map["XNumber"] = self.XNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["BridgeDuration"] as? String {
                    self.bridgeDuration = value
                }
                if let value = dict["BridgeTime"] as? String {
                    self.bridgeTime = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallType"] as? String {
                    self.callType = value
                }
                if let value = dict["CalleeClid"] as? String {
                    self.calleeClid = value
                }
                if let value = dict["CalleeDisplayNumber"] as? String {
                    self.calleeDisplayNumber = value
                }
                if let value = dict["CalleeNumber"] as? String {
                    self.calleeNumber = value
                }
                if let value = dict["CalleeRingingTime"] as? String {
                    self.calleeRingingTime = value
                }
                if let value = dict["Clid"] as? String {
                    self.clid = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CustomerCity"] as? String {
                    self.customerCity = value
                }
                if let value = dict["CustomerNumber"] as? String {
                    self.customerNumber = value
                }
                if let value = dict["CustomerProvince"] as? String {
                    self.customerProvince = value
                }
                if let value = dict["DetailRingingTime"] as? String {
                    self.detailRingingTime = value
                }
                if let value = dict["DisplayNumber"] as? String {
                    self.displayNumber = value
                }
                if let value = dict["DownGrade"] as? String {
                    self.downGrade = value
                }
                if let value = dict["DownGradeCounts"] as? String {
                    self.downGradeCounts = value
                }
                if let value = dict["EndReason"] as? String {
                    self.endReason = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Gno"] as? String {
                    self.gno = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IsRealAnswer"] as? String {
                    self.isRealAnswer = value
                }
                if let value = dict["IvrName"] as? String {
                    self.ivrName = value
                }
                if let value = dict["NumberTrunk"] as? String {
                    self.numberTrunk = value
                }
                if let value = dict["Qno"] as? String {
                    self.qno = value
                }
                if let value = dict["RealAnswerTime"] as? String {
                    self.realAnswerTime = value
                }
                if let value = dict["RecordFile"] as? [Any?] {
                    var tmp : [CloudQueryPredictiveCallCdrResponseBody.Data.List.RecordFile] = []
                    for v in value {
                        if v != nil {
                            var model = CloudQueryPredictiveCallCdrResponseBody.Data.List.RecordFile()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recordFile = tmp
                }
                if let value = dict["RequestUniqueId"] as? String {
                    self.requestUniqueId = value
                }
                if let value = dict["SipCause"] as? String {
                    self.sipCause = value
                }
                if let value = dict["SipCauseStr"] as? String {
                    self.sipCauseStr = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["TaskFileId"] as? String {
                    self.taskFileId = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TotalDuration"] as? String {
                    self.totalDuration = value
                }
                if let value = dict["TrunkGroupKey"] as? String {
                    self.trunkGroupKey = value
                }
                if let value = dict["UniqueId"] as? String {
                    self.uniqueId = value
                }
                if let value = dict["UserField"] as? [String: Any] {
                    self.userField = value
                }
                if let value = dict["VadIn"] as? String {
                    self.vadIn = value
                }
                if let value = dict["VadOut"] as? String {
                    self.vadOut = value
                }
                if let value = dict["WaitDuration"] as? String {
                    self.waitDuration = value
                }
                if let value = dict["XNumber"] as? String {
                    self.XNumber = value
                }
            }
        }
        public var list: [CloudQueryPredictiveCallCdrResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudQueryPredictiveCallCdrResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryPredictiveCallCdrResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryPredictiveCallCdrResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryPredictiveCallCdrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryPredictiveCallCdrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryPredictiveCallCdrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryPredictiveCallCdrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudQueryWebcallCdrRequest : Tea.TeaModel {
    public var calleeClid: String?

    public var calleeDisplayNumber: String?

    public var calleeNumber: String?

    public var city: String?

    public var clid: String?

    public var cno: String?

    public var customerNumber: String?

    public var displayNumber: String?

    public var endTime: Int64?

    public var enterpriseId: Int64?

    public var gno: String?

    public var isRealAnswer: Int64?

    public var limit: Int64?

    public var province: String?

    public var requestUniqueId: String?

    public var returnCount: Int64?

    public var start: Int64?

    public var startTime: Int64?

    public var status: Int64?

    public var timeRangeType: String?

    public var uniqueId: String?

    public var userFieldValue: String?

    public var userFieldkey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calleeClid != nil {
            map["CalleeClid"] = self.calleeClid!
        }
        if self.calleeDisplayNumber != nil {
            map["CalleeDisplayNumber"] = self.calleeDisplayNumber!
        }
        if self.calleeNumber != nil {
            map["CalleeNumber"] = self.calleeNumber!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.clid != nil {
            map["Clid"] = self.clid!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.customerNumber != nil {
            map["CustomerNumber"] = self.customerNumber!
        }
        if self.displayNumber != nil {
            map["DisplayNumber"] = self.displayNumber!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.gno != nil {
            map["Gno"] = self.gno!
        }
        if self.isRealAnswer != nil {
            map["IsRealAnswer"] = self.isRealAnswer!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.requestUniqueId != nil {
            map["RequestUniqueId"] = self.requestUniqueId!
        }
        if self.returnCount != nil {
            map["ReturnCount"] = self.returnCount!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeRangeType != nil {
            map["TimeRangeType"] = self.timeRangeType!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        if self.userFieldValue != nil {
            map["UserFieldValue"] = self.userFieldValue!
        }
        if self.userFieldkey != nil {
            map["UserFieldkey"] = self.userFieldkey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalleeClid"] as? String {
            self.calleeClid = value
        }
        if let value = dict["CalleeDisplayNumber"] as? String {
            self.calleeDisplayNumber = value
        }
        if let value = dict["CalleeNumber"] as? String {
            self.calleeNumber = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Clid"] as? String {
            self.clid = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["CustomerNumber"] as? String {
            self.customerNumber = value
        }
        if let value = dict["DisplayNumber"] as? String {
            self.displayNumber = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["Gno"] as? String {
            self.gno = value
        }
        if let value = dict["IsRealAnswer"] as? Int64 {
            self.isRealAnswer = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RequestUniqueId"] as? String {
            self.requestUniqueId = value
        }
        if let value = dict["ReturnCount"] as? Int64 {
            self.returnCount = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TimeRangeType"] as? String {
            self.timeRangeType = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
        }
        if let value = dict["UserFieldValue"] as? String {
            self.userFieldValue = value
        }
        if let value = dict["UserFieldkey"] as? String {
            self.userFieldkey = value
        }
    }
}

public class CloudQueryWebcallCdrResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class RecordFile : Tea.TeaModel {
                public var file: String?

                public var monitorType: Int64?

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
                    if self.file != nil {
                        map["File"] = self.file!
                    }
                    if self.monitorType != nil {
                        map["Monitor_type"] = self.monitorType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["File"] as? String {
                        self.file = value
                    }
                    if let value = dict["Monitor_type"] as? Int64 {
                        self.monitorType = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var agentName: String?

            public var answerTime: String?

            public var bridgeDuration: String?

            public var bridgeTime: String?

            public var callId: String?

            public var callType: String?

            public var calleeClid: String?

            public var calleeDisplayNumber: String?

            public var calleeNumber: String?

            public var calleeRingingTime: String?

            public var clid: String?

            public var cno: String?

            public var customerCity: String?

            public var customerNumber: String?

            public var customerProvince: String?

            public var detailRingingTime: String?

            public var displayNumber: String?

            public var downGrade: String?

            public var downGradeCounts: String?

            public var endReason: String?

            public var endTime: String?

            public var gno: String?

            public var id: String?

            public var isRealAnswer: String?

            public var ivrName: String?

            public var numberTrunk: String?

            public var qno: String?

            public var realAnswerTime: String?

            public var recordFile: [CloudQueryWebcallCdrResponseBody.Data.List.RecordFile]?

            public var requestUniqueId: String?

            public var sipCause: String?

            public var sipCauseStr: String?

            public var startTime: String?

            public var status: String?

            public var statusCode: String?

            public var taskFileId: String?

            public var taskId: String?

            public var totalDuration: String?

            public var trunkGroupKey: String?

            public var uniqueId: String?

            public var waitDuration: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.bridgeDuration != nil {
                    map["BridgeDuration"] = self.bridgeDuration!
                }
                if self.bridgeTime != nil {
                    map["BridgeTime"] = self.bridgeTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.calleeClid != nil {
                    map["CalleeClid"] = self.calleeClid!
                }
                if self.calleeDisplayNumber != nil {
                    map["CalleeDisplayNumber"] = self.calleeDisplayNumber!
                }
                if self.calleeNumber != nil {
                    map["CalleeNumber"] = self.calleeNumber!
                }
                if self.calleeRingingTime != nil {
                    map["CalleeRingingTime"] = self.calleeRingingTime!
                }
                if self.clid != nil {
                    map["Clid"] = self.clid!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.customerCity != nil {
                    map["CustomerCity"] = self.customerCity!
                }
                if self.customerNumber != nil {
                    map["CustomerNumber"] = self.customerNumber!
                }
                if self.customerProvince != nil {
                    map["CustomerProvince"] = self.customerProvince!
                }
                if self.detailRingingTime != nil {
                    map["DetailRingingTime"] = self.detailRingingTime!
                }
                if self.displayNumber != nil {
                    map["DisplayNumber"] = self.displayNumber!
                }
                if self.downGrade != nil {
                    map["DownGrade"] = self.downGrade!
                }
                if self.downGradeCounts != nil {
                    map["DownGradeCounts"] = self.downGradeCounts!
                }
                if self.endReason != nil {
                    map["EndReason"] = self.endReason!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gno != nil {
                    map["Gno"] = self.gno!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isRealAnswer != nil {
                    map["IsRealAnswer"] = self.isRealAnswer!
                }
                if self.ivrName != nil {
                    map["IvrName"] = self.ivrName!
                }
                if self.numberTrunk != nil {
                    map["NumberTrunk"] = self.numberTrunk!
                }
                if self.qno != nil {
                    map["Qno"] = self.qno!
                }
                if self.realAnswerTime != nil {
                    map["RealAnswerTime"] = self.realAnswerTime!
                }
                if self.recordFile != nil {
                    var tmp : [Any] = []
                    for k in self.recordFile! {
                        tmp.append(k.toMap())
                    }
                    map["RecordFile"] = tmp
                }
                if self.requestUniqueId != nil {
                    map["RequestUniqueId"] = self.requestUniqueId!
                }
                if self.sipCause != nil {
                    map["SipCause"] = self.sipCause!
                }
                if self.sipCauseStr != nil {
                    map["SipCauseStr"] = self.sipCauseStr!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.taskFileId != nil {
                    map["TaskFileId"] = self.taskFileId!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.trunkGroupKey != nil {
                    map["TrunkGroupKey"] = self.trunkGroupKey!
                }
                if self.uniqueId != nil {
                    map["UniqueId"] = self.uniqueId!
                }
                if self.waitDuration != nil {
                    map["WaitDuration"] = self.waitDuration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["BridgeDuration"] as? String {
                    self.bridgeDuration = value
                }
                if let value = dict["BridgeTime"] as? String {
                    self.bridgeTime = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallType"] as? String {
                    self.callType = value
                }
                if let value = dict["CalleeClid"] as? String {
                    self.calleeClid = value
                }
                if let value = dict["CalleeDisplayNumber"] as? String {
                    self.calleeDisplayNumber = value
                }
                if let value = dict["CalleeNumber"] as? String {
                    self.calleeNumber = value
                }
                if let value = dict["CalleeRingingTime"] as? String {
                    self.calleeRingingTime = value
                }
                if let value = dict["Clid"] as? String {
                    self.clid = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CustomerCity"] as? String {
                    self.customerCity = value
                }
                if let value = dict["CustomerNumber"] as? String {
                    self.customerNumber = value
                }
                if let value = dict["CustomerProvince"] as? String {
                    self.customerProvince = value
                }
                if let value = dict["DetailRingingTime"] as? String {
                    self.detailRingingTime = value
                }
                if let value = dict["DisplayNumber"] as? String {
                    self.displayNumber = value
                }
                if let value = dict["DownGrade"] as? String {
                    self.downGrade = value
                }
                if let value = dict["DownGradeCounts"] as? String {
                    self.downGradeCounts = value
                }
                if let value = dict["EndReason"] as? String {
                    self.endReason = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Gno"] as? String {
                    self.gno = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IsRealAnswer"] as? String {
                    self.isRealAnswer = value
                }
                if let value = dict["IvrName"] as? String {
                    self.ivrName = value
                }
                if let value = dict["NumberTrunk"] as? String {
                    self.numberTrunk = value
                }
                if let value = dict["Qno"] as? String {
                    self.qno = value
                }
                if let value = dict["RealAnswerTime"] as? String {
                    self.realAnswerTime = value
                }
                if let value = dict["RecordFile"] as? [Any?] {
                    var tmp : [CloudQueryWebcallCdrResponseBody.Data.List.RecordFile] = []
                    for v in value {
                        if v != nil {
                            var model = CloudQueryWebcallCdrResponseBody.Data.List.RecordFile()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recordFile = tmp
                }
                if let value = dict["RequestUniqueId"] as? String {
                    self.requestUniqueId = value
                }
                if let value = dict["SipCause"] as? String {
                    self.sipCause = value
                }
                if let value = dict["SipCauseStr"] as? String {
                    self.sipCauseStr = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["TaskFileId"] as? String {
                    self.taskFileId = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TotalDuration"] as? String {
                    self.totalDuration = value
                }
                if let value = dict["TrunkGroupKey"] as? String {
                    self.trunkGroupKey = value
                }
                if let value = dict["UniqueId"] as? String {
                    self.uniqueId = value
                }
                if let value = dict["WaitDuration"] as? String {
                    self.waitDuration = value
                }
            }
        }
        public var list: [CloudQueryWebcallCdrResponseBody.Data.List]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [CloudQueryWebcallCdrResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = CloudQueryWebcallCdrResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudQueryWebcallCdrResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudQueryWebcallCdrResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudQueryWebcallCdrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudQueryWebcallCdrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudQueryWebcallCdrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudStartTaskRequest : Tea.TeaModel {
    public var enterpriseId: Int64?

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
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class CloudStartTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudStartTaskResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudStartTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudStartTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudStartTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudStartTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudUpdateAgentRequest : Tea.TeaModel {
    public var active: Int64?

    public var agentType: Int64?

    public var areaCode: String?

    public var callPower: Int64?

    public var cno: String?

    public var comment: String?

    public var enterpriseId: Int64?

    public var ibRecord: Int64?

    public var isAsr: Int64?

    public var isOb: Int64?

    public var isObRemember: String?

    public var isQualityCheck: Int64?

    public var isRandom: String?

    public var name: String?

    public var obClid: String?

    public var obClidProperty: String?

    public var obClidType: Int64?

    public var obRecord: Int64?

    public var ownerId: Int64?

    public var permitObPreviewTime: String?

    public var power: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var skillIds: String?

    public var skillLevels: String?

    public var webrtcUrlType: Int64?

    public var wrapup: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.areaCode != nil {
            map["AreaCode"] = self.areaCode!
        }
        if self.callPower != nil {
            map["CallPower"] = self.callPower!
        }
        if self.cno != nil {
            map["Cno"] = self.cno!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.ibRecord != nil {
            map["IbRecord"] = self.ibRecord!
        }
        if self.isAsr != nil {
            map["IsAsr"] = self.isAsr!
        }
        if self.isOb != nil {
            map["IsOb"] = self.isOb!
        }
        if self.isObRemember != nil {
            map["IsObRemember"] = self.isObRemember!
        }
        if self.isQualityCheck != nil {
            map["IsQualityCheck"] = self.isQualityCheck!
        }
        if self.isRandom != nil {
            map["IsRandom"] = self.isRandom!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.obClid != nil {
            map["ObClid"] = self.obClid!
        }
        if self.obClidProperty != nil {
            map["ObClidProperty"] = self.obClidProperty!
        }
        if self.obClidType != nil {
            map["ObClidType"] = self.obClidType!
        }
        if self.obRecord != nil {
            map["ObRecord"] = self.obRecord!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permitObPreviewTime != nil {
            map["PermitObPreviewTime"] = self.permitObPreviewTime!
        }
        if self.power != nil {
            map["Power"] = self.power!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        if self.skillLevels != nil {
            map["SkillLevels"] = self.skillLevels!
        }
        if self.webrtcUrlType != nil {
            map["WebrtcUrlType"] = self.webrtcUrlType!
        }
        if self.wrapup != nil {
            map["Wrapup"] = self.wrapup!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int64 {
            self.active = value
        }
        if let value = dict["AgentType"] as? Int64 {
            self.agentType = value
        }
        if let value = dict["AreaCode"] as? String {
            self.areaCode = value
        }
        if let value = dict["CallPower"] as? Int64 {
            self.callPower = value
        }
        if let value = dict["Cno"] as? String {
            self.cno = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["IbRecord"] as? Int64 {
            self.ibRecord = value
        }
        if let value = dict["IsAsr"] as? Int64 {
            self.isAsr = value
        }
        if let value = dict["IsOb"] as? Int64 {
            self.isOb = value
        }
        if let value = dict["IsObRemember"] as? String {
            self.isObRemember = value
        }
        if let value = dict["IsQualityCheck"] as? Int64 {
            self.isQualityCheck = value
        }
        if let value = dict["IsRandom"] as? String {
            self.isRandom = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObClid"] as? String {
            self.obClid = value
        }
        if let value = dict["ObClidProperty"] as? String {
            self.obClidProperty = value
        }
        if let value = dict["ObClidType"] as? Int64 {
            self.obClidType = value
        }
        if let value = dict["ObRecord"] as? Int64 {
            self.obRecord = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PermitObPreviewTime"] as? String {
            self.permitObPreviewTime = value
        }
        if let value = dict["Power"] as? Int64 {
            self.power = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SkillIds"] as? String {
            self.skillIds = value
        }
        if let value = dict["SkillLevels"] as? String {
            self.skillLevels = value
        }
        if let value = dict["WebrtcUrlType"] as? Int64 {
            self.webrtcUrlType = value
        }
        if let value = dict["Wrapup"] as? Int64 {
            self.wrapup = value
        }
    }
}

public class CloudUpdateAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agent : Tea.TeaModel {
            public var active: String?

            public var agentType: String?

            public var areaCode: String?

            public var bindTel: String?

            public var bindTelType: String?

            public var callPower: String?

            public var cno: String?

            public var createTime: String?

            public var enterpriseId: String?

            public var ibRecord: String?

            public var id: String?

            public var isAsr: String?

            public var isOb: String?

            public var isQualityCheck: String?

            public var name: String?

            public var obClid: String?

            public var obClidProperty: String?

            public var obClidType: String?

            public var obRecord: String?

            public var power: String?

            public var status: String?

            public var webrtcUrlType: String?

            public var wrapup: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.active != nil {
                    map["Active"] = self.active!
                }
                if self.agentType != nil {
                    map["AgentType"] = self.agentType!
                }
                if self.areaCode != nil {
                    map["AreaCode"] = self.areaCode!
                }
                if self.bindTel != nil {
                    map["BindTel"] = self.bindTel!
                }
                if self.bindTelType != nil {
                    map["BindTelType"] = self.bindTelType!
                }
                if self.callPower != nil {
                    map["CallPower"] = self.callPower!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.ibRecord != nil {
                    map["IbRecord"] = self.ibRecord!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isAsr != nil {
                    map["IsAsr"] = self.isAsr!
                }
                if self.isOb != nil {
                    map["IsOb"] = self.isOb!
                }
                if self.isQualityCheck != nil {
                    map["IsQualityCheck"] = self.isQualityCheck!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.obClid != nil {
                    map["ObClid"] = self.obClid!
                }
                if self.obClidProperty != nil {
                    map["ObClidProperty"] = self.obClidProperty!
                }
                if self.obClidType != nil {
                    map["ObClidType"] = self.obClidType!
                }
                if self.obRecord != nil {
                    map["ObRecord"] = self.obRecord!
                }
                if self.power != nil {
                    map["Power"] = self.power!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.webrtcUrlType != nil {
                    map["WebrtcUrlType"] = self.webrtcUrlType!
                }
                if self.wrapup != nil {
                    map["Wrapup"] = self.wrapup!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Active"] as? String {
                    self.active = value
                }
                if let value = dict["AgentType"] as? String {
                    self.agentType = value
                }
                if let value = dict["AreaCode"] as? String {
                    self.areaCode = value
                }
                if let value = dict["BindTel"] as? String {
                    self.bindTel = value
                }
                if let value = dict["BindTelType"] as? String {
                    self.bindTelType = value
                }
                if let value = dict["CallPower"] as? String {
                    self.callPower = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? String {
                    self.enterpriseId = value
                }
                if let value = dict["IbRecord"] as? String {
                    self.ibRecord = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IsAsr"] as? String {
                    self.isAsr = value
                }
                if let value = dict["IsOb"] as? String {
                    self.isOb = value
                }
                if let value = dict["IsQualityCheck"] as? String {
                    self.isQualityCheck = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ObClid"] as? String {
                    self.obClid = value
                }
                if let value = dict["ObClidProperty"] as? String {
                    self.obClidProperty = value
                }
                if let value = dict["ObClidType"] as? String {
                    self.obClidType = value
                }
                if let value = dict["ObRecord"] as? String {
                    self.obRecord = value
                }
                if let value = dict["Power"] as? String {
                    self.power = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["WebrtcUrlType"] as? String {
                    self.webrtcUrlType = value
                }
                if let value = dict["Wrapup"] as? String {
                    self.wrapup = value
                }
            }
        }
        public class AgentSkills : Tea.TeaModel {
            public var agentId: String?

            public var cno: String?

            public var createTime: String?

            public var enterpriseId: String?

            public var id: String?

            public var skillId: String?

            public var skillLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.cno != nil {
                    map["Cno"] = self.cno!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.enterpriseId != nil {
                    map["EnterpriseId"] = self.enterpriseId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.skillId != nil {
                    map["SkillId"] = self.skillId!
                }
                if self.skillLevel != nil {
                    map["SkillLevel"] = self.skillLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["Cno"] as? String {
                    self.cno = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EnterpriseId"] as? String {
                    self.enterpriseId = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["SkillId"] as? String {
                    self.skillId = value
                }
                if let value = dict["SkillLevel"] as? String {
                    self.skillLevel = value
                }
            }
        }
        public var agent: CloudUpdateAgentResponseBody.Data.Agent?

        public var agentSkills: [CloudUpdateAgentResponseBody.Data.AgentSkills]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agent?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agent != nil {
                map["Agent"] = self.agent?.toMap()
            }
            if self.agentSkills != nil {
                var tmp : [Any] = []
                for k in self.agentSkills! {
                    tmp.append(k.toMap())
                }
                map["AgentSkills"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agent"] as? [String: Any?] {
                var model = CloudUpdateAgentResponseBody.Data.Agent()
                model.fromMap(value)
                self.agent = model
            }
            if let value = dict["AgentSkills"] as? [Any?] {
                var tmp : [CloudUpdateAgentResponseBody.Data.AgentSkills] = []
                for v in value {
                    if v != nil {
                        var model = CloudUpdateAgentResponseBody.Data.AgentSkills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agentSkills = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudUpdateAgentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudUpdateAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudUpdateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudUpdateAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudUpdateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudUpdateTaskRequest : Tea.TeaModel {
    public var agentGroup: String?

    public var agentTimeout: Int64?

    public var answerRate: Int64?

    public var autoComplete: Int64?

    public var autoStart: Int64?

    public var autoStartDay: String?

    public var autoStartTime: String?

    public var autoStop: Int64?

    public var autoStopDay: String?

    public var autoStopTime: String?

    public var autoTaskType: Int64?

    public var autoTriggerTimeStrategy: String?

    public var callLimitStrategy: String?

    public var callPriorityStrategy: String?

    public var callRouteStrategy: Int64?

    public var callStrategy: String?

    public var callVariables: String?

    public var clidProperty: String?

    public var cnos: String?

    public var concurrency: Int64?

    public var customerClidType: Int64?

    public var customerClidWeight: String?

    public var customerClidWeightFlag: Int64?

    public var customerClids: String?

    public var customerClidsCategory: Int64?

    public var customerClidsGroup: String?

    public var customerMoh: String?

    public var customerTimeout: Int64?

    public var customerVoice: String?

    public var description_: String?

    public var enterpriseId: Int64?

    public var forceEndFlag: Int64?

    public var isRewarm: Int64?

    public var ivrId: Int64?

    public var ivrName: String?

    public var maxWaitTime: Int64?

    public var minAvailableAgentCount: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var predictAdjust: Int64?

    public var quotiety: Double?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retryStrategy: String?

    public var retryStrategyOnlyToday: Int64?

    public var retryStrategyTimeType: Int64?

    public var taskId: String?

    public var timeStrategy: String?

    public var userFields: String?

    public var warmUpDuration: Int64?

    public var wrapup: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentGroup != nil {
            map["AgentGroup"] = self.agentGroup!
        }
        if self.agentTimeout != nil {
            map["AgentTimeout"] = self.agentTimeout!
        }
        if self.answerRate != nil {
            map["AnswerRate"] = self.answerRate!
        }
        if self.autoComplete != nil {
            map["AutoComplete"] = self.autoComplete!
        }
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.autoStartDay != nil {
            map["AutoStartDay"] = self.autoStartDay!
        }
        if self.autoStartTime != nil {
            map["AutoStartTime"] = self.autoStartTime!
        }
        if self.autoStop != nil {
            map["AutoStop"] = self.autoStop!
        }
        if self.autoStopDay != nil {
            map["AutoStopDay"] = self.autoStopDay!
        }
        if self.autoStopTime != nil {
            map["AutoStopTime"] = self.autoStopTime!
        }
        if self.autoTaskType != nil {
            map["AutoTaskType"] = self.autoTaskType!
        }
        if self.autoTriggerTimeStrategy != nil {
            map["AutoTriggerTimeStrategy"] = self.autoTriggerTimeStrategy!
        }
        if self.callLimitStrategy != nil {
            map["CallLimitStrategy"] = self.callLimitStrategy!
        }
        if self.callPriorityStrategy != nil {
            map["CallPriorityStrategy"] = self.callPriorityStrategy!
        }
        if self.callRouteStrategy != nil {
            map["CallRouteStrategy"] = self.callRouteStrategy!
        }
        if self.callStrategy != nil {
            map["CallStrategy"] = self.callStrategy!
        }
        if self.callVariables != nil {
            map["CallVariables"] = self.callVariables!
        }
        if self.clidProperty != nil {
            map["ClidProperty"] = self.clidProperty!
        }
        if self.cnos != nil {
            map["Cnos"] = self.cnos!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.customerClidType != nil {
            map["CustomerClidType"] = self.customerClidType!
        }
        if self.customerClidWeight != nil {
            map["CustomerClidWeight"] = self.customerClidWeight!
        }
        if self.customerClidWeightFlag != nil {
            map["CustomerClidWeightFlag"] = self.customerClidWeightFlag!
        }
        if self.customerClids != nil {
            map["CustomerClids"] = self.customerClids!
        }
        if self.customerClidsCategory != nil {
            map["CustomerClidsCategory"] = self.customerClidsCategory!
        }
        if self.customerClidsGroup != nil {
            map["CustomerClidsGroup"] = self.customerClidsGroup!
        }
        if self.customerMoh != nil {
            map["CustomerMoh"] = self.customerMoh!
        }
        if self.customerTimeout != nil {
            map["CustomerTimeout"] = self.customerTimeout!
        }
        if self.customerVoice != nil {
            map["CustomerVoice"] = self.customerVoice!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.forceEndFlag != nil {
            map["ForceEndFlag"] = self.forceEndFlag!
        }
        if self.isRewarm != nil {
            map["IsRewarm"] = self.isRewarm!
        }
        if self.ivrId != nil {
            map["IvrId"] = self.ivrId!
        }
        if self.ivrName != nil {
            map["IvrName"] = self.ivrName!
        }
        if self.maxWaitTime != nil {
            map["MaxWaitTime"] = self.maxWaitTime!
        }
        if self.minAvailableAgentCount != nil {
            map["MinAvailableAgentCount"] = self.minAvailableAgentCount!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.predictAdjust != nil {
            map["PredictAdjust"] = self.predictAdjust!
        }
        if self.quotiety != nil {
            map["Quotiety"] = self.quotiety!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retryStrategy != nil {
            map["RetryStrategy"] = self.retryStrategy!
        }
        if self.retryStrategyOnlyToday != nil {
            map["RetryStrategyOnlyToday"] = self.retryStrategyOnlyToday!
        }
        if self.retryStrategyTimeType != nil {
            map["RetryStrategyTimeType"] = self.retryStrategyTimeType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.timeStrategy != nil {
            map["TimeStrategy"] = self.timeStrategy!
        }
        if self.userFields != nil {
            map["UserFields"] = self.userFields!
        }
        if self.warmUpDuration != nil {
            map["WarmUpDuration"] = self.warmUpDuration!
        }
        if self.wrapup != nil {
            map["Wrapup"] = self.wrapup!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroup"] as? String {
            self.agentGroup = value
        }
        if let value = dict["AgentTimeout"] as? Int64 {
            self.agentTimeout = value
        }
        if let value = dict["AnswerRate"] as? Int64 {
            self.answerRate = value
        }
        if let value = dict["AutoComplete"] as? Int64 {
            self.autoComplete = value
        }
        if let value = dict["AutoStart"] as? Int64 {
            self.autoStart = value
        }
        if let value = dict["AutoStartDay"] as? String {
            self.autoStartDay = value
        }
        if let value = dict["AutoStartTime"] as? String {
            self.autoStartTime = value
        }
        if let value = dict["AutoStop"] as? Int64 {
            self.autoStop = value
        }
        if let value = dict["AutoStopDay"] as? String {
            self.autoStopDay = value
        }
        if let value = dict["AutoStopTime"] as? String {
            self.autoStopTime = value
        }
        if let value = dict["AutoTaskType"] as? Int64 {
            self.autoTaskType = value
        }
        if let value = dict["AutoTriggerTimeStrategy"] as? String {
            self.autoTriggerTimeStrategy = value
        }
        if let value = dict["CallLimitStrategy"] as? String {
            self.callLimitStrategy = value
        }
        if let value = dict["CallPriorityStrategy"] as? String {
            self.callPriorityStrategy = value
        }
        if let value = dict["CallRouteStrategy"] as? Int64 {
            self.callRouteStrategy = value
        }
        if let value = dict["CallStrategy"] as? String {
            self.callStrategy = value
        }
        if let value = dict["CallVariables"] as? String {
            self.callVariables = value
        }
        if let value = dict["ClidProperty"] as? String {
            self.clidProperty = value
        }
        if let value = dict["Cnos"] as? String {
            self.cnos = value
        }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["CustomerClidType"] as? Int64 {
            self.customerClidType = value
        }
        if let value = dict["CustomerClidWeight"] as? String {
            self.customerClidWeight = value
        }
        if let value = dict["CustomerClidWeightFlag"] as? Int64 {
            self.customerClidWeightFlag = value
        }
        if let value = dict["CustomerClids"] as? String {
            self.customerClids = value
        }
        if let value = dict["CustomerClidsCategory"] as? Int64 {
            self.customerClidsCategory = value
        }
        if let value = dict["CustomerClidsGroup"] as? String {
            self.customerClidsGroup = value
        }
        if let value = dict["CustomerMoh"] as? String {
            self.customerMoh = value
        }
        if let value = dict["CustomerTimeout"] as? Int64 {
            self.customerTimeout = value
        }
        if let value = dict["CustomerVoice"] as? String {
            self.customerVoice = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["ForceEndFlag"] as? Int64 {
            self.forceEndFlag = value
        }
        if let value = dict["IsRewarm"] as? Int64 {
            self.isRewarm = value
        }
        if let value = dict["IvrId"] as? Int64 {
            self.ivrId = value
        }
        if let value = dict["IvrName"] as? String {
            self.ivrName = value
        }
        if let value = dict["MaxWaitTime"] as? Int64 {
            self.maxWaitTime = value
        }
        if let value = dict["MinAvailableAgentCount"] as? Int64 {
            self.minAvailableAgentCount = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PredictAdjust"] as? Int64 {
            self.predictAdjust = value
        }
        if let value = dict["Quotiety"] as? Double {
            self.quotiety = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetryStrategy"] as? String {
            self.retryStrategy = value
        }
        if let value = dict["RetryStrategyOnlyToday"] as? Int64 {
            self.retryStrategyOnlyToday = value
        }
        if let value = dict["RetryStrategyTimeType"] as? Int64 {
            self.retryStrategyTimeType = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TimeStrategy"] as? String {
            self.timeStrategy = value
        }
        if let value = dict["UserFields"] as? String {
            self.userFields = value
        }
        if let value = dict["WarmUpDuration"] as? Int64 {
            self.warmUpDuration = value
        }
        if let value = dict["Wrapup"] as? Int64 {
            self.wrapup = value
        }
    }
}

public class CloudUpdateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentTimeout: String?

        public var answerRate: String?

        public var autoComplete: Int64?

        public var autoStart: String?

        public var autoStartDay: String?

        public var autoStartTime: String?

        public var autoStop: String?

        public var autoStopDay: String?

        public var autoStopTime: String?

        public var cnos: String?

        public var concurrency: String?

        public var createTime: String?

        public var customerClids: String?

        public var customerMoh: String?

        public var customerTimeout: String?

        public var description_: String?

        public var enterpriseId: String?

        public var id: String?

        public var isRandom: String?

        public var ivrId: String?

        public var maxWaitTime: String?

        public var name: String?

        public var overTime: String?

        public var predictAdjust: String?

        public var quotiety: String?

        public var startTime: String?

        public var status: String?

        public var type: String?

        public var userFields: String?

        public var wrapup: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentTimeout != nil {
                map["AgentTimeout"] = self.agentTimeout!
            }
            if self.answerRate != nil {
                map["AnswerRate"] = self.answerRate!
            }
            if self.autoComplete != nil {
                map["AutoComplete"] = self.autoComplete!
            }
            if self.autoStart != nil {
                map["AutoStart"] = self.autoStart!
            }
            if self.autoStartDay != nil {
                map["AutoStartDay"] = self.autoStartDay!
            }
            if self.autoStartTime != nil {
                map["AutoStartTime"] = self.autoStartTime!
            }
            if self.autoStop != nil {
                map["AutoStop"] = self.autoStop!
            }
            if self.autoStopDay != nil {
                map["AutoStopDay"] = self.autoStopDay!
            }
            if self.autoStopTime != nil {
                map["AutoStopTime"] = self.autoStopTime!
            }
            if self.cnos != nil {
                map["Cnos"] = self.cnos!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customerClids != nil {
                map["CustomerClids"] = self.customerClids!
            }
            if self.customerMoh != nil {
                map["CustomerMoh"] = self.customerMoh!
            }
            if self.customerTimeout != nil {
                map["CustomerTimeout"] = self.customerTimeout!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enterpriseId != nil {
                map["EnterpriseId"] = self.enterpriseId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isRandom != nil {
                map["IsRandom"] = self.isRandom!
            }
            if self.ivrId != nil {
                map["IvrId"] = self.ivrId!
            }
            if self.maxWaitTime != nil {
                map["MaxWaitTime"] = self.maxWaitTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.overTime != nil {
                map["OverTime"] = self.overTime!
            }
            if self.predictAdjust != nil {
                map["PredictAdjust"] = self.predictAdjust!
            }
            if self.quotiety != nil {
                map["Quotiety"] = self.quotiety!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userFields != nil {
                map["UserFields"] = self.userFields!
            }
            if self.wrapup != nil {
                map["Wrapup"] = self.wrapup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentTimeout"] as? String {
                self.agentTimeout = value
            }
            if let value = dict["AnswerRate"] as? String {
                self.answerRate = value
            }
            if let value = dict["AutoComplete"] as? Int64 {
                self.autoComplete = value
            }
            if let value = dict["AutoStart"] as? String {
                self.autoStart = value
            }
            if let value = dict["AutoStartDay"] as? String {
                self.autoStartDay = value
            }
            if let value = dict["AutoStartTime"] as? String {
                self.autoStartTime = value
            }
            if let value = dict["AutoStop"] as? String {
                self.autoStop = value
            }
            if let value = dict["AutoStopDay"] as? String {
                self.autoStopDay = value
            }
            if let value = dict["AutoStopTime"] as? String {
                self.autoStopTime = value
            }
            if let value = dict["Cnos"] as? String {
                self.cnos = value
            }
            if let value = dict["Concurrency"] as? String {
                self.concurrency = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CustomerClids"] as? String {
                self.customerClids = value
            }
            if let value = dict["CustomerMoh"] as? String {
                self.customerMoh = value
            }
            if let value = dict["CustomerTimeout"] as? String {
                self.customerTimeout = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EnterpriseId"] as? String {
                self.enterpriseId = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsRandom"] as? String {
                self.isRandom = value
            }
            if let value = dict["IvrId"] as? String {
                self.ivrId = value
            }
            if let value = dict["MaxWaitTime"] as? String {
                self.maxWaitTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OverTime"] as? String {
                self.overTime = value
            }
            if let value = dict["PredictAdjust"] as? String {
                self.predictAdjust = value
            }
            if let value = dict["Quotiety"] as? String {
                self.quotiety = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserFields"] as? String {
                self.userFields = value
            }
            if let value = dict["Wrapup"] as? String {
                self.wrapup = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudUpdateTaskResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudUpdateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudUpdateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudUpdateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudUpdateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloudWebcallRequest : Tea.TeaModel {
    public var amd: Int64?

    public var clid: String?

    public var clidAreaCode: String?

    public var clidGroup: String?

    public var clidList: String?

    public var crnId: String?

    public var delay: Int64?

    public var enterpriseId: Int64?

    public var expirTime: String?

    public var ivrId: Int64?

    public var multiTelDelay: Int64?

    public var multiTelPush: Int64?

    public var requestUniqueId: String?

    public var retry: Int64?

    public var retryInterval: Int64?

    public var tel: String?

    public var timeout: Int64?

    public var userField: String?

    public var vid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amd != nil {
            map["Amd"] = self.amd!
        }
        if self.clid != nil {
            map["Clid"] = self.clid!
        }
        if self.clidAreaCode != nil {
            map["ClidAreaCode"] = self.clidAreaCode!
        }
        if self.clidGroup != nil {
            map["ClidGroup"] = self.clidGroup!
        }
        if self.clidList != nil {
            map["ClidList"] = self.clidList!
        }
        if self.crnId != nil {
            map["CrnId"] = self.crnId!
        }
        if self.delay != nil {
            map["Delay"] = self.delay!
        }
        if self.enterpriseId != nil {
            map["EnterpriseId"] = self.enterpriseId!
        }
        if self.expirTime != nil {
            map["ExpirTime"] = self.expirTime!
        }
        if self.ivrId != nil {
            map["IvrId"] = self.ivrId!
        }
        if self.multiTelDelay != nil {
            map["MultiTelDelay"] = self.multiTelDelay!
        }
        if self.multiTelPush != nil {
            map["MultiTelPush"] = self.multiTelPush!
        }
        if self.requestUniqueId != nil {
            map["RequestUniqueId"] = self.requestUniqueId!
        }
        if self.retry != nil {
            map["Retry"] = self.retry!
        }
        if self.retryInterval != nil {
            map["RetryInterval"] = self.retryInterval!
        }
        if self.tel != nil {
            map["Tel"] = self.tel!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.userField != nil {
            map["UserField"] = self.userField!
        }
        if self.vid != nil {
            map["Vid"] = self.vid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amd"] as? Int64 {
            self.amd = value
        }
        if let value = dict["Clid"] as? String {
            self.clid = value
        }
        if let value = dict["ClidAreaCode"] as? String {
            self.clidAreaCode = value
        }
        if let value = dict["ClidGroup"] as? String {
            self.clidGroup = value
        }
        if let value = dict["ClidList"] as? String {
            self.clidList = value
        }
        if let value = dict["CrnId"] as? String {
            self.crnId = value
        }
        if let value = dict["Delay"] as? Int64 {
            self.delay = value
        }
        if let value = dict["EnterpriseId"] as? Int64 {
            self.enterpriseId = value
        }
        if let value = dict["ExpirTime"] as? String {
            self.expirTime = value
        }
        if let value = dict["IvrId"] as? Int64 {
            self.ivrId = value
        }
        if let value = dict["MultiTelDelay"] as? Int64 {
            self.multiTelDelay = value
        }
        if let value = dict["MultiTelPush"] as? Int64 {
            self.multiTelPush = value
        }
        if let value = dict["RequestUniqueId"] as? String {
            self.requestUniqueId = value
        }
        if let value = dict["Retry"] as? Int64 {
            self.retry = value
        }
        if let value = dict["RetryInterval"] as? Int64 {
            self.retryInterval = value
        }
        if let value = dict["Tel"] as? String {
            self.tel = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["UserField"] as? String {
            self.userField = value
        }
        if let value = dict["Vid"] as? String {
            self.vid = value
        }
    }
}

public class CloudWebcallResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Int64 {
                self.result = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CloudWebcallResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CloudWebcallResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloudWebcallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloudWebcallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloudWebcallResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["FireTime"] as? String {
            self.fireTime = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Resource"] as? String {
            self.resource = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["StopTime"] as? String {
            self.stopTime = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCallTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["CorpName"] as? String {
            self.corpName = value
        }
        if let value = dict["DialogId"] as? Int64 {
            self.dialogId = value
        }
        if let value = dict["IsSelfLine"] as? Bool {
            self.isSelfLine = value
        }
        if let value = dict["NumberStatusIdent"] as? Bool {
            self.numberStatusIdent = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RecallInterval"] as? Int32 {
            self.recallInterval = value
        }
        if let value = dict["RecallStateCodes"] as? String {
            self.recallStateCodes = value
        }
        if let value = dict["RecallTimes"] as? Int32 {
            self.recallTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetryType"] as? Int32 {
            self.retryType = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRobotTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DegradeVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

    public var mediaType: String?

    public var outId: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DegradeVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DegradeVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DegradeVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DegradeVideoFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRobotTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FireTime"] as? String {
            self.fireTime = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteCallTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCallMediaTypeRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetCallMediaTypeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCallMediaTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCallMediaTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCallMediaTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCallProgressRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNum: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNum != nil {
            map["CalledNum"] = self.calledNum!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNum"] as? String {
            self.calledNum = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetCallProgressResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCallProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCallProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCallProgressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["QualificationId"] as? String {
                self.qualificationId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetHotlineQualificationByOrderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHotlineQualificationByOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemporaryFileUrlRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var videoId: String?

    public override init() {
        super.init()
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
        if self.videoId != nil {
            map["VideoId"] = self.videoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VideoId"] as? String {
            self.videoId = value
        }
    }
}

public class GetTemporaryFileUrlResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
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

public class GetTemporaryFileUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemporaryFileUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemporaryFileUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TokenType"] as? String {
            self.tokenType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Token"] as? String {
            self.token = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoFieldUrlRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var videoFile: String?

    public override init() {
        super.init()
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
        if self.videoFile != nil {
            map["VideoFile"] = self.videoFile!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VideoFile"] as? String {
            self.videoFile = value
        }
    }
}

public class GetVideoFieldUrlResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVideoFieldUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoFieldUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVideoFieldUrlResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["TtsParams"] as? String {
                self.ttsParams = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ByeCode"] as? String {
            self.byeCode = value
        }
        if let value = dict["ByeTtsParams"] as? String {
            self.byeTtsParams = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CalledShowNumber"] as? String {
            self.calledShowNumber = value
        }
        if let value = dict["MenuKeyMap"] as? [Any?] {
            var tmp : [IvrCallRequest.MenuKeyMap] = []
            for v in value {
                if v != nil {
                    var model = IvrCallRequest.MenuKeyMap()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.menuKeyMap = tmp
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlayTimes"] as? Int64 {
            self.playTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartCode"] as? String {
            self.startCode = value
        }
        if let value = dict["StartTtsParams"] as? String {
            self.startTtsParams = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IvrCallResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizType"] as? String {
                self.bizType = value
            }
            if let value = dict["CompleteTime"] as? String {
                self.completeTime = value
            }
            if let value = dict["CompletedCount"] as? Int64 {
                self.completedCount = value
            }
            if let value = dict["CompletedRate"] as? Int32 {
                self.completedRate = value
            }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["FireTime"] as? String {
                self.fireTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Resource"] as? String {
                self.resource = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StopTime"] as? String {
                self.stopTime = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCallTaskResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCallTaskResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        if let value = dict["Total"] as? Int64 {
            self.total = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCallTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNum"] as? String {
            self.calledNum = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CalledNum"] as? String {
                self.calledNum = value
            }
            if let value = dict["Caller"] as? String {
                self.caller = value
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCallTaskDetailResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCallTaskDetailResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
        if let value = dict["TotalPage"] as? Int64 {
            self.totalPage = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCallTaskDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HotlineNumber"] as? String {
            self.hotlineNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QualificationId"] as? String {
            self.qualificationId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Agree"] as? String {
                    self.agree = value
                }
                if let value = dict["CorpName"] as? String {
                    self.corpName = value
                }
                if let value = dict["HotlineNumber"] as? String {
                    self.hotlineNumber = value
                }
                if let value = dict["MngOpIdentityCard"] as? String {
                    self.mngOpIdentityCard = value
                }
                if let value = dict["MngOpMail"] as? String {
                    self.mngOpMail = value
                }
                if let value = dict["MngOpMobile"] as? String {
                    self.mngOpMobile = value
                }
                if let value = dict["MngOpName"] as? String {
                    self.mngOpName = value
                }
                if let value = dict["QualificationId"] as? String {
                    self.qualificationId = value
                }
                if let value = dict["ResUniqueCode"] as? Int64 {
                    self.resUniqueCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [ListHotlineTransferRegisterFileResponseBody.Data.Values] = []
                for v in value {
                    if v != nil {
                        var model = ListHotlineTransferRegisterFileResponseBody.Data.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListHotlineTransferRegisterFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHotlineTransferRegisterFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceForPageRequest : Tea.TeaModel {
    public class Pager : Tea.TeaModel {
        public var pageIndex: Int64?

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
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageIndex"] as? Int64 {
                self.pageIndex = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
        }
    }
    public var code: String?

    public var ownerId: Int64?

    public var pager: ListServiceInstanceForPageRequest.Pager?

    public var relationNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneId: Int64?

    public var usageId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pager?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pager != nil {
            map["Pager"] = self.pager?.toMap()
        }
        if self.relationNumber != nil {
            map["RelationNumber"] = self.relationNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.usageId != nil {
            map["UsageId"] = self.usageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Pager"] as? [String: Any?] {
            var model = ListServiceInstanceForPageRequest.Pager()
            model.fromMap(value)
            self.pager = model
        }
        if let value = dict["RelationNumber"] as? String {
            self.relationNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["UsageId"] as? Int64 {
            self.usageId = value
        }
    }
}

public class ListServiceInstanceForPageShrinkRequest : Tea.TeaModel {
    public var code: String?

    public var ownerId: Int64?

    public var pagerShrink: String?

    public var relationNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneId: Int64?

    public var usageId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pagerShrink != nil {
            map["Pager"] = self.pagerShrink!
        }
        if self.relationNumber != nil {
            map["RelationNumber"] = self.relationNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.usageId != nil {
            map["UsageId"] = self.usageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Pager"] as? String {
            self.pagerShrink = value
        }
        if let value = dict["RelationNumber"] as? String {
            self.relationNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["UsageId"] as? Int64 {
            self.usageId = value
        }
    }
}

public class ListServiceInstanceForPageResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var aliUid: Int64?

            public var code: String?

            public var gmtCreate: String?

            public var instanceStatus: String?

            public var name: String?

            public var relationAvailableCount: Int64?

            public var relationTotalCount: Int64?

            public var sceneId: Int64?

            public var sceneName: String?

            public var status: String?

            public var usageId: Int64?

            public var usageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.instanceStatus != nil {
                    map["InstanceStatus"] = self.instanceStatus!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.relationAvailableCount != nil {
                    map["RelationAvailableCount"] = self.relationAvailableCount!
                }
                if self.relationTotalCount != nil {
                    map["RelationTotalCount"] = self.relationTotalCount!
                }
                if self.sceneId != nil {
                    map["SceneId"] = self.sceneId!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.usageId != nil {
                    map["UsageId"] = self.usageId!
                }
                if self.usageName != nil {
                    map["UsageName"] = self.usageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliUid"] as? Int64 {
                    self.aliUid = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["InstanceStatus"] as? String {
                    self.instanceStatus = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RelationAvailableCount"] as? Int64 {
                    self.relationAvailableCount = value
                }
                if let value = dict["RelationTotalCount"] as? Int64 {
                    self.relationTotalCount = value
                }
                if let value = dict["SceneId"] as? Int64 {
                    self.sceneId = value
                }
                if let value = dict["SceneName"] as? String {
                    self.sceneName = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UsageId"] as? Int64 {
                    self.usageId = value
                }
                if let value = dict["UsageName"] as? String {
                    self.usageName = value
                }
            }
        }
        public var pageNo: Int64?

        public var pageSize: Int64?

        public var records: [ListServiceInstanceForPageResponseBody.Model.Records]?

        public var totalCount: Int64?

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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListServiceInstanceForPageResponseBody.Model.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListServiceInstanceForPageResponseBody.Model.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: ListServiceInstanceForPageResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = ListServiceInstanceForPageResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListServiceInstanceForPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceForPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstanceForPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PauseVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class PauseVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PauseVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PauseVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PauseVideoFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PlayVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

    public var onlyPhone: Bool?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var videoId: String?

    public override init() {
        super.init()
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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.onlyPhone != nil {
            map["OnlyPhone"] = self.onlyPhone!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
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
        if self.videoId != nil {
            map["VideoId"] = self.videoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OnlyPhone"] as? Bool {
            self.onlyPhone = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VideoId"] as? String {
            self.videoId = value
        }
    }
}

public class PlayVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? Bool {
            self.model = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PlayVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PlayVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PlayVideoFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProdId"] as? Int64 {
            self.prodId = value
        }
        if let value = dict["QueryDate"] as? Int64 {
            self.queryDate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCallDetailByCallIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Callee"] as? String {
            self.callee = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QueryDate"] as? Int64 {
            self.queryDate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCallDetailByTaskIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Called"] as? String {
                    self.called = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CalledRouteMode"] as? String {
                self.calledRouteMode = value
            }
            if let value = dict["Details"] as? [Any?] {
                var tmp : [QueryCallInPoolTransferConfigResponseBody.Data.Details] = []
                for v in value {
                    if v != nil {
                        var model = QueryCallInPoolTransferConfigResponseBody.Data.Details()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.details = tmp
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["TransferTimeout"] as? String {
                self.transferTimeout = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryCallInPoolTransferConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCallInPoolTransferConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallInCaller"] as? String {
            self.callInCaller = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["QueryDate"] as? String {
            self.queryDate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CallInCalled"] as? String {
                    self.callInCalled = value
                }
                if let value = dict["CallInCaller"] as? String {
                    self.callInCaller = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["RecordUrl"] as? String {
                    self.recordUrl = value
                }
                if let value = dict["TransferCalled"] as? String {
                    self.transferCalled = value
                }
                if let value = dict["TransferCaller"] as? String {
                    self.transferCaller = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [QueryCallInTransferRecordResponseBody.Data.Values] = []
                for v in value {
                    if v != nil {
                        var model = QueryCallInTransferRecordResponseBody.Data.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryCallInTransferRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCallInTransferRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? String {
            self.auditStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRobotInfoListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Callee"] as? String {
            self.callee = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QueryDate"] as? Int64 {
            self.queryDate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRobotTaskCallDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallResult"] as? String {
            self.callResult = value
        }
        if let value = dict["Called"] as? String {
            self.called = value
        }
        if let value = dict["DialogCountFrom"] as? String {
            self.dialogCountFrom = value
        }
        if let value = dict["DialogCountTo"] as? String {
            self.dialogCountTo = value
        }
        if let value = dict["DurationFrom"] as? String {
            self.durationFrom = value
        }
        if let value = dict["DurationTo"] as? String {
            self.durationTo = value
        }
        if let value = dict["HangupDirection"] as? String {
            self.hangupDirection = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRobotTaskCallListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRobotTaskDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? String {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRobotTaskListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRobotv2AllListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVideoPlayProgressRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryVideoPlayProgressResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryVideoPlayProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVideoPlayProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVideoPlayProgressResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PhoneNum"] as? String {
            self.phoneNum = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["RegionNameCity"] as? String {
            self.regionNameCity = value
        }
        if let value = dict["RelatedNum"] as? String {
            self.relatedNum = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RouteType"] as? Int32 {
            self.routeType = value
        }
        if let value = dict["SpecId"] as? Int64 {
            self.specId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVirtualNumberRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVmsRealNumberCallConnectionRateInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var realNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var timePeriod: String?

    public var virtualNumber: String?

    public override init() {
        super.init()
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
        if self.realNumber != nil {
            map["RealNumber"] = self.realNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.timePeriod != nil {
            map["TimePeriod"] = self.timePeriod!
        }
        if self.virtualNumber != nil {
            map["VirtualNumber"] = self.virtualNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RealNumber"] as? String {
            self.realNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TimePeriod"] as? String {
            self.timePeriod = value
        }
        if let value = dict["VirtualNumber"] as? String {
            self.virtualNumber = value
        }
    }
}

public class QueryVmsRealNumberCallConnectionRateInfoResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var callConnectionRate: Double?

        public var completeCount: Int64?

        public var regionId: String?

        public var requestCount: Int64?

        public var resourceId: String?

        public var resourceType: String?

        public var ringingCount: Int64?

        public var ringingRate: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callConnectionRate != nil {
                map["CallConnectionRate"] = self.callConnectionRate!
            }
            if self.completeCount != nil {
                map["CompleteCount"] = self.completeCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requestCount != nil {
                map["RequestCount"] = self.requestCount!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.ringingCount != nil {
                map["RingingCount"] = self.ringingCount!
            }
            if self.ringingRate != nil {
                map["RingingRate"] = self.ringingRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallConnectionRate"] as? Double {
                self.callConnectionRate = value
            }
            if let value = dict["CompleteCount"] as? Int64 {
                self.completeCount = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RequestCount"] as? Int64 {
                self.requestCount = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["RingingCount"] as? Int64 {
                self.ringingCount = value
            }
            if let value = dict["RingingRate"] as? Double {
                self.ringingRate = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: QueryVmsRealNumberCallConnectionRateInfoResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = QueryVmsRealNumberCallConnectionRateInfoResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryVmsRealNumberCallConnectionRateInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVmsRealNumberCallConnectionRateInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVmsRealNumberCallConnectionRateInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVmsVirtualNumberRelationByPageRequest : Tea.TeaModel {
    public var numberCity: String?

    public var numberProvince: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var realNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var state: Int64?

    public var virtualNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numberCity != nil {
            map["NumberCity"] = self.numberCity!
        }
        if self.numberProvince != nil {
            map["NumberProvince"] = self.numberProvince!
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
        if self.realNumber != nil {
            map["RealNumber"] = self.realNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.virtualNumber != nil {
            map["VirtualNumber"] = self.virtualNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NumberCity"] as? String {
            self.numberCity = value
        }
        if let value = dict["NumberProvince"] as? String {
            self.numberProvince = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RealNumber"] as? String {
            self.realNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["State"] as? Int64 {
            self.state = value
        }
        if let value = dict["VirtualNumber"] as? String {
            self.virtualNumber = value
        }
    }
}

public class QueryVmsVirtualNumberRelationByPageResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var numberCity: String?

            public var numberProvince: String?

            public var realNumber: String?

            public var state: Int64?

            public var virtualNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.numberCity != nil {
                    map["NumberCity"] = self.numberCity!
                }
                if self.numberProvince != nil {
                    map["NumberProvince"] = self.numberProvince!
                }
                if self.realNumber != nil {
                    map["RealNumber"] = self.realNumber!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.virtualNumber != nil {
                    map["VirtualNumber"] = self.virtualNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NumberCity"] as? String {
                    self.numberCity = value
                }
                if let value = dict["NumberProvince"] as? String {
                    self.numberProvince = value
                }
                if let value = dict["RealNumber"] as? String {
                    self.realNumber = value
                }
                if let value = dict["State"] as? Int64 {
                    self.state = value
                }
                if let value = dict["VirtualNumber"] as? String {
                    self.virtualNumber = value
                }
            }
        }
        public var data: [QueryVmsVirtualNumberRelationByPageResponseBody.Model.Data]?

        public var pageNo: Int64?

        public var pageSize: Int64?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
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
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryVmsVirtualNumberRelationByPageResponseBody.Model.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryVmsVirtualNumberRelationByPageResponseBody.Model.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: QueryVmsVirtualNumberRelationByPageResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = QueryVmsVirtualNumberRelationByPageResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryVmsVirtualNumberRelationByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVmsVirtualNumberRelationByPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVmsVirtualNumberRelationByPageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessType"] as? Int32 {
            self.businessType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VoiceCodes"] as? String {
            self.voiceCodes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditState"] as? String {
                self.auditState = value
            }
            if let value = dict["RejectInfo"] as? String {
                self.rejectInfo = value
            }
            if let value = dict["VoiceCode"] as? String {
                self.voiceCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryVoiceFileAuditInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryVoiceFileAuditInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryVoiceFileAuditInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Number"] as? String {
            self.number = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecoverCallInConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ResumeVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ResumeVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResumeVideoFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SeekVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var seekTimes: Int64?

    public override init() {
        super.init()
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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
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
        if self.seekTimes != nil {
            map["SeekTimes"] = self.seekTimes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SeekTimes"] as? Int64 {
            self.seekTimes = value
        }
    }
}

public class SeekVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SeekVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SeekVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SeekVideoFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["VerifyType"] as? String {
            self.verifyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendVerificationResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Called"] as? String {
                self.called = value
            }
            if let value = dict["Caller"] as? String {
                self.caller = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledRouteMode"] as? String {
            self.calledRouteMode = value
        }
        if let value = dict["Details"] as? [Any?] {
            var tmp : [SetTransferCalleePoolConfigRequest.Details] = []
            for v in value {
                if v != nil {
                    var model = SetTransferCalleePoolConfigRequest.Details()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.details = tmp
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["QualificationId"] as? String {
            self.qualificationId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetTransferCalleePoolConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CalledShowNumber"] as? String {
            self.calledShowNumber = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlayTimes"] as? Int32 {
            self.playTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Speed"] as? Int32 {
            self.speed = value
        }
        if let value = dict["TtsCode"] as? String {
            self.ttsCode = value
        }
        if let value = dict["TtsParam"] as? String {
            self.ttsParam = value
        }
        if let value = dict["Volume"] as? Int32 {
            self.volume = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SingleCallByTtsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SingleCallByVideoRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var calledShowNumber: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var speed: Int32?

    public var videoCode: String?

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
        if self.videoCode != nil {
            map["VideoCode"] = self.videoCode!
        }
        if self.voiceCode != nil {
            map["VoiceCode"] = self.voiceCode!
        }
        if self.volume != nil {
            map["Volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CalledShowNumber"] as? String {
            self.calledShowNumber = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlayTimes"] as? Int32 {
            self.playTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Speed"] as? Int32 {
            self.speed = value
        }
        if let value = dict["VideoCode"] as? String {
            self.videoCode = value
        }
        if let value = dict["VoiceCode"] as? String {
            self.voiceCode = value
        }
        if let value = dict["Volume"] as? Int32 {
            self.volume = value
        }
    }
}

public class SingleCallByVideoResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SingleCallByVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleCallByVideoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SingleCallByVideoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CalledShowNumber"] as? String {
            self.calledShowNumber = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlayTimes"] as? Int32 {
            self.playTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Speed"] as? Int32 {
            self.speed = value
        }
        if let value = dict["VoiceCode"] as? String {
            self.voiceCode = value
        }
        if let value = dict["Volume"] as? Int32 {
            self.volume = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SingleCallByVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SkipVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var skipTimes: Int64?

    public override init() {
        super.init()
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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
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
        if self.skipTimes != nil {
            map["SkipTimes"] = self.skipTimes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SkipTimes"] as? Int64 {
            self.skipTimes = value
        }
    }
}

public class SkipVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SkipVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SkipVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SkipVideoFileResponseBody()
            model.fromMap(value)
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

    public var noiseThreshold: Double?

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
        if self.noiseThreshold != nil {
            map["NoiseThreshold"] = self.noiseThreshold!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionCodeBreak"] as? Bool {
            self.actionCodeBreak = value
        }
        if let value = dict["ActionCodeTimeBreak"] as? Int32 {
            self.actionCodeTimeBreak = value
        }
        if let value = dict["AsrBaseId"] as? String {
            self.asrBaseId = value
        }
        if let value = dict["AsrModelId"] as? String {
            self.asrModelId = value
        }
        if let value = dict["BackgroundFileCode"] as? String {
            self.backgroundFileCode = value
        }
        if let value = dict["BackgroundSpeed"] as? Int32 {
            self.backgroundSpeed = value
        }
        if let value = dict["BackgroundVolume"] as? Int32 {
            self.backgroundVolume = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CalledShowNumber"] as? String {
            self.calledShowNumber = value
        }
        if let value = dict["DynamicId"] as? String {
            self.dynamicId = value
        }
        if let value = dict["EarlyMediaAsr"] as? Bool {
            self.earlyMediaAsr = value
        }
        if let value = dict["EnableITN"] as? Bool {
            self.enableITN = value
        }
        if let value = dict["MuteTime"] as? Int32 {
            self.muteTime = value
        }
        if let value = dict["NoiseThreshold"] as? Double {
            self.noiseThreshold = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PauseTime"] as? Int32 {
            self.pauseTime = value
        }
        if let value = dict["RecordFlag"] as? Bool {
            self.recordFlag = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SessionTimeout"] as? Int32 {
            self.sessionTimeout = value
        }
        if let value = dict["Speed"] as? Int32 {
            self.speed = value
        }
        if let value = dict["StreamAsr"] as? Int32 {
            self.streamAsr = value
        }
        if let value = dict["TtsConf"] as? Bool {
            self.ttsConf = value
        }
        if let value = dict["TtsSpeed"] as? Int32 {
            self.ttsSpeed = value
        }
        if let value = dict["TtsStyle"] as? String {
            self.ttsStyle = value
        }
        if let value = dict["TtsVolume"] as? Int32 {
            self.ttsVolume = value
        }
        if let value = dict["VoiceCode"] as? String {
            self.voiceCode = value
        }
        if let value = dict["VoiceCodeParam"] as? String {
            self.voiceCodeParam = value
        }
        if let value = dict["Volume"] as? Int32 {
            self.volume = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SmartCallResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Command"] as? String {
            self.command = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Param"] as? String {
            self.param = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SmartCallOperateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartRobotTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Number"] as? String {
            self.number = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopCallInConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopRobotTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IdentityCard"] as? String {
                self.identityCard = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["PhoneNumberOwnerName"] as? String {
                self.phoneNumberOwnerName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Agreement"] as? String {
            self.agreement = value
        }
        if let value = dict["HotlineNumber"] as? String {
            self.hotlineNumber = value
        }
        if let value = dict["OperatorIdentityCard"] as? String {
            self.operatorIdentityCard = value
        }
        if let value = dict["OperatorMail"] as? String {
            self.operatorMail = value
        }
        if let value = dict["OperatorMailVerifyCode"] as? String {
            self.operatorMailVerifyCode = value
        }
        if let value = dict["OperatorMobile"] as? String {
            self.operatorMobile = value
        }
        if let value = dict["OperatorMobileVerifyCode"] as? String {
            self.operatorMobileVerifyCode = value
        }
        if let value = dict["OperatorName"] as? String {
            self.operatorName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationId"] as? String {
            self.qualificationId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TransferPhoneNumberInfos"] as? [Any?] {
            var tmp : [SubmitHotlineTransferRegisterRequest.TransferPhoneNumberInfos] = []
            for v in value {
                if v != nil {
                    var model = SubmitHotlineTransferRegisterRequest.TransferPhoneNumberInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transferPhoneNumberInfos = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitHotlineTransferRegisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeVideoFileRequest : Tea.TeaModel {
    public var callId: String?

    public var calledNumber: String?

    public var mediaType: String?

    public var outId: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpgradeVideoFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpgradeVideoFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeVideoFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeVideoFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TtsParam"] as? String {
            self.ttsParam = value
        }
        if let value = dict["TtsParamHead"] as? String {
            self.ttsParamHead = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UploadRobotTaskCalledFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
