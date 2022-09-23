import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetKpmEncryptedNodeTuplesByOrderIdRequest : Tea.TeaModel {
    public var orderId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
    }
}

public class GetKpmEncryptedNodeTuplesByOrderIdResponseBody : Tea.TeaModel {
    public class EncryptedNodeTuples : Tea.TeaModel {
        public class EncryptedNodeTuple : Tea.TeaModel {
            public var appKeyKcv: String?

            public var devEui: String?

            public var encryptedAppKey: String?

            public var encryptedGenAppKey: String?

            public var encryptedNwkKey: String?

            public var genAppKeyKcv: String?

            public var loraVersion: String?

            public var nwkKeyKcv: String?

            public var pinCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKeyKcv != nil {
                    map["AppKeyKcv"] = self.appKeyKcv!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.encryptedAppKey != nil {
                    map["EncryptedAppKey"] = self.encryptedAppKey!
                }
                if self.encryptedGenAppKey != nil {
                    map["EncryptedGenAppKey"] = self.encryptedGenAppKey!
                }
                if self.encryptedNwkKey != nil {
                    map["EncryptedNwkKey"] = self.encryptedNwkKey!
                }
                if self.genAppKeyKcv != nil {
                    map["GenAppKeyKcv"] = self.genAppKeyKcv!
                }
                if self.loraVersion != nil {
                    map["LoraVersion"] = self.loraVersion!
                }
                if self.nwkKeyKcv != nil {
                    map["NwkKeyKcv"] = self.nwkKeyKcv!
                }
                if self.pinCode != nil {
                    map["PinCode"] = self.pinCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKeyKcv") {
                    self.appKeyKcv = dict["AppKeyKcv"] as! String
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("EncryptedAppKey") {
                    self.encryptedAppKey = dict["EncryptedAppKey"] as! String
                }
                if dict.keys.contains("EncryptedGenAppKey") {
                    self.encryptedGenAppKey = dict["EncryptedGenAppKey"] as! String
                }
                if dict.keys.contains("EncryptedNwkKey") {
                    self.encryptedNwkKey = dict["EncryptedNwkKey"] as! String
                }
                if dict.keys.contains("GenAppKeyKcv") {
                    self.genAppKeyKcv = dict["GenAppKeyKcv"] as! String
                }
                if dict.keys.contains("LoraVersion") {
                    self.loraVersion = dict["LoraVersion"] as! String
                }
                if dict.keys.contains("NwkKeyKcv") {
                    self.nwkKeyKcv = dict["NwkKeyKcv"] as! String
                }
                if dict.keys.contains("PinCode") {
                    self.pinCode = dict["PinCode"] as! String
                }
            }
        }
        public var encryptedNodeTuple: [GetKpmEncryptedNodeTuplesByOrderIdResponseBody.EncryptedNodeTuples.EncryptedNodeTuple]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.encryptedNodeTuple != nil {
                var tmp : [Any] = []
                for k in self.encryptedNodeTuple! {
                    tmp.append(k.toMap())
                }
                map["EncryptedNodeTuple"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncryptedNodeTuple") {
                self.encryptedNodeTuple = dict["EncryptedNodeTuple"] as! [GetKpmEncryptedNodeTuplesByOrderIdResponseBody.EncryptedNodeTuples.EncryptedNodeTuple]
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var encryptedNodeTuples: GetKpmEncryptedNodeTuplesByOrderIdResponseBody.EncryptedNodeTuples?

    public var encryptedSessionZmk: String?

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
        try self.encryptedNodeTuples?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.encryptedNodeTuples != nil {
            map["EncryptedNodeTuples"] = self.encryptedNodeTuples?.toMap()
        }
        if self.encryptedSessionZmk != nil {
            map["EncryptedSessionZmk"] = self.encryptedSessionZmk!
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
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("EncryptedNodeTuples") {
            var model = GetKpmEncryptedNodeTuplesByOrderIdResponseBody.EncryptedNodeTuples()
            model.fromMap(dict["EncryptedNodeTuples"] as! [String: Any])
            self.encryptedNodeTuples = model
        }
        if dict.keys.contains("EncryptedSessionZmk") {
            self.encryptedSessionZmk = dict["EncryptedSessionZmk"] as! String
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

public class GetKpmEncryptedNodeTuplesByOrderIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKpmEncryptedNodeTuplesByOrderIdResponseBody?

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
            var model = GetKpmEncryptedNodeTuplesByOrderIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitKpmEncryptedNodeTupleOrderRequest : Tea.TeaModel {
    public var loraVersion: String?

    public var requiredCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loraVersion != nil {
            map["LoraVersion"] = self.loraVersion!
        }
        if self.requiredCount != nil {
            map["RequiredCount"] = self.requiredCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoraVersion") {
            self.loraVersion = dict["LoraVersion"] as! String
        }
        if dict.keys.contains("RequiredCount") {
            self.requiredCount = dict["RequiredCount"] as! Int64
        }
    }
}

public class SubmitKpmEncryptedNodeTupleOrderResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var message: String?

    public var orderId: Int64?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitKpmEncryptedNodeTupleOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitKpmEncryptedNodeTupleOrderResponseBody?

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
            var model = SubmitKpmEncryptedNodeTupleOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
