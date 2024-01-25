import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetMessageStatusRequest : Tea.TeaModel {
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

public class GetMessageStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mobile: String?

        public var requestId: String?

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
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mobile") && dict["mobile"] != nil {
                self.mobile = dict["mobile"] as! String
            }
            if dict.keys.contains("requestId") && dict["requestId"] != nil {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMessageStatusResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetMessageStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMessageStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessageStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMessageStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendBatchMessageRequest : Tea.TeaModel {
    public var batchFlag: String?

    public var extendInfo: String?

    public var idType: String?

    public var phoneNumberJson: String?

    public var signNameJson: String?

    public var specificChannel: String?

    public var templateCode: String?

    public var templateParamJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchFlag != nil {
            map["BatchFlag"] = self.batchFlag!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.idType != nil {
            map["IdType"] = self.idType!
        }
        if self.phoneNumberJson != nil {
            map["PhoneNumberJson"] = self.phoneNumberJson!
        }
        if self.signNameJson != nil {
            map["SignNameJson"] = self.signNameJson!
        }
        if self.specificChannel != nil {
            map["SpecificChannel"] = self.specificChannel!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParamJson != nil {
            map["TemplateParamJson"] = self.templateParamJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchFlag") && dict["BatchFlag"] != nil {
            self.batchFlag = dict["BatchFlag"] as! String
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfo = dict["ExtendInfo"] as! String
        }
        if dict.keys.contains("IdType") && dict["IdType"] != nil {
            self.idType = dict["IdType"] as! String
        }
        if dict.keys.contains("PhoneNumberJson") && dict["PhoneNumberJson"] != nil {
            self.phoneNumberJson = dict["PhoneNumberJson"] as! String
        }
        if dict.keys.contains("SignNameJson") && dict["SignNameJson"] != nil {
            self.signNameJson = dict["SignNameJson"] as! String
        }
        if dict.keys.contains("SpecificChannel") && dict["SpecificChannel"] != nil {
            self.specificChannel = dict["SpecificChannel"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParamJson") && dict["TemplateParamJson"] != nil {
            self.templateParamJson = dict["TemplateParamJson"] as! String
        }
    }
}

public class SendBatchMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mobile: String?

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
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mobile") && dict["mobile"] != nil {
                self.mobile = dict["mobile"] as! String
            }
            if dict.keys.contains("taskId") && dict["taskId"] != nil {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: [SendBatchMessageResponseBody.Data]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SendBatchMessageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SendBatchMessageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendBatchMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendBatchMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendBatchMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
