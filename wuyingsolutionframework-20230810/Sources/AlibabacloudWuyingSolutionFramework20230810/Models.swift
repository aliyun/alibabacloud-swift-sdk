import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class SendOpsMessageToTerminalRequest : Tea.TeaModel {
    public var messageBody: String?

    public var officeRegionId: String?

    public var opsAction: String?

    public var serialNo: String?

    public var waitForAck: Bool?

    public var waitForMsg: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageBody != nil {
            map["MessageBody"] = self.messageBody!
        }
        if self.officeRegionId != nil {
            map["OfficeRegionId"] = self.officeRegionId!
        }
        if self.opsAction != nil {
            map["OpsAction"] = self.opsAction!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.waitForAck != nil {
            map["WaitForAck"] = self.waitForAck!
        }
        if self.waitForMsg != nil {
            map["WaitForMsg"] = self.waitForMsg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageBody") {
            self.messageBody = dict["MessageBody"] as! String
        }
        if dict.keys.contains("OfficeRegionId") {
            self.officeRegionId = dict["OfficeRegionId"] as! String
        }
        if dict.keys.contains("OpsAction") {
            self.opsAction = dict["OpsAction"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("WaitForAck") {
            self.waitForAck = dict["WaitForAck"] as! Bool
        }
        if dict.keys.contains("WaitForMsg") {
            self.waitForMsg = dict["WaitForMsg"] as! Bool
        }
    }
}

public class SendOpsMessageToTerminalResponseBody : Tea.TeaModel {
    public var code: String?

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
    }
}

public class SendOpsMessageToTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendOpsMessageToTerminalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SendOpsMessageToTerminalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
