import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BindAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class BindAliasResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAliasResponseBody?

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
            var model = BindAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindPhoneRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class BindPhoneResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindPhoneResponseBody?

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
            var model = BindPhoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindTagRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var clientKey: String?

    public var keyType: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.clientKey != nil {
            map["ClientKey"] = self.clientKey!
        }
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("ClientKey") {
            self.clientKey = dict["ClientKey"] as! String
        }
        if dict.keys.contains("KeyType") {
            self.keyType = dict["KeyType"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class BindTagResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindTagResponseBody?

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
            var model = BindTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelPushRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! Int64
        }
    }
}

public class CancelPushResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPushResponseBody?

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
            var model = CancelPushResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckCertificateRequest : Tea.TeaModel {
    public var appKey: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
    }
}

public class CheckCertificateResponseBody : Tea.TeaModel {
    public class DevelopmentCertInfo : Tea.TeaModel {
        public var exipreTime: Int64?

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
            if self.exipreTime != nil {
                map["ExipreTime"] = self.exipreTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExipreTime") {
                self.exipreTime = dict["ExipreTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class ProductionCertInfo : Tea.TeaModel {
        public var exipreTime: Int64?

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
            if self.exipreTime != nil {
                map["ExipreTime"] = self.exipreTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExipreTime") {
                self.exipreTime = dict["ExipreTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var android: Bool?

    public var developmentCertInfo: CheckCertificateResponseBody.DevelopmentCertInfo?

    public var IOS: Bool?

    public var productionCertInfo: CheckCertificateResponseBody.ProductionCertInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.developmentCertInfo?.validate()
        try self.productionCertInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.android != nil {
            map["Android"] = self.android!
        }
        if self.developmentCertInfo != nil {
            map["DevelopmentCertInfo"] = self.developmentCertInfo?.toMap()
        }
        if self.IOS != nil {
            map["IOS"] = self.IOS!
        }
        if self.productionCertInfo != nil {
            map["ProductionCertInfo"] = self.productionCertInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Android") {
            self.android = dict["Android"] as! Bool
        }
        if dict.keys.contains("DevelopmentCertInfo") {
            var model = CheckCertificateResponseBody.DevelopmentCertInfo()
            model.fromMap(dict["DevelopmentCertInfo"] as! [String: Any])
            self.developmentCertInfo = model
        }
        if dict.keys.contains("IOS") {
            self.IOS = dict["IOS"] as! Bool
        }
        if dict.keys.contains("ProductionCertInfo") {
            var model = CheckCertificateResponseBody.ProductionCertInfo()
            model.fromMap(dict["ProductionCertInfo"] as! [String: Any])
            self.productionCertInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCertificateResponseBody?

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
            var model = CheckCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDeviceRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class CheckDeviceResponseBody : Tea.TeaModel {
    public var available: Bool?

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
        if self.available != nil {
            map["Available"] = self.available!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Available") {
            self.available = dict["Available"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDeviceResponseBody?

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
            var model = CheckDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDevicesRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
    }
}

public class CheckDevicesResponseBody : Tea.TeaModel {
    public class DeviceCheckInfos : Tea.TeaModel {
        public class DeviceCheckInfo : Tea.TeaModel {
            public var available: Bool?

            public var deviceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Available") {
                    self.available = dict["Available"] as! Bool
                }
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
            }
        }
        public var deviceCheckInfo: [CheckDevicesResponseBody.DeviceCheckInfos.DeviceCheckInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceCheckInfo != nil {
                var tmp : [Any] = []
                for k in self.deviceCheckInfo! {
                    tmp.append(k.toMap())
                }
                map["DeviceCheckInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceCheckInfo") {
                var tmp : [CheckDevicesResponseBody.DeviceCheckInfos.DeviceCheckInfo] = []
                for v in dict["DeviceCheckInfo"] as! [Any] {
                    var model = CheckDevicesResponseBody.DeviceCheckInfos.DeviceCheckInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceCheckInfo = tmp
            }
        }
    }
    public var deviceCheckInfos: CheckDevicesResponseBody.DeviceCheckInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceCheckInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCheckInfos != nil {
            map["DeviceCheckInfos"] = self.deviceCheckInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceCheckInfos") {
            var model = CheckDevicesResponseBody.DeviceCheckInfos()
            model.fromMap(dict["DeviceCheckInfos"] as! [String: Any])
            self.deviceCheckInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDevicesResponseBody?

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
            var model = CheckDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CompleteContinuouslyPushRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
    }
}

public class CompleteContinuouslyPushResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CompleteContinuouslyPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompleteContinuouslyPushResponseBody?

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
            var model = CompleteContinuouslyPushResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContinuouslyPushRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: String?

    public var target: String?

    public var targetValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetValue") {
            self.targetValue = dict["TargetValue"] as! String
        }
    }
}

public class ContinuouslyPushResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ContinuouslyPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinuouslyPushResponseBody?

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
            var model = ContinuouslyPushResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSummaryAppsResponseBody : Tea.TeaModel {
    public class SummaryAppInfos : Tea.TeaModel {
        public class SummaryAppInfo : Tea.TeaModel {
            public var appKey: Int64?

            public var appName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! Int64
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
            }
        }
        public var summaryAppInfo: [ListSummaryAppsResponseBody.SummaryAppInfos.SummaryAppInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.summaryAppInfo != nil {
                var tmp : [Any] = []
                for k in self.summaryAppInfo! {
                    tmp.append(k.toMap())
                }
                map["SummaryAppInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SummaryAppInfo") {
                var tmp : [ListSummaryAppsResponseBody.SummaryAppInfos.SummaryAppInfo] = []
                for v in dict["SummaryAppInfo"] as! [Any] {
                    var model = ListSummaryAppsResponseBody.SummaryAppInfos.SummaryAppInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.summaryAppInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var summaryAppInfos: ListSummaryAppsResponseBody.SummaryAppInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.summaryAppInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.summaryAppInfos != nil {
            map["SummaryAppInfos"] = self.summaryAppInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SummaryAppInfos") {
            var model = ListSummaryAppsResponseBody.SummaryAppInfos()
            model.fromMap(dict["SummaryAppInfos"] as! [String: Any])
            self.summaryAppInfos = model
        }
    }
}

public class ListSummaryAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSummaryAppsResponseBody?

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
            var model = ListSummaryAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagsRequest : Tea.TeaModel {
    public var appKey: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
    }
}

public class ListTagsResponseBody : Tea.TeaModel {
    public class TagInfos : Tea.TeaModel {
        public class TagInfo : Tea.TeaModel {
            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var tagInfo: [ListTagsResponseBody.TagInfos.TagInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagInfo != nil {
                var tmp : [Any] = []
                for k in self.tagInfo! {
                    tmp.append(k.toMap())
                }
                map["TagInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagInfo") {
                var tmp : [ListTagsResponseBody.TagInfos.TagInfo] = []
                for v in dict["TagInfo"] as! [Any] {
                    var model = ListTagsResponseBody.TagInfos.TagInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var tagInfos: ListTagsResponseBody.TagInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagInfos != nil {
            map["TagInfos"] = self.tagInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagInfos") {
            var model = ListTagsResponseBody.TagInfos()
            model.fromMap(dict["TagInfos"] as! [String: Any])
            self.tagInfos = model
        }
    }
}

public class ListTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsResponseBody?

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
            var model = ListTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MassPushRequest : Tea.TeaModel {
    public class PushTask : Tea.TeaModel {
        public var androidActivity: String?

        public var androidBadgeAddNum: Int32?

        public var androidBadgeClass: String?

        public var androidBadgeSetNum: Int32?

        public var androidBigBody: String?

        public var androidBigPictureUrl: String?

        public var androidBigTitle: String?

        public var androidExtParameters: String?

        public var androidHonorTargetUserType: Int32?

        public var androidHuaweiReceiptId: String?

        public var androidHuaweiTargetUserType: Int32?

        public var androidImageUrl: String?

        public var androidInboxBody: String?

        public var androidMessageHuaweiCategory: String?

        public var androidMessageHuaweiUrgency: String?

        public var androidMessageOppoCategory: String?

        public var androidMessageOppoNotifyLevel: Int32?

        public var androidMessageVivoCategory: String?

        public var androidMusic: String?

        public var androidNotificationBarPriority: Int32?

        public var androidNotificationBarType: Int32?

        public var androidNotificationChannel: String?

        public var androidNotificationGroup: String?

        public var androidNotificationHonorChannel: String?

        public var androidNotificationHuaweiChannel: String?

        public var androidNotificationNotifyId: Int32?

        public var androidNotificationThreadId: String?

        public var androidNotificationVivoChannel: String?

        public var androidNotificationXiaomiChannel: String?

        public var androidNotifyType: String?

        public var androidOpenType: String?

        public var androidOpenUrl: String?

        public var androidPopupActivity: String?

        public var androidPopupBody: String?

        public var androidPopupTitle: String?

        public var androidRemind: Bool?

        public var androidRenderStyle: String?

        public var androidTargetUserType: Int32?

        public var androidVivoPushMode: Int32?

        public var androidVivoReceiptId: String?

        public var androidXiaoMiActivity: String?

        public var androidXiaoMiNotifyBody: String?

        public var androidXiaoMiNotifyTitle: String?

        public var androidXiaomiBigPictureUrl: String?

        public var androidXiaomiImageUrl: String?

        public var body: String?

        public var deviceType: String?

        public var expireTime: String?

        public var harmonyAction: String?

        public var harmonyActionType: String?

        public var harmonyBadgeAddNum: Int32?

        public var harmonyBadgeSetNum: Int32?

        public var harmonyCategory: String?

        public var harmonyExtParameters: String?

        public var harmonyExtensionExtraData: String?

        public var harmonyExtensionPush: Bool?

        public var harmonyImageUrl: String?

        public var harmonyInboxContent: String?

        public var harmonyNotificationSlotType: String?

        public var harmonyNotifyId: Int32?

        public var harmonyReceiptId: String?

        public var harmonyRemind: Bool?

        public var harmonyRemindBody: String?

        public var harmonyRemindTitle: String?

        public var harmonyRenderStyle: String?

        public var harmonyTestMessage: Bool?

        public var harmonyUri: String?

        public var jobKey: String?

        public var pushTime: String?

        public var pushType: String?

        public var sendChannels: String?

        public var sendSpeed: Int32?

        public var storeOffline: Bool?

        public var target: String?

        public var targetValue: String?

        public var title: String?

        public var trim: Bool?

        public var iOSApnsEnv: String?

        public var iOSBadge: Int32?

        public var iOSBadgeAutoIncrement: Bool?

        public var iOSExtParameters: String?

        public var iOSInterruptionLevel: String?

        public var iOSMusic: String?

        public var iOSMutableContent: Bool?

        public var iOSNotificationCategory: String?

        public var iOSNotificationCollapseId: String?

        public var iOSNotificationThreadId: String?

        public var iOSRelevanceScore: Double?

        public var iOSRemind: Bool?

        public var iOSRemindBody: String?

        public var iOSSilentNotification: Bool?

        public var iOSSubtitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidActivity != nil {
                map["AndroidActivity"] = self.androidActivity!
            }
            if self.androidBadgeAddNum != nil {
                map["AndroidBadgeAddNum"] = self.androidBadgeAddNum!
            }
            if self.androidBadgeClass != nil {
                map["AndroidBadgeClass"] = self.androidBadgeClass!
            }
            if self.androidBadgeSetNum != nil {
                map["AndroidBadgeSetNum"] = self.androidBadgeSetNum!
            }
            if self.androidBigBody != nil {
                map["AndroidBigBody"] = self.androidBigBody!
            }
            if self.androidBigPictureUrl != nil {
                map["AndroidBigPictureUrl"] = self.androidBigPictureUrl!
            }
            if self.androidBigTitle != nil {
                map["AndroidBigTitle"] = self.androidBigTitle!
            }
            if self.androidExtParameters != nil {
                map["AndroidExtParameters"] = self.androidExtParameters!
            }
            if self.androidHonorTargetUserType != nil {
                map["AndroidHonorTargetUserType"] = self.androidHonorTargetUserType!
            }
            if self.androidHuaweiReceiptId != nil {
                map["AndroidHuaweiReceiptId"] = self.androidHuaweiReceiptId!
            }
            if self.androidHuaweiTargetUserType != nil {
                map["AndroidHuaweiTargetUserType"] = self.androidHuaweiTargetUserType!
            }
            if self.androidImageUrl != nil {
                map["AndroidImageUrl"] = self.androidImageUrl!
            }
            if self.androidInboxBody != nil {
                map["AndroidInboxBody"] = self.androidInboxBody!
            }
            if self.androidMessageHuaweiCategory != nil {
                map["AndroidMessageHuaweiCategory"] = self.androidMessageHuaweiCategory!
            }
            if self.androidMessageHuaweiUrgency != nil {
                map["AndroidMessageHuaweiUrgency"] = self.androidMessageHuaweiUrgency!
            }
            if self.androidMessageOppoCategory != nil {
                map["AndroidMessageOppoCategory"] = self.androidMessageOppoCategory!
            }
            if self.androidMessageOppoNotifyLevel != nil {
                map["AndroidMessageOppoNotifyLevel"] = self.androidMessageOppoNotifyLevel!
            }
            if self.androidMessageVivoCategory != nil {
                map["AndroidMessageVivoCategory"] = self.androidMessageVivoCategory!
            }
            if self.androidMusic != nil {
                map["AndroidMusic"] = self.androidMusic!
            }
            if self.androidNotificationBarPriority != nil {
                map["AndroidNotificationBarPriority"] = self.androidNotificationBarPriority!
            }
            if self.androidNotificationBarType != nil {
                map["AndroidNotificationBarType"] = self.androidNotificationBarType!
            }
            if self.androidNotificationChannel != nil {
                map["AndroidNotificationChannel"] = self.androidNotificationChannel!
            }
            if self.androidNotificationGroup != nil {
                map["AndroidNotificationGroup"] = self.androidNotificationGroup!
            }
            if self.androidNotificationHonorChannel != nil {
                map["AndroidNotificationHonorChannel"] = self.androidNotificationHonorChannel!
            }
            if self.androidNotificationHuaweiChannel != nil {
                map["AndroidNotificationHuaweiChannel"] = self.androidNotificationHuaweiChannel!
            }
            if self.androidNotificationNotifyId != nil {
                map["AndroidNotificationNotifyId"] = self.androidNotificationNotifyId!
            }
            if self.androidNotificationThreadId != nil {
                map["AndroidNotificationThreadId"] = self.androidNotificationThreadId!
            }
            if self.androidNotificationVivoChannel != nil {
                map["AndroidNotificationVivoChannel"] = self.androidNotificationVivoChannel!
            }
            if self.androidNotificationXiaomiChannel != nil {
                map["AndroidNotificationXiaomiChannel"] = self.androidNotificationXiaomiChannel!
            }
            if self.androidNotifyType != nil {
                map["AndroidNotifyType"] = self.androidNotifyType!
            }
            if self.androidOpenType != nil {
                map["AndroidOpenType"] = self.androidOpenType!
            }
            if self.androidOpenUrl != nil {
                map["AndroidOpenUrl"] = self.androidOpenUrl!
            }
            if self.androidPopupActivity != nil {
                map["AndroidPopupActivity"] = self.androidPopupActivity!
            }
            if self.androidPopupBody != nil {
                map["AndroidPopupBody"] = self.androidPopupBody!
            }
            if self.androidPopupTitle != nil {
                map["AndroidPopupTitle"] = self.androidPopupTitle!
            }
            if self.androidRemind != nil {
                map["AndroidRemind"] = self.androidRemind!
            }
            if self.androidRenderStyle != nil {
                map["AndroidRenderStyle"] = self.androidRenderStyle!
            }
            if self.androidTargetUserType != nil {
                map["AndroidTargetUserType"] = self.androidTargetUserType!
            }
            if self.androidVivoPushMode != nil {
                map["AndroidVivoPushMode"] = self.androidVivoPushMode!
            }
            if self.androidVivoReceiptId != nil {
                map["AndroidVivoReceiptId"] = self.androidVivoReceiptId!
            }
            if self.androidXiaoMiActivity != nil {
                map["AndroidXiaoMiActivity"] = self.androidXiaoMiActivity!
            }
            if self.androidXiaoMiNotifyBody != nil {
                map["AndroidXiaoMiNotifyBody"] = self.androidXiaoMiNotifyBody!
            }
            if self.androidXiaoMiNotifyTitle != nil {
                map["AndroidXiaoMiNotifyTitle"] = self.androidXiaoMiNotifyTitle!
            }
            if self.androidXiaomiBigPictureUrl != nil {
                map["AndroidXiaomiBigPictureUrl"] = self.androidXiaomiBigPictureUrl!
            }
            if self.androidXiaomiImageUrl != nil {
                map["AndroidXiaomiImageUrl"] = self.androidXiaomiImageUrl!
            }
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.harmonyAction != nil {
                map["HarmonyAction"] = self.harmonyAction!
            }
            if self.harmonyActionType != nil {
                map["HarmonyActionType"] = self.harmonyActionType!
            }
            if self.harmonyBadgeAddNum != nil {
                map["HarmonyBadgeAddNum"] = self.harmonyBadgeAddNum!
            }
            if self.harmonyBadgeSetNum != nil {
                map["HarmonyBadgeSetNum"] = self.harmonyBadgeSetNum!
            }
            if self.harmonyCategory != nil {
                map["HarmonyCategory"] = self.harmonyCategory!
            }
            if self.harmonyExtParameters != nil {
                map["HarmonyExtParameters"] = self.harmonyExtParameters!
            }
            if self.harmonyExtensionExtraData != nil {
                map["HarmonyExtensionExtraData"] = self.harmonyExtensionExtraData!
            }
            if self.harmonyExtensionPush != nil {
                map["HarmonyExtensionPush"] = self.harmonyExtensionPush!
            }
            if self.harmonyImageUrl != nil {
                map["HarmonyImageUrl"] = self.harmonyImageUrl!
            }
            if self.harmonyInboxContent != nil {
                map["HarmonyInboxContent"] = self.harmonyInboxContent!
            }
            if self.harmonyNotificationSlotType != nil {
                map["HarmonyNotificationSlotType"] = self.harmonyNotificationSlotType!
            }
            if self.harmonyNotifyId != nil {
                map["HarmonyNotifyId"] = self.harmonyNotifyId!
            }
            if self.harmonyReceiptId != nil {
                map["HarmonyReceiptId"] = self.harmonyReceiptId!
            }
            if self.harmonyRemind != nil {
                map["HarmonyRemind"] = self.harmonyRemind!
            }
            if self.harmonyRemindBody != nil {
                map["HarmonyRemindBody"] = self.harmonyRemindBody!
            }
            if self.harmonyRemindTitle != nil {
                map["HarmonyRemindTitle"] = self.harmonyRemindTitle!
            }
            if self.harmonyRenderStyle != nil {
                map["HarmonyRenderStyle"] = self.harmonyRenderStyle!
            }
            if self.harmonyTestMessage != nil {
                map["HarmonyTestMessage"] = self.harmonyTestMessage!
            }
            if self.harmonyUri != nil {
                map["HarmonyUri"] = self.harmonyUri!
            }
            if self.jobKey != nil {
                map["JobKey"] = self.jobKey!
            }
            if self.pushTime != nil {
                map["PushTime"] = self.pushTime!
            }
            if self.pushType != nil {
                map["PushType"] = self.pushType!
            }
            if self.sendChannels != nil {
                map["SendChannels"] = self.sendChannels!
            }
            if self.sendSpeed != nil {
                map["SendSpeed"] = self.sendSpeed!
            }
            if self.storeOffline != nil {
                map["StoreOffline"] = self.storeOffline!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.targetValue != nil {
                map["TargetValue"] = self.targetValue!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.trim != nil {
                map["Trim"] = self.trim!
            }
            if self.iOSApnsEnv != nil {
                map["iOSApnsEnv"] = self.iOSApnsEnv!
            }
            if self.iOSBadge != nil {
                map["iOSBadge"] = self.iOSBadge!
            }
            if self.iOSBadgeAutoIncrement != nil {
                map["iOSBadgeAutoIncrement"] = self.iOSBadgeAutoIncrement!
            }
            if self.iOSExtParameters != nil {
                map["iOSExtParameters"] = self.iOSExtParameters!
            }
            if self.iOSInterruptionLevel != nil {
                map["iOSInterruptionLevel"] = self.iOSInterruptionLevel!
            }
            if self.iOSMusic != nil {
                map["iOSMusic"] = self.iOSMusic!
            }
            if self.iOSMutableContent != nil {
                map["iOSMutableContent"] = self.iOSMutableContent!
            }
            if self.iOSNotificationCategory != nil {
                map["iOSNotificationCategory"] = self.iOSNotificationCategory!
            }
            if self.iOSNotificationCollapseId != nil {
                map["iOSNotificationCollapseId"] = self.iOSNotificationCollapseId!
            }
            if self.iOSNotificationThreadId != nil {
                map["iOSNotificationThreadId"] = self.iOSNotificationThreadId!
            }
            if self.iOSRelevanceScore != nil {
                map["iOSRelevanceScore"] = self.iOSRelevanceScore!
            }
            if self.iOSRemind != nil {
                map["iOSRemind"] = self.iOSRemind!
            }
            if self.iOSRemindBody != nil {
                map["iOSRemindBody"] = self.iOSRemindBody!
            }
            if self.iOSSilentNotification != nil {
                map["iOSSilentNotification"] = self.iOSSilentNotification!
            }
            if self.iOSSubtitle != nil {
                map["iOSSubtitle"] = self.iOSSubtitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AndroidActivity") {
                self.androidActivity = dict["AndroidActivity"] as! String
            }
            if dict.keys.contains("AndroidBadgeAddNum") {
                self.androidBadgeAddNum = dict["AndroidBadgeAddNum"] as! Int32
            }
            if dict.keys.contains("AndroidBadgeClass") {
                self.androidBadgeClass = dict["AndroidBadgeClass"] as! String
            }
            if dict.keys.contains("AndroidBadgeSetNum") {
                self.androidBadgeSetNum = dict["AndroidBadgeSetNum"] as! Int32
            }
            if dict.keys.contains("AndroidBigBody") {
                self.androidBigBody = dict["AndroidBigBody"] as! String
            }
            if dict.keys.contains("AndroidBigPictureUrl") {
                self.androidBigPictureUrl = dict["AndroidBigPictureUrl"] as! String
            }
            if dict.keys.contains("AndroidBigTitle") {
                self.androidBigTitle = dict["AndroidBigTitle"] as! String
            }
            if dict.keys.contains("AndroidExtParameters") {
                self.androidExtParameters = dict["AndroidExtParameters"] as! String
            }
            if dict.keys.contains("AndroidHonorTargetUserType") {
                self.androidHonorTargetUserType = dict["AndroidHonorTargetUserType"] as! Int32
            }
            if dict.keys.contains("AndroidHuaweiReceiptId") {
                self.androidHuaweiReceiptId = dict["AndroidHuaweiReceiptId"] as! String
            }
            if dict.keys.contains("AndroidHuaweiTargetUserType") {
                self.androidHuaweiTargetUserType = dict["AndroidHuaweiTargetUserType"] as! Int32
            }
            if dict.keys.contains("AndroidImageUrl") {
                self.androidImageUrl = dict["AndroidImageUrl"] as! String
            }
            if dict.keys.contains("AndroidInboxBody") {
                self.androidInboxBody = dict["AndroidInboxBody"] as! String
            }
            if dict.keys.contains("AndroidMessageHuaweiCategory") {
                self.androidMessageHuaweiCategory = dict["AndroidMessageHuaweiCategory"] as! String
            }
            if dict.keys.contains("AndroidMessageHuaweiUrgency") {
                self.androidMessageHuaweiUrgency = dict["AndroidMessageHuaweiUrgency"] as! String
            }
            if dict.keys.contains("AndroidMessageOppoCategory") {
                self.androidMessageOppoCategory = dict["AndroidMessageOppoCategory"] as! String
            }
            if dict.keys.contains("AndroidMessageOppoNotifyLevel") {
                self.androidMessageOppoNotifyLevel = dict["AndroidMessageOppoNotifyLevel"] as! Int32
            }
            if dict.keys.contains("AndroidMessageVivoCategory") {
                self.androidMessageVivoCategory = dict["AndroidMessageVivoCategory"] as! String
            }
            if dict.keys.contains("AndroidMusic") {
                self.androidMusic = dict["AndroidMusic"] as! String
            }
            if dict.keys.contains("AndroidNotificationBarPriority") {
                self.androidNotificationBarPriority = dict["AndroidNotificationBarPriority"] as! Int32
            }
            if dict.keys.contains("AndroidNotificationBarType") {
                self.androidNotificationBarType = dict["AndroidNotificationBarType"] as! Int32
            }
            if dict.keys.contains("AndroidNotificationChannel") {
                self.androidNotificationChannel = dict["AndroidNotificationChannel"] as! String
            }
            if dict.keys.contains("AndroidNotificationGroup") {
                self.androidNotificationGroup = dict["AndroidNotificationGroup"] as! String
            }
            if dict.keys.contains("AndroidNotificationHonorChannel") {
                self.androidNotificationHonorChannel = dict["AndroidNotificationHonorChannel"] as! String
            }
            if dict.keys.contains("AndroidNotificationHuaweiChannel") {
                self.androidNotificationHuaweiChannel = dict["AndroidNotificationHuaweiChannel"] as! String
            }
            if dict.keys.contains("AndroidNotificationNotifyId") {
                self.androidNotificationNotifyId = dict["AndroidNotificationNotifyId"] as! Int32
            }
            if dict.keys.contains("AndroidNotificationThreadId") {
                self.androidNotificationThreadId = dict["AndroidNotificationThreadId"] as! String
            }
            if dict.keys.contains("AndroidNotificationVivoChannel") {
                self.androidNotificationVivoChannel = dict["AndroidNotificationVivoChannel"] as! String
            }
            if dict.keys.contains("AndroidNotificationXiaomiChannel") {
                self.androidNotificationXiaomiChannel = dict["AndroidNotificationXiaomiChannel"] as! String
            }
            if dict.keys.contains("AndroidNotifyType") {
                self.androidNotifyType = dict["AndroidNotifyType"] as! String
            }
            if dict.keys.contains("AndroidOpenType") {
                self.androidOpenType = dict["AndroidOpenType"] as! String
            }
            if dict.keys.contains("AndroidOpenUrl") {
                self.androidOpenUrl = dict["AndroidOpenUrl"] as! String
            }
            if dict.keys.contains("AndroidPopupActivity") {
                self.androidPopupActivity = dict["AndroidPopupActivity"] as! String
            }
            if dict.keys.contains("AndroidPopupBody") {
                self.androidPopupBody = dict["AndroidPopupBody"] as! String
            }
            if dict.keys.contains("AndroidPopupTitle") {
                self.androidPopupTitle = dict["AndroidPopupTitle"] as! String
            }
            if dict.keys.contains("AndroidRemind") {
                self.androidRemind = dict["AndroidRemind"] as! Bool
            }
            if dict.keys.contains("AndroidRenderStyle") {
                self.androidRenderStyle = dict["AndroidRenderStyle"] as! String
            }
            if dict.keys.contains("AndroidTargetUserType") {
                self.androidTargetUserType = dict["AndroidTargetUserType"] as! Int32
            }
            if dict.keys.contains("AndroidVivoPushMode") {
                self.androidVivoPushMode = dict["AndroidVivoPushMode"] as! Int32
            }
            if dict.keys.contains("AndroidVivoReceiptId") {
                self.androidVivoReceiptId = dict["AndroidVivoReceiptId"] as! String
            }
            if dict.keys.contains("AndroidXiaoMiActivity") {
                self.androidXiaoMiActivity = dict["AndroidXiaoMiActivity"] as! String
            }
            if dict.keys.contains("AndroidXiaoMiNotifyBody") {
                self.androidXiaoMiNotifyBody = dict["AndroidXiaoMiNotifyBody"] as! String
            }
            if dict.keys.contains("AndroidXiaoMiNotifyTitle") {
                self.androidXiaoMiNotifyTitle = dict["AndroidXiaoMiNotifyTitle"] as! String
            }
            if dict.keys.contains("AndroidXiaomiBigPictureUrl") {
                self.androidXiaomiBigPictureUrl = dict["AndroidXiaomiBigPictureUrl"] as! String
            }
            if dict.keys.contains("AndroidXiaomiImageUrl") {
                self.androidXiaomiImageUrl = dict["AndroidXiaomiImageUrl"] as! String
            }
            if dict.keys.contains("Body") {
                self.body = dict["Body"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("HarmonyAction") {
                self.harmonyAction = dict["HarmonyAction"] as! String
            }
            if dict.keys.contains("HarmonyActionType") {
                self.harmonyActionType = dict["HarmonyActionType"] as! String
            }
            if dict.keys.contains("HarmonyBadgeAddNum") {
                self.harmonyBadgeAddNum = dict["HarmonyBadgeAddNum"] as! Int32
            }
            if dict.keys.contains("HarmonyBadgeSetNum") {
                self.harmonyBadgeSetNum = dict["HarmonyBadgeSetNum"] as! Int32
            }
            if dict.keys.contains("HarmonyCategory") {
                self.harmonyCategory = dict["HarmonyCategory"] as! String
            }
            if dict.keys.contains("HarmonyExtParameters") {
                self.harmonyExtParameters = dict["HarmonyExtParameters"] as! String
            }
            if dict.keys.contains("HarmonyExtensionExtraData") {
                self.harmonyExtensionExtraData = dict["HarmonyExtensionExtraData"] as! String
            }
            if dict.keys.contains("HarmonyExtensionPush") {
                self.harmonyExtensionPush = dict["HarmonyExtensionPush"] as! Bool
            }
            if dict.keys.contains("HarmonyImageUrl") {
                self.harmonyImageUrl = dict["HarmonyImageUrl"] as! String
            }
            if dict.keys.contains("HarmonyInboxContent") {
                self.harmonyInboxContent = dict["HarmonyInboxContent"] as! String
            }
            if dict.keys.contains("HarmonyNotificationSlotType") {
                self.harmonyNotificationSlotType = dict["HarmonyNotificationSlotType"] as! String
            }
            if dict.keys.contains("HarmonyNotifyId") {
                self.harmonyNotifyId = dict["HarmonyNotifyId"] as! Int32
            }
            if dict.keys.contains("HarmonyReceiptId") {
                self.harmonyReceiptId = dict["HarmonyReceiptId"] as! String
            }
            if dict.keys.contains("HarmonyRemind") {
                self.harmonyRemind = dict["HarmonyRemind"] as! Bool
            }
            if dict.keys.contains("HarmonyRemindBody") {
                self.harmonyRemindBody = dict["HarmonyRemindBody"] as! String
            }
            if dict.keys.contains("HarmonyRemindTitle") {
                self.harmonyRemindTitle = dict["HarmonyRemindTitle"] as! String
            }
            if dict.keys.contains("HarmonyRenderStyle") {
                self.harmonyRenderStyle = dict["HarmonyRenderStyle"] as! String
            }
            if dict.keys.contains("HarmonyTestMessage") {
                self.harmonyTestMessage = dict["HarmonyTestMessage"] as! Bool
            }
            if dict.keys.contains("HarmonyUri") {
                self.harmonyUri = dict["HarmonyUri"] as! String
            }
            if dict.keys.contains("JobKey") {
                self.jobKey = dict["JobKey"] as! String
            }
            if dict.keys.contains("PushTime") {
                self.pushTime = dict["PushTime"] as! String
            }
            if dict.keys.contains("PushType") {
                self.pushType = dict["PushType"] as! String
            }
            if dict.keys.contains("SendChannels") {
                self.sendChannels = dict["SendChannels"] as! String
            }
            if dict.keys.contains("SendSpeed") {
                self.sendSpeed = dict["SendSpeed"] as! Int32
            }
            if dict.keys.contains("StoreOffline") {
                self.storeOffline = dict["StoreOffline"] as! Bool
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("TargetValue") {
                self.targetValue = dict["TargetValue"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Trim") {
                self.trim = dict["Trim"] as! Bool
            }
            if dict.keys.contains("iOSApnsEnv") {
                self.iOSApnsEnv = dict["iOSApnsEnv"] as! String
            }
            if dict.keys.contains("iOSBadge") {
                self.iOSBadge = dict["iOSBadge"] as! Int32
            }
            if dict.keys.contains("iOSBadgeAutoIncrement") {
                self.iOSBadgeAutoIncrement = dict["iOSBadgeAutoIncrement"] as! Bool
            }
            if dict.keys.contains("iOSExtParameters") {
                self.iOSExtParameters = dict["iOSExtParameters"] as! String
            }
            if dict.keys.contains("iOSInterruptionLevel") {
                self.iOSInterruptionLevel = dict["iOSInterruptionLevel"] as! String
            }
            if dict.keys.contains("iOSMusic") {
                self.iOSMusic = dict["iOSMusic"] as! String
            }
            if dict.keys.contains("iOSMutableContent") {
                self.iOSMutableContent = dict["iOSMutableContent"] as! Bool
            }
            if dict.keys.contains("iOSNotificationCategory") {
                self.iOSNotificationCategory = dict["iOSNotificationCategory"] as! String
            }
            if dict.keys.contains("iOSNotificationCollapseId") {
                self.iOSNotificationCollapseId = dict["iOSNotificationCollapseId"] as! String
            }
            if dict.keys.contains("iOSNotificationThreadId") {
                self.iOSNotificationThreadId = dict["iOSNotificationThreadId"] as! String
            }
            if dict.keys.contains("iOSRelevanceScore") {
                self.iOSRelevanceScore = dict["iOSRelevanceScore"] as! Double
            }
            if dict.keys.contains("iOSRemind") {
                self.iOSRemind = dict["iOSRemind"] as! Bool
            }
            if dict.keys.contains("iOSRemindBody") {
                self.iOSRemindBody = dict["iOSRemindBody"] as! String
            }
            if dict.keys.contains("iOSSilentNotification") {
                self.iOSSilentNotification = dict["iOSSilentNotification"] as! Bool
            }
            if dict.keys.contains("iOSSubtitle") {
                self.iOSSubtitle = dict["iOSSubtitle"] as! String
            }
        }
    }
    public var appKey: Int64?

    public var pushTask: [MassPushRequest.PushTask]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.pushTask != nil {
            var tmp : [Any] = []
            for k in self.pushTask! {
                tmp.append(k.toMap())
            }
            map["PushTask"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("PushTask") {
            var tmp : [MassPushRequest.PushTask] = []
            for v in dict["PushTask"] as! [Any] {
                var model = MassPushRequest.PushTask()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pushTask = tmp
        }
    }
}

public class MassPushResponseBody : Tea.TeaModel {
    public class MessageIds : Tea.TeaModel {
        public var messageId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! [String]
            }
        }
    }
    public var messageIds: MassPushResponseBody.MessageIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageIds != nil {
            map["MessageIds"] = self.messageIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageIds") {
            var model = MassPushResponseBody.MessageIds()
            model.fromMap(dict["MessageIds"] as! [String: Any])
            self.messageIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MassPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MassPushResponseBody?

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
            var model = MassPushResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushRequest : Tea.TeaModel {
    public var androidActivity: String?

    public var androidBadgeAddNum: Int32?

    public var androidBadgeClass: String?

    public var androidBadgeSetNum: Int32?

    public var androidBigBody: String?

    public var androidBigPictureUrl: String?

    public var androidBigTitle: String?

    public var androidExtParameters: String?

    public var androidHonorTargetUserType: Int32?

    public var androidHuaweiReceiptId: String?

    public var androidHuaweiTargetUserType: Int32?

    public var androidImageUrl: String?

    public var androidInboxBody: String?

    public var androidMessageHuaweiCategory: String?

    public var androidMessageHuaweiUrgency: String?

    public var androidMessageOppoCategory: String?

    public var androidMessageOppoNotifyLevel: Int32?

    public var androidMessageVivoCategory: String?

    public var androidMusic: String?

    public var androidNotificationBarPriority: Int32?

    public var androidNotificationBarType: Int32?

    public var androidNotificationChannel: String?

    public var androidNotificationGroup: String?

    public var androidNotificationHonorChannel: String?

    public var androidNotificationHuaweiChannel: String?

    public var androidNotificationNotifyId: Int32?

    public var androidNotificationThreadId: String?

    public var androidNotificationVivoChannel: String?

    public var androidNotificationXiaomiChannel: String?

    public var androidNotifyType: String?

    public var androidOpenType: String?

    public var androidOpenUrl: String?

    public var androidPopupActivity: String?

    public var androidPopupBody: String?

    public var androidPopupTitle: String?

    public var androidRemind: Bool?

    public var androidRenderStyle: Int32?

    public var androidTargetUserType: Int32?

    public var androidVivoPushMode: Int32?

    public var androidVivoReceiptId: String?

    public var androidXiaoMiActivity: String?

    public var androidXiaoMiNotifyBody: String?

    public var androidXiaoMiNotifyTitle: String?

    public var androidXiaomiBigPictureUrl: String?

    public var androidXiaomiImageUrl: String?

    public var appKey: Int64?

    public var body: String?

    public var deviceType: String?

    public var expireTime: String?

    public var harmonyAction: String?

    public var harmonyActionType: String?

    public var harmonyBadgeAddNum: Int32?

    public var harmonyBadgeSetNum: Int32?

    public var harmonyCategory: String?

    public var harmonyExtParameters: String?

    public var harmonyExtensionExtraData: String?

    public var harmonyExtensionPush: Bool?

    public var harmonyImageUrl: String?

    public var harmonyInboxContent: String?

    public var harmonyNotificationSlotType: String?

    public var harmonyNotifyId: Int32?

    public var harmonyReceiptId: String?

    public var harmonyRemind: Bool?

    public var harmonyRemindBody: String?

    public var harmonyRemindTitle: String?

    public var harmonyRenderStyle: String?

    public var harmonyTestMessage: Bool?

    public var harmonyUri: String?

    public var jobKey: String?

    public var pushTime: String?

    public var pushType: String?

    public var sendChannels: String?

    public var sendSpeed: Int32?

    public var smsDelaySecs: Int32?

    public var smsParams: String?

    public var smsSendPolicy: Int32?

    public var smsSignName: String?

    public var smsTemplateName: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public var trim: Bool?

    public var iOSApnsEnv: String?

    public var iOSBadge: Int32?

    public var iOSBadgeAutoIncrement: Bool?

    public var iOSExtParameters: String?

    public var iOSInterruptionLevel: String?

    public var iOSMusic: String?

    public var iOSMutableContent: Bool?

    public var iOSNotificationCategory: String?

    public var iOSNotificationCollapseId: String?

    public var iOSNotificationThreadId: String?

    public var iOSRelevanceScore: Double?

    public var iOSRemind: Bool?

    public var iOSRemindBody: String?

    public var iOSSilentNotification: Bool?

    public var iOSSubtitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidActivity != nil {
            map["AndroidActivity"] = self.androidActivity!
        }
        if self.androidBadgeAddNum != nil {
            map["AndroidBadgeAddNum"] = self.androidBadgeAddNum!
        }
        if self.androidBadgeClass != nil {
            map["AndroidBadgeClass"] = self.androidBadgeClass!
        }
        if self.androidBadgeSetNum != nil {
            map["AndroidBadgeSetNum"] = self.androidBadgeSetNum!
        }
        if self.androidBigBody != nil {
            map["AndroidBigBody"] = self.androidBigBody!
        }
        if self.androidBigPictureUrl != nil {
            map["AndroidBigPictureUrl"] = self.androidBigPictureUrl!
        }
        if self.androidBigTitle != nil {
            map["AndroidBigTitle"] = self.androidBigTitle!
        }
        if self.androidExtParameters != nil {
            map["AndroidExtParameters"] = self.androidExtParameters!
        }
        if self.androidHonorTargetUserType != nil {
            map["AndroidHonorTargetUserType"] = self.androidHonorTargetUserType!
        }
        if self.androidHuaweiReceiptId != nil {
            map["AndroidHuaweiReceiptId"] = self.androidHuaweiReceiptId!
        }
        if self.androidHuaweiTargetUserType != nil {
            map["AndroidHuaweiTargetUserType"] = self.androidHuaweiTargetUserType!
        }
        if self.androidImageUrl != nil {
            map["AndroidImageUrl"] = self.androidImageUrl!
        }
        if self.androidInboxBody != nil {
            map["AndroidInboxBody"] = self.androidInboxBody!
        }
        if self.androidMessageHuaweiCategory != nil {
            map["AndroidMessageHuaweiCategory"] = self.androidMessageHuaweiCategory!
        }
        if self.androidMessageHuaweiUrgency != nil {
            map["AndroidMessageHuaweiUrgency"] = self.androidMessageHuaweiUrgency!
        }
        if self.androidMessageOppoCategory != nil {
            map["AndroidMessageOppoCategory"] = self.androidMessageOppoCategory!
        }
        if self.androidMessageOppoNotifyLevel != nil {
            map["AndroidMessageOppoNotifyLevel"] = self.androidMessageOppoNotifyLevel!
        }
        if self.androidMessageVivoCategory != nil {
            map["AndroidMessageVivoCategory"] = self.androidMessageVivoCategory!
        }
        if self.androidMusic != nil {
            map["AndroidMusic"] = self.androidMusic!
        }
        if self.androidNotificationBarPriority != nil {
            map["AndroidNotificationBarPriority"] = self.androidNotificationBarPriority!
        }
        if self.androidNotificationBarType != nil {
            map["AndroidNotificationBarType"] = self.androidNotificationBarType!
        }
        if self.androidNotificationChannel != nil {
            map["AndroidNotificationChannel"] = self.androidNotificationChannel!
        }
        if self.androidNotificationGroup != nil {
            map["AndroidNotificationGroup"] = self.androidNotificationGroup!
        }
        if self.androidNotificationHonorChannel != nil {
            map["AndroidNotificationHonorChannel"] = self.androidNotificationHonorChannel!
        }
        if self.androidNotificationHuaweiChannel != nil {
            map["AndroidNotificationHuaweiChannel"] = self.androidNotificationHuaweiChannel!
        }
        if self.androidNotificationNotifyId != nil {
            map["AndroidNotificationNotifyId"] = self.androidNotificationNotifyId!
        }
        if self.androidNotificationThreadId != nil {
            map["AndroidNotificationThreadId"] = self.androidNotificationThreadId!
        }
        if self.androidNotificationVivoChannel != nil {
            map["AndroidNotificationVivoChannel"] = self.androidNotificationVivoChannel!
        }
        if self.androidNotificationXiaomiChannel != nil {
            map["AndroidNotificationXiaomiChannel"] = self.androidNotificationXiaomiChannel!
        }
        if self.androidNotifyType != nil {
            map["AndroidNotifyType"] = self.androidNotifyType!
        }
        if self.androidOpenType != nil {
            map["AndroidOpenType"] = self.androidOpenType!
        }
        if self.androidOpenUrl != nil {
            map["AndroidOpenUrl"] = self.androidOpenUrl!
        }
        if self.androidPopupActivity != nil {
            map["AndroidPopupActivity"] = self.androidPopupActivity!
        }
        if self.androidPopupBody != nil {
            map["AndroidPopupBody"] = self.androidPopupBody!
        }
        if self.androidPopupTitle != nil {
            map["AndroidPopupTitle"] = self.androidPopupTitle!
        }
        if self.androidRemind != nil {
            map["AndroidRemind"] = self.androidRemind!
        }
        if self.androidRenderStyle != nil {
            map["AndroidRenderStyle"] = self.androidRenderStyle!
        }
        if self.androidTargetUserType != nil {
            map["AndroidTargetUserType"] = self.androidTargetUserType!
        }
        if self.androidVivoPushMode != nil {
            map["AndroidVivoPushMode"] = self.androidVivoPushMode!
        }
        if self.androidVivoReceiptId != nil {
            map["AndroidVivoReceiptId"] = self.androidVivoReceiptId!
        }
        if self.androidXiaoMiActivity != nil {
            map["AndroidXiaoMiActivity"] = self.androidXiaoMiActivity!
        }
        if self.androidXiaoMiNotifyBody != nil {
            map["AndroidXiaoMiNotifyBody"] = self.androidXiaoMiNotifyBody!
        }
        if self.androidXiaoMiNotifyTitle != nil {
            map["AndroidXiaoMiNotifyTitle"] = self.androidXiaoMiNotifyTitle!
        }
        if self.androidXiaomiBigPictureUrl != nil {
            map["AndroidXiaomiBigPictureUrl"] = self.androidXiaomiBigPictureUrl!
        }
        if self.androidXiaomiImageUrl != nil {
            map["AndroidXiaomiImageUrl"] = self.androidXiaomiImageUrl!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.harmonyAction != nil {
            map["HarmonyAction"] = self.harmonyAction!
        }
        if self.harmonyActionType != nil {
            map["HarmonyActionType"] = self.harmonyActionType!
        }
        if self.harmonyBadgeAddNum != nil {
            map["HarmonyBadgeAddNum"] = self.harmonyBadgeAddNum!
        }
        if self.harmonyBadgeSetNum != nil {
            map["HarmonyBadgeSetNum"] = self.harmonyBadgeSetNum!
        }
        if self.harmonyCategory != nil {
            map["HarmonyCategory"] = self.harmonyCategory!
        }
        if self.harmonyExtParameters != nil {
            map["HarmonyExtParameters"] = self.harmonyExtParameters!
        }
        if self.harmonyExtensionExtraData != nil {
            map["HarmonyExtensionExtraData"] = self.harmonyExtensionExtraData!
        }
        if self.harmonyExtensionPush != nil {
            map["HarmonyExtensionPush"] = self.harmonyExtensionPush!
        }
        if self.harmonyImageUrl != nil {
            map["HarmonyImageUrl"] = self.harmonyImageUrl!
        }
        if self.harmonyInboxContent != nil {
            map["HarmonyInboxContent"] = self.harmonyInboxContent!
        }
        if self.harmonyNotificationSlotType != nil {
            map["HarmonyNotificationSlotType"] = self.harmonyNotificationSlotType!
        }
        if self.harmonyNotifyId != nil {
            map["HarmonyNotifyId"] = self.harmonyNotifyId!
        }
        if self.harmonyReceiptId != nil {
            map["HarmonyReceiptId"] = self.harmonyReceiptId!
        }
        if self.harmonyRemind != nil {
            map["HarmonyRemind"] = self.harmonyRemind!
        }
        if self.harmonyRemindBody != nil {
            map["HarmonyRemindBody"] = self.harmonyRemindBody!
        }
        if self.harmonyRemindTitle != nil {
            map["HarmonyRemindTitle"] = self.harmonyRemindTitle!
        }
        if self.harmonyRenderStyle != nil {
            map["HarmonyRenderStyle"] = self.harmonyRenderStyle!
        }
        if self.harmonyTestMessage != nil {
            map["HarmonyTestMessage"] = self.harmonyTestMessage!
        }
        if self.harmonyUri != nil {
            map["HarmonyUri"] = self.harmonyUri!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.pushTime != nil {
            map["PushTime"] = self.pushTime!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.sendChannels != nil {
            map["SendChannels"] = self.sendChannels!
        }
        if self.sendSpeed != nil {
            map["SendSpeed"] = self.sendSpeed!
        }
        if self.smsDelaySecs != nil {
            map["SmsDelaySecs"] = self.smsDelaySecs!
        }
        if self.smsParams != nil {
            map["SmsParams"] = self.smsParams!
        }
        if self.smsSendPolicy != nil {
            map["SmsSendPolicy"] = self.smsSendPolicy!
        }
        if self.smsSignName != nil {
            map["SmsSignName"] = self.smsSignName!
        }
        if self.smsTemplateName != nil {
            map["SmsTemplateName"] = self.smsTemplateName!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.trim != nil {
            map["Trim"] = self.trim!
        }
        if self.iOSApnsEnv != nil {
            map["iOSApnsEnv"] = self.iOSApnsEnv!
        }
        if self.iOSBadge != nil {
            map["iOSBadge"] = self.iOSBadge!
        }
        if self.iOSBadgeAutoIncrement != nil {
            map["iOSBadgeAutoIncrement"] = self.iOSBadgeAutoIncrement!
        }
        if self.iOSExtParameters != nil {
            map["iOSExtParameters"] = self.iOSExtParameters!
        }
        if self.iOSInterruptionLevel != nil {
            map["iOSInterruptionLevel"] = self.iOSInterruptionLevel!
        }
        if self.iOSMusic != nil {
            map["iOSMusic"] = self.iOSMusic!
        }
        if self.iOSMutableContent != nil {
            map["iOSMutableContent"] = self.iOSMutableContent!
        }
        if self.iOSNotificationCategory != nil {
            map["iOSNotificationCategory"] = self.iOSNotificationCategory!
        }
        if self.iOSNotificationCollapseId != nil {
            map["iOSNotificationCollapseId"] = self.iOSNotificationCollapseId!
        }
        if self.iOSNotificationThreadId != nil {
            map["iOSNotificationThreadId"] = self.iOSNotificationThreadId!
        }
        if self.iOSRelevanceScore != nil {
            map["iOSRelevanceScore"] = self.iOSRelevanceScore!
        }
        if self.iOSRemind != nil {
            map["iOSRemind"] = self.iOSRemind!
        }
        if self.iOSRemindBody != nil {
            map["iOSRemindBody"] = self.iOSRemindBody!
        }
        if self.iOSSilentNotification != nil {
            map["iOSSilentNotification"] = self.iOSSilentNotification!
        }
        if self.iOSSubtitle != nil {
            map["iOSSubtitle"] = self.iOSSubtitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidActivity") {
            self.androidActivity = dict["AndroidActivity"] as! String
        }
        if dict.keys.contains("AndroidBadgeAddNum") {
            self.androidBadgeAddNum = dict["AndroidBadgeAddNum"] as! Int32
        }
        if dict.keys.contains("AndroidBadgeClass") {
            self.androidBadgeClass = dict["AndroidBadgeClass"] as! String
        }
        if dict.keys.contains("AndroidBadgeSetNum") {
            self.androidBadgeSetNum = dict["AndroidBadgeSetNum"] as! Int32
        }
        if dict.keys.contains("AndroidBigBody") {
            self.androidBigBody = dict["AndroidBigBody"] as! String
        }
        if dict.keys.contains("AndroidBigPictureUrl") {
            self.androidBigPictureUrl = dict["AndroidBigPictureUrl"] as! String
        }
        if dict.keys.contains("AndroidBigTitle") {
            self.androidBigTitle = dict["AndroidBigTitle"] as! String
        }
        if dict.keys.contains("AndroidExtParameters") {
            self.androidExtParameters = dict["AndroidExtParameters"] as! String
        }
        if dict.keys.contains("AndroidHonorTargetUserType") {
            self.androidHonorTargetUserType = dict["AndroidHonorTargetUserType"] as! Int32
        }
        if dict.keys.contains("AndroidHuaweiReceiptId") {
            self.androidHuaweiReceiptId = dict["AndroidHuaweiReceiptId"] as! String
        }
        if dict.keys.contains("AndroidHuaweiTargetUserType") {
            self.androidHuaweiTargetUserType = dict["AndroidHuaweiTargetUserType"] as! Int32
        }
        if dict.keys.contains("AndroidImageUrl") {
            self.androidImageUrl = dict["AndroidImageUrl"] as! String
        }
        if dict.keys.contains("AndroidInboxBody") {
            self.androidInboxBody = dict["AndroidInboxBody"] as! String
        }
        if dict.keys.contains("AndroidMessageHuaweiCategory") {
            self.androidMessageHuaweiCategory = dict["AndroidMessageHuaweiCategory"] as! String
        }
        if dict.keys.contains("AndroidMessageHuaweiUrgency") {
            self.androidMessageHuaweiUrgency = dict["AndroidMessageHuaweiUrgency"] as! String
        }
        if dict.keys.contains("AndroidMessageOppoCategory") {
            self.androidMessageOppoCategory = dict["AndroidMessageOppoCategory"] as! String
        }
        if dict.keys.contains("AndroidMessageOppoNotifyLevel") {
            self.androidMessageOppoNotifyLevel = dict["AndroidMessageOppoNotifyLevel"] as! Int32
        }
        if dict.keys.contains("AndroidMessageVivoCategory") {
            self.androidMessageVivoCategory = dict["AndroidMessageVivoCategory"] as! String
        }
        if dict.keys.contains("AndroidMusic") {
            self.androidMusic = dict["AndroidMusic"] as! String
        }
        if dict.keys.contains("AndroidNotificationBarPriority") {
            self.androidNotificationBarPriority = dict["AndroidNotificationBarPriority"] as! Int32
        }
        if dict.keys.contains("AndroidNotificationBarType") {
            self.androidNotificationBarType = dict["AndroidNotificationBarType"] as! Int32
        }
        if dict.keys.contains("AndroidNotificationChannel") {
            self.androidNotificationChannel = dict["AndroidNotificationChannel"] as! String
        }
        if dict.keys.contains("AndroidNotificationGroup") {
            self.androidNotificationGroup = dict["AndroidNotificationGroup"] as! String
        }
        if dict.keys.contains("AndroidNotificationHonorChannel") {
            self.androidNotificationHonorChannel = dict["AndroidNotificationHonorChannel"] as! String
        }
        if dict.keys.contains("AndroidNotificationHuaweiChannel") {
            self.androidNotificationHuaweiChannel = dict["AndroidNotificationHuaweiChannel"] as! String
        }
        if dict.keys.contains("AndroidNotificationNotifyId") {
            self.androidNotificationNotifyId = dict["AndroidNotificationNotifyId"] as! Int32
        }
        if dict.keys.contains("AndroidNotificationThreadId") {
            self.androidNotificationThreadId = dict["AndroidNotificationThreadId"] as! String
        }
        if dict.keys.contains("AndroidNotificationVivoChannel") {
            self.androidNotificationVivoChannel = dict["AndroidNotificationVivoChannel"] as! String
        }
        if dict.keys.contains("AndroidNotificationXiaomiChannel") {
            self.androidNotificationXiaomiChannel = dict["AndroidNotificationXiaomiChannel"] as! String
        }
        if dict.keys.contains("AndroidNotifyType") {
            self.androidNotifyType = dict["AndroidNotifyType"] as! String
        }
        if dict.keys.contains("AndroidOpenType") {
            self.androidOpenType = dict["AndroidOpenType"] as! String
        }
        if dict.keys.contains("AndroidOpenUrl") {
            self.androidOpenUrl = dict["AndroidOpenUrl"] as! String
        }
        if dict.keys.contains("AndroidPopupActivity") {
            self.androidPopupActivity = dict["AndroidPopupActivity"] as! String
        }
        if dict.keys.contains("AndroidPopupBody") {
            self.androidPopupBody = dict["AndroidPopupBody"] as! String
        }
        if dict.keys.contains("AndroidPopupTitle") {
            self.androidPopupTitle = dict["AndroidPopupTitle"] as! String
        }
        if dict.keys.contains("AndroidRemind") {
            self.androidRemind = dict["AndroidRemind"] as! Bool
        }
        if dict.keys.contains("AndroidRenderStyle") {
            self.androidRenderStyle = dict["AndroidRenderStyle"] as! Int32
        }
        if dict.keys.contains("AndroidTargetUserType") {
            self.androidTargetUserType = dict["AndroidTargetUserType"] as! Int32
        }
        if dict.keys.contains("AndroidVivoPushMode") {
            self.androidVivoPushMode = dict["AndroidVivoPushMode"] as! Int32
        }
        if dict.keys.contains("AndroidVivoReceiptId") {
            self.androidVivoReceiptId = dict["AndroidVivoReceiptId"] as! String
        }
        if dict.keys.contains("AndroidXiaoMiActivity") {
            self.androidXiaoMiActivity = dict["AndroidXiaoMiActivity"] as! String
        }
        if dict.keys.contains("AndroidXiaoMiNotifyBody") {
            self.androidXiaoMiNotifyBody = dict["AndroidXiaoMiNotifyBody"] as! String
        }
        if dict.keys.contains("AndroidXiaoMiNotifyTitle") {
            self.androidXiaoMiNotifyTitle = dict["AndroidXiaoMiNotifyTitle"] as! String
        }
        if dict.keys.contains("AndroidXiaomiBigPictureUrl") {
            self.androidXiaomiBigPictureUrl = dict["AndroidXiaomiBigPictureUrl"] as! String
        }
        if dict.keys.contains("AndroidXiaomiImageUrl") {
            self.androidXiaomiImageUrl = dict["AndroidXiaomiImageUrl"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("HarmonyAction") {
            self.harmonyAction = dict["HarmonyAction"] as! String
        }
        if dict.keys.contains("HarmonyActionType") {
            self.harmonyActionType = dict["HarmonyActionType"] as! String
        }
        if dict.keys.contains("HarmonyBadgeAddNum") {
            self.harmonyBadgeAddNum = dict["HarmonyBadgeAddNum"] as! Int32
        }
        if dict.keys.contains("HarmonyBadgeSetNum") {
            self.harmonyBadgeSetNum = dict["HarmonyBadgeSetNum"] as! Int32
        }
        if dict.keys.contains("HarmonyCategory") {
            self.harmonyCategory = dict["HarmonyCategory"] as! String
        }
        if dict.keys.contains("HarmonyExtParameters") {
            self.harmonyExtParameters = dict["HarmonyExtParameters"] as! String
        }
        if dict.keys.contains("HarmonyExtensionExtraData") {
            self.harmonyExtensionExtraData = dict["HarmonyExtensionExtraData"] as! String
        }
        if dict.keys.contains("HarmonyExtensionPush") {
            self.harmonyExtensionPush = dict["HarmonyExtensionPush"] as! Bool
        }
        if dict.keys.contains("HarmonyImageUrl") {
            self.harmonyImageUrl = dict["HarmonyImageUrl"] as! String
        }
        if dict.keys.contains("HarmonyInboxContent") {
            self.harmonyInboxContent = dict["HarmonyInboxContent"] as! String
        }
        if dict.keys.contains("HarmonyNotificationSlotType") {
            self.harmonyNotificationSlotType = dict["HarmonyNotificationSlotType"] as! String
        }
        if dict.keys.contains("HarmonyNotifyId") {
            self.harmonyNotifyId = dict["HarmonyNotifyId"] as! Int32
        }
        if dict.keys.contains("HarmonyReceiptId") {
            self.harmonyReceiptId = dict["HarmonyReceiptId"] as! String
        }
        if dict.keys.contains("HarmonyRemind") {
            self.harmonyRemind = dict["HarmonyRemind"] as! Bool
        }
        if dict.keys.contains("HarmonyRemindBody") {
            self.harmonyRemindBody = dict["HarmonyRemindBody"] as! String
        }
        if dict.keys.contains("HarmonyRemindTitle") {
            self.harmonyRemindTitle = dict["HarmonyRemindTitle"] as! String
        }
        if dict.keys.contains("HarmonyRenderStyle") {
            self.harmonyRenderStyle = dict["HarmonyRenderStyle"] as! String
        }
        if dict.keys.contains("HarmonyTestMessage") {
            self.harmonyTestMessage = dict["HarmonyTestMessage"] as! Bool
        }
        if dict.keys.contains("HarmonyUri") {
            self.harmonyUri = dict["HarmonyUri"] as! String
        }
        if dict.keys.contains("JobKey") {
            self.jobKey = dict["JobKey"] as! String
        }
        if dict.keys.contains("PushTime") {
            self.pushTime = dict["PushTime"] as! String
        }
        if dict.keys.contains("PushType") {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("SendChannels") {
            self.sendChannels = dict["SendChannels"] as! String
        }
        if dict.keys.contains("SendSpeed") {
            self.sendSpeed = dict["SendSpeed"] as! Int32
        }
        if dict.keys.contains("SmsDelaySecs") {
            self.smsDelaySecs = dict["SmsDelaySecs"] as! Int32
        }
        if dict.keys.contains("SmsParams") {
            self.smsParams = dict["SmsParams"] as! String
        }
        if dict.keys.contains("SmsSendPolicy") {
            self.smsSendPolicy = dict["SmsSendPolicy"] as! Int32
        }
        if dict.keys.contains("SmsSignName") {
            self.smsSignName = dict["SmsSignName"] as! String
        }
        if dict.keys.contains("SmsTemplateName") {
            self.smsTemplateName = dict["SmsTemplateName"] as! String
        }
        if dict.keys.contains("StoreOffline") {
            self.storeOffline = dict["StoreOffline"] as! Bool
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetValue") {
            self.targetValue = dict["TargetValue"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Trim") {
            self.trim = dict["Trim"] as! Bool
        }
        if dict.keys.contains("iOSApnsEnv") {
            self.iOSApnsEnv = dict["iOSApnsEnv"] as! String
        }
        if dict.keys.contains("iOSBadge") {
            self.iOSBadge = dict["iOSBadge"] as! Int32
        }
        if dict.keys.contains("iOSBadgeAutoIncrement") {
            self.iOSBadgeAutoIncrement = dict["iOSBadgeAutoIncrement"] as! Bool
        }
        if dict.keys.contains("iOSExtParameters") {
            self.iOSExtParameters = dict["iOSExtParameters"] as! String
        }
        if dict.keys.contains("iOSInterruptionLevel") {
            self.iOSInterruptionLevel = dict["iOSInterruptionLevel"] as! String
        }
        if dict.keys.contains("iOSMusic") {
            self.iOSMusic = dict["iOSMusic"] as! String
        }
        if dict.keys.contains("iOSMutableContent") {
            self.iOSMutableContent = dict["iOSMutableContent"] as! Bool
        }
        if dict.keys.contains("iOSNotificationCategory") {
            self.iOSNotificationCategory = dict["iOSNotificationCategory"] as! String
        }
        if dict.keys.contains("iOSNotificationCollapseId") {
            self.iOSNotificationCollapseId = dict["iOSNotificationCollapseId"] as! String
        }
        if dict.keys.contains("iOSNotificationThreadId") {
            self.iOSNotificationThreadId = dict["iOSNotificationThreadId"] as! String
        }
        if dict.keys.contains("iOSRelevanceScore") {
            self.iOSRelevanceScore = dict["iOSRelevanceScore"] as! Double
        }
        if dict.keys.contains("iOSRemind") {
            self.iOSRemind = dict["iOSRemind"] as! Bool
        }
        if dict.keys.contains("iOSRemindBody") {
            self.iOSRemindBody = dict["iOSRemindBody"] as! String
        }
        if dict.keys.contains("iOSSilentNotification") {
            self.iOSSilentNotification = dict["iOSSilentNotification"] as! Bool
        }
        if dict.keys.contains("iOSSubtitle") {
            self.iOSSubtitle = dict["iOSSubtitle"] as! String
        }
    }
}

public class PushResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushResponseBody?

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
            var model = PushResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushMessageToAndroidRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var body: String?

    public var jobKey: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("JobKey") {
            self.jobKey = dict["JobKey"] as! String
        }
        if dict.keys.contains("StoreOffline") {
            self.storeOffline = dict["StoreOffline"] as! Bool
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetValue") {
            self.targetValue = dict["TargetValue"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class PushMessageToAndroidResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushMessageToAndroidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMessageToAndroidResponseBody?

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
            var model = PushMessageToAndroidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushMessageToiOSRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var body: String?

    public var jobKey: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("JobKey") {
            self.jobKey = dict["JobKey"] as! String
        }
        if dict.keys.contains("StoreOffline") {
            self.storeOffline = dict["StoreOffline"] as! Bool
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetValue") {
            self.targetValue = dict["TargetValue"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class PushMessageToiOSResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushMessageToiOSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMessageToiOSResponseBody?

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
            var model = PushMessageToiOSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushNoticeToAndroidRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var body: String?

    public var extParameters: String?

    public var jobKey: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.extParameters != nil {
            map["ExtParameters"] = self.extParameters!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("ExtParameters") {
            self.extParameters = dict["ExtParameters"] as! String
        }
        if dict.keys.contains("JobKey") {
            self.jobKey = dict["JobKey"] as! String
        }
        if dict.keys.contains("StoreOffline") {
            self.storeOffline = dict["StoreOffline"] as! Bool
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetValue") {
            self.targetValue = dict["TargetValue"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class PushNoticeToAndroidResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushNoticeToAndroidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushNoticeToAndroidResponseBody?

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
            var model = PushNoticeToAndroidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushNoticeToiOSRequest : Tea.TeaModel {
    public var apnsEnv: String?

    public var appKey: Int64?

    public var body: String?

    public var extParameters: String?

    public var jobKey: String?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apnsEnv != nil {
            map["ApnsEnv"] = self.apnsEnv!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.extParameters != nil {
            map["ExtParameters"] = self.extParameters!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApnsEnv") {
            self.apnsEnv = dict["ApnsEnv"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("ExtParameters") {
            self.extParameters = dict["ExtParameters"] as! String
        }
        if dict.keys.contains("JobKey") {
            self.jobKey = dict["JobKey"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("TargetValue") {
            self.targetValue = dict["TargetValue"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class PushNoticeToiOSResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushNoticeToiOSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushNoticeToiOSResponseBody?

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
            var model = PushNoticeToiOSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAliasesRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class QueryAliasesResponseBody : Tea.TeaModel {
    public class AliasInfos : Tea.TeaModel {
        public class AliasInfo : Tea.TeaModel {
            public var aliasName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliasName != nil {
                    map["AliasName"] = self.aliasName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliasName") {
                    self.aliasName = dict["AliasName"] as! String
                }
            }
        }
        public var aliasInfo: [QueryAliasesResponseBody.AliasInfos.AliasInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasInfo != nil {
                var tmp : [Any] = []
                for k in self.aliasInfo! {
                    tmp.append(k.toMap())
                }
                map["AliasInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasInfo") {
                var tmp : [QueryAliasesResponseBody.AliasInfos.AliasInfo] = []
                for v in dict["AliasInfo"] as! [Any] {
                    var model = QueryAliasesResponseBody.AliasInfos.AliasInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.aliasInfo = tmp
            }
        }
    }
    public var aliasInfos: QueryAliasesResponseBody.AliasInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aliasInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasInfos != nil {
            map["AliasInfos"] = self.aliasInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasInfos") {
            var model = QueryAliasesResponseBody.AliasInfos()
            model.fromMap(dict["AliasInfos"] as! [String: Any])
            self.aliasInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAliasesResponseBody?

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
            var model = QueryAliasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDeviceInfoRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class QueryDeviceInfoResponseBody : Tea.TeaModel {
    public class DeviceInfo : Tea.TeaModel {
        public var account: String?

        public var alias: String?

        public var brand: String?

        public var deviceId: String?

        public var deviceToken: String?

        public var deviceType: String?

        public var lastOnlineTime: String?

        public var model: String?

        public var online: Bool?

        public var phoneNumber: String?

        public var pushEnabled: Bool?

        public var tags: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.brand != nil {
                map["Brand"] = self.brand!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceToken != nil {
                map["DeviceToken"] = self.deviceToken!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.lastOnlineTime != nil {
                map["LastOnlineTime"] = self.lastOnlineTime!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.pushEnabled != nil {
                map["PushEnabled"] = self.pushEnabled!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("Brand") {
                self.brand = dict["Brand"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceToken") {
                self.deviceToken = dict["DeviceToken"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("LastOnlineTime") {
                self.lastOnlineTime = dict["LastOnlineTime"] as! String
            }
            if dict.keys.contains("Model") {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("Online") {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PushEnabled") {
                self.pushEnabled = dict["PushEnabled"] as! Bool
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
        }
    }
    public var deviceInfo: QueryDeviceInfoResponseBody.DeviceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceInfo != nil {
            map["DeviceInfo"] = self.deviceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceInfo") {
            var model = QueryDeviceInfoResponseBody.DeviceInfo()
            model.fromMap(dict["DeviceInfo"] as! [String: Any])
            self.deviceInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceInfoResponseBody?

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
            var model = QueryDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDeviceStatRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceType: String?

    public var endTime: String?

    public var queryType: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryDeviceStatResponseBody : Tea.TeaModel {
    public class AppDeviceStats : Tea.TeaModel {
        public class AppDeviceStat : Tea.TeaModel {
            public var count: Int64?

            public var deviceType: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("DeviceType") {
                    self.deviceType = dict["DeviceType"] as! String
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! String
                }
            }
        }
        public var appDeviceStat: [QueryDeviceStatResponseBody.AppDeviceStats.AppDeviceStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDeviceStat != nil {
                var tmp : [Any] = []
                for k in self.appDeviceStat! {
                    tmp.append(k.toMap())
                }
                map["AppDeviceStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppDeviceStat") {
                var tmp : [QueryDeviceStatResponseBody.AppDeviceStats.AppDeviceStat] = []
                for v in dict["AppDeviceStat"] as! [Any] {
                    var model = QueryDeviceStatResponseBody.AppDeviceStats.AppDeviceStat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appDeviceStat = tmp
            }
        }
    }
    public var appDeviceStats: QueryDeviceStatResponseBody.AppDeviceStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appDeviceStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDeviceStats != nil {
            map["AppDeviceStats"] = self.appDeviceStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppDeviceStats") {
            var model = QueryDeviceStatResponseBody.AppDeviceStats()
            model.fromMap(dict["AppDeviceStats"] as! [String: Any])
            self.appDeviceStats = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDeviceStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceStatResponseBody?

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
            var model = QueryDeviceStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDevicesByAccountRequest : Tea.TeaModel {
    public var account: String?

    public var appKey: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
    }
}

public class QueryDevicesByAccountResponseBody : Tea.TeaModel {
    public class DeviceIds : Tea.TeaModel {
        public var deviceId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! [String]
            }
        }
    }
    public var deviceIds: QueryDevicesByAccountResponseBody.DeviceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceIds") {
            var model = QueryDevicesByAccountResponseBody.DeviceIds()
            model.fromMap(dict["DeviceIds"] as! [String: Any])
            self.deviceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDevicesByAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicesByAccountResponseBody?

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
            var model = QueryDevicesByAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDevicesByAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var appKey: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alias") {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
    }
}

public class QueryDevicesByAliasResponseBody : Tea.TeaModel {
    public class DeviceIds : Tea.TeaModel {
        public var deviceId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! [String]
            }
        }
    }
    public var deviceIds: QueryDevicesByAliasResponseBody.DeviceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceIds") {
            var model = QueryDevicesByAliasResponseBody.DeviceIds()
            model.fromMap(dict["DeviceIds"] as! [String: Any])
            self.deviceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDevicesByAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicesByAliasResponseBody?

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
            var model = QueryDevicesByAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPushRecordsRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var endTime: String?

    public var keyword: String?

    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var pushType: String?

    public var source: String?

    public var startTime: String?

    public var target: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PushType") {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
    }
}

public class QueryPushRecordsResponseBody : Tea.TeaModel {
    public class PushInfos : Tea.TeaModel {
        public class PushInfo : Tea.TeaModel {
            public var appKey: Int64?

            public var body: String?

            public var deviceType: String?

            public var messageId: String?

            public var pushTime: String?

            public var pushType: String?

            public var source: String?

            public var status: String?

            public var target: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.body != nil {
                    map["Body"] = self.body!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.pushTime != nil {
                    map["PushTime"] = self.pushTime!
                }
                if self.pushType != nil {
                    map["PushType"] = self.pushType!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! Int64
                }
                if dict.keys.contains("Body") {
                    self.body = dict["Body"] as! String
                }
                if dict.keys.contains("DeviceType") {
                    self.deviceType = dict["DeviceType"] as! String
                }
                if dict.keys.contains("MessageId") {
                    self.messageId = dict["MessageId"] as! String
                }
                if dict.keys.contains("PushTime") {
                    self.pushTime = dict["PushTime"] as! String
                }
                if dict.keys.contains("PushType") {
                    self.pushType = dict["PushType"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Target") {
                    self.target = dict["Target"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var pushInfo: [QueryPushRecordsResponseBody.PushInfos.PushInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pushInfo != nil {
                var tmp : [Any] = []
                for k in self.pushInfo! {
                    tmp.append(k.toMap())
                }
                map["PushInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PushInfo") {
                var tmp : [QueryPushRecordsResponseBody.PushInfos.PushInfo] = []
                for v in dict["PushInfo"] as! [Any] {
                    var model = QueryPushRecordsResponseBody.PushInfos.PushInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pushInfo = tmp
            }
        }
    }
    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var pushInfos: QueryPushRecordsResponseBody.PushInfos?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pushInfos != nil {
            map["PushInfos"] = self.pushInfos?.toMap()
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PushInfos") {
            var model = QueryPushRecordsResponseBody.PushInfos()
            model.fromMap(dict["PushInfos"] as! [String: Any])
            self.pushInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class QueryPushRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushRecordsResponseBody?

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
            var model = QueryPushRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPushStatByAppRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var endTime: String?

    public var granularity: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryPushStatByAppResponseBody : Tea.TeaModel {
    public class AppPushStats : Tea.TeaModel {
        public class AppPushStat : Tea.TeaModel {
            public var acceptCount: Int64?

            public var deletedCount: Int64?

            public var openedCount: Int64?

            public var receivedCount: Int64?

            public var sentCount: Int64?

            public var smsFailedCount: Int64?

            public var smsReceiveFailedCount: Int64?

            public var smsReceiveSuccessCount: Int64?

            public var smsSentCount: Int64?

            public var smsSkipCount: Int64?

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
                if self.acceptCount != nil {
                    map["AcceptCount"] = self.acceptCount!
                }
                if self.deletedCount != nil {
                    map["DeletedCount"] = self.deletedCount!
                }
                if self.openedCount != nil {
                    map["OpenedCount"] = self.openedCount!
                }
                if self.receivedCount != nil {
                    map["ReceivedCount"] = self.receivedCount!
                }
                if self.sentCount != nil {
                    map["SentCount"] = self.sentCount!
                }
                if self.smsFailedCount != nil {
                    map["SmsFailedCount"] = self.smsFailedCount!
                }
                if self.smsReceiveFailedCount != nil {
                    map["SmsReceiveFailedCount"] = self.smsReceiveFailedCount!
                }
                if self.smsReceiveSuccessCount != nil {
                    map["SmsReceiveSuccessCount"] = self.smsReceiveSuccessCount!
                }
                if self.smsSentCount != nil {
                    map["SmsSentCount"] = self.smsSentCount!
                }
                if self.smsSkipCount != nil {
                    map["SmsSkipCount"] = self.smsSkipCount!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptCount") {
                    self.acceptCount = dict["AcceptCount"] as! Int64
                }
                if dict.keys.contains("DeletedCount") {
                    self.deletedCount = dict["DeletedCount"] as! Int64
                }
                if dict.keys.contains("OpenedCount") {
                    self.openedCount = dict["OpenedCount"] as! Int64
                }
                if dict.keys.contains("ReceivedCount") {
                    self.receivedCount = dict["ReceivedCount"] as! Int64
                }
                if dict.keys.contains("SentCount") {
                    self.sentCount = dict["SentCount"] as! Int64
                }
                if dict.keys.contains("SmsFailedCount") {
                    self.smsFailedCount = dict["SmsFailedCount"] as! Int64
                }
                if dict.keys.contains("SmsReceiveFailedCount") {
                    self.smsReceiveFailedCount = dict["SmsReceiveFailedCount"] as! Int64
                }
                if dict.keys.contains("SmsReceiveSuccessCount") {
                    self.smsReceiveSuccessCount = dict["SmsReceiveSuccessCount"] as! Int64
                }
                if dict.keys.contains("SmsSentCount") {
                    self.smsSentCount = dict["SmsSentCount"] as! Int64
                }
                if dict.keys.contains("SmsSkipCount") {
                    self.smsSkipCount = dict["SmsSkipCount"] as! Int64
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! String
                }
            }
        }
        public var appPushStat: [QueryPushStatByAppResponseBody.AppPushStats.AppPushStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appPushStat != nil {
                var tmp : [Any] = []
                for k in self.appPushStat! {
                    tmp.append(k.toMap())
                }
                map["AppPushStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppPushStat") {
                var tmp : [QueryPushStatByAppResponseBody.AppPushStats.AppPushStat] = []
                for v in dict["AppPushStat"] as! [Any] {
                    var model = QueryPushStatByAppResponseBody.AppPushStats.AppPushStat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appPushStat = tmp
            }
        }
    }
    public var appPushStats: QueryPushStatByAppResponseBody.AppPushStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appPushStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appPushStats != nil {
            map["AppPushStats"] = self.appPushStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppPushStats") {
            var model = QueryPushStatByAppResponseBody.AppPushStats()
            model.fromMap(dict["AppPushStats"] as! [String: Any])
            self.appPushStats = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPushStatByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushStatByAppResponseBody?

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
            var model = QueryPushStatByAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPushStatByMsgRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! Int64
        }
    }
}

public class QueryPushStatByMsgResponseBody : Tea.TeaModel {
    public class PushStats : Tea.TeaModel {
        public class PushStat : Tea.TeaModel {
            public var acceptCount: Int64?

            public var deletedCount: Int64?

            public var messageId: String?

            public var openedCount: Int64?

            public var receivedCount: Int64?

            public var sentCount: Int64?

            public var smsFailedCount: Int64?

            public var smsReceiveFailedCount: Int64?

            public var smsReceiveSuccessCount: Int64?

            public var smsSentCount: Int64?

            public var smsSkipCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptCount != nil {
                    map["AcceptCount"] = self.acceptCount!
                }
                if self.deletedCount != nil {
                    map["DeletedCount"] = self.deletedCount!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.openedCount != nil {
                    map["OpenedCount"] = self.openedCount!
                }
                if self.receivedCount != nil {
                    map["ReceivedCount"] = self.receivedCount!
                }
                if self.sentCount != nil {
                    map["SentCount"] = self.sentCount!
                }
                if self.smsFailedCount != nil {
                    map["SmsFailedCount"] = self.smsFailedCount!
                }
                if self.smsReceiveFailedCount != nil {
                    map["SmsReceiveFailedCount"] = self.smsReceiveFailedCount!
                }
                if self.smsReceiveSuccessCount != nil {
                    map["SmsReceiveSuccessCount"] = self.smsReceiveSuccessCount!
                }
                if self.smsSentCount != nil {
                    map["SmsSentCount"] = self.smsSentCount!
                }
                if self.smsSkipCount != nil {
                    map["SmsSkipCount"] = self.smsSkipCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptCount") {
                    self.acceptCount = dict["AcceptCount"] as! Int64
                }
                if dict.keys.contains("DeletedCount") {
                    self.deletedCount = dict["DeletedCount"] as! Int64
                }
                if dict.keys.contains("MessageId") {
                    self.messageId = dict["MessageId"] as! String
                }
                if dict.keys.contains("OpenedCount") {
                    self.openedCount = dict["OpenedCount"] as! Int64
                }
                if dict.keys.contains("ReceivedCount") {
                    self.receivedCount = dict["ReceivedCount"] as! Int64
                }
                if dict.keys.contains("SentCount") {
                    self.sentCount = dict["SentCount"] as! Int64
                }
                if dict.keys.contains("SmsFailedCount") {
                    self.smsFailedCount = dict["SmsFailedCount"] as! Int64
                }
                if dict.keys.contains("SmsReceiveFailedCount") {
                    self.smsReceiveFailedCount = dict["SmsReceiveFailedCount"] as! Int64
                }
                if dict.keys.contains("SmsReceiveSuccessCount") {
                    self.smsReceiveSuccessCount = dict["SmsReceiveSuccessCount"] as! Int64
                }
                if dict.keys.contains("SmsSentCount") {
                    self.smsSentCount = dict["SmsSentCount"] as! Int64
                }
                if dict.keys.contains("SmsSkipCount") {
                    self.smsSkipCount = dict["SmsSkipCount"] as! Int64
                }
            }
        }
        public var pushStat: [QueryPushStatByMsgResponseBody.PushStats.PushStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pushStat != nil {
                var tmp : [Any] = []
                for k in self.pushStat! {
                    tmp.append(k.toMap())
                }
                map["PushStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PushStat") {
                var tmp : [QueryPushStatByMsgResponseBody.PushStats.PushStat] = []
                for v in dict["PushStat"] as! [Any] {
                    var model = QueryPushStatByMsgResponseBody.PushStats.PushStat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pushStat = tmp
            }
        }
    }
    public var pushStats: QueryPushStatByMsgResponseBody.PushStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushStats != nil {
            map["PushStats"] = self.pushStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PushStats") {
            var model = QueryPushStatByMsgResponseBody.PushStats()
            model.fromMap(dict["PushStats"] as! [String: Any])
            self.pushStats = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPushStatByMsgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushStatByMsgResponseBody?

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
            var model = QueryPushStatByMsgResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTagsRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var clientKey: String?

    public var keyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.clientKey != nil {
            map["ClientKey"] = self.clientKey!
        }
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("ClientKey") {
            self.clientKey = dict["ClientKey"] as! String
        }
        if dict.keys.contains("KeyType") {
            self.keyType = dict["KeyType"] as! String
        }
    }
}

public class QueryTagsResponseBody : Tea.TeaModel {
    public class TagInfos : Tea.TeaModel {
        public class TagInfo : Tea.TeaModel {
            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var tagInfo: [QueryTagsResponseBody.TagInfos.TagInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagInfo != nil {
                var tmp : [Any] = []
                for k in self.tagInfo! {
                    tmp.append(k.toMap())
                }
                map["TagInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagInfo") {
                var tmp : [QueryTagsResponseBody.TagInfos.TagInfo] = []
                for v in dict["TagInfo"] as! [Any] {
                    var model = QueryTagsResponseBody.TagInfos.TagInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var tagInfos: QueryTagsResponseBody.TagInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagInfos != nil {
            map["TagInfos"] = self.tagInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagInfos") {
            var model = QueryTagsResponseBody.TagInfos()
            model.fromMap(dict["TagInfos"] as! [String: Any])
            self.tagInfos = model
        }
    }
}

public class QueryTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagsResponseBody?

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
            var model = QueryTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUniqueDeviceStatRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var endTime: String?

    public var granularity: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryUniqueDeviceStatResponseBody : Tea.TeaModel {
    public class AppDeviceStats : Tea.TeaModel {
        public class AppDeviceStat : Tea.TeaModel {
            public var count: Int64?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! String
                }
            }
        }
        public var appDeviceStat: [QueryUniqueDeviceStatResponseBody.AppDeviceStats.AppDeviceStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDeviceStat != nil {
                var tmp : [Any] = []
                for k in self.appDeviceStat! {
                    tmp.append(k.toMap())
                }
                map["AppDeviceStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppDeviceStat") {
                var tmp : [QueryUniqueDeviceStatResponseBody.AppDeviceStats.AppDeviceStat] = []
                for v in dict["AppDeviceStat"] as! [Any] {
                    var model = QueryUniqueDeviceStatResponseBody.AppDeviceStats.AppDeviceStat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appDeviceStat = tmp
            }
        }
    }
    public var appDeviceStats: QueryUniqueDeviceStatResponseBody.AppDeviceStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appDeviceStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDeviceStats != nil {
            map["AppDeviceStats"] = self.appDeviceStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppDeviceStats") {
            var model = QueryUniqueDeviceStatResponseBody.AppDeviceStats()
            model.fromMap(dict["AppDeviceStats"] as! [String: Any])
            self.appDeviceStats = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryUniqueDeviceStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUniqueDeviceStatResponseBody?

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
            var model = QueryUniqueDeviceStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTagRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class RemoveTagResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTagResponseBody?

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
            var model = RemoveTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public var appKey: Int64?

    public var deviceId: String?

    public var unbindAll: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.unbindAll != nil {
            map["UnbindAll"] = self.unbindAll!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("UnbindAll") {
            self.unbindAll = dict["UnbindAll"] as! Bool
        }
    }
}

public class UnbindAliasResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAliasResponseBody?

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
            var model = UnbindAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindPhoneRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class UnbindPhoneResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindPhoneResponseBody?

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
            var model = UnbindPhoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindTagRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var clientKey: String?

    public var keyType: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.clientKey != nil {
            map["ClientKey"] = self.clientKey!
        }
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("ClientKey") {
            self.clientKey = dict["ClientKey"] as! String
        }
        if dict.keys.contains("KeyType") {
            self.keyType = dict["KeyType"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class UnbindTagResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindTagResponseBody?

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
            var model = UnbindTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
