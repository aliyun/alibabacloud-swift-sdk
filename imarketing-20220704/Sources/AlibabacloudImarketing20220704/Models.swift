import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelOrderRequest : Tea.TeaModel {
    public var channelId: String?

    public var tradeId: String?

    public override init() {
        super.init()
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
        if self.tradeId != nil {
            map["TradeId"] = self.tradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("TradeId") && dict["TradeId"] != nil {
            self.tradeId = dict["TradeId"] as! String
        }
    }
}

public class CancelOrderResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: Any]?

    public var header: CancelOrderResponseBody.Header?

    public var result: CancelOrderResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = CancelOrderResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = CancelOrderResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOrderResponseBody?

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
            var model = CancelOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmSampleReceivedRequest : Tea.TeaModel {
    public var channelId: String?

    public var tradeId: String?

    public override init() {
        super.init()
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
        if self.tradeId != nil {
            map["TradeId"] = self.tradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("TradeId") && dict["TradeId"] != nil {
            self.tradeId = dict["TradeId"] as! String
        }
    }
}

public class ConfirmSampleReceivedResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: Any]?

    public var header: ConfirmSampleReceivedResponseBody.Header?

    public var result: ConfirmSampleReceivedResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = ConfirmSampleReceivedResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ConfirmSampleReceivedResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfirmSampleReceivedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmSampleReceivedResponseBody?

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
            var model = ConfirmSampleReceivedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmSampleShippedRequest : Tea.TeaModel {
    public var buyerAddress: String?

    public var buyerName: String?

    public var buyerPhoneNumber: String?

    public var channelId: String?

    public var tradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyerAddress != nil {
            map["BuyerAddress"] = self.buyerAddress!
        }
        if self.buyerName != nil {
            map["BuyerName"] = self.buyerName!
        }
        if self.buyerPhoneNumber != nil {
            map["BuyerPhoneNumber"] = self.buyerPhoneNumber!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.tradeId != nil {
            map["TradeId"] = self.tradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyerAddress") && dict["BuyerAddress"] != nil {
            self.buyerAddress = dict["BuyerAddress"] as! String
        }
        if dict.keys.contains("BuyerName") && dict["BuyerName"] != nil {
            self.buyerName = dict["BuyerName"] as! String
        }
        if dict.keys.contains("BuyerPhoneNumber") && dict["BuyerPhoneNumber"] != nil {
            self.buyerPhoneNumber = dict["BuyerPhoneNumber"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("TradeId") && dict["TradeId"] != nil {
            self.tradeId = dict["TradeId"] as! String
        }
    }
}

public class ConfirmSampleShippedResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: Any]?

    public var header: ConfirmSampleShippedResponseBody.Header?

    public var result: ConfirmSampleShippedResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = ConfirmSampleShippedResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ConfirmSampleShippedResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfirmSampleShippedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmSampleShippedResponseBody?

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
            var model = ConfirmSampleShippedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeviceRequest : Tea.TeaModel {
    public var channelId: String?

    public var city: String?

    public var deviceModelNumber: String?

    public var deviceName: String?

    public var deviceType: String?

    public var district: String?

    public var extraMap: [String: Any]?

    public var firstScene: String?

    public var floor: String?

    public var locationName: String?

    public var mediaId: String?

    public var outerCode: String?

    public var province: String?

    public var secondScene: String?

    public override init() {
        super.init()
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
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.deviceModelNumber != nil {
            map["DeviceModelNumber"] = self.deviceModelNumber!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.district != nil {
            map["District"] = self.district!
        }
        if self.extraMap != nil {
            map["ExtraMap"] = self.extraMap!
        }
        if self.firstScene != nil {
            map["FirstScene"] = self.firstScene!
        }
        if self.floor != nil {
            map["Floor"] = self.floor!
        }
        if self.locationName != nil {
            map["LocationName"] = self.locationName!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.outerCode != nil {
            map["OuterCode"] = self.outerCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.secondScene != nil {
            map["SecondScene"] = self.secondScene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("DeviceModelNumber") && dict["DeviceModelNumber"] != nil {
            self.deviceModelNumber = dict["DeviceModelNumber"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("District") && dict["District"] != nil {
            self.district = dict["District"] as! String
        }
        if dict.keys.contains("ExtraMap") && dict["ExtraMap"] != nil {
            self.extraMap = dict["ExtraMap"] as! [String: Any]
        }
        if dict.keys.contains("FirstScene") && dict["FirstScene"] != nil {
            self.firstScene = dict["FirstScene"] as! String
        }
        if dict.keys.contains("Floor") && dict["Floor"] != nil {
            self.floor = dict["Floor"] as! String
        }
        if dict.keys.contains("LocationName") && dict["LocationName"] != nil {
            self.locationName = dict["LocationName"] as! String
        }
        if dict.keys.contains("MediaId") && dict["MediaId"] != nil {
            self.mediaId = dict["MediaId"] as! String
        }
        if dict.keys.contains("OuterCode") && dict["OuterCode"] != nil {
            self.outerCode = dict["OuterCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("SecondScene") && dict["SecondScene"] != nil {
            self.secondScene = dict["SecondScene"] as! String
        }
    }
}

public class CreateDeviceShrinkRequest : Tea.TeaModel {
    public var channelId: String?

    public var city: String?

    public var deviceModelNumber: String?

    public var deviceName: String?

    public var deviceType: String?

    public var district: String?

    public var extraMapShrink: String?

    public var firstScene: String?

    public var floor: String?

    public var locationName: String?

    public var mediaId: String?

    public var outerCode: String?

    public var province: String?

    public var secondScene: String?

    public override init() {
        super.init()
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
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.deviceModelNumber != nil {
            map["DeviceModelNumber"] = self.deviceModelNumber!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.district != nil {
            map["District"] = self.district!
        }
        if self.extraMapShrink != nil {
            map["ExtraMap"] = self.extraMapShrink!
        }
        if self.firstScene != nil {
            map["FirstScene"] = self.firstScene!
        }
        if self.floor != nil {
            map["Floor"] = self.floor!
        }
        if self.locationName != nil {
            map["LocationName"] = self.locationName!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.outerCode != nil {
            map["OuterCode"] = self.outerCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.secondScene != nil {
            map["SecondScene"] = self.secondScene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("DeviceModelNumber") && dict["DeviceModelNumber"] != nil {
            self.deviceModelNumber = dict["DeviceModelNumber"] as! String
        }
        if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("District") && dict["District"] != nil {
            self.district = dict["District"] as! String
        }
        if dict.keys.contains("ExtraMap") && dict["ExtraMap"] != nil {
            self.extraMapShrink = dict["ExtraMap"] as! String
        }
        if dict.keys.contains("FirstScene") && dict["FirstScene"] != nil {
            self.firstScene = dict["FirstScene"] as! String
        }
        if dict.keys.contains("Floor") && dict["Floor"] != nil {
            self.floor = dict["Floor"] as! String
        }
        if dict.keys.contains("LocationName") && dict["LocationName"] != nil {
            self.locationName = dict["LocationName"] as! String
        }
        if dict.keys.contains("MediaId") && dict["MediaId"] != nil {
            self.mediaId = dict["MediaId"] as! String
        }
        if dict.keys.contains("OuterCode") && dict["OuterCode"] != nil {
            self.outerCode = dict["OuterCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("SecondScene") && dict["SecondScene"] != nil {
            self.secondScene = dict["SecondScene"] as! String
        }
    }
}

public class CreateDeviceResponseBody : Tea.TeaModel {
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

public class CreateDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceResponseBody?

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
            var model = CreateDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCreativeInfoRequest : Tea.TeaModel {
    public var accountNo: String?

    public var bizId: String?

    public var id: Int64?

    public var mainId: Int64?

    public var updateUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mainId != nil {
            map["MainId"] = self.mainId!
        }
        if self.updateUser != nil {
            map["UpdateUser"] = self.updateUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("MainId") && dict["MainId"] != nil {
            self.mainId = dict["MainId"] as! Int64
        }
        if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
            self.updateUser = dict["UpdateUser"] as! String
        }
    }
}

public class DeleteCreativeInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
            self.data = dict["Data"] as! Bool
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

public class DeleteCreativeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCreativeInfoResponseBody?

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
            var model = DeleteCreativeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdvertisingForE2ResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public var imgUrl: String?

        public var targetUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imgUrl != nil {
                map["ImgUrl"] = self.imgUrl!
            }
            if self.targetUrl != nil {
                map["TargetUrl"] = self.targetUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImgUrl") && dict["ImgUrl"] != nil {
                self.imgUrl = dict["ImgUrl"] as! String
            }
            if dict.keys.contains("TargetUrl") && dict["TargetUrl"] != nil {
                self.targetUrl = dict["TargetUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var header: GetAdvertisingForE2ResponseBody.Header?

    public var requestId: String?

    public var result: GetAdvertisingForE2ResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = GetAdvertisingForE2ResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetAdvertisingForE2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetAdvertisingForE2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdvertisingForE2ResponseBody?

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
            var model = GetAdvertisingForE2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBrandPageRequest : Tea.TeaModel {
    public var accountNo: String?

    public var mainId: Int64?

    public var mainName: String?

    public var pageIndex: Int32?

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
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.mainId != nil {
            map["MainId"] = self.mainId!
        }
        if self.mainName != nil {
            map["MainName"] = self.mainName!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("MainId") && dict["MainId"] != nil {
            self.mainId = dict["MainId"] as! Int64
        }
        if dict.keys.contains("MainName") && dict["MainName"] != nil {
            self.mainName = dict["MainName"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class GetBrandPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var accountNo: String?

            public var accountType: String?

            public var company: String?

            public var mainId: Int64?

            public var mainName: String?

            public var parentMainId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountNo != nil {
                    map["AccountNo"] = self.accountNo!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.company != nil {
                    map["Company"] = self.company!
                }
                if self.mainId != nil {
                    map["MainId"] = self.mainId!
                }
                if self.mainName != nil {
                    map["MainName"] = self.mainName!
                }
                if self.parentMainId != nil {
                    map["ParentMainId"] = self.parentMainId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
                    self.accountNo = dict["AccountNo"] as! String
                }
                if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("Company") && dict["Company"] != nil {
                    self.company = dict["Company"] as! String
                }
                if dict.keys.contains("MainId") && dict["MainId"] != nil {
                    self.mainId = dict["MainId"] as! Int64
                }
                if dict.keys.contains("MainName") && dict["MainName"] != nil {
                    self.mainName = dict["MainName"] as! String
                }
                if dict.keys.contains("ParentMainId") && dict["ParentMainId"] != nil {
                    self.parentMainId = dict["ParentMainId"] as! Int64
                }
            }
        }
        public class PageInfo : Tea.TeaModel {
            public var page: Int32?

            public var pageSize: Int32?

            public var totalNumber: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.page != nil {
                    map["Page"] = self.page!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalNumber != nil {
                    map["TotalNumber"] = self.totalNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Page") && dict["Page"] != nil {
                    self.page = dict["Page"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalNumber") && dict["TotalNumber"] != nil {
                    self.totalNumber = dict["TotalNumber"] as! Int32
                }
            }
        }
        public var list: [GetBrandPageResponseBody.Data.List]?

        public var pageInfo: GetBrandPageResponseBody.Data.PageInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [GetBrandPageResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = GetBrandPageResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = GetBrandPageResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
        }
    }
    public var code: Int64?

    public var data: GetBrandPageResponseBody.Data?

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
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetBrandPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetBrandPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBrandPageResponseBody?

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
            var model = GetBrandPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBusinessIdRequest : Tea.TeaModel {
    public var businessId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessId") && dict["BusinessId"] != nil {
            self.businessId = dict["BusinessId"] as! String
        }
    }
}

public class GetBusinessIdResponseBody : Tea.TeaModel {
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

public class GetBusinessIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBusinessIdResponseBody?

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
            var model = GetBusinessIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCreativeInfoRequest : Tea.TeaModel {
    public var accountNo: String?

    public var bizId: String?

    public var id: Int64?

    public var mainId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mainId != nil {
            map["MainId"] = self.mainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("MainId") && dict["MainId"] != nil {
            self.mainId = dict["MainId"] as! Int64
        }
    }
}

public class GetCreativeInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountNo: String?

        public var chainValue: String?

        public var componentIdList: String?

        public var id: Int32?

        public var mainId: Int64?

        public var name: String?

        public var pageId: String?

        public var status: Int32?

        public var taskCount: Int32?

        public var url: String?

        public var urlType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountNo != nil {
                map["AccountNo"] = self.accountNo!
            }
            if self.chainValue != nil {
                map["ChainValue"] = self.chainValue!
            }
            if self.componentIdList != nil {
                map["ComponentIdList"] = self.componentIdList!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mainId != nil {
                map["MainId"] = self.mainId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pageId != nil {
                map["PageId"] = self.pageId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.urlType != nil {
                map["UrlType"] = self.urlType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
                self.accountNo = dict["AccountNo"] as! String
            }
            if dict.keys.contains("ChainValue") && dict["ChainValue"] != nil {
                self.chainValue = dict["ChainValue"] as! String
            }
            if dict.keys.contains("ComponentIdList") && dict["ComponentIdList"] != nil {
                self.componentIdList = dict["ComponentIdList"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("MainId") && dict["MainId"] != nil {
                self.mainId = dict["MainId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PageId") && dict["PageId"] != nil {
                self.pageId = dict["PageId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TaskCount") && dict["TaskCount"] != nil {
                self.taskCount = dict["TaskCount"] as! Int32
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("UrlType") && dict["UrlType"] != nil {
                self.urlType = dict["UrlType"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetCreativeInfoResponseBody.Data?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCreativeInfoResponseBody.Data()
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

public class GetCreativeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreativeInfoResponseBody?

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
            var model = GetCreativeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLeadsListPageRequest : Tea.TeaModel {
    public var componentId: Int64?

    public var contentId: Int64?

    public var creativeId: Int64?

    public var endTime: Int64?

    public var mainId: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

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
        if self.componentId != nil {
            map["ComponentId"] = self.componentId!
        }
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        if self.creativeId != nil {
            map["CreativeId"] = self.creativeId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.mainId != nil {
            map["MainId"] = self.mainId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentId") && dict["ComponentId"] != nil {
            self.componentId = dict["ComponentId"] as! Int64
        }
        if dict.keys.contains("ContentId") && dict["ContentId"] != nil {
            self.contentId = dict["ContentId"] as! Int64
        }
        if dict.keys.contains("CreativeId") && dict["CreativeId"] != nil {
            self.creativeId = dict["CreativeId"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MainId") && dict["MainId"] != nil {
            self.mainId = dict["MainId"] as! Int64
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class GetLeadsListPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var componentId: String?

            public var contentId: Int64?

            public var creativeId: Int32?

            public var creativeName: String?

            public var leadsDetail: String?

            public var serialId: Int64?

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
                if self.componentId != nil {
                    map["ComponentId"] = self.componentId!
                }
                if self.contentId != nil {
                    map["ContentId"] = self.contentId!
                }
                if self.creativeId != nil {
                    map["CreativeId"] = self.creativeId!
                }
                if self.creativeName != nil {
                    map["CreativeName"] = self.creativeName!
                }
                if self.leadsDetail != nil {
                    map["LeadsDetail"] = self.leadsDetail!
                }
                if self.serialId != nil {
                    map["SerialId"] = self.serialId!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComponentId") && dict["ComponentId"] != nil {
                    self.componentId = dict["ComponentId"] as! String
                }
                if dict.keys.contains("ContentId") && dict["ContentId"] != nil {
                    self.contentId = dict["ContentId"] as! Int64
                }
                if dict.keys.contains("CreativeId") && dict["CreativeId"] != nil {
                    self.creativeId = dict["CreativeId"] as! Int32
                }
                if dict.keys.contains("CreativeName") && dict["CreativeName"] != nil {
                    self.creativeName = dict["CreativeName"] as! String
                }
                if dict.keys.contains("LeadsDetail") && dict["LeadsDetail"] != nil {
                    self.leadsDetail = dict["LeadsDetail"] as! String
                }
                if dict.keys.contains("SerialId") && dict["SerialId"] != nil {
                    self.serialId = dict["SerialId"] as! Int64
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! Int64
                }
            }
        }
        public class PageInfo : Tea.TeaModel {
            public var page: Int32?

            public var pageSize: Int32?

            public var totalNumber: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.page != nil {
                    map["Page"] = self.page!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalNumber != nil {
                    map["TotalNumber"] = self.totalNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Page") && dict["Page"] != nil {
                    self.page = dict["Page"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalNumber") && dict["TotalNumber"] != nil {
                    self.totalNumber = dict["TotalNumber"] as! Int32
                }
            }
        }
        public var list: [GetLeadsListPageResponseBody.Data.List]?

        public var pageInfo: GetLeadsListPageResponseBody.Data.PageInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [GetLeadsListPageResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = GetLeadsListPageResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = GetLeadsListPageResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
        }
    }
    public var code: Int32?

    public var data: GetLeadsListPageResponseBody.Data?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetLeadsListPageResponseBody.Data()
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

public class GetLeadsListPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLeadsListPageResponseBody?

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
            var model = GetLeadsListPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMainPartPageRequest : Tea.TeaModel {
    public var mainId: Int64?

    public var mainName: String?

    public var pageIndex: Int32?

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
        if self.mainId != nil {
            map["MainId"] = self.mainId!
        }
        if self.mainName != nil {
            map["MainName"] = self.mainName!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MainId") && dict["MainId"] != nil {
            self.mainId = dict["MainId"] as! Int64
        }
        if dict.keys.contains("MainName") && dict["MainName"] != nil {
            self.mainName = dict["MainName"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class GetMainPartPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class AccountTypeList : Tea.TeaModel {
                public var accountType: String?

                public var accountTypeDesc: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accountType != nil {
                        map["AccountType"] = self.accountType!
                    }
                    if self.accountTypeDesc != nil {
                        map["AccountTypeDesc"] = self.accountTypeDesc!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
                        self.accountType = dict["AccountType"] as! String
                    }
                    if dict.keys.contains("AccountTypeDesc") && dict["AccountTypeDesc"] != nil {
                        self.accountTypeDesc = dict["AccountTypeDesc"] as! String
                    }
                }
            }
            public var accountTypeList: [GetMainPartPageResponseBody.Data.List.AccountTypeList]?

            public var company: String?

            public var mainId: Int64?

            public var mainName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountTypeList != nil {
                    var tmp : [Any] = []
                    for k in self.accountTypeList! {
                        tmp.append(k.toMap())
                    }
                    map["AccountTypeList"] = tmp
                }
                if self.company != nil {
                    map["Company"] = self.company!
                }
                if self.mainId != nil {
                    map["MainId"] = self.mainId!
                }
                if self.mainName != nil {
                    map["MainName"] = self.mainName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountTypeList") && dict["AccountTypeList"] != nil {
                    var tmp : [GetMainPartPageResponseBody.Data.List.AccountTypeList] = []
                    for v in dict["AccountTypeList"] as! [Any] {
                        var model = GetMainPartPageResponseBody.Data.List.AccountTypeList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.accountTypeList = tmp
                }
                if dict.keys.contains("Company") && dict["Company"] != nil {
                    self.company = dict["Company"] as! String
                }
                if dict.keys.contains("MainId") && dict["MainId"] != nil {
                    self.mainId = dict["MainId"] as! Int64
                }
                if dict.keys.contains("MainName") && dict["MainName"] != nil {
                    self.mainName = dict["MainName"] as! String
                }
            }
        }
        public class PageInfo : Tea.TeaModel {
            public var page: Int32?

            public var pageSize: Int32?

            public var totalNumber: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.page != nil {
                    map["Page"] = self.page!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalNumber != nil {
                    map["TotalNumber"] = self.totalNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Page") && dict["Page"] != nil {
                    self.page = dict["Page"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalNumber") && dict["TotalNumber"] != nil {
                    self.totalNumber = dict["TotalNumber"] as! Int32
                }
            }
        }
        public var list: [GetMainPartPageResponseBody.Data.List]?

        public var pageInfo: GetMainPartPageResponseBody.Data.PageInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [GetMainPartPageResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = GetMainPartPageResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = GetMainPartPageResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
        }
    }
    public var code: Int64?

    public var data: GetMainPartPageResponseBody.Data?

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
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetMainPartPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMainPartPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMainPartPageResponseBody?

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
            var model = GetMainPartPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOssUploadSignatureRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FileType") && dict["FileType"] != nil {
            self.fileType = dict["FileType"] as! String
        }
    }
}

public class GetOssUploadSignatureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var expire: String?

        public var host: String?

        public var ossKey: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
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
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") && dict["Host"] != nil {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                self.ossKey = dict["OssKey"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var data: GetOssUploadSignatureResponseBody.Data?

    public var errorCode: Int32?

    public var httpCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetOssUploadSignatureResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOssUploadSignatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssUploadSignatureResponseBody?

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
            var model = GetOssUploadSignatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRelatedByCreativeIdRequest : Tea.TeaModel {
    public var id: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
    }
}

public class GetRelatedByCreativeIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contentId: Int64?

        public var contentName: String?

        public var taskId: Int64?

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
            if self.contentId != nil {
                map["ContentId"] = self.contentId!
            }
            if self.contentName != nil {
                map["ContentName"] = self.contentName!
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
            if dict.keys.contains("ContentId") && dict["ContentId"] != nil {
                self.contentId = dict["ContentId"] as! Int64
            }
            if dict.keys.contains("ContentName") && dict["ContentName"] != nil {
                self.contentName = dict["ContentName"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [GetRelatedByCreativeIdResponseBody.Data]?

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
            var tmp : [GetRelatedByCreativeIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetRelatedByCreativeIdResponseBody.Data()
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

public class GetRelatedByCreativeIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRelatedByCreativeIdResponseBody?

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
            var model = GetRelatedByCreativeIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserFinishedAdRequest : Tea.TeaModel {
    public var adid: Int64?

    public var clicklink: String?

    public var id: String?

    public var mediaid: String?

    public var tagid: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adid != nil {
            map["Adid"] = self.adid!
        }
        if self.clicklink != nil {
            map["Clicklink"] = self.clicklink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mediaid != nil {
            map["Mediaid"] = self.mediaid!
        }
        if self.tagid != nil {
            map["Tagid"] = self.tagid!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Adid") && dict["Adid"] != nil {
            self.adid = dict["Adid"] as! Int64
        }
        if dict.keys.contains("Clicklink") && dict["Clicklink"] != nil {
            self.clicklink = dict["Clicklink"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Mediaid") && dict["Mediaid"] != nil {
            self.mediaid = dict["Mediaid"] as! String
        }
        if dict.keys.contains("Tagid") && dict["Tagid"] != nil {
            self.tagid = dict["Tagid"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class GetUserFinishedAdResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public var commission: String?

        public var id: String?

        public var marketingType: String?

        public var objective: String?

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
            if self.commission != nil {
                map["Commission"] = self.commission!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.marketingType != nil {
                map["MarketingType"] = self.marketingType!
            }
            if self.objective != nil {
                map["Objective"] = self.objective!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Commission") && dict["Commission"] != nil {
                self.commission = dict["Commission"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MarketingType") && dict["MarketingType"] != nil {
                self.marketingType = dict["MarketingType"] as! String
            }
            if dict.keys.contains("Objective") && dict["Objective"] != nil {
                self.objective = dict["Objective"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: String]?

    public var header: GetUserFinishedAdResponseBody.Header?

    public var requestId: String?

    public var result: GetUserFinishedAdResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: String]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = GetUserFinishedAdResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetUserFinishedAdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserFinishedAdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserFinishedAdResponseBody?

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
            var model = GetUserFinishedAdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdvertisingRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appid: String?

        public var ext: [String: Any]?

        public var mediaid: String?

        public var sn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appid != nil {
                map["Appid"] = self.appid!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.mediaid != nil {
                map["Mediaid"] = self.mediaid!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Appid") && dict["Appid"] != nil {
                self.appid = dict["Appid"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! [String: Any]
            }
            if dict.keys.contains("Mediaid") && dict["Mediaid"] != nil {
                self.mediaid = dict["Mediaid"] as! String
            }
            if dict.keys.contains("Sn") && dict["Sn"] != nil {
                self.sn = dict["Sn"] as! String
            }
        }
    }
    public class Device : Tea.TeaModel {
        public class Geo : Tea.TeaModel {
            public var city: String?

            public var district: String?

            public var lat: Double?

            public var lon: Double?

            public var province: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.district != nil {
                    map["District"] = self.district!
                }
                if self.lat != nil {
                    map["Lat"] = self.lat!
                }
                if self.lon != nil {
                    map["Lon"] = self.lon!
                }
                if self.province != nil {
                    map["Province"] = self.province!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("City") && dict["City"] != nil {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("District") && dict["District"] != nil {
                    self.district = dict["District"] as! String
                }
                if dict.keys.contains("Lat") && dict["Lat"] != nil {
                    self.lat = dict["Lat"] as! Double
                }
                if dict.keys.contains("Lon") && dict["Lon"] != nil {
                    self.lon = dict["Lon"] as! Double
                }
                if dict.keys.contains("Province") && dict["Province"] != nil {
                    self.province = dict["Province"] as! String
                }
            }
        }
        public var androidid: String?

        public var androidmd5: String?

        public var caid: String?

        public var carrier: String?

        public var connectiontype: Int32?

        public var devicetype: Int32?

        public var geo: ListAdvertisingRequest.Device.Geo?

        public var idfa: String?

        public var imei: String?

        public var imeimd5: String?

        public var ip: String?

        public var language: String?

        public var mac: String?

        public var macmd5: String?

        public var make: String?

        public var model: String?

        public var oaid: String?

        public var os: String?

        public var osv: String?

        public var ua: String?

        public var utdid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.geo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidid != nil {
                map["Androidid"] = self.androidid!
            }
            if self.androidmd5 != nil {
                map["Androidmd5"] = self.androidmd5!
            }
            if self.caid != nil {
                map["Caid"] = self.caid!
            }
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.connectiontype != nil {
                map["Connectiontype"] = self.connectiontype!
            }
            if self.devicetype != nil {
                map["Devicetype"] = self.devicetype!
            }
            if self.geo != nil {
                map["Geo"] = self.geo?.toMap()
            }
            if self.idfa != nil {
                map["Idfa"] = self.idfa!
            }
            if self.imei != nil {
                map["Imei"] = self.imei!
            }
            if self.imeimd5 != nil {
                map["Imeimd5"] = self.imeimd5!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.macmd5 != nil {
                map["Macmd5"] = self.macmd5!
            }
            if self.make != nil {
                map["Make"] = self.make!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.oaid != nil {
                map["Oaid"] = self.oaid!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osv != nil {
                map["Osv"] = self.osv!
            }
            if self.ua != nil {
                map["Ua"] = self.ua!
            }
            if self.utdid != nil {
                map["Utdid"] = self.utdid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Androidid") && dict["Androidid"] != nil {
                self.androidid = dict["Androidid"] as! String
            }
            if dict.keys.contains("Androidmd5") && dict["Androidmd5"] != nil {
                self.androidmd5 = dict["Androidmd5"] as! String
            }
            if dict.keys.contains("Caid") && dict["Caid"] != nil {
                self.caid = dict["Caid"] as! String
            }
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Connectiontype") && dict["Connectiontype"] != nil {
                self.connectiontype = dict["Connectiontype"] as! Int32
            }
            if dict.keys.contains("Devicetype") && dict["Devicetype"] != nil {
                self.devicetype = dict["Devicetype"] as! Int32
            }
            if dict.keys.contains("Geo") && dict["Geo"] != nil {
                var model = ListAdvertisingRequest.Device.Geo()
                model.fromMap(dict["Geo"] as! [String: Any])
                self.geo = model
            }
            if dict.keys.contains("Idfa") && dict["Idfa"] != nil {
                self.idfa = dict["Idfa"] as! String
            }
            if dict.keys.contains("Imei") && dict["Imei"] != nil {
                self.imei = dict["Imei"] as! String
            }
            if dict.keys.contains("Imeimd5") && dict["Imeimd5"] != nil {
                self.imeimd5 = dict["Imeimd5"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Macmd5") && dict["Macmd5"] != nil {
                self.macmd5 = dict["Macmd5"] as! String
            }
            if dict.keys.contains("Make") && dict["Make"] != nil {
                self.make = dict["Make"] as! String
            }
            if dict.keys.contains("Model") && dict["Model"] != nil {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("Oaid") && dict["Oaid"] != nil {
                self.oaid = dict["Oaid"] as! String
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("Osv") && dict["Osv"] != nil {
                self.osv = dict["Osv"] as! String
            }
            if dict.keys.contains("Ua") && dict["Ua"] != nil {
                self.ua = dict["Ua"] as! String
            }
            if dict.keys.contains("Utdid") && dict["Utdid"] != nil {
                self.utdid = dict["Utdid"] as! String
            }
        }
    }
    public class Imp : Tea.TeaModel {
        public var id: String?

        public var tagid: String?

        public override init() {
            super.init()
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
            if self.tagid != nil {
                map["Tagid"] = self.tagid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Tagid") && dict["Tagid"] != nil {
                self.tagid = dict["Tagid"] as! String
            }
        }
    }
    public class User : Tea.TeaModel {
        public var id: String?

        public var usertype: String?

        public override init() {
            super.init()
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
            if self.usertype != nil {
                map["Usertype"] = self.usertype!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Usertype") && dict["Usertype"] != nil {
                self.usertype = dict["Usertype"] as! String
            }
        }
    }
    public var app: ListAdvertisingRequest.App?

    public var dealtype: Int32?

    public var device: ListAdvertisingRequest.Device?

    public var ext: [String: Any]?

    public var id: String?

    public var imp: [ListAdvertisingRequest.Imp]?

    public var test: Int32?

    public var user: ListAdvertisingRequest.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.device?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.dealtype != nil {
            map["Dealtype"] = self.dealtype!
        }
        if self.device != nil {
            map["Device"] = self.device?.toMap()
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.imp != nil {
            var tmp : [Any] = []
            for k in self.imp! {
                tmp.append(k.toMap())
            }
            map["Imp"] = tmp
        }
        if self.test != nil {
            map["Test"] = self.test!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = ListAdvertisingRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("Dealtype") && dict["Dealtype"] != nil {
            self.dealtype = dict["Dealtype"] as! Int32
        }
        if dict.keys.contains("Device") && dict["Device"] != nil {
            var model = ListAdvertisingRequest.Device()
            model.fromMap(dict["Device"] as! [String: Any])
            self.device = model
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Imp") && dict["Imp"] != nil {
            var tmp : [ListAdvertisingRequest.Imp] = []
            for v in dict["Imp"] as! [Any] {
                var model = ListAdvertisingRequest.Imp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imp = tmp
        }
        if dict.keys.contains("Test") && dict["Test"] != nil {
            self.test = dict["Test"] as! Int32
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            var model = ListAdvertisingRequest.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class ListAdvertisingShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var dealtype: Int32?

    public var deviceShrink: String?

    public var extShrink: String?

    public var id: String?

    public var impShrink: String?

    public var test: Int32?

    public var userShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.dealtype != nil {
            map["Dealtype"] = self.dealtype!
        }
        if self.deviceShrink != nil {
            map["Device"] = self.deviceShrink!
        }
        if self.extShrink != nil {
            map["Ext"] = self.extShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.impShrink != nil {
            map["Imp"] = self.impShrink!
        }
        if self.test != nil {
            map["Test"] = self.test!
        }
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("Dealtype") && dict["Dealtype"] != nil {
            self.dealtype = dict["Dealtype"] as! Int32
        }
        if dict.keys.contains("Device") && dict["Device"] != nil {
            self.deviceShrink = dict["Device"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.extShrink = dict["Ext"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Imp") && dict["Imp"] != nil {
            self.impShrink = dict["Imp"] as! String
        }
        if dict.keys.contains("Test") && dict["Test"] != nil {
            self.test = dict["Test"] as! Int32
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            self.userShrink = dict["User"] as! String
        }
    }
}

public class ListAdvertisingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public class Seatbid : Tea.TeaModel {
            public class Bid : Tea.TeaModel {
                public class Ads : Tea.TeaModel {
                    public class Icon : Tea.TeaModel {
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Images : Tea.TeaModel {
                        public var desc: String?

                        public var format: String?

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
                            if self.desc != nil {
                                map["Desc"] = self.desc!
                            }
                            if self.format != nil {
                                map["Format"] = self.format!
                            }
                            if self.url != nil {
                                map["Url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                                self.desc = dict["Desc"] as! String
                            }
                            if dict.keys.contains("Format") && dict["Format"] != nil {
                                self.format = dict["Format"] as! String
                            }
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Trackers : Tea.TeaModel {
                        public var imps: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.imps != nil {
                                map["Imps"] = self.imps!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Imps") && dict["Imps"] != nil {
                                self.imps = dict["Imps"] as! [String]
                            }
                        }
                    }
                    public var crid: String?

                    public var crurl: String?

                    public var icon: ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Icon?

                    public var id: String?

                    public var images: [ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Images]?

                    public var interacttype: Int32?

                    public var labeltype: String?

                    public var landingurls: [String]?

                    public var marketingtype: String?

                    public var objective: String?

                    public var price: String?

                    public var seat: String?

                    public var style: String?

                    public var title: String?

                    public var trackers: ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Trackers?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.icon?.validate()
                        try self.trackers?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.crid != nil {
                            map["Crid"] = self.crid!
                        }
                        if self.crurl != nil {
                            map["Crurl"] = self.crurl!
                        }
                        if self.icon != nil {
                            map["Icon"] = self.icon?.toMap()
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.images != nil {
                            var tmp : [Any] = []
                            for k in self.images! {
                                tmp.append(k.toMap())
                            }
                            map["Images"] = tmp
                        }
                        if self.interacttype != nil {
                            map["Interacttype"] = self.interacttype!
                        }
                        if self.labeltype != nil {
                            map["Labeltype"] = self.labeltype!
                        }
                        if self.landingurls != nil {
                            map["Landingurls"] = self.landingurls!
                        }
                        if self.marketingtype != nil {
                            map["Marketingtype"] = self.marketingtype!
                        }
                        if self.objective != nil {
                            map["Objective"] = self.objective!
                        }
                        if self.price != nil {
                            map["Price"] = self.price!
                        }
                        if self.seat != nil {
                            map["Seat"] = self.seat!
                        }
                        if self.style != nil {
                            map["Style"] = self.style!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.trackers != nil {
                            map["Trackers"] = self.trackers?.toMap()
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Crid") && dict["Crid"] != nil {
                            self.crid = dict["Crid"] as! String
                        }
                        if dict.keys.contains("Crurl") && dict["Crurl"] != nil {
                            self.crurl = dict["Crurl"] as! String
                        }
                        if dict.keys.contains("Icon") && dict["Icon"] != nil {
                            var model = ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Icon()
                            model.fromMap(dict["Icon"] as! [String: Any])
                            self.icon = model
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Images") && dict["Images"] != nil {
                            var tmp : [ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Images] = []
                            for v in dict["Images"] as! [Any] {
                                var model = ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Images()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.images = tmp
                        }
                        if dict.keys.contains("Interacttype") && dict["Interacttype"] != nil {
                            self.interacttype = dict["Interacttype"] as! Int32
                        }
                        if dict.keys.contains("Labeltype") && dict["Labeltype"] != nil {
                            self.labeltype = dict["Labeltype"] as! String
                        }
                        if dict.keys.contains("Landingurls") && dict["Landingurls"] != nil {
                            self.landingurls = dict["Landingurls"] as! [String]
                        }
                        if dict.keys.contains("Marketingtype") && dict["Marketingtype"] != nil {
                            self.marketingtype = dict["Marketingtype"] as! String
                        }
                        if dict.keys.contains("Objective") && dict["Objective"] != nil {
                            self.objective = dict["Objective"] as! String
                        }
                        if dict.keys.contains("Price") && dict["Price"] != nil {
                            self.price = dict["Price"] as! String
                        }
                        if dict.keys.contains("Seat") && dict["Seat"] != nil {
                            self.seat = dict["Seat"] as! String
                        }
                        if dict.keys.contains("Style") && dict["Style"] != nil {
                            self.style = dict["Style"] as! String
                        }
                        if dict.keys.contains("Title") && dict["Title"] != nil {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Trackers") && dict["Trackers"] != nil {
                            var model = ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Trackers()
                            model.fromMap(dict["Trackers"] as! [String: Any])
                            self.trackers = model
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var ads: [ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads]?

                public var impid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ads != nil {
                        var tmp : [Any] = []
                        for k in self.ads! {
                            tmp.append(k.toMap())
                        }
                        map["Ads"] = tmp
                    }
                    if self.impid != nil {
                        map["Impid"] = self.impid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ads") && dict["Ads"] != nil {
                        var tmp : [ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads] = []
                        for v in dict["Ads"] as! [Any] {
                            var model = ListAdvertisingResponseBody.Result.Seatbid.Bid.Ads()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ads = tmp
                    }
                    if dict.keys.contains("Impid") && dict["Impid"] != nil {
                        self.impid = dict["Impid"] as! String
                    }
                }
            }
            public var bid: [ListAdvertisingResponseBody.Result.Seatbid.Bid]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bid != nil {
                    var tmp : [Any] = []
                    for k in self.bid! {
                        tmp.append(k.toMap())
                    }
                    map["Bid"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bid") && dict["Bid"] != nil {
                    var tmp : [ListAdvertisingResponseBody.Result.Seatbid.Bid] = []
                    for v in dict["Bid"] as! [Any] {
                        var model = ListAdvertisingResponseBody.Result.Seatbid.Bid()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.bid = tmp
                }
            }
        }
        public var bidid: String?

        public var id: String?

        public var seatbid: [ListAdvertisingResponseBody.Result.Seatbid]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bidid != nil {
                map["Bidid"] = self.bidid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.seatbid != nil {
                var tmp : [Any] = []
                for k in self.seatbid! {
                    tmp.append(k.toMap())
                }
                map["Seatbid"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bidid") && dict["Bidid"] != nil {
                self.bidid = dict["Bidid"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Seatbid") && dict["Seatbid"] != nil {
                var tmp : [ListAdvertisingResponseBody.Result.Seatbid] = []
                for v in dict["Seatbid"] as! [Any] {
                    var model = ListAdvertisingResponseBody.Result.Seatbid()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.seatbid = tmp
            }
        }
    }
    public var errorcode: String?

    public var errormsg: String?

    public var ext: [String: String]?

    public var header: ListAdvertisingResponseBody.Header?

    public var requestId: String?

    public var result: ListAdvertisingResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorcode != nil {
            map["Errorcode"] = self.errorcode!
        }
        if self.errormsg != nil {
            map["Errormsg"] = self.errormsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Errorcode") && dict["Errorcode"] != nil {
            self.errorcode = dict["Errorcode"] as! String
        }
        if dict.keys.contains("Errormsg") && dict["Errormsg"] != nil {
            self.errormsg = dict["Errormsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: String]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = ListAdvertisingResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListAdvertisingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListAdvertisingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdvertisingResponseBody?

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
            var model = ListAdvertisingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSpecificAdRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var ext: [String: Any]?

        public var mediaid: String?

        public var sn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.mediaid != nil {
                map["Mediaid"] = self.mediaid!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! [String: Any]
            }
            if dict.keys.contains("Mediaid") && dict["Mediaid"] != nil {
                self.mediaid = dict["Mediaid"] as! String
            }
            if dict.keys.contains("Sn") && dict["Sn"] != nil {
                self.sn = dict["Sn"] as! String
            }
        }
    }
    public class Imp : Tea.TeaModel {
        public var id: String?

        public var tagid: String?

        public override init() {
            super.init()
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
            if self.tagid != nil {
                map["Tagid"] = self.tagid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Tagid") && dict["Tagid"] != nil {
                self.tagid = dict["Tagid"] as! String
            }
        }
    }
    public class User : Tea.TeaModel {
        public var id: String?

        public var usertype: String?

        public override init() {
            super.init()
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
            if self.usertype != nil {
                map["Usertype"] = self.usertype!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Usertype") && dict["Usertype"] != nil {
                self.usertype = dict["Usertype"] as! String
            }
        }
    }
    public class Verifyad : Tea.TeaModel {
        public var id: String?

        public var itemid: String?

        public var marketingtype: String?

        public var seat: String?

        public override init() {
            super.init()
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
            if self.itemid != nil {
                map["Itemid"] = self.itemid!
            }
            if self.marketingtype != nil {
                map["Marketingtype"] = self.marketingtype!
            }
            if self.seat != nil {
                map["Seat"] = self.seat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Itemid") && dict["Itemid"] != nil {
                self.itemid = dict["Itemid"] as! String
            }
            if dict.keys.contains("Marketingtype") && dict["Marketingtype"] != nil {
                self.marketingtype = dict["Marketingtype"] as! String
            }
            if dict.keys.contains("Seat") && dict["Seat"] != nil {
                self.seat = dict["Seat"] as! String
            }
        }
    }
    public var app: ListSpecificAdRequest.App?

    public var ext: [String: Any]?

    public var id: String?

    public var imp: [ListSpecificAdRequest.Imp]?

    public var user: ListSpecificAdRequest.User?

    public var verifyad: [ListSpecificAdRequest.Verifyad]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.imp != nil {
            var tmp : [Any] = []
            for k in self.imp! {
                tmp.append(k.toMap())
            }
            map["Imp"] = tmp
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        if self.verifyad != nil {
            var tmp : [Any] = []
            for k in self.verifyad! {
                tmp.append(k.toMap())
            }
            map["Verifyad"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = ListSpecificAdRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Imp") && dict["Imp"] != nil {
            var tmp : [ListSpecificAdRequest.Imp] = []
            for v in dict["Imp"] as! [Any] {
                var model = ListSpecificAdRequest.Imp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imp = tmp
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            var model = ListSpecificAdRequest.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
        if dict.keys.contains("Verifyad") && dict["Verifyad"] != nil {
            var tmp : [ListSpecificAdRequest.Verifyad] = []
            for v in dict["Verifyad"] as! [Any] {
                var model = ListSpecificAdRequest.Verifyad()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.verifyad = tmp
        }
    }
}

public class ListSpecificAdShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var extShrink: String?

    public var id: String?

    public var impShrink: String?

    public var userShrink: String?

    public var verifyadShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.extShrink != nil {
            map["Ext"] = self.extShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.impShrink != nil {
            map["Imp"] = self.impShrink!
        }
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        if self.verifyadShrink != nil {
            map["Verifyad"] = self.verifyadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.extShrink = dict["Ext"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Imp") && dict["Imp"] != nil {
            self.impShrink = dict["Imp"] as! String
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            self.userShrink = dict["User"] as! String
        }
        if dict.keys.contains("Verifyad") && dict["Verifyad"] != nil {
            self.verifyadShrink = dict["Verifyad"] as! String
        }
    }
}

public class ListSpecificAdResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public class Seatbid : Tea.TeaModel {
            public class Bid : Tea.TeaModel {
                public class Ads : Tea.TeaModel {
                    public class Icon : Tea.TeaModel {
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Trackers : Tea.TeaModel {
                        public var imps: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.imps != nil {
                                map["Imps"] = self.imps!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Imps") && dict["Imps"] != nil {
                                self.imps = dict["Imps"] as! [String]
                            }
                        }
                    }
                    public var crid: String?

                    public var crurl: String?

                    public var icon: ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads.Icon?

                    public var id: String?

                    public var interacttype: Int32?

                    public var itemid: String?

                    public var labeltype: String?

                    public var landingurls: [String]?

                    public var marketingtype: String?

                    public var objective: String?

                    public var price: String?

                    public var seat: String?

                    public var title: String?

                    public var trackers: ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads.Trackers?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.icon?.validate()
                        try self.trackers?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.crid != nil {
                            map["Crid"] = self.crid!
                        }
                        if self.crurl != nil {
                            map["Crurl"] = self.crurl!
                        }
                        if self.icon != nil {
                            map["Icon"] = self.icon?.toMap()
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.interacttype != nil {
                            map["Interacttype"] = self.interacttype!
                        }
                        if self.itemid != nil {
                            map["Itemid"] = self.itemid!
                        }
                        if self.labeltype != nil {
                            map["Labeltype"] = self.labeltype!
                        }
                        if self.landingurls != nil {
                            map["Landingurls"] = self.landingurls!
                        }
                        if self.marketingtype != nil {
                            map["Marketingtype"] = self.marketingtype!
                        }
                        if self.objective != nil {
                            map["Objective"] = self.objective!
                        }
                        if self.price != nil {
                            map["Price"] = self.price!
                        }
                        if self.seat != nil {
                            map["Seat"] = self.seat!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.trackers != nil {
                            map["Trackers"] = self.trackers?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Crid") && dict["Crid"] != nil {
                            self.crid = dict["Crid"] as! String
                        }
                        if dict.keys.contains("Crurl") && dict["Crurl"] != nil {
                            self.crurl = dict["Crurl"] as! String
                        }
                        if dict.keys.contains("Icon") && dict["Icon"] != nil {
                            var model = ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads.Icon()
                            model.fromMap(dict["Icon"] as! [String: Any])
                            self.icon = model
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Interacttype") && dict["Interacttype"] != nil {
                            self.interacttype = dict["Interacttype"] as! Int32
                        }
                        if dict.keys.contains("Itemid") && dict["Itemid"] != nil {
                            self.itemid = dict["Itemid"] as! String
                        }
                        if dict.keys.contains("Labeltype") && dict["Labeltype"] != nil {
                            self.labeltype = dict["Labeltype"] as! String
                        }
                        if dict.keys.contains("Landingurls") && dict["Landingurls"] != nil {
                            self.landingurls = dict["Landingurls"] as! [String]
                        }
                        if dict.keys.contains("Marketingtype") && dict["Marketingtype"] != nil {
                            self.marketingtype = dict["Marketingtype"] as! String
                        }
                        if dict.keys.contains("Objective") && dict["Objective"] != nil {
                            self.objective = dict["Objective"] as! String
                        }
                        if dict.keys.contains("Price") && dict["Price"] != nil {
                            self.price = dict["Price"] as! String
                        }
                        if dict.keys.contains("Seat") && dict["Seat"] != nil {
                            self.seat = dict["Seat"] as! String
                        }
                        if dict.keys.contains("Title") && dict["Title"] != nil {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Trackers") && dict["Trackers"] != nil {
                            var model = ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads.Trackers()
                            model.fromMap(dict["Trackers"] as! [String: Any])
                            self.trackers = model
                        }
                    }
                }
                public var ads: [ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads]?

                public var impid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ads != nil {
                        var tmp : [Any] = []
                        for k in self.ads! {
                            tmp.append(k.toMap())
                        }
                        map["Ads"] = tmp
                    }
                    if self.impid != nil {
                        map["Impid"] = self.impid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ads") && dict["Ads"] != nil {
                        var tmp : [ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads] = []
                        for v in dict["Ads"] as! [Any] {
                            var model = ListSpecificAdResponseBody.Result.Seatbid.Bid.Ads()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ads = tmp
                    }
                    if dict.keys.contains("Impid") && dict["Impid"] != nil {
                        self.impid = dict["Impid"] as! String
                    }
                }
            }
            public var bid: [ListSpecificAdResponseBody.Result.Seatbid.Bid]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bid != nil {
                    var tmp : [Any] = []
                    for k in self.bid! {
                        tmp.append(k.toMap())
                    }
                    map["Bid"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bid") && dict["Bid"] != nil {
                    var tmp : [ListSpecificAdResponseBody.Result.Seatbid.Bid] = []
                    for v in dict["Bid"] as! [Any] {
                        var model = ListSpecificAdResponseBody.Result.Seatbid.Bid()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.bid = tmp
                }
            }
        }
        public var bidid: String?

        public var id: String?

        public var seatbid: [ListSpecificAdResponseBody.Result.Seatbid]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bidid != nil {
                map["Bidid"] = self.bidid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.seatbid != nil {
                var tmp : [Any] = []
                for k in self.seatbid! {
                    tmp.append(k.toMap())
                }
                map["Seatbid"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bidid") && dict["Bidid"] != nil {
                self.bidid = dict["Bidid"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Seatbid") && dict["Seatbid"] != nil {
                var tmp : [ListSpecificAdResponseBody.Result.Seatbid] = []
                for v in dict["Seatbid"] as! [Any] {
                    var model = ListSpecificAdResponseBody.Result.Seatbid()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.seatbid = tmp
            }
        }
    }
    public var errorcode: String?

    public var errormsg: String?

    public var ext: [String: String]?

    public var header: ListSpecificAdResponseBody.Header?

    public var requestId: String?

    public var result: ListSpecificAdResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorcode != nil {
            map["Errorcode"] = self.errorcode!
        }
        if self.errormsg != nil {
            map["Errormsg"] = self.errormsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Errorcode") && dict["Errorcode"] != nil {
            self.errorcode = dict["Errorcode"] as! String
        }
        if dict.keys.contains("Errormsg") && dict["Errormsg"] != nil {
            self.errormsg = dict["Errormsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: String]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = ListSpecificAdResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListSpecificAdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListSpecificAdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSpecificAdResponseBody?

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
            var model = ListSpecificAdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAuditResultRequest : Tea.TeaModel {
    public var dspId: String?

    public var ids: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dspId != nil {
            map["DspId"] = self.dspId!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DspId") && dict["DspId"] != nil {
            self.dspId = dict["DspId"] as! String
        }
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! [String]
        }
    }
}

public class QueryAuditResultResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var crid: String?

        public var reason: String?

        public var state: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.crid != nil {
                map["Crid"] = self.crid!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Crid") && dict["Crid"] != nil {
                self.crid = dict["Crid"] as! String
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! Int32
            }
        }
    }
    public var message: String?

    public var records: [QueryAuditResultResponseBody.Records]?

    public var requestId: String?

    public var status: Int32?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Records") && dict["Records"] != nil {
            var tmp : [QueryAuditResultResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = QueryAuditResultResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class QueryAuditResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAuditResultResponseBody?

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
            var model = QueryAuditResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBenefitGrantResultRequest : Tea.TeaModel {
    public var cloducodeFlowNo: String?

    public var outerCustomerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloducodeFlowNo != nil {
            map["CloducodeFlowNo"] = self.cloducodeFlowNo!
        }
        if self.outerCustomerId != nil {
            map["OuterCustomerId"] = self.outerCustomerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloducodeFlowNo") && dict["CloducodeFlowNo"] != nil {
            self.cloducodeFlowNo = dict["CloducodeFlowNo"] as! String
        }
        if dict.keys.contains("OuterCustomerId") && dict["OuterCustomerId"] != nil {
            self.outerCustomerId = dict["OuterCustomerId"] as! String
        }
    }
}

public class QueryBenefitGrantResultResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var amount: Int64?

        public var cloudcodeFlowNo: String?

        public var outerCustomerId: String?

        public var outerFlowNo: String?

        public var remark: String?

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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.cloudcodeFlowNo != nil {
                map["CloudcodeFlowNo"] = self.cloudcodeFlowNo!
            }
            if self.outerCustomerId != nil {
                map["OuterCustomerId"] = self.outerCustomerId!
            }
            if self.outerFlowNo != nil {
                map["OuterFlowNo"] = self.outerFlowNo!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Int64
            }
            if dict.keys.contains("CloudcodeFlowNo") && dict["CloudcodeFlowNo"] != nil {
                self.cloudcodeFlowNo = dict["CloudcodeFlowNo"] as! String
            }
            if dict.keys.contains("OuterCustomerId") && dict["OuterCustomerId"] != nil {
                self.outerCustomerId = dict["OuterCustomerId"] as! String
            }
            if dict.keys.contains("OuterFlowNo") && dict["OuterFlowNo"] != nil {
                self.outerFlowNo = dict["OuterFlowNo"] as! String
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var code: String?

    public var debug: Bool?

    public var message: String?

    public var model: QueryBenefitGrantResultResponseBody.Model?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.debug != nil {
            map["Debug"] = self.debug!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Debug") && dict["Debug"] != nil {
            self.debug = dict["Debug"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = QueryBenefitGrantResultResponseBody.Model()
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

public class QueryBenefitGrantResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBenefitGrantResultResponseBody?

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
            var model = QueryBenefitGrantResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryFinanceUserInfoRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") && dict["ActivityId"] != nil {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class QueryFinanceUserInfoResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public var requestId: String?

        public var totalIncomeAmount: Int64?

        public var userPageType: String?

        public var yesterdayIncomeAmount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.totalIncomeAmount != nil {
                map["TotalIncomeAmount"] = self.totalIncomeAmount!
            }
            if self.userPageType != nil {
                map["UserPageType"] = self.userPageType!
            }
            if self.yesterdayIncomeAmount != nil {
                map["YesterdayIncomeAmount"] = self.yesterdayIncomeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("TotalIncomeAmount") && dict["TotalIncomeAmount"] != nil {
                self.totalIncomeAmount = dict["TotalIncomeAmount"] as! Int64
            }
            if dict.keys.contains("UserPageType") && dict["UserPageType"] != nil {
                self.userPageType = dict["UserPageType"] as! String
            }
            if dict.keys.contains("YesterdayIncomeAmount") && dict["YesterdayIncomeAmount"] != nil {
                self.yesterdayIncomeAmount = dict["YesterdayIncomeAmount"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: String]?

    public var header: QueryFinanceUserInfoResponseBody.Header?

    public var result: QueryFinanceUserInfoResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: String]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = QueryFinanceUserInfoResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryFinanceUserInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryFinanceUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFinanceUserInfoResponseBody?

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
            var model = QueryFinanceUserInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrderRequest : Tea.TeaModel {
    public var channelId: String?

    public var channelTradeId: String?

    public var tradeId: String?

    public override init() {
        super.init()
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
        if self.channelTradeId != nil {
            map["ChannelTradeId"] = self.channelTradeId!
        }
        if self.tradeId != nil {
            map["TradeId"] = self.tradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("ChannelTradeId") && dict["ChannelTradeId"] != nil {
            self.channelTradeId = dict["ChannelTradeId"] as! String
        }
        if dict.keys.contains("TradeId") && dict["TradeId"] != nil {
            self.tradeId = dict["TradeId"] as! String
        }
    }
}

public class QueryOrderResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public var alipayTradeId: String?

        public var channelTradeId: String?

        public var itemId: Int64?

        public var modifiedTime: Int64?

        public var orderStatus: Int32?

        public var price: Int64?

        public var requestId: String?

        public var success: Bool?

        public var taobaoTradeId: String?

        public var tradeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alipayTradeId != nil {
                map["AlipayTradeId"] = self.alipayTradeId!
            }
            if self.channelTradeId != nil {
                map["ChannelTradeId"] = self.channelTradeId!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.taobaoTradeId != nil {
                map["TaobaoTradeId"] = self.taobaoTradeId!
            }
            if self.tradeId != nil {
                map["TradeId"] = self.tradeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlipayTradeId") && dict["AlipayTradeId"] != nil {
                self.alipayTradeId = dict["AlipayTradeId"] as! String
            }
            if dict.keys.contains("ChannelTradeId") && dict["ChannelTradeId"] != nil {
                self.channelTradeId = dict["ChannelTradeId"] as! String
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! Int64
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("OrderStatus") && dict["OrderStatus"] != nil {
                self.orderStatus = dict["OrderStatus"] as! Int32
            }
            if dict.keys.contains("Price") && dict["Price"] != nil {
                self.price = dict["Price"] as! Int64
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
            if dict.keys.contains("TaobaoTradeId") && dict["TaobaoTradeId"] != nil {
                self.taobaoTradeId = dict["TaobaoTradeId"] as! String
            }
            if dict.keys.contains("TradeId") && dict["TradeId"] != nil {
                self.tradeId = dict["TradeId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: Any]?

    public var header: QueryOrderResponseBody.Header?

    public var result: QueryOrderResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = QueryOrderResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryOrderResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrderResponseBody?

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
            var model = QueryOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportImpressionRequest : Tea.TeaModel {
    public var impressionlink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.impressionlink != nil {
            map["Impressionlink"] = self.impressionlink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Impressionlink") && dict["Impressionlink"] != nil {
            self.impressionlink = dict["Impressionlink"] as! String
        }
    }
}

public class ReportImpressionResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public var bidid: String?

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
            if self.bidid != nil {
                map["Bidid"] = self.bidid!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bidid") && dict["Bidid"] != nil {
                self.bidid = dict["Bidid"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var ext: [String: String]?

    public var header: ReportImpressionResponseBody.Header?

    public var requestId: String?

    public var result: ReportImpressionResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: String]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = ReportImpressionResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ReportImpressionResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReportImpressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportImpressionResponseBody?

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
            var model = ReportImpressionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportTranslateRequest : Tea.TeaModel {
    public var impressionlink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.impressionlink != nil {
            map["Impressionlink"] = self.impressionlink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Impressionlink") && dict["Impressionlink"] != nil {
            self.impressionlink = dict["Impressionlink"] as! String
        }
    }
}

public class ReportTranslateResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var innerErrorCode: String?

        public var innerErrorMsg: String?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.innerErrorCode != nil {
                map["InnerErrorCode"] = self.innerErrorCode!
            }
            if self.innerErrorMsg != nil {
                map["InnerErrorMsg"] = self.innerErrorMsg!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("InnerErrorCode") && dict["InnerErrorCode"] != nil {
                self.innerErrorCode = dict["InnerErrorCode"] as! String
            }
            if dict.keys.contains("InnerErrorMsg") && dict["InnerErrorMsg"] != nil {
                self.innerErrorMsg = dict["InnerErrorMsg"] as! String
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public var bidid: String?

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
            if self.bidid != nil {
                map["Bidid"] = self.bidid!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bidid") && dict["Bidid"] != nil {
                self.bidid = dict["Bidid"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var header: ReportTranslateResponseBody.Header?

    public var requestId: String?

    public var result: ReportTranslateResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = ReportTranslateResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ReportTranslateResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReportTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportTranslateResponseBody?

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
            var model = ReportTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendSmsRequest : Tea.TeaModel {
    public var nowStamp: Int64?

    public var phoneNumbers: String?

    public var signKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nowStamp != nil {
            map["NowStamp"] = self.nowStamp!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.signKey != nil {
            map["SignKey"] = self.signKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NowStamp") && dict["NowStamp"] != nil {
            self.nowStamp = dict["NowStamp"] as! Int64
        }
        if dict.keys.contains("PhoneNumbers") && dict["PhoneNumbers"] != nil {
            self.phoneNumbers = dict["PhoneNumbers"] as! String
        }
        if dict.keys.contains("SignKey") && dict["SignKey"] != nil {
            self.signKey = dict["SignKey"] as! String
        }
    }
}

public class SendSmsResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendSmsResponseBody?

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
            var model = SendSmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncInfoRequest : Tea.TeaModel {
    public var accountNo: String?

    public var bizId: String?

    public var chainValue: String?

    public var componentIdList: String?

    public var createUser: String?

    public var id: Int64?

    public var mainId: Int64?

    public var name: String?

    public var nextChainValue: String?

    public var ossFileUrl: String?

    public var pageId: String?

    public var status: Int32?

    public var updateUser: String?

    public var url: String?

    public var urlType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.chainValue != nil {
            map["ChainValue"] = self.chainValue!
        }
        if self.componentIdList != nil {
            map["ComponentIdList"] = self.componentIdList!
        }
        if self.createUser != nil {
            map["CreateUser"] = self.createUser!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mainId != nil {
            map["MainId"] = self.mainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextChainValue != nil {
            map["NextChainValue"] = self.nextChainValue!
        }
        if self.ossFileUrl != nil {
            map["OssFileUrl"] = self.ossFileUrl!
        }
        if self.pageId != nil {
            map["PageId"] = self.pageId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateUser != nil {
            map["UpdateUser"] = self.updateUser!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.urlType != nil {
            map["UrlType"] = self.urlType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("ChainValue") && dict["ChainValue"] != nil {
            self.chainValue = dict["ChainValue"] as! String
        }
        if dict.keys.contains("ComponentIdList") && dict["ComponentIdList"] != nil {
            self.componentIdList = dict["ComponentIdList"] as! String
        }
        if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
            self.createUser = dict["CreateUser"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("MainId") && dict["MainId"] != nil {
            self.mainId = dict["MainId"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextChainValue") && dict["NextChainValue"] != nil {
            self.nextChainValue = dict["NextChainValue"] as! String
        }
        if dict.keys.contains("OssFileUrl") && dict["OssFileUrl"] != nil {
            self.ossFileUrl = dict["OssFileUrl"] as! String
        }
        if dict.keys.contains("PageId") && dict["PageId"] != nil {
            self.pageId = dict["PageId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
            self.updateUser = dict["UpdateUser"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UrlType") && dict["UrlType"] != nil {
            self.urlType = dict["UrlType"] as! Int32
        }
    }
}

public class SyncInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: SyncInfoResponseBody.Data?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SyncInfoResponseBody.Data()
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

public class SyncInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncInfoResponseBody?

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
            var model = SyncInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAdxCreativeContentRequest : Tea.TeaModel {
    public class Ad : Tea.TeaModel {
        public class Nativead : Tea.TeaModel {
            public var attrname: String?

            public var attrvalue: String?

            public var h: Int32?

            public var mime: String?

            public var w: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attrname != nil {
                    map["Attrname"] = self.attrname!
                }
                if self.attrvalue != nil {
                    map["Attrvalue"] = self.attrvalue!
                }
                if self.h != nil {
                    map["H"] = self.h!
                }
                if self.mime != nil {
                    map["Mime"] = self.mime!
                }
                if self.w != nil {
                    map["W"] = self.w!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attrname") && dict["Attrname"] != nil {
                    self.attrname = dict["Attrname"] as! String
                }
                if dict.keys.contains("Attrvalue") && dict["Attrvalue"] != nil {
                    self.attrvalue = dict["Attrvalue"] as! String
                }
                if dict.keys.contains("H") && dict["H"] != nil {
                    self.h = dict["H"] as! Int32
                }
                if dict.keys.contains("Mime") && dict["Mime"] != nil {
                    self.mime = dict["Mime"] as! String
                }
                if dict.keys.contains("W") && dict["W"] != nil {
                    self.w = dict["W"] as! Int32
                }
            }
        }
        public var bundle: [String]?

        public var clicks: [String]?

        public var crid: String?

        public var enddate: String?

        public var imps: [String]?

        public var interacttype: Int32?

        public var mediaIdList: [String]?

        public var nativead: [UpdateAdxCreativeContentRequest.Ad.Nativead]?

        public var op: Int32?

        public var ostype: String?

        public var prereview: Bool?

        public var seat: String?

        public var startdate: String?

        public var template: Int32?

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
            if self.bundle != nil {
                map["Bundle"] = self.bundle!
            }
            if self.clicks != nil {
                map["Clicks"] = self.clicks!
            }
            if self.crid != nil {
                map["Crid"] = self.crid!
            }
            if self.enddate != nil {
                map["Enddate"] = self.enddate!
            }
            if self.imps != nil {
                map["Imps"] = self.imps!
            }
            if self.interacttype != nil {
                map["Interacttype"] = self.interacttype!
            }
            if self.mediaIdList != nil {
                map["MediaIdList"] = self.mediaIdList!
            }
            if self.nativead != nil {
                var tmp : [Any] = []
                for k in self.nativead! {
                    tmp.append(k.toMap())
                }
                map["Nativead"] = tmp
            }
            if self.op != nil {
                map["Op"] = self.op!
            }
            if self.ostype != nil {
                map["Ostype"] = self.ostype!
            }
            if self.prereview != nil {
                map["Prereview"] = self.prereview!
            }
            if self.seat != nil {
                map["Seat"] = self.seat!
            }
            if self.startdate != nil {
                map["Startdate"] = self.startdate!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bundle") && dict["Bundle"] != nil {
                self.bundle = dict["Bundle"] as! [String]
            }
            if dict.keys.contains("Clicks") && dict["Clicks"] != nil {
                self.clicks = dict["Clicks"] as! [String]
            }
            if dict.keys.contains("Crid") && dict["Crid"] != nil {
                self.crid = dict["Crid"] as! String
            }
            if dict.keys.contains("Enddate") && dict["Enddate"] != nil {
                self.enddate = dict["Enddate"] as! String
            }
            if dict.keys.contains("Imps") && dict["Imps"] != nil {
                self.imps = dict["Imps"] as! [String]
            }
            if dict.keys.contains("Interacttype") && dict["Interacttype"] != nil {
                self.interacttype = dict["Interacttype"] as! Int32
            }
            if dict.keys.contains("MediaIdList") && dict["MediaIdList"] != nil {
                self.mediaIdList = dict["MediaIdList"] as! [String]
            }
            if dict.keys.contains("Nativead") && dict["Nativead"] != nil {
                var tmp : [UpdateAdxCreativeContentRequest.Ad.Nativead] = []
                for v in dict["Nativead"] as! [Any] {
                    var model = UpdateAdxCreativeContentRequest.Ad.Nativead()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nativead = tmp
            }
            if dict.keys.contains("Op") && dict["Op"] != nil {
                self.op = dict["Op"] as! Int32
            }
            if dict.keys.contains("Ostype") && dict["Ostype"] != nil {
                self.ostype = dict["Ostype"] as! String
            }
            if dict.keys.contains("Prereview") && dict["Prereview"] != nil {
                self.prereview = dict["Prereview"] as! Bool
            }
            if dict.keys.contains("Seat") && dict["Seat"] != nil {
                self.seat = dict["Seat"] as! String
            }
            if dict.keys.contains("Startdate") && dict["Startdate"] != nil {
                self.startdate = dict["Startdate"] as! String
            }
            if dict.keys.contains("Template") && dict["Template"] != nil {
                self.template = dict["Template"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var ad: [UpdateAdxCreativeContentRequest.Ad]?

    public var dspId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ad != nil {
            var tmp : [Any] = []
            for k in self.ad! {
                tmp.append(k.toMap())
            }
            map["Ad"] = tmp
        }
        if self.dspId != nil {
            map["DspId"] = self.dspId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ad") && dict["Ad"] != nil {
            var tmp : [UpdateAdxCreativeContentRequest.Ad] = []
            for v in dict["Ad"] as! [Any] {
                var model = UpdateAdxCreativeContentRequest.Ad()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ad = tmp
        }
        if dict.keys.contains("DspId") && dict["DspId"] != nil {
            self.dspId = dict["DspId"] as! String
        }
    }
}

public class UpdateAdxCreativeContentResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class UpdateAdxCreativeContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAdxCreativeContentResponseBody?

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
            var model = UpdateAdxCreativeContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyAdvertisingRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var ext: [String: Any]?

        public var mediaid: String?

        public var sn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.mediaid != nil {
                map["Mediaid"] = self.mediaid!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! [String: Any]
            }
            if dict.keys.contains("Mediaid") && dict["Mediaid"] != nil {
                self.mediaid = dict["Mediaid"] as! String
            }
            if dict.keys.contains("Sn") && dict["Sn"] != nil {
                self.sn = dict["Sn"] as! String
            }
        }
    }
    public class Device : Tea.TeaModel {
        public class Geo : Tea.TeaModel {
            public var city: String?

            public var district: String?

            public var lat: Double?

            public var lon: Double?

            public var province: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.district != nil {
                    map["District"] = self.district!
                }
                if self.lat != nil {
                    map["Lat"] = self.lat!
                }
                if self.lon != nil {
                    map["Lon"] = self.lon!
                }
                if self.province != nil {
                    map["Province"] = self.province!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("City") && dict["City"] != nil {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("District") && dict["District"] != nil {
                    self.district = dict["District"] as! String
                }
                if dict.keys.contains("Lat") && dict["Lat"] != nil {
                    self.lat = dict["Lat"] as! Double
                }
                if dict.keys.contains("Lon") && dict["Lon"] != nil {
                    self.lon = dict["Lon"] as! Double
                }
                if dict.keys.contains("Province") && dict["Province"] != nil {
                    self.province = dict["Province"] as! String
                }
            }
        }
        public var androidid: String?

        public var androidmd5: String?

        public var caid: String?

        public var carrier: String?

        public var connectiontype: Int32?

        public var devicetype: Int32?

        public var geo: VerifyAdvertisingRequest.Device.Geo?

        public var idfa: String?

        public var imei: String?

        public var imeimd5: String?

        public var ip: String?

        public var language: String?

        public var mac: String?

        public var macmd5: String?

        public var make: String?

        public var model: String?

        public var oaid: String?

        public var os: String?

        public var osv: String?

        public var ua: String?

        public var utdid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.geo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidid != nil {
                map["Androidid"] = self.androidid!
            }
            if self.androidmd5 != nil {
                map["Androidmd5"] = self.androidmd5!
            }
            if self.caid != nil {
                map["Caid"] = self.caid!
            }
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.connectiontype != nil {
                map["Connectiontype"] = self.connectiontype!
            }
            if self.devicetype != nil {
                map["Devicetype"] = self.devicetype!
            }
            if self.geo != nil {
                map["Geo"] = self.geo?.toMap()
            }
            if self.idfa != nil {
                map["Idfa"] = self.idfa!
            }
            if self.imei != nil {
                map["Imei"] = self.imei!
            }
            if self.imeimd5 != nil {
                map["Imeimd5"] = self.imeimd5!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.macmd5 != nil {
                map["Macmd5"] = self.macmd5!
            }
            if self.make != nil {
                map["Make"] = self.make!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.oaid != nil {
                map["Oaid"] = self.oaid!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osv != nil {
                map["Osv"] = self.osv!
            }
            if self.ua != nil {
                map["Ua"] = self.ua!
            }
            if self.utdid != nil {
                map["Utdid"] = self.utdid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Androidid") && dict["Androidid"] != nil {
                self.androidid = dict["Androidid"] as! String
            }
            if dict.keys.contains("Androidmd5") && dict["Androidmd5"] != nil {
                self.androidmd5 = dict["Androidmd5"] as! String
            }
            if dict.keys.contains("Caid") && dict["Caid"] != nil {
                self.caid = dict["Caid"] as! String
            }
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Connectiontype") && dict["Connectiontype"] != nil {
                self.connectiontype = dict["Connectiontype"] as! Int32
            }
            if dict.keys.contains("Devicetype") && dict["Devicetype"] != nil {
                self.devicetype = dict["Devicetype"] as! Int32
            }
            if dict.keys.contains("Geo") && dict["Geo"] != nil {
                var model = VerifyAdvertisingRequest.Device.Geo()
                model.fromMap(dict["Geo"] as! [String: Any])
                self.geo = model
            }
            if dict.keys.contains("Idfa") && dict["Idfa"] != nil {
                self.idfa = dict["Idfa"] as! String
            }
            if dict.keys.contains("Imei") && dict["Imei"] != nil {
                self.imei = dict["Imei"] as! String
            }
            if dict.keys.contains("Imeimd5") && dict["Imeimd5"] != nil {
                self.imeimd5 = dict["Imeimd5"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Macmd5") && dict["Macmd5"] != nil {
                self.macmd5 = dict["Macmd5"] as! String
            }
            if dict.keys.contains("Make") && dict["Make"] != nil {
                self.make = dict["Make"] as! String
            }
            if dict.keys.contains("Model") && dict["Model"] != nil {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("Oaid") && dict["Oaid"] != nil {
                self.oaid = dict["Oaid"] as! String
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("Osv") && dict["Osv"] != nil {
                self.osv = dict["Osv"] as! String
            }
            if dict.keys.contains("Ua") && dict["Ua"] != nil {
                self.ua = dict["Ua"] as! String
            }
            if dict.keys.contains("Utdid") && dict["Utdid"] != nil {
                self.utdid = dict["Utdid"] as! String
            }
        }
    }
    public class Imp : Tea.TeaModel {
        public var id: String?

        public var tagid: String?

        public override init() {
            super.init()
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
            if self.tagid != nil {
                map["Tagid"] = self.tagid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Tagid") && dict["Tagid"] != nil {
                self.tagid = dict["Tagid"] as! String
            }
        }
    }
    public class User : Tea.TeaModel {
        public var id: String?

        public var usertype: String?

        public override init() {
            super.init()
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
            if self.usertype != nil {
                map["Usertype"] = self.usertype!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Usertype") && dict["Usertype"] != nil {
                self.usertype = dict["Usertype"] as! String
            }
        }
    }
    public class Verifyad : Tea.TeaModel {
        public var id: String?

        public var seat: String?

        public override init() {
            super.init()
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
            if self.seat != nil {
                map["Seat"] = self.seat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Seat") && dict["Seat"] != nil {
                self.seat = dict["Seat"] as! String
            }
        }
    }
    public var app: VerifyAdvertisingRequest.App?

    public var dealtype: Int32?

    public var device: VerifyAdvertisingRequest.Device?

    public var ext: [String: Any]?

    public var id: String?

    public var imp: [VerifyAdvertisingRequest.Imp]?

    public var test: Int32?

    public var user: VerifyAdvertisingRequest.User?

    public var verifyad: [VerifyAdvertisingRequest.Verifyad]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.device?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.dealtype != nil {
            map["Dealtype"] = self.dealtype!
        }
        if self.device != nil {
            map["Device"] = self.device?.toMap()
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.imp != nil {
            var tmp : [Any] = []
            for k in self.imp! {
                tmp.append(k.toMap())
            }
            map["Imp"] = tmp
        }
        if self.test != nil {
            map["Test"] = self.test!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        if self.verifyad != nil {
            var tmp : [Any] = []
            for k in self.verifyad! {
                tmp.append(k.toMap())
            }
            map["Verifyad"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = VerifyAdvertisingRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("Dealtype") && dict["Dealtype"] != nil {
            self.dealtype = dict["Dealtype"] as! Int32
        }
        if dict.keys.contains("Device") && dict["Device"] != nil {
            var model = VerifyAdvertisingRequest.Device()
            model.fromMap(dict["Device"] as! [String: Any])
            self.device = model
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: Any]
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Imp") && dict["Imp"] != nil {
            var tmp : [VerifyAdvertisingRequest.Imp] = []
            for v in dict["Imp"] as! [Any] {
                var model = VerifyAdvertisingRequest.Imp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imp = tmp
        }
        if dict.keys.contains("Test") && dict["Test"] != nil {
            self.test = dict["Test"] as! Int32
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            var model = VerifyAdvertisingRequest.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
        if dict.keys.contains("Verifyad") && dict["Verifyad"] != nil {
            var tmp : [VerifyAdvertisingRequest.Verifyad] = []
            for v in dict["Verifyad"] as! [Any] {
                var model = VerifyAdvertisingRequest.Verifyad()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.verifyad = tmp
        }
    }
}

public class VerifyAdvertisingShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var dealtype: Int32?

    public var deviceShrink: String?

    public var extShrink: String?

    public var id: String?

    public var impShrink: String?

    public var test: Int32?

    public var userShrink: String?

    public var verifyadShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.dealtype != nil {
            map["Dealtype"] = self.dealtype!
        }
        if self.deviceShrink != nil {
            map["Device"] = self.deviceShrink!
        }
        if self.extShrink != nil {
            map["Ext"] = self.extShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.impShrink != nil {
            map["Imp"] = self.impShrink!
        }
        if self.test != nil {
            map["Test"] = self.test!
        }
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        if self.verifyadShrink != nil {
            map["Verifyad"] = self.verifyadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("Dealtype") && dict["Dealtype"] != nil {
            self.dealtype = dict["Dealtype"] as! Int32
        }
        if dict.keys.contains("Device") && dict["Device"] != nil {
            self.deviceShrink = dict["Device"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.extShrink = dict["Ext"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Imp") && dict["Imp"] != nil {
            self.impShrink = dict["Imp"] as! String
        }
        if dict.keys.contains("Test") && dict["Test"] != nil {
            self.test = dict["Test"] as! Int32
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            self.userShrink = dict["User"] as! String
        }
        if dict.keys.contains("Verifyad") && dict["Verifyad"] != nil {
            self.verifyadShrink = dict["Verifyad"] as! String
        }
    }
}

public class VerifyAdvertisingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var costTime: Int64?

        public var rpcId: String?

        public var traceId: String?

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
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                self.costTime = dict["CostTime"] as! Int64
            }
            if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Result : Tea.TeaModel {
        public class Seatbid : Tea.TeaModel {
            public class Bid : Tea.TeaModel {
                public class Ads : Tea.TeaModel {
                    public class Icon : Tea.TeaModel {
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Images : Tea.TeaModel {
                        public var desc: String?

                        public var format: String?

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
                            if self.desc != nil {
                                map["Desc"] = self.desc!
                            }
                            if self.format != nil {
                                map["Format"] = self.format!
                            }
                            if self.url != nil {
                                map["Url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                                self.desc = dict["Desc"] as! String
                            }
                            if dict.keys.contains("Format") && dict["Format"] != nil {
                                self.format = dict["Format"] as! String
                            }
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Trackers : Tea.TeaModel {
                        public var imps: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.imps != nil {
                                map["Imps"] = self.imps!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Imps") && dict["Imps"] != nil {
                                self.imps = dict["Imps"] as! [String]
                            }
                        }
                    }
                    public var crid: String?

                    public var crurl: String?

                    public var icon: VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Icon?

                    public var id: String?

                    public var images: [VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Images]?

                    public var interacttype: Int32?

                    public var labeltype: String?

                    public var landingurls: [String]?

                    public var marketingtype: String?

                    public var objective: String?

                    public var price: String?

                    public var seat: String?

                    public var style: String?

                    public var title: String?

                    public var trackers: VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Trackers?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.icon?.validate()
                        try self.trackers?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.crid != nil {
                            map["Crid"] = self.crid!
                        }
                        if self.crurl != nil {
                            map["Crurl"] = self.crurl!
                        }
                        if self.icon != nil {
                            map["Icon"] = self.icon?.toMap()
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.images != nil {
                            var tmp : [Any] = []
                            for k in self.images! {
                                tmp.append(k.toMap())
                            }
                            map["Images"] = tmp
                        }
                        if self.interacttype != nil {
                            map["Interacttype"] = self.interacttype!
                        }
                        if self.labeltype != nil {
                            map["Labeltype"] = self.labeltype!
                        }
                        if self.landingurls != nil {
                            map["Landingurls"] = self.landingurls!
                        }
                        if self.marketingtype != nil {
                            map["Marketingtype"] = self.marketingtype!
                        }
                        if self.objective != nil {
                            map["Objective"] = self.objective!
                        }
                        if self.price != nil {
                            map["Price"] = self.price!
                        }
                        if self.seat != nil {
                            map["Seat"] = self.seat!
                        }
                        if self.style != nil {
                            map["Style"] = self.style!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.trackers != nil {
                            map["Trackers"] = self.trackers?.toMap()
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Crid") && dict["Crid"] != nil {
                            self.crid = dict["Crid"] as! String
                        }
                        if dict.keys.contains("Crurl") && dict["Crurl"] != nil {
                            self.crurl = dict["Crurl"] as! String
                        }
                        if dict.keys.contains("Icon") && dict["Icon"] != nil {
                            var model = VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Icon()
                            model.fromMap(dict["Icon"] as! [String: Any])
                            self.icon = model
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Images") && dict["Images"] != nil {
                            var tmp : [VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Images] = []
                            for v in dict["Images"] as! [Any] {
                                var model = VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Images()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.images = tmp
                        }
                        if dict.keys.contains("Interacttype") && dict["Interacttype"] != nil {
                            self.interacttype = dict["Interacttype"] as! Int32
                        }
                        if dict.keys.contains("Labeltype") && dict["Labeltype"] != nil {
                            self.labeltype = dict["Labeltype"] as! String
                        }
                        if dict.keys.contains("Landingurls") && dict["Landingurls"] != nil {
                            self.landingurls = dict["Landingurls"] as! [String]
                        }
                        if dict.keys.contains("Marketingtype") && dict["Marketingtype"] != nil {
                            self.marketingtype = dict["Marketingtype"] as! String
                        }
                        if dict.keys.contains("Objective") && dict["Objective"] != nil {
                            self.objective = dict["Objective"] as! String
                        }
                        if dict.keys.contains("Price") && dict["Price"] != nil {
                            self.price = dict["Price"] as! String
                        }
                        if dict.keys.contains("Seat") && dict["Seat"] != nil {
                            self.seat = dict["Seat"] as! String
                        }
                        if dict.keys.contains("Style") && dict["Style"] != nil {
                            self.style = dict["Style"] as! String
                        }
                        if dict.keys.contains("Title") && dict["Title"] != nil {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Trackers") && dict["Trackers"] != nil {
                            var model = VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads.Trackers()
                            model.fromMap(dict["Trackers"] as! [String: Any])
                            self.trackers = model
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var ads: [VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads]?

                public var impid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ads != nil {
                        var tmp : [Any] = []
                        for k in self.ads! {
                            tmp.append(k.toMap())
                        }
                        map["Ads"] = tmp
                    }
                    if self.impid != nil {
                        map["Impid"] = self.impid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ads") && dict["Ads"] != nil {
                        var tmp : [VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads] = []
                        for v in dict["Ads"] as! [Any] {
                            var model = VerifyAdvertisingResponseBody.Result.Seatbid.Bid.Ads()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ads = tmp
                    }
                    if dict.keys.contains("Impid") && dict["Impid"] != nil {
                        self.impid = dict["Impid"] as! String
                    }
                }
            }
            public var bid: [VerifyAdvertisingResponseBody.Result.Seatbid.Bid]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bid != nil {
                    var tmp : [Any] = []
                    for k in self.bid! {
                        tmp.append(k.toMap())
                    }
                    map["Bid"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bid") && dict["Bid"] != nil {
                    var tmp : [VerifyAdvertisingResponseBody.Result.Seatbid.Bid] = []
                    for v in dict["Bid"] as! [Any] {
                        var model = VerifyAdvertisingResponseBody.Result.Seatbid.Bid()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.bid = tmp
                }
            }
        }
        public var bidid: String?

        public var id: String?

        public var seatbid: [VerifyAdvertisingResponseBody.Result.Seatbid]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bidid != nil {
                map["Bidid"] = self.bidid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.seatbid != nil {
                var tmp : [Any] = []
                for k in self.seatbid! {
                    tmp.append(k.toMap())
                }
                map["Seatbid"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bidid") && dict["Bidid"] != nil {
                self.bidid = dict["Bidid"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Seatbid") && dict["Seatbid"] != nil {
                var tmp : [VerifyAdvertisingResponseBody.Result.Seatbid] = []
                for v in dict["Seatbid"] as! [Any] {
                    var model = VerifyAdvertisingResponseBody.Result.Seatbid()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.seatbid = tmp
            }
        }
    }
    public var errorcode: String?

    public var errormsg: String?

    public var ext: [String: String]?

    public var header: VerifyAdvertisingResponseBody.Header?

    public var requestId: String?

    public var result: VerifyAdvertisingResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorcode != nil {
            map["Errorcode"] = self.errorcode!
        }
        if self.errormsg != nil {
            map["Errormsg"] = self.errormsg!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Errorcode") && dict["Errorcode"] != nil {
            self.errorcode = dict["Errorcode"] as! String
        }
        if dict.keys.contains("Errormsg") && dict["Errormsg"] != nil {
            self.errormsg = dict["Errormsg"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! [String: String]
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            var model = VerifyAdvertisingResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = VerifyAdvertisingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class VerifyAdvertisingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyAdvertisingResponseBody?

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
            var model = VerifyAdvertisingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifySmsCodeRequest : Tea.TeaModel {
    public var code: String?

    public var nowStamp: Int64?

    public var phoneNumbers: String?

    public var signKey: String?

    public override init() {
        super.init()
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
        if self.nowStamp != nil {
            map["NowStamp"] = self.nowStamp!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.signKey != nil {
            map["SignKey"] = self.signKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("NowStamp") && dict["NowStamp"] != nil {
            self.nowStamp = dict["NowStamp"] as! Int64
        }
        if dict.keys.contains("PhoneNumbers") && dict["PhoneNumbers"] != nil {
            self.phoneNumbers = dict["PhoneNumbers"] as! String
        }
        if dict.keys.contains("SignKey") && dict["SignKey"] != nil {
            self.signKey = dict["SignKey"] as! String
        }
    }
}

public class VerifySmsCodeResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
            self.data = dict["Data"] as! Bool
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

public class VerifySmsCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifySmsCodeResponseBody?

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
            var model = VerifySmsCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
