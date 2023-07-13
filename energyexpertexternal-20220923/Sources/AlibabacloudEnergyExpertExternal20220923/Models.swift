import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetDeviceInfoRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ds: String?

    public var factoryId: String?

    public override init() {
        super.init()
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
            map["deviceId"] = self.deviceId!
        }
        if self.ds != nil {
            map["ds"] = self.ds!
        }
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deviceId") && dict["deviceId"] != nil {
            self.deviceId = dict["deviceId"] as! String
        }
        if dict.keys.contains("ds") && dict["ds"] != nil {
            self.ds = dict["ds"] as! String
        }
        if dict.keys.contains("factoryId") && dict["factoryId"] != nil {
            self.factoryId = dict["factoryId"] as! String
        }
    }
}

public class GetDeviceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RecordList : Tea.TeaModel {
            public var identifier: String?

            public var paramName: String?

            public var statisticsDate: String?

            public var type: String?

            public var unit: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.paramName != nil {
                    map["paramName"] = self.paramName!
                }
                if self.statisticsDate != nil {
                    map["statisticsDate"] = self.statisticsDate!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.unit != nil {
                    map["unit"] = self.unit!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("identifier") && dict["identifier"] != nil {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("paramName") && dict["paramName"] != nil {
                    self.paramName = dict["paramName"] as! String
                }
                if dict.keys.contains("statisticsDate") && dict["statisticsDate"] != nil {
                    self.statisticsDate = dict["statisticsDate"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("unit") && dict["unit"] != nil {
                    self.unit = dict["unit"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! Double
                }
            }
        }
        public var deviceId: String?

        public var deviceName: String?

        public var firstTypeName: String?

        public var recordList: [GetDeviceInfoResponseBody.Data.RecordList]?

        public var secondTypeName: String?

        public override init() {
            super.init()
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
                map["deviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.firstTypeName != nil {
                map["firstTypeName"] = self.firstTypeName!
            }
            if self.recordList != nil {
                var tmp : [Any] = []
                for k in self.recordList! {
                    tmp.append(k.toMap())
                }
                map["recordList"] = tmp
            }
            if self.secondTypeName != nil {
                map["secondTypeName"] = self.secondTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deviceId") && dict["deviceId"] != nil {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("deviceName") && dict["deviceName"] != nil {
                self.deviceName = dict["deviceName"] as! String
            }
            if dict.keys.contains("firstTypeName") && dict["firstTypeName"] != nil {
                self.firstTypeName = dict["firstTypeName"] as! String
            }
            if dict.keys.contains("recordList") && dict["recordList"] != nil {
                var tmp : [GetDeviceInfoResponseBody.Data.RecordList] = []
                for v in dict["recordList"] as! [Any] {
                    var model = GetDeviceInfoResponseBody.Data.RecordList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recordList = tmp
            }
            if dict.keys.contains("secondTypeName") && dict["secondTypeName"] != nil {
                self.secondTypeName = dict["secondTypeName"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDeviceInfoResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetDeviceInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceInfoResponseBody?

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
            var model = GetDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceListRequest : Tea.TeaModel {
    public var factoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("factoryId") && dict["factoryId"] != nil {
            self.factoryId = dict["factoryId"] as! String
        }
    }
}

public class GetDeviceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceList : Tea.TeaModel {
            public class Info : Tea.TeaModel {
                public var constKva: Int32?

                public var ct: Int32?

                public var magnification: Int32?

                public var pressure: Int32?

                public var pt: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.constKva != nil {
                        map["constKva"] = self.constKva!
                    }
                    if self.ct != nil {
                        map["ct"] = self.ct!
                    }
                    if self.magnification != nil {
                        map["magnification"] = self.magnification!
                    }
                    if self.pressure != nil {
                        map["pressure"] = self.pressure!
                    }
                    if self.pt != nil {
                        map["pt"] = self.pt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("constKva") && dict["constKva"] != nil {
                        self.constKva = dict["constKva"] as! Int32
                    }
                    if dict.keys.contains("ct") && dict["ct"] != nil {
                        self.ct = dict["ct"] as! Int32
                    }
                    if dict.keys.contains("magnification") && dict["magnification"] != nil {
                        self.magnification = dict["magnification"] as! Int32
                    }
                    if dict.keys.contains("pressure") && dict["pressure"] != nil {
                        self.pressure = dict["pressure"] as! Int32
                    }
                    if dict.keys.contains("pt") && dict["pt"] != nil {
                        self.pt = dict["pt"] as! Int32
                    }
                }
            }
            public var deviceId: String?

            public var deviceName: String?

            public var firstTypeName: String?

            public var info: GetDeviceListResponseBody.Data.DeviceList.Info?

            public var parentDevice: String?

            public var secondTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.info?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceId != nil {
                    map["deviceId"] = self.deviceId!
                }
                if self.deviceName != nil {
                    map["deviceName"] = self.deviceName!
                }
                if self.firstTypeName != nil {
                    map["firstTypeName"] = self.firstTypeName!
                }
                if self.info != nil {
                    map["info"] = self.info?.toMap()
                }
                if self.parentDevice != nil {
                    map["parentDevice"] = self.parentDevice!
                }
                if self.secondTypeName != nil {
                    map["secondTypeName"] = self.secondTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("deviceId") && dict["deviceId"] != nil {
                    self.deviceId = dict["deviceId"] as! String
                }
                if dict.keys.contains("deviceName") && dict["deviceName"] != nil {
                    self.deviceName = dict["deviceName"] as! String
                }
                if dict.keys.contains("firstTypeName") && dict["firstTypeName"] != nil {
                    self.firstTypeName = dict["firstTypeName"] as! String
                }
                if dict.keys.contains("info") && dict["info"] != nil {
                    var model = GetDeviceListResponseBody.Data.DeviceList.Info()
                    model.fromMap(dict["info"] as! [String: Any])
                    self.info = model
                }
                if dict.keys.contains("parentDevice") && dict["parentDevice"] != nil {
                    self.parentDevice = dict["parentDevice"] as! String
                }
                if dict.keys.contains("secondTypeName") && dict["secondTypeName"] != nil {
                    self.secondTypeName = dict["secondTypeName"] as! String
                }
            }
        }
        public var code: String?

        public var deviceList: [GetDeviceListResponseBody.Data.DeviceList]?

        public var factoryId: String?

        public var httpCode: Int32?

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
                map["code"] = self.code!
            }
            if self.deviceList != nil {
                var tmp : [Any] = []
                for k in self.deviceList! {
                    tmp.append(k.toMap())
                }
                map["deviceList"] = tmp
            }
            if self.factoryId != nil {
                map["factoryId"] = self.factoryId!
            }
            if self.httpCode != nil {
                map["httpCode"] = self.httpCode!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("deviceList") && dict["deviceList"] != nil {
                var tmp : [GetDeviceListResponseBody.Data.DeviceList] = []
                for v in dict["deviceList"] as! [Any] {
                    var model = GetDeviceListResponseBody.Data.DeviceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceList = tmp
            }
            if dict.keys.contains("factoryId") && dict["factoryId"] != nil {
                self.factoryId = dict["factoryId"] as! String
            }
            if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
                self.httpCode = dict["httpCode"] as! Int32
            }
            if dict.keys.contains("success") && dict["success"] != nil {
                self.success = dict["success"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: GetDeviceListResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetDeviceListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetDeviceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceListResponseBody?

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
            var model = GetDeviceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrgAndFactoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FactoryList : Tea.TeaModel {
            public var factoryId: String?

            public var factoryName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.factoryId != nil {
                    map["factoryId"] = self.factoryId!
                }
                if self.factoryName != nil {
                    map["factoryName"] = self.factoryName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("factoryId") && dict["factoryId"] != nil {
                    self.factoryId = dict["factoryId"] as! String
                }
                if dict.keys.contains("factoryName") && dict["factoryName"] != nil {
                    self.factoryName = dict["factoryName"] as! String
                }
            }
        }
        public var aliyunPk: String?

        public var factoryList: [GetOrgAndFactoryResponseBody.Data.FactoryList]?

        public var organizationId: String?

        public var organizationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunPk != nil {
                map["aliyunPk"] = self.aliyunPk!
            }
            if self.factoryList != nil {
                var tmp : [Any] = []
                for k in self.factoryList! {
                    tmp.append(k.toMap())
                }
                map["factoryList"] = tmp
            }
            if self.organizationId != nil {
                map["organizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["organizationName"] = self.organizationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aliyunPk") && dict["aliyunPk"] != nil {
                self.aliyunPk = dict["aliyunPk"] as! String
            }
            if dict.keys.contains("factoryList") && dict["factoryList"] != nil {
                var tmp : [GetOrgAndFactoryResponseBody.Data.FactoryList] = []
                for v in dict["factoryList"] as! [Any] {
                    var model = GetOrgAndFactoryResponseBody.Data.FactoryList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.factoryList = tmp
            }
            if dict.keys.contains("organizationId") && dict["organizationId"] != nil {
                self.organizationId = dict["organizationId"] as! String
            }
            if dict.keys.contains("organizationName") && dict["organizationName"] != nil {
                self.organizationName = dict["organizationName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOrgAndFactoryResponseBody.Data]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [GetOrgAndFactoryResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetOrgAndFactoryResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetOrgAndFactoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrgAndFactoryResponseBody?

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
            var model = GetOrgAndFactoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
