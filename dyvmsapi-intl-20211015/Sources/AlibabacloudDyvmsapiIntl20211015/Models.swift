import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BackendCallGroupRequest : Tea.TeaModel {
    public var calledNumber: [String]?

    public var callerIdNumber: String?

    public var countryId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var speed: Int64?

    public var taskName: String?

    public var timingStart: String?

    public var ttsCode: String?

    public var voiceCode: String?

    public var volume: Int64?

    public override init() {
        super.init()
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
        if self.callerIdNumber != nil {
            map["CallerIdNumber"] = self.callerIdNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
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
        if self.sendType != nil {
            map["SendType"] = self.sendType!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.timingStart != nil {
            map["TimingStart"] = self.timingStart!
        }
        if self.ttsCode != nil {
            map["TtsCode"] = self.ttsCode!
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
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumber = dict["CalledNumber"] as! [String]
        }
        if dict.keys.contains("CallerIdNumber") && dict["CallerIdNumber"] != nil {
            self.callerIdNumber = dict["CallerIdNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayTimes") && dict["PlayTimes"] != nil {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendType") && dict["SendType"] != nil {
            self.sendType = dict["SendType"] as! Int64
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TimingStart") && dict["TimingStart"] != nil {
            self.timingStart = dict["TimingStart"] as! String
        }
        if dict.keys.contains("TtsCode") && dict["TtsCode"] != nil {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("VoiceCode") && dict["VoiceCode"] != nil {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("Volume") && dict["Volume"] != nil {
            self.volume = dict["Volume"] as! Int64
        }
    }
}

public class BackendCallGroupShrinkRequest : Tea.TeaModel {
    public var calledNumberShrink: String?

    public var callerIdNumber: String?

    public var countryId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var speed: Int64?

    public var taskName: String?

    public var timingStart: String?

    public var ttsCode: String?

    public var voiceCode: String?

    public var volume: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledNumberShrink != nil {
            map["CalledNumber"] = self.calledNumberShrink!
        }
        if self.callerIdNumber != nil {
            map["CallerIdNumber"] = self.callerIdNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
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
        if self.sendType != nil {
            map["SendType"] = self.sendType!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.timingStart != nil {
            map["TimingStart"] = self.timingStart!
        }
        if self.ttsCode != nil {
            map["TtsCode"] = self.ttsCode!
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
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumberShrink = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallerIdNumber") && dict["CallerIdNumber"] != nil {
            self.callerIdNumber = dict["CallerIdNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayTimes") && dict["PlayTimes"] != nil {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendType") && dict["SendType"] != nil {
            self.sendType = dict["SendType"] as! Int64
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TimingStart") && dict["TimingStart"] != nil {
            self.timingStart = dict["TimingStart"] as! String
        }
        if dict.keys.contains("TtsCode") && dict["TtsCode"] != nil {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("VoiceCode") && dict["VoiceCode"] != nil {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("Volume") && dict["Volume"] != nil {
            self.volume = dict["Volume"] as! Int64
        }
    }
}

public class BackendCallGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class BackendCallGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BackendCallGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BackendCallGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BackendCallSignalRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callerIdNumber: String?

    public var countryId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var speed: Int64?

    public var ttsCode: String?

    public var ttsParam: String?

    public var volume: Int64?

    public override init() {
        super.init()
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
        if self.callerIdNumber != nil {
            map["CallerIdNumber"] = self.callerIdNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
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
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallerIdNumber") && dict["CallerIdNumber"] != nil {
            self.callerIdNumber = dict["CallerIdNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayTimes") && dict["PlayTimes"] != nil {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("TtsCode") && dict["TtsCode"] != nil {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("TtsParam") && dict["TtsParam"] != nil {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("Volume") && dict["Volume"] != nil {
            self.volume = dict["Volume"] as! Int64
        }
    }
}

public class BackendCallSignalResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("CallId") && dict["CallId"] != nil {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BackendCallSignalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BackendCallSignalResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BackendCallSignalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancleGroupCallRequest : Tea.TeaModel {
    public var ownerId: Int64?

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
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancleGroupCallResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancleGroupCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancleGroupCallResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancleGroupCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplyNumberRecordRequest : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteApplyNumberRecordResponseBody : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApplyNumberRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplyNumberRecordResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteApplyNumberRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteQualificationRequest : Tea.TeaModel {
    public var ownerId: Int64?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteQualificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var qualificationId: String?

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
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQualificationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteQualificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSipTrunkApplyRequest : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteSipTrunkApplyResponseBody : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSipTrunkApplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSipTrunkApplyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSipTrunkApplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVoiceFileRequest : Tea.TeaModel {
    public var fileId: String?

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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
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
        if dict.keys.contains("FileId") && dict["FileId"] != nil {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteVoiceFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var fileId: String?

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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileId") && dict["FileId"] != nil {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVoiceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVoiceFileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteVoiceFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVoiceTtsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DeleteVoiceTtsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DeleteVoiceTtsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVoiceTtsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteVoiceTtsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadTemplateFileRequest : Tea.TeaModel {
    public var fileType: String?

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
        if self.fileType != nil {
            map["FileType"] = self.fileType!
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
        if dict.keys.contains("FileType") && dict["FileType"] != nil {
            self.fileType = dict["FileType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DownloadTemplateFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class DownloadTemplateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadTemplateFileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DownloadTemplateFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIntlVoiceOpenStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetIntlVoiceOpenStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var openStatus: Bool?

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
        if self.openStatus != nil {
            map["OpenStatus"] = self.openStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OpenStatus") && dict["OpenStatus"] != nil {
            self.openStatus = dict["OpenStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetIntlVoiceOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIntlVoiceOpenStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetIntlVoiceOpenStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOssInfoForUploadFileRequest : Tea.TeaModel {
    public var bizType: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetOssInfoForUploadFileResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var expireTime: String?

    public var host: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

    public var startWith: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.host != nil {
            map["Host"] = self.host!
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
        if self.startWith != nil {
            map["StartWith"] = self.startWith!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("StartWith") && dict["StartWith"] != nil {
            self.startWith = dict["StartWith"] as! String
        }
    }
}

public class GetOssInfoForUploadFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssInfoForUploadFileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetOssInfoForUploadFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HomeStartRequest : Tea.TeaModel {
    public var businessType: Int64?

    public var endTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class HomeStartResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var callFailed: Int64?

            public var callSuccess: Int64?

            public var callTotal: Int64?

            public var date: String?

            public var successRate: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callFailed != nil {
                    map["CallFailed"] = self.callFailed!
                }
                if self.callSuccess != nil {
                    map["CallSuccess"] = self.callSuccess!
                }
                if self.callTotal != nil {
                    map["CallTotal"] = self.callTotal!
                }
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.successRate != nil {
                    map["SuccessRate"] = self.successRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallFailed") && dict["CallFailed"] != nil {
                    self.callFailed = dict["CallFailed"] as! Int64
                }
                if dict.keys.contains("CallSuccess") && dict["CallSuccess"] != nil {
                    self.callSuccess = dict["CallSuccess"] as! Int64
                }
                if dict.keys.contains("CallTotal") && dict["CallTotal"] != nil {
                    self.callTotal = dict["CallTotal"] as! Int64
                }
                if dict.keys.contains("Date") && dict["Date"] != nil {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("SuccessRate") && dict["SuccessRate"] != nil {
                    self.successRate = dict["SuccessRate"] as! Int64
                }
            }
        }
        public var cdrDrUrl: String?

        public var list: [HomeStartResponseBody.Model.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdrDrUrl != nil {
                map["CdrDrUrl"] = self.cdrDrUrl!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdrDrUrl") && dict["CdrDrUrl"] != nil {
                self.cdrDrUrl = dict["CdrDrUrl"] as! String
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [HomeStartResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = HomeStartResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var model: HomeStartResponseBody.Model?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = HomeStartResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class HomeStartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HomeStartResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = HomeStartResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplyNumberRecordRequest : Tea.TeaModel {
    public var countryId: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class ListApplyNumberRecordResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var amount: String?

        public var applyId: String?

        public var applyNote: String?

        public var auditNote: String?

        public var auditTs: String?

        public var batchIndex: Int64?

        public var commitTs: String?

        public var countryId: String?

        public var inboundConcurrency: Int64?

        public var outboundConcurrency: Int64?

        public var phoneType: Int64?

        public var qualificationId: String?

        public var scene: String?

        public var status: Int64?

        public var support: Int64?

        public var updateTs: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.applyId != nil {
                map["ApplyId"] = self.applyId!
            }
            if self.applyNote != nil {
                map["ApplyNote"] = self.applyNote!
            }
            if self.auditNote != nil {
                map["AuditNote"] = self.auditNote!
            }
            if self.auditTs != nil {
                map["AuditTs"] = self.auditTs!
            }
            if self.batchIndex != nil {
                map["BatchIndex"] = self.batchIndex!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.inboundConcurrency != nil {
                map["InboundConcurrency"] = self.inboundConcurrency!
            }
            if self.outboundConcurrency != nil {
                map["OutboundConcurrency"] = self.outboundConcurrency!
            }
            if self.phoneType != nil {
                map["PhoneType"] = self.phoneType!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.support != nil {
                map["Support"] = self.support!
            }
            if self.updateTs != nil {
                map["UpdateTs"] = self.updateTs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! String
            }
            if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
                self.applyId = dict["ApplyId"] as! String
            }
            if dict.keys.contains("ApplyNote") && dict["ApplyNote"] != nil {
                self.applyNote = dict["ApplyNote"] as! String
            }
            if dict.keys.contains("AuditNote") && dict["AuditNote"] != nil {
                self.auditNote = dict["AuditNote"] as! String
            }
            if dict.keys.contains("AuditTs") && dict["AuditTs"] != nil {
                self.auditTs = dict["AuditTs"] as! String
            }
            if dict.keys.contains("BatchIndex") && dict["BatchIndex"] != nil {
                self.batchIndex = dict["BatchIndex"] as! Int64
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("InboundConcurrency") && dict["InboundConcurrency"] != nil {
                self.inboundConcurrency = dict["InboundConcurrency"] as! Int64
            }
            if dict.keys.contains("OutboundConcurrency") && dict["OutboundConcurrency"] != nil {
                self.outboundConcurrency = dict["OutboundConcurrency"] as! Int64
            }
            if dict.keys.contains("PhoneType") && dict["PhoneType"] != nil {
                self.phoneType = dict["PhoneType"] as! Int64
            }
            if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("Support") && dict["Support"] != nil {
                self.support = dict["Support"] as! Int64
            }
            if dict.keys.contains("UpdateTs") && dict["UpdateTs"] != nil {
                self.updateTs = dict["UpdateTs"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListApplyNumberRecordResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListApplyNumberRecordResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListApplyNumberRecordResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListApplyNumberRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplyNumberRecordResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListApplyNumberRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNumberRequest : Tea.TeaModel {
    public var applyId: String?

    public var countryId: String?

    public var number: String?

    public var numberName: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var phoneType: Int64?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.numberName != nil {
            map["NumberName"] = self.numberName!
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
        if self.phoneType != nil {
            map["PhoneType"] = self.phoneType!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("Number") && dict["Number"] != nil {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("NumberName") && dict["NumberName"] != nil {
            self.numberName = dict["NumberName"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PhoneType") && dict["PhoneType"] != nil {
            self.phoneType = dict["PhoneType"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListNumberResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var applyId: String?

        public var countryId: String?

        public var disableTs: String?

        public var inboundConcurrency: Int64?

        public var number: String?

        public var numberName: String?

        public var outboundConcurrency: Int64?

        public var phoneType: Int64?

        public var qualificationId: String?

        public var resourceId: String?

        public var status: Int64?

        public var supplierId: String?

        public var support: Int64?

        public var updateTs: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["ApplyId"] = self.applyId!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.disableTs != nil {
                map["DisableTs"] = self.disableTs!
            }
            if self.inboundConcurrency != nil {
                map["InboundConcurrency"] = self.inboundConcurrency!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberName != nil {
                map["NumberName"] = self.numberName!
            }
            if self.outboundConcurrency != nil {
                map["OutboundConcurrency"] = self.outboundConcurrency!
            }
            if self.phoneType != nil {
                map["PhoneType"] = self.phoneType!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierId != nil {
                map["SupplierId"] = self.supplierId!
            }
            if self.support != nil {
                map["Support"] = self.support!
            }
            if self.updateTs != nil {
                map["UpdateTs"] = self.updateTs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
                self.applyId = dict["ApplyId"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("DisableTs") && dict["DisableTs"] != nil {
                self.disableTs = dict["DisableTs"] as! String
            }
            if dict.keys.contains("InboundConcurrency") && dict["InboundConcurrency"] != nil {
                self.inboundConcurrency = dict["InboundConcurrency"] as! Int64
            }
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("NumberName") && dict["NumberName"] != nil {
                self.numberName = dict["NumberName"] as! String
            }
            if dict.keys.contains("OutboundConcurrency") && dict["OutboundConcurrency"] != nil {
                self.outboundConcurrency = dict["OutboundConcurrency"] as! Int64
            }
            if dict.keys.contains("PhoneType") && dict["PhoneType"] != nil {
                self.phoneType = dict["PhoneType"] as! Int64
            }
            if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("SupplierId") && dict["SupplierId"] != nil {
                self.supplierId = dict["SupplierId"] as! String
            }
            if dict.keys.contains("Support") && dict["Support"] != nil {
                self.support = dict["Support"] as! Int64
            }
            if dict.keys.contains("UpdateTs") && dict["UpdateTs"] != nil {
                self.updateTs = dict["UpdateTs"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListNumberResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListNumberResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListNumberResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNumberResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQualificationRequest : Tea.TeaModel {
    public var companyName: String?

    public var contactPhone: String?

    public var countryId: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.contactPhone != nil {
            map["ContactPhone"] = self.contactPhone!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
            self.companyName = dict["CompanyName"] as! String
        }
        if dict.keys.contains("ContactPhone") && dict["ContactPhone"] != nil {
            self.contactPhone = dict["ContactPhone"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class ListQualificationResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var address: String?

        public var auditRemark: String?

        public var auditTs: String?

        public var businessLicenseFileKey: String?

        public var commitTs: String?

        public var companyName: String?

        public var contactEmail: String?

        public var contactName: String?

        public var contactPhone: String?

        public var countryId: String?

        public var legalId: String?

        public var legalLicenseFileKey: String?

        public var legalName: String?

        public var networkAccessFileKey: String?

        public var qualificationId: String?

        public var status: Int64?

        public var unifiedCode: String?

        public var updateTs: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.auditRemark != nil {
                map["AuditRemark"] = self.auditRemark!
            }
            if self.auditTs != nil {
                map["AuditTs"] = self.auditTs!
            }
            if self.businessLicenseFileKey != nil {
                map["BusinessLicenseFileKey"] = self.businessLicenseFileKey!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPhone != nil {
                map["ContactPhone"] = self.contactPhone!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.legalId != nil {
                map["LegalId"] = self.legalId!
            }
            if self.legalLicenseFileKey != nil {
                map["LegalLicenseFileKey"] = self.legalLicenseFileKey!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.networkAccessFileKey != nil {
                map["NetworkAccessFileKey"] = self.networkAccessFileKey!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unifiedCode != nil {
                map["UnifiedCode"] = self.unifiedCode!
            }
            if self.updateTs != nil {
                map["UpdateTs"] = self.updateTs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AuditRemark") && dict["AuditRemark"] != nil {
                self.auditRemark = dict["AuditRemark"] as! String
            }
            if dict.keys.contains("AuditTs") && dict["AuditTs"] != nil {
                self.auditTs = dict["AuditTs"] as! String
            }
            if dict.keys.contains("BusinessLicenseFileKey") && dict["BusinessLicenseFileKey"] != nil {
                self.businessLicenseFileKey = dict["BusinessLicenseFileKey"] as! String
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
                self.contactEmail = dict["ContactEmail"] as! String
            }
            if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
                self.contactName = dict["ContactName"] as! String
            }
            if dict.keys.contains("ContactPhone") && dict["ContactPhone"] != nil {
                self.contactPhone = dict["ContactPhone"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("LegalId") && dict["LegalId"] != nil {
                self.legalId = dict["LegalId"] as! String
            }
            if dict.keys.contains("LegalLicenseFileKey") && dict["LegalLicenseFileKey"] != nil {
                self.legalLicenseFileKey = dict["LegalLicenseFileKey"] as! String
            }
            if dict.keys.contains("LegalName") && dict["LegalName"] != nil {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("NetworkAccessFileKey") && dict["NetworkAccessFileKey"] != nil {
                self.networkAccessFileKey = dict["NetworkAccessFileKey"] as! String
            }
            if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("UnifiedCode") && dict["UnifiedCode"] != nil {
                self.unifiedCode = dict["UnifiedCode"] as! String
            }
            if dict.keys.contains("UpdateTs") && dict["UpdateTs"] != nil {
                self.updateTs = dict["UpdateTs"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListQualificationResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListQualificationResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListQualificationResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQualificationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListQualificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListReceiptRequest : Tea.TeaModel {
    public var businessType: Int32?

    public var endTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListReceiptResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var callFailedCount: Int32?

        public var callSuccessCount: Int32?

        public var callTotalCount: Int32?

        public var date: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callFailedCount != nil {
                map["CallFailedCount"] = self.callFailedCount!
            }
            if self.callSuccessCount != nil {
                map["CallSuccessCount"] = self.callSuccessCount!
            }
            if self.callTotalCount != nil {
                map["CallTotalCount"] = self.callTotalCount!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallFailedCount") && dict["CallFailedCount"] != nil {
                self.callFailedCount = dict["CallFailedCount"] as! Int32
            }
            if dict.keys.contains("CallSuccessCount") && dict["CallSuccessCount"] != nil {
                self.callSuccessCount = dict["CallSuccessCount"] as! Int32
            }
            if dict.keys.contains("CallTotalCount") && dict["CallTotalCount"] != nil {
                self.callTotalCount = dict["CallTotalCount"] as! Int32
            }
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListReceiptResponseBody.List]?

    public var message: String?

    public var receiptUrl: String?

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
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListReceiptResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListReceiptResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReceiptUrl") && dict["ReceiptUrl"] != nil {
            self.receiptUrl = dict["ReceiptUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListReceiptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReceiptResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListReceiptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSipTrunkRequest : Tea.TeaModel {
    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class ListSipTrunkResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var applyId: String?

        public var applyNote: String?

        public var auditNote: String?

        public var auditTs: String?

        public var commitTs: String?

        public var countryId: String?

        public var inboundIpPorts: String?

        public var outboundIps: String?

        public var qualificationId: String?

        public var scene: String?

        public var status: String?

        public var updateTs: String?

        public var userUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["ApplyId"] = self.applyId!
            }
            if self.applyNote != nil {
                map["ApplyNote"] = self.applyNote!
            }
            if self.auditNote != nil {
                map["AuditNote"] = self.auditNote!
            }
            if self.auditTs != nil {
                map["AuditTs"] = self.auditTs!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.inboundIpPorts != nil {
                map["InboundIpPorts"] = self.inboundIpPorts!
            }
            if self.outboundIps != nil {
                map["OutboundIps"] = self.outboundIps!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTs != nil {
                map["UpdateTs"] = self.updateTs!
            }
            if self.userUuid != nil {
                map["UserUuid"] = self.userUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
                self.applyId = dict["ApplyId"] as! String
            }
            if dict.keys.contains("ApplyNote") && dict["ApplyNote"] != nil {
                self.applyNote = dict["ApplyNote"] as! String
            }
            if dict.keys.contains("AuditNote") && dict["AuditNote"] != nil {
                self.auditNote = dict["AuditNote"] as! String
            }
            if dict.keys.contains("AuditTs") && dict["AuditTs"] != nil {
                self.auditTs = dict["AuditTs"] as! String
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("InboundIpPorts") && dict["InboundIpPorts"] != nil {
                self.inboundIpPorts = dict["InboundIpPorts"] as! String
            }
            if dict.keys.contains("OutboundIps") && dict["OutboundIps"] != nil {
                self.outboundIps = dict["OutboundIps"] as! String
            }
            if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTs") && dict["UpdateTs"] != nil {
                self.updateTs = dict["UpdateTs"] as! String
            }
            if dict.keys.contains("UserUuid") && dict["UserUuid"] != nil {
                self.userUuid = dict["UserUuid"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListSipTrunkResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var total: String?

    public override init() {
        super.init()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListSipTrunkResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListSipTrunkResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! String
        }
    }
}

public class ListSipTrunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSipTrunkResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSipTrunkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSipTrunkDetailRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callingNumber: String?

    public var countryId: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListSipTrunkDetailResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var answerTime: String?

        public var answered: Int64?

        public var busiType: String?

        public var callEndTime: String?

        public var callType: String?

        public var calledIp: String?

        public var calledNum: String?

        public var calledNumRegion: String?

        public var calledNumType: String?

        public var callerDisplay: String?

        public var callerIp: String?

        public var callerNum: String?

        public var callerNumRegion: String?

        public var callerNumType: String?

        public var duration: Int64?

        public var hangup: Int64?

        public var hangupType: Int64?

        public var ivnCliType: String?

        public var recordUrl: String?

        public var startTime: String?

        public var userUuid: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerTime != nil {
                map["AnswerTime"] = self.answerTime!
            }
            if self.answered != nil {
                map["Answered"] = self.answered!
            }
            if self.busiType != nil {
                map["BusiType"] = self.busiType!
            }
            if self.callEndTime != nil {
                map["CallEndTime"] = self.callEndTime!
            }
            if self.callType != nil {
                map["CallType"] = self.callType!
            }
            if self.calledIp != nil {
                map["CalledIp"] = self.calledIp!
            }
            if self.calledNum != nil {
                map["CalledNum"] = self.calledNum!
            }
            if self.calledNumRegion != nil {
                map["CalledNumRegion"] = self.calledNumRegion!
            }
            if self.calledNumType != nil {
                map["CalledNumType"] = self.calledNumType!
            }
            if self.callerDisplay != nil {
                map["CallerDisplay"] = self.callerDisplay!
            }
            if self.callerIp != nil {
                map["CallerIp"] = self.callerIp!
            }
            if self.callerNum != nil {
                map["CallerNum"] = self.callerNum!
            }
            if self.callerNumRegion != nil {
                map["CallerNumRegion"] = self.callerNumRegion!
            }
            if self.callerNumType != nil {
                map["CallerNumType"] = self.callerNumType!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.hangup != nil {
                map["Hangup"] = self.hangup!
            }
            if self.hangupType != nil {
                map["HangupType"] = self.hangupType!
            }
            if self.ivnCliType != nil {
                map["IvnCliType"] = self.ivnCliType!
            }
            if self.recordUrl != nil {
                map["RecordUrl"] = self.recordUrl!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.userUuid != nil {
                map["UserUuid"] = self.userUuid!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnswerTime") && dict["AnswerTime"] != nil {
                self.answerTime = dict["AnswerTime"] as! String
            }
            if dict.keys.contains("Answered") && dict["Answered"] != nil {
                self.answered = dict["Answered"] as! Int64
            }
            if dict.keys.contains("BusiType") && dict["BusiType"] != nil {
                self.busiType = dict["BusiType"] as! String
            }
            if dict.keys.contains("CallEndTime") && dict["CallEndTime"] != nil {
                self.callEndTime = dict["CallEndTime"] as! String
            }
            if dict.keys.contains("CallType") && dict["CallType"] != nil {
                self.callType = dict["CallType"] as! String
            }
            if dict.keys.contains("CalledIp") && dict["CalledIp"] != nil {
                self.calledIp = dict["CalledIp"] as! String
            }
            if dict.keys.contains("CalledNum") && dict["CalledNum"] != nil {
                self.calledNum = dict["CalledNum"] as! String
            }
            if dict.keys.contains("CalledNumRegion") && dict["CalledNumRegion"] != nil {
                self.calledNumRegion = dict["CalledNumRegion"] as! String
            }
            if dict.keys.contains("CalledNumType") && dict["CalledNumType"] != nil {
                self.calledNumType = dict["CalledNumType"] as! String
            }
            if dict.keys.contains("CallerDisplay") && dict["CallerDisplay"] != nil {
                self.callerDisplay = dict["CallerDisplay"] as! String
            }
            if dict.keys.contains("CallerIp") && dict["CallerIp"] != nil {
                self.callerIp = dict["CallerIp"] as! String
            }
            if dict.keys.contains("CallerNum") && dict["CallerNum"] != nil {
                self.callerNum = dict["CallerNum"] as! String
            }
            if dict.keys.contains("CallerNumRegion") && dict["CallerNumRegion"] != nil {
                self.callerNumRegion = dict["CallerNumRegion"] as! String
            }
            if dict.keys.contains("CallerNumType") && dict["CallerNumType"] != nil {
                self.callerNumType = dict["CallerNumType"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Hangup") && dict["Hangup"] != nil {
                self.hangup = dict["Hangup"] as! Int64
            }
            if dict.keys.contains("HangupType") && dict["HangupType"] != nil {
                self.hangupType = dict["HangupType"] as! Int64
            }
            if dict.keys.contains("IvnCliType") && dict["IvnCliType"] != nil {
                self.ivnCliType = dict["IvnCliType"] as! String
            }
            if dict.keys.contains("RecordUrl") && dict["RecordUrl"] != nil {
                self.recordUrl = dict["RecordUrl"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("UserUuid") && dict["UserUuid"] != nil {
                self.userUuid = dict["UserUuid"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListSipTrunkDetailResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListSipTrunkDetailResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListSipTrunkDetailResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListSipTrunkDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSipTrunkDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSipTrunkDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSipTrunkStatRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callingNumber: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListSipTrunkStatResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var answeredCalls: Int64?

        public var answeredRate: Int64?

        public var averageDuration: Int64?

        public var billing: Int64?

        public var calledNumber: String?

        public var callingNumber: String?

        public var failedCalls: Int64?

        public var totalCalls: Int64?

        public var totalDuration: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answeredCalls != nil {
                map["AnsweredCalls"] = self.answeredCalls!
            }
            if self.answeredRate != nil {
                map["AnsweredRate"] = self.answeredRate!
            }
            if self.averageDuration != nil {
                map["AverageDuration"] = self.averageDuration!
            }
            if self.billing != nil {
                map["Billing"] = self.billing!
            }
            if self.calledNumber != nil {
                map["CalledNumber"] = self.calledNumber!
            }
            if self.callingNumber != nil {
                map["CallingNumber"] = self.callingNumber!
            }
            if self.failedCalls != nil {
                map["FailedCalls"] = self.failedCalls!
            }
            if self.totalCalls != nil {
                map["TotalCalls"] = self.totalCalls!
            }
            if self.totalDuration != nil {
                map["TotalDuration"] = self.totalDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnsweredCalls") && dict["AnsweredCalls"] != nil {
                self.answeredCalls = dict["AnsweredCalls"] as! Int64
            }
            if dict.keys.contains("AnsweredRate") && dict["AnsweredRate"] != nil {
                self.answeredRate = dict["AnsweredRate"] as! Int64
            }
            if dict.keys.contains("AverageDuration") && dict["AverageDuration"] != nil {
                self.averageDuration = dict["AverageDuration"] as! Int64
            }
            if dict.keys.contains("Billing") && dict["Billing"] != nil {
                self.billing = dict["Billing"] as! Int64
            }
            if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
                self.calledNumber = dict["CalledNumber"] as! String
            }
            if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
                self.callingNumber = dict["CallingNumber"] as! String
            }
            if dict.keys.contains("FailedCalls") && dict["FailedCalls"] != nil {
                self.failedCalls = dict["FailedCalls"] as! Int64
            }
            if dict.keys.contains("TotalCalls") && dict["TotalCalls"] != nil {
                self.totalCalls = dict["TotalCalls"] as! Int64
            }
            if dict.keys.contains("TotalDuration") && dict["TotalDuration"] != nil {
                self.totalDuration = dict["TotalDuration"] as! Int64
            }
        }
    }
    public var code: String?

    public var list: [ListSipTrunkStatResponseBody.List]?

    public var message: String?

    public var requestId: String?

    public var total: String?

    public override init() {
        super.init()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListSipTrunkStatResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListSipTrunkStatResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! String
        }
    }
}

public class ListSipTrunkStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSipTrunkStatResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSipTrunkStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVoiceCallRequest : Tea.TeaModel {
    public var businessType: Int64?

    public var callingNumber: String?

    public var countryId: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var startTime: String?

    public var status: Int64?

    public var taskId: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.sendType != nil {
            map["SendType"] = self.sendType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! Int64
        }
        if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendType") && dict["SendType"] != nil {
            self.sendType = dict["SendType"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class ListVoiceCallResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var answeredCalls: Int64?

        public var businessType: Int64?

        public var calledCalls: Int64?

        public var callingNumber: String?

        public var commitTs: String?

        public var countryId: String?

        public var failedCalls: Int64?

        public var groupCallType: Int64?

        public var requestId: String?

        public var sendType: Int64?

        public var status: String?

        public var taskId: String?

        public var taskName: String?

        public var templateContent: String?

        public var templateId: String?

        public var tickerTs: String?

        public var totalCalls: Int64?

        public var totalDuration: Int64?

        public var userUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answeredCalls != nil {
                map["AnsweredCalls"] = self.answeredCalls!
            }
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.calledCalls != nil {
                map["CalledCalls"] = self.calledCalls!
            }
            if self.callingNumber != nil {
                map["CallingNumber"] = self.callingNumber!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.failedCalls != nil {
                map["FailedCalls"] = self.failedCalls!
            }
            if self.groupCallType != nil {
                map["GroupCallType"] = self.groupCallType!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sendType != nil {
                map["SendType"] = self.sendType!
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
            if self.templateContent != nil {
                map["TemplateContent"] = self.templateContent!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.tickerTs != nil {
                map["TickerTs"] = self.tickerTs!
            }
            if self.totalCalls != nil {
                map["TotalCalls"] = self.totalCalls!
            }
            if self.totalDuration != nil {
                map["TotalDuration"] = self.totalDuration!
            }
            if self.userUuid != nil {
                map["UserUuid"] = self.userUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnsweredCalls") && dict["AnsweredCalls"] != nil {
                self.answeredCalls = dict["AnsweredCalls"] as! Int64
            }
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! Int64
            }
            if dict.keys.contains("CalledCalls") && dict["CalledCalls"] != nil {
                self.calledCalls = dict["CalledCalls"] as! Int64
            }
            if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
                self.callingNumber = dict["CallingNumber"] as! String
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("FailedCalls") && dict["FailedCalls"] != nil {
                self.failedCalls = dict["FailedCalls"] as! Int64
            }
            if dict.keys.contains("GroupCallType") && dict["GroupCallType"] != nil {
                self.groupCallType = dict["GroupCallType"] as! Int64
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SendType") && dict["SendType"] != nil {
                self.sendType = dict["SendType"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TemplateContent") && dict["TemplateContent"] != nil {
                self.templateContent = dict["TemplateContent"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TickerTs") && dict["TickerTs"] != nil {
                self.tickerTs = dict["TickerTs"] as! String
            }
            if dict.keys.contains("TotalCalls") && dict["TotalCalls"] != nil {
                self.totalCalls = dict["TotalCalls"] as! Int64
            }
            if dict.keys.contains("TotalDuration") && dict["TotalDuration"] != nil {
                self.totalDuration = dict["TotalDuration"] as! Int64
            }
            if dict.keys.contains("UserUuid") && dict["UserUuid"] != nil {
                self.userUuid = dict["UserUuid"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListVoiceCallResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListVoiceCallResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListVoiceCallResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListVoiceCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceCallResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVoiceCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVoiceCallDetailRequest : Tea.TeaModel {
    public var businessType: Int64?

    public var calledNumber: String?

    public var callingNumber: String?

    public var countryId: String?

    public var endTime: String?

    public var hangupType: Int64?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var status: Int64?

    public var taskId: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.hangupType != nil {
            map["HangupType"] = self.hangupType!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! Int64
        }
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HangupType") && dict["HangupType"] != nil {
            self.hangupType = dict["HangupType"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class ListVoiceCallDetailResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var billing: Int64?

        public var businessType: Int64?

        public var calledNumber: String?

        public var callingNumber: String?

        public var commitTs: String?

        public var countryId: String?

        public var duration: Int64?

        public var endTs: String?

        public var hangupType: Int64?

        public var sendType: Int64?

        public var startTs: String?

        public var status: Int64?

        public var taskId: String?

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
            if self.billing != nil {
                map["Billing"] = self.billing!
            }
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.calledNumber != nil {
                map["CalledNumber"] = self.calledNumber!
            }
            if self.callingNumber != nil {
                map["CallingNumber"] = self.callingNumber!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endTs != nil {
                map["EndTs"] = self.endTs!
            }
            if self.hangupType != nil {
                map["HangupType"] = self.hangupType!
            }
            if self.sendType != nil {
                map["SendType"] = self.sendType!
            }
            if self.startTs != nil {
                map["StartTs"] = self.startTs!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Billing") && dict["Billing"] != nil {
                self.billing = dict["Billing"] as! Int64
            }
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! Int64
            }
            if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
                self.calledNumber = dict["CalledNumber"] as! String
            }
            if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
                self.callingNumber = dict["CallingNumber"] as! String
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
                self.endTs = dict["EndTs"] as! String
            }
            if dict.keys.contains("HangupType") && dict["HangupType"] != nil {
                self.hangupType = dict["HangupType"] as! Int64
            }
            if dict.keys.contains("SendType") && dict["SendType"] != nil {
                self.sendType = dict["SendType"] as! Int64
            }
            if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
                self.startTs = dict["StartTs"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListVoiceCallDetailResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListVoiceCallDetailResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListVoiceCallDetailResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListVoiceCallDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceCallDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVoiceCallDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVoiceCallStatRequest : Tea.TeaModel {
    public var businessType: Int64?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class ListVoiceCallStatResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var answeredCalls: Int64?

        public var answeredRate: Int64?

        public var averageDuration: Int64?

        public var billing: Int64?

        public var businessType: Int64?

        public var failedCalls: Int64?

        public var totalCalls: Int64?

        public var totalDuration: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answeredCalls != nil {
                map["AnsweredCalls"] = self.answeredCalls!
            }
            if self.answeredRate != nil {
                map["AnsweredRate"] = self.answeredRate!
            }
            if self.averageDuration != nil {
                map["AverageDuration"] = self.averageDuration!
            }
            if self.billing != nil {
                map["Billing"] = self.billing!
            }
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.failedCalls != nil {
                map["FailedCalls"] = self.failedCalls!
            }
            if self.totalCalls != nil {
                map["TotalCalls"] = self.totalCalls!
            }
            if self.totalDuration != nil {
                map["TotalDuration"] = self.totalDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnsweredCalls") && dict["AnsweredCalls"] != nil {
                self.answeredCalls = dict["AnsweredCalls"] as! Int64
            }
            if dict.keys.contains("AnsweredRate") && dict["AnsweredRate"] != nil {
                self.answeredRate = dict["AnsweredRate"] as! Int64
            }
            if dict.keys.contains("AverageDuration") && dict["AverageDuration"] != nil {
                self.averageDuration = dict["AverageDuration"] as! Int64
            }
            if dict.keys.contains("Billing") && dict["Billing"] != nil {
                self.billing = dict["Billing"] as! Int64
            }
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! Int64
            }
            if dict.keys.contains("FailedCalls") && dict["FailedCalls"] != nil {
                self.failedCalls = dict["FailedCalls"] as! Int64
            }
            if dict.keys.contains("TotalCalls") && dict["TotalCalls"] != nil {
                self.totalCalls = dict["TotalCalls"] as! Int64
            }
            if dict.keys.contains("TotalDuration") && dict["TotalDuration"] != nil {
                self.totalDuration = dict["TotalDuration"] as! Int64
            }
        }
    }
    public var code: String?

    public var list: [ListVoiceCallStatResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListVoiceCallStatResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListVoiceCallStatResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListVoiceCallStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceCallStatResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVoiceCallStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVoiceFileRequest : Tea.TeaModel {
    public var countryId: String?

    public var fileName: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class ListVoiceFileResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var auditRemark: String?

        public var commitTs: String?

        public var countryId: String?

        public var fileId: String?

        public var fileKey: String?

        public var fileName: String?

        public var fileUrl: String?

        public var qualificationId: String?

        public var status: Int64?

        public var updateTs: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditRemark != nil {
                map["AuditRemark"] = self.auditRemark!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.fileKey != nil {
                map["FileKey"] = self.fileKey!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTs != nil {
                map["UpdateTs"] = self.updateTs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditRemark") && dict["AuditRemark"] != nil {
                self.auditRemark = dict["AuditRemark"] as! String
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("FileId") && dict["FileId"] != nil {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
                self.fileKey = dict["FileKey"] as! String
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("UpdateTs") && dict["UpdateTs"] != nil {
                self.updateTs = dict["UpdateTs"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListVoiceFileResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListVoiceFileResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListVoiceFileResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListVoiceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceFileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVoiceFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVoiceTtsRequest : Tea.TeaModel {
    public var countryId: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: Int64?

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
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListVoiceTtsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var auditBy: String?

        public var auditRemark: String?

        public var auditTs: String?

        public var commitTs: String?

        public var countryId: String?

        public var language: String?

        public var qualificationId: String?

        public var speed: Int32?

        public var status: Int32?

        public var templateId: String?

        public var templateName: String?

        public var templateText: String?

        public var updateTs: String?

        public var userUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditBy != nil {
                map["AuditBy"] = self.auditBy!
            }
            if self.auditRemark != nil {
                map["AuditRemark"] = self.auditRemark!
            }
            if self.auditTs != nil {
                map["AuditTs"] = self.auditTs!
            }
            if self.commitTs != nil {
                map["CommitTs"] = self.commitTs!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.qualificationId != nil {
                map["QualificationId"] = self.qualificationId!
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateText != nil {
                map["TemplateText"] = self.templateText!
            }
            if self.updateTs != nil {
                map["UpdateTs"] = self.updateTs!
            }
            if self.userUuid != nil {
                map["UserUuid"] = self.userUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditBy") && dict["AuditBy"] != nil {
                self.auditBy = dict["AuditBy"] as! String
            }
            if dict.keys.contains("AuditRemark") && dict["AuditRemark"] != nil {
                self.auditRemark = dict["AuditRemark"] as! String
            }
            if dict.keys.contains("AuditTs") && dict["AuditTs"] != nil {
                self.auditTs = dict["AuditTs"] as! String
            }
            if dict.keys.contains("CommitTs") && dict["CommitTs"] != nil {
                self.commitTs = dict["CommitTs"] as! String
            }
            if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
                self.countryId = dict["CountryId"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
                self.qualificationId = dict["QualificationId"] as! String
            }
            if dict.keys.contains("Speed") && dict["Speed"] != nil {
                self.speed = dict["Speed"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateText") && dict["TemplateText"] != nil {
                self.templateText = dict["TemplateText"] as! String
            }
            if dict.keys.contains("UpdateTs") && dict["UpdateTs"] != nil {
                self.updateTs = dict["UpdateTs"] as! String
            }
            if dict.keys.contains("UserUuid") && dict["UserUuid"] != nil {
                self.userUuid = dict["UserUuid"] as! String
            }
        }
    }
    public var code: String?

    public var list: [ListVoiceTtsResponseBody.List]?

    public var message: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ListVoiceTtsResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ListVoiceTtsResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListVoiceTtsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceTtsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVoiceTtsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class NumberEnableRequest : Tea.TeaModel {
    public var enable: Bool?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
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
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Number") && dict["Number"] != nil {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class NumberEnableResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class NumberEnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NumberEnableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = NumberEnableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenIntlVoiceServiceRequest : Tea.TeaModel {
    public var env: String?

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
        if self.env != nil {
            map["Env"] = self.env!
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
        if dict.keys.contains("Env") && dict["Env"] != nil {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class OpenIntlVoiceServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var model: String?

    public var requestId: String?

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
        if self.model != nil {
            map["Model"] = self.model!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class OpenIntlVoiceServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenIntlVoiceServiceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OpenIntlVoiceServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OswTest1Request : Tea.TeaModel {
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
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class OswTest1ResponseBody : Tea.TeaModel {

    public override init() {
        super.init()
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

public class OswTest1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OswTest1ResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OswTest1ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryFileOssUrlRequest : Tea.TeaModel {
    public var bizType: String?

    public var fileKey: String?

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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
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
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryFileOssUrlResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var requestId: String?

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
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class QueryFileOssUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFileOssUrlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFileOssUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryHomeStatRequest : Tea.TeaModel {
    public var businessType: Int64?

    public var endTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryHomeStatResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var callFailed: Int64?

            public var callSuccess: Int64?

            public var callTotal: Int64?

            public var date: String?

            public var successRate: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callFailed != nil {
                    map["CallFailed"] = self.callFailed!
                }
                if self.callSuccess != nil {
                    map["CallSuccess"] = self.callSuccess!
                }
                if self.callTotal != nil {
                    map["CallTotal"] = self.callTotal!
                }
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.successRate != nil {
                    map["SuccessRate"] = self.successRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallFailed") && dict["CallFailed"] != nil {
                    self.callFailed = dict["CallFailed"] as! Int64
                }
                if dict.keys.contains("CallSuccess") && dict["CallSuccess"] != nil {
                    self.callSuccess = dict["CallSuccess"] as! Int64
                }
                if dict.keys.contains("CallTotal") && dict["CallTotal"] != nil {
                    self.callTotal = dict["CallTotal"] as! Int64
                }
                if dict.keys.contains("Date") && dict["Date"] != nil {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("SuccessRate") && dict["SuccessRate"] != nil {
                    self.successRate = dict["SuccessRate"] as! Int64
                }
            }
        }
        public var cdrDrUrl: String?

        public var list: [QueryHomeStatResponseBody.Model.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdrDrUrl != nil {
                map["CdrDrUrl"] = self.cdrDrUrl!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdrDrUrl") && dict["CdrDrUrl"] != nil {
                self.cdrDrUrl = dict["CdrDrUrl"] as! String
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryHomeStatResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryHomeStatResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var model: QueryHomeStatResponseBody.Model?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = QueryHomeStatResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryHomeStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryHomeStatResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryHomeStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRecordingEnableRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class QueryRecordingEnableResponseBody : Tea.TeaModel {
    public var code: String?

    public var enable: Bool?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryRecordingEnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordingEnableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRecordingEnableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryServiceEnableRequest : Tea.TeaModel {
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
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryServiceEnableResponseBody : Tea.TeaModel {
    public var code: String?

    public var enable: Bool?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryServiceEnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryServiceEnableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryServiceEnableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecordingEnableRequest : Tea.TeaModel {
    public var enable: Bool?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RecordingEnableResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecordingEnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecordingEnableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecordingEnableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetReceiptUrlRequest : Tea.TeaModel {
    public var cdrDrUrl: String?

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
        if self.cdrDrUrl != nil {
            map["CdrDrUrl"] = self.cdrDrUrl!
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
        if dict.keys.contains("CdrDrUrl") && dict["CdrDrUrl"] != nil {
            self.cdrDrUrl = dict["CdrDrUrl"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class SetReceiptUrlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetReceiptUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetReceiptUrlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetReceiptUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SipTrunkDetailRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callingNumber: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") && dict["CalledNumber"] != nil {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") && dict["CallingNumber"] != nil {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class SipTrunkDetailResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var answerTime: String?

            public var answered: Int64?

            public var busiType: String?

            public var callEndTime: String?

            public var callType: String?

            public var calledIp: String?

            public var calledNum: String?

            public var calledNumRegion: String?

            public var calledNumType: String?

            public var callerDisplay: String?

            public var callerIp: String?

            public var callerNum: String?

            public var callerNumRegion: String?

            public var callerNumType: String?

            public var duration: Int64?

            public var hangup: Int64?

            public var hangupType: Int64?

            public var lvnCliType: String?

            public var recordUrl: String?

            public var startTime: String?

            public var userUuid: String?

            public var uuid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.answered != nil {
                    map["Answered"] = self.answered!
                }
                if self.busiType != nil {
                    map["BusiType"] = self.busiType!
                }
                if self.callEndTime != nil {
                    map["CallEndTime"] = self.callEndTime!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.calledIp != nil {
                    map["CalledIp"] = self.calledIp!
                }
                if self.calledNum != nil {
                    map["CalledNum"] = self.calledNum!
                }
                if self.calledNumRegion != nil {
                    map["CalledNumRegion"] = self.calledNumRegion!
                }
                if self.calledNumType != nil {
                    map["CalledNumType"] = self.calledNumType!
                }
                if self.callerDisplay != nil {
                    map["CallerDisplay"] = self.callerDisplay!
                }
                if self.callerIp != nil {
                    map["CallerIp"] = self.callerIp!
                }
                if self.callerNum != nil {
                    map["CallerNum"] = self.callerNum!
                }
                if self.callerNumRegion != nil {
                    map["CallerNumRegion"] = self.callerNumRegion!
                }
                if self.callerNumType != nil {
                    map["CallerNumType"] = self.callerNumType!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.hangup != nil {
                    map["Hangup"] = self.hangup!
                }
                if self.hangupType != nil {
                    map["HangupType"] = self.hangupType!
                }
                if self.lvnCliType != nil {
                    map["LvnCliType"] = self.lvnCliType!
                }
                if self.recordUrl != nil {
                    map["RecordUrl"] = self.recordUrl!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.userUuid != nil {
                    map["UserUuid"] = self.userUuid!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerTime") && dict["AnswerTime"] != nil {
                    self.answerTime = dict["AnswerTime"] as! String
                }
                if dict.keys.contains("Answered") && dict["Answered"] != nil {
                    self.answered = dict["Answered"] as! Int64
                }
                if dict.keys.contains("BusiType") && dict["BusiType"] != nil {
                    self.busiType = dict["BusiType"] as! String
                }
                if dict.keys.contains("CallEndTime") && dict["CallEndTime"] != nil {
                    self.callEndTime = dict["CallEndTime"] as! String
                }
                if dict.keys.contains("CallType") && dict["CallType"] != nil {
                    self.callType = dict["CallType"] as! String
                }
                if dict.keys.contains("CalledIp") && dict["CalledIp"] != nil {
                    self.calledIp = dict["CalledIp"] as! String
                }
                if dict.keys.contains("CalledNum") && dict["CalledNum"] != nil {
                    self.calledNum = dict["CalledNum"] as! String
                }
                if dict.keys.contains("CalledNumRegion") && dict["CalledNumRegion"] != nil {
                    self.calledNumRegion = dict["CalledNumRegion"] as! String
                }
                if dict.keys.contains("CalledNumType") && dict["CalledNumType"] != nil {
                    self.calledNumType = dict["CalledNumType"] as! String
                }
                if dict.keys.contains("CallerDisplay") && dict["CallerDisplay"] != nil {
                    self.callerDisplay = dict["CallerDisplay"] as! String
                }
                if dict.keys.contains("CallerIp") && dict["CallerIp"] != nil {
                    self.callerIp = dict["CallerIp"] as! String
                }
                if dict.keys.contains("CallerNum") && dict["CallerNum"] != nil {
                    self.callerNum = dict["CallerNum"] as! String
                }
                if dict.keys.contains("CallerNumRegion") && dict["CallerNumRegion"] != nil {
                    self.callerNumRegion = dict["CallerNumRegion"] as! String
                }
                if dict.keys.contains("CallerNumType") && dict["CallerNumType"] != nil {
                    self.callerNumType = dict["CallerNumType"] as! String
                }
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Int64
                }
                if dict.keys.contains("Hangup") && dict["Hangup"] != nil {
                    self.hangup = dict["Hangup"] as! Int64
                }
                if dict.keys.contains("HangupType") && dict["HangupType"] != nil {
                    self.hangupType = dict["HangupType"] as! Int64
                }
                if dict.keys.contains("LvnCliType") && dict["LvnCliType"] != nil {
                    self.lvnCliType = dict["LvnCliType"] as! String
                }
                if dict.keys.contains("RecordUrl") && dict["RecordUrl"] != nil {
                    self.recordUrl = dict["RecordUrl"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("UserUuid") && dict["UserUuid"] != nil {
                    self.userUuid = dict["UserUuid"] as! String
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var list: [SipTrunkDetailResponseBody.Model.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [SipTrunkDetailResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = SipTrunkDetailResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var model: SipTrunkDetailResponseBody.Model?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = SipTrunkDetailResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SipTrunkDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SipTrunkDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SipTrunkDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitGroupCallRequest : Tea.TeaModel {
    public var bizType: String?

    public var callerIdNumber: String?

    public var countryId: String?

    public var fileKey: String?

    public var fileName: String?

    public var groupCallType: Int64?

    public var ownerId: Int64?

    public var productCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var taskName: String?

    public var templateId: String?

    public var timingStart: String?

    public override init() {
        super.init()
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
        if self.callerIdNumber != nil {
            map["CallerIdNumber"] = self.callerIdNumber!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.groupCallType != nil {
            map["GroupCallType"] = self.groupCallType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendType != nil {
            map["SendType"] = self.sendType!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.timingStart != nil {
            map["TimingStart"] = self.timingStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CallerIdNumber") && dict["CallerIdNumber"] != nil {
            self.callerIdNumber = dict["CallerIdNumber"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("GroupCallType") && dict["GroupCallType"] != nil {
            self.groupCallType = dict["GroupCallType"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendType") && dict["SendType"] != nil {
            self.sendType = dict["SendType"] as! Int64
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TimingStart") && dict["TimingStart"] != nil {
            self.timingStart = dict["TimingStart"] as! String
        }
    }
}

public class SubmitGroupCallResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SubmitGroupCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitGroupCallResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitGroupCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitNumberRequest : Tea.TeaModel {
    public class NumberList : Tea.TeaModel {
        public var amount: Int64?

        public var inboundConcurrency: Int64?

        public var outboundConcurrency: Int64?

        public var phoneType: Int64?

        public var support: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.inboundConcurrency != nil {
                map["InboundConcurrency"] = self.inboundConcurrency!
            }
            if self.outboundConcurrency != nil {
                map["OutboundConcurrency"] = self.outboundConcurrency!
            }
            if self.phoneType != nil {
                map["PhoneType"] = self.phoneType!
            }
            if self.support != nil {
                map["Support"] = self.support!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Int64
            }
            if dict.keys.contains("InboundConcurrency") && dict["InboundConcurrency"] != nil {
                self.inboundConcurrency = dict["InboundConcurrency"] as! Int64
            }
            if dict.keys.contains("OutboundConcurrency") && dict["OutboundConcurrency"] != nil {
                self.outboundConcurrency = dict["OutboundConcurrency"] as! Int64
            }
            if dict.keys.contains("PhoneType") && dict["PhoneType"] != nil {
                self.phoneType = dict["PhoneType"] as! Int64
            }
            if dict.keys.contains("Support") && dict["Support"] != nil {
                self.support = dict["Support"] as! Int64
            }
        }
    }
    public var applyNote: String?

    public var countryId: String?

    public var numberList: [SubmitNumberRequest.NumberList]?

    public var ownerId: Int64?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyNote != nil {
            map["ApplyNote"] = self.applyNote!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.numberList != nil {
            var tmp : [Any] = []
            for k in self.numberList! {
                tmp.append(k.toMap())
            }
            map["NumberList"] = tmp
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
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyNote") && dict["ApplyNote"] != nil {
            self.applyNote = dict["ApplyNote"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("NumberList") && dict["NumberList"] != nil {
            var tmp : [SubmitNumberRequest.NumberList] = []
            for v in dict["NumberList"] as! [Any] {
                var model = SubmitNumberRequest.NumberList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.numberList = tmp
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class SubmitNumberShrinkRequest : Tea.TeaModel {
    public var applyNote: String?

    public var countryId: String?

    public var numberListShrink: String?

    public var ownerId: Int64?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyNote != nil {
            map["ApplyNote"] = self.applyNote!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.numberListShrink != nil {
            map["NumberList"] = self.numberListShrink!
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
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyNote") && dict["ApplyNote"] != nil {
            self.applyNote = dict["ApplyNote"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("NumberList") && dict["NumberList"] != nil {
            self.numberListShrink = dict["NumberList"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class SubmitNumberResponseBody : Tea.TeaModel {
    public var applyId: String?

    public var code: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitNumberResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitQualificationRequest : Tea.TeaModel {
    public var address: String?

    public var businessLicenseFileKey: String?

    public var companyName: String?

    public var contactEmail: String?

    public var contactName: String?

    public var contactPhone: String?

    public var countryId: String?

    public var legalId: String?

    public var legalLicenseFileKey: String?

    public var legalName: String?

    public var networkAccessFileKey: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var unifiedCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.businessLicenseFileKey != nil {
            map["BusinessLicenseFileKey"] = self.businessLicenseFileKey!
        }
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPhone != nil {
            map["ContactPhone"] = self.contactPhone!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.legalId != nil {
            map["LegalId"] = self.legalId!
        }
        if self.legalLicenseFileKey != nil {
            map["LegalLicenseFileKey"] = self.legalLicenseFileKey!
        }
        if self.legalName != nil {
            map["LegalName"] = self.legalName!
        }
        if self.networkAccessFileKey != nil {
            map["NetworkAccessFileKey"] = self.networkAccessFileKey!
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
        if self.unifiedCode != nil {
            map["UnifiedCode"] = self.unifiedCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("BusinessLicenseFileKey") && dict["BusinessLicenseFileKey"] != nil {
            self.businessLicenseFileKey = dict["BusinessLicenseFileKey"] as! String
        }
        if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
            self.companyName = dict["CompanyName"] as! String
        }
        if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
            self.contactEmail = dict["ContactEmail"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactPhone") && dict["ContactPhone"] != nil {
            self.contactPhone = dict["ContactPhone"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("LegalId") && dict["LegalId"] != nil {
            self.legalId = dict["LegalId"] as! String
        }
        if dict.keys.contains("LegalLicenseFileKey") && dict["LegalLicenseFileKey"] != nil {
            self.legalLicenseFileKey = dict["LegalLicenseFileKey"] as! String
        }
        if dict.keys.contains("LegalName") && dict["LegalName"] != nil {
            self.legalName = dict["LegalName"] as! String
        }
        if dict.keys.contains("NetworkAccessFileKey") && dict["NetworkAccessFileKey"] != nil {
            self.networkAccessFileKey = dict["NetworkAccessFileKey"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("UnifiedCode") && dict["UnifiedCode"] != nil {
            self.unifiedCode = dict["UnifiedCode"] as! String
        }
    }
}

public class SubmitQualificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var qualificationId: String?

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
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitQualificationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitQualificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitSipTrunkRequest : Tea.TeaModel {
    public var applyNote: String?

    public var countryId: String?

    public var inboundIpPorts: String?

    public var outboundIps: String?

    public var ownerId: Int64?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyNote != nil {
            map["ApplyNote"] = self.applyNote!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.inboundIpPorts != nil {
            map["InboundIpPorts"] = self.inboundIpPorts!
        }
        if self.outboundIps != nil {
            map["OutboundIps"] = self.outboundIps!
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
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyNote") && dict["ApplyNote"] != nil {
            self.applyNote = dict["ApplyNote"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("InboundIpPorts") && dict["InboundIpPorts"] != nil {
            self.inboundIpPorts = dict["InboundIpPorts"] as! String
        }
        if dict.keys.contains("OutboundIps") && dict["OutboundIps"] != nil {
            self.outboundIps = dict["OutboundIps"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class SubmitSipTrunkResponseBody : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitSipTrunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSipTrunkResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitSipTrunkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitVoiceFileRequest : Tea.TeaModel {
    public var countryId: String?

    public var fileKey: String?

    public var fileName: String?

    public var fileUrl: String?

    public var ownerId: Int64?

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
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class SubmitVoiceFileResponseBody : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitVoiceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVoiceFileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitVoiceFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitVoiceTtsRequest : Tea.TeaModel {
    public var countryId: String?

    public var language: String?

    public var ownerId: Int64?

    public var qualificationId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var speed: Int64?

    public var status: Int64?

    public var templateId: String?

    public var templateName: String?

    public var templateText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateText != nil {
            map["TemplateText"] = self.templateText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("QualificationId") && dict["QualificationId"] != nil {
            self.qualificationId = dict["QualificationId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateText") && dict["TemplateText"] != nil {
            self.templateText = dict["TemplateText"] as! String
        }
    }
}

public class SubmitVoiceTtsResponseBody : Tea.TeaModel {
    public var applyId: String?

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
        if self.applyId != nil {
            map["ApplyId"] = self.applyId!
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
        if dict.keys.contains("ApplyId") && dict["ApplyId"] != nil {
            self.applyId = dict["ApplyId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitVoiceTtsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVoiceTtsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitVoiceTtsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNumberRequest : Tea.TeaModel {
    public var note: String?

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
        if self.note != nil {
            map["Note"] = self.note!
        }
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
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("Number") && dict["Number"] != nil {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateNumberResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNumberResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Test02Request : Tea.TeaModel {
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
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class Test02ResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class Test02Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Test02ResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Test02ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
