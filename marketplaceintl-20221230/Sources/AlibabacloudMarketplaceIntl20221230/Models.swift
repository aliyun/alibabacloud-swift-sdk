import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class PushMeteringDataRequest : Tea.TeaModel {
    public class MeteringData : Tea.TeaModel {
        public var endTime: Int64?

        public var instanceId: String?

        public var meteringAssist: String?

        public var meteringEntity: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.meteringAssist != nil {
                map["MeteringAssist"] = self.meteringAssist!
            }
            if self.meteringEntity != nil {
                map["MeteringEntity"] = self.meteringEntity!
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
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MeteringAssist") {
                self.meteringAssist = dict["MeteringAssist"] as! String
            }
            if dict.keys.contains("MeteringEntity") {
                self.meteringEntity = dict["MeteringEntity"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var gmtCreate: String?

    public var meteringData: [PushMeteringDataRequest.MeteringData]?

    public override init() {
        super.init()
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
        if self.meteringData != nil {
            var tmp : [Any] = []
            for k in self.meteringData! {
                tmp.append(k.toMap())
            }
            map["MeteringData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("MeteringData") {
            var tmp : [PushMeteringDataRequest.MeteringData] = []
            for v in dict["MeteringData"] as! [Any] {
                var model = PushMeteringDataRequest.MeteringData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.meteringData = tmp
        }
    }
}

public class PushMeteringDataResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicMessage: String?

    public var forceFatal: Bool?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

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
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.forceFatal != nil {
            map["ForceFatal"] = self.forceFatal!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
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
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ForceFatal") {
            self.forceFatal = dict["ForceFatal"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PushMeteringDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMeteringDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PushMeteringDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
