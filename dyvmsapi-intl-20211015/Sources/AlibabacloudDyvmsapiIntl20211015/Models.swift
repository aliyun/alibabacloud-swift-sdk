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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class GroupCallRequest : Tea.TeaModel {
    public var calledNumber: [String]?

    public var callerIdNumber: String?

    public var countryId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var signature: String?

    public var signatureNonce: String?

    public var speed: Int64?

    public var taskName: String?

    public var timestamp: String?

    public var timingStart: String?

    public var ttsCode: String?

    public var ttsParam: String?

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
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.signatureNonce != nil {
            map["SignatureNonce"] = self.signatureNonce!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.timingStart != nil {
            map["TimingStart"] = self.timingStart!
        }
        if self.ttsCode != nil {
            map["TtsCode"] = self.ttsCode!
        }
        if self.ttsParam != nil {
            map["TtsParam"] = self.ttsParam!
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
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("SignatureNonce") && dict["SignatureNonce"] != nil {
            self.signatureNonce = dict["SignatureNonce"] as! String
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
            self.timestamp = dict["Timestamp"] as! String
        }
        if dict.keys.contains("TimingStart") && dict["TimingStart"] != nil {
            self.timingStart = dict["TimingStart"] as! String
        }
        if dict.keys.contains("TtsCode") && dict["TtsCode"] != nil {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("TtsParam") && dict["TtsParam"] != nil {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("VoiceCode") && dict["VoiceCode"] != nil {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("Volume") && dict["Volume"] != nil {
            self.volume = dict["Volume"] as! Int64
        }
    }
}

public class GroupCallShrinkRequest : Tea.TeaModel {
    public var calledNumberShrink: String?

    public var callerIdNumber: String?

    public var countryId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var signature: String?

    public var signatureNonce: String?

    public var speed: Int64?

    public var taskName: String?

    public var timestamp: String?

    public var timingStart: String?

    public var ttsCode: String?

    public var ttsParam: String?

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
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.signatureNonce != nil {
            map["SignatureNonce"] = self.signatureNonce!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.timingStart != nil {
            map["TimingStart"] = self.timingStart!
        }
        if self.ttsCode != nil {
            map["TtsCode"] = self.ttsCode!
        }
        if self.ttsParam != nil {
            map["TtsParam"] = self.ttsParam!
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
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("SignatureNonce") && dict["SignatureNonce"] != nil {
            self.signatureNonce = dict["SignatureNonce"] as! String
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
            self.timestamp = dict["Timestamp"] as! String
        }
        if dict.keys.contains("TimingStart") && dict["TimingStart"] != nil {
            self.timingStart = dict["TimingStart"] as! String
        }
        if dict.keys.contains("TtsCode") && dict["TtsCode"] != nil {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("TtsParam") && dict["TtsParam"] != nil {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("VoiceCode") && dict["VoiceCode"] != nil {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("Volume") && dict["Volume"] != nil {
            self.volume = dict["Volume"] as! Int64
        }
    }
}

public class GroupCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
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
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: GroupCallResponseBody.Model?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = GroupCallResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GroupCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GroupCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GroupCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SignalCallRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callerIdNumber: String?

    public var countryId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var playTimes: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendType: Int64?

    public var signature: String?

    public var signatureNonce: String?

    public var speed: Int64?

    public var taskName: String?

    public var timestamp: String?

    public var timingStart: String?

    public var ttsCode: String?

    public var ttsParam: String?

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
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.signatureNonce != nil {
            map["SignatureNonce"] = self.signatureNonce!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.timingStart != nil {
            map["TimingStart"] = self.timingStart!
        }
        if self.ttsCode != nil {
            map["TtsCode"] = self.ttsCode!
        }
        if self.ttsParam != nil {
            map["TtsParam"] = self.ttsParam!
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
        if dict.keys.contains("SendType") && dict["SendType"] != nil {
            self.sendType = dict["SendType"] as! Int64
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("SignatureNonce") && dict["SignatureNonce"] != nil {
            self.signatureNonce = dict["SignatureNonce"] as! String
        }
        if dict.keys.contains("Speed") && dict["Speed"] != nil {
            self.speed = dict["Speed"] as! Int64
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
            self.timestamp = dict["Timestamp"] as! String
        }
        if dict.keys.contains("TimingStart") && dict["TimingStart"] != nil {
            self.timingStart = dict["TimingStart"] as! String
        }
        if dict.keys.contains("TtsCode") && dict["TtsCode"] != nil {
            self.ttsCode = dict["TtsCode"] as! String
        }
        if dict.keys.contains("TtsParam") && dict["TtsParam"] != nil {
            self.ttsParam = dict["TtsParam"] as! String
        }
        if dict.keys.contains("VoiceCode") && dict["VoiceCode"] != nil {
            self.voiceCode = dict["VoiceCode"] as! String
        }
        if dict.keys.contains("Volume") && dict["Volume"] != nil {
            self.volume = dict["Volume"] as! Int64
        }
    }
}

public class SignalCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var callId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallId") && dict["CallId"] != nil {
                self.callId = dict["CallId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: SignalCallResponseBody.Model?

    public var requestId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = SignalCallResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SignalCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SignalCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SignalCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
