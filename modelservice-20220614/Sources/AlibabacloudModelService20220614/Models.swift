import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetMonthAmountRequest : Tea.TeaModel {
    public var sceneType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
    }
}

public class GetMonthAmountResponseBody : Tea.TeaModel {
    public var backgroundAmount: Int32?

    public var postpayAmount: Int32?

    public var prepayAmount: Int32?

    public var requestId: String?

    public var totalAmount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backgroundAmount != nil {
            map["BackgroundAmount"] = self.backgroundAmount!
        }
        if self.postpayAmount != nil {
            map["PostpayAmount"] = self.postpayAmount!
        }
        if self.prepayAmount != nil {
            map["PrepayAmount"] = self.prepayAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalAmount != nil {
            map["TotalAmount"] = self.totalAmount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackgroundAmount"] as? Int32 {
            self.backgroundAmount = value
        }
        if let value = dict["PostpayAmount"] as? Int32 {
            self.postpayAmount = value
        }
        if let value = dict["PrepayAmount"] as? Int32 {
            self.prepayAmount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalAmount"] as? Int32 {
            self.totalAmount = value
        }
    }
}

public class GetMonthAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMonthAmountResponseBody?

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
            var model = GetMonthAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var sceneType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public var appId: String?

    public var code: String?

    public var host: String?

    public var message: String?

    public var requestId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

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
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDayAmountRequest : Tea.TeaModel {
    public var endTime: String?

    public var sceneType: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListDayAmountResponseBody : Tea.TeaModel {
    public class DayAmounts : Tea.TeaModel {
        public var amount: Int32?

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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["Date"] as? String {
                self.date = value
            }
        }
    }
    public var dayAmounts: [ListDayAmountResponseBody.DayAmounts]?

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
        if self.dayAmounts != nil {
            var tmp : [Any] = []
            for k in self.dayAmounts! {
                tmp.append(k.toMap())
            }
            map["DayAmounts"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DayAmounts"] as? [Any?] {
            var tmp : [ListDayAmountResponseBody.DayAmounts] = []
            for v in value {
                if v != nil {
                    var model = ListDayAmountResponseBody.DayAmounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dayAmounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDayAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDayAmountResponseBody?

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
            var model = ListDayAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRechargeBillsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
    }
}

public class ListRechargeBillsResponseBody : Tea.TeaModel {
    public class InstanseInfos : Tea.TeaModel {
        public var currTimes: Int32?

        public var gmtEndTime: String?

        public var initTimes: Int32?

        public var instanceId: String?

        public var source: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currTimes != nil {
                map["CurrTimes"] = self.currTimes!
            }
            if self.gmtEndTime != nil {
                map["GmtEndTime"] = self.gmtEndTime!
            }
            if self.initTimes != nil {
                map["InitTimes"] = self.initTimes!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrTimes"] as? Int32 {
                self.currTimes = value
            }
            if let value = dict["GmtEndTime"] as? String {
                self.gmtEndTime = value
            }
            if let value = dict["InitTimes"] as? Int32 {
                self.initTimes = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
        }
    }
    public var instanseInfos: [ListRechargeBillsResponseBody.InstanseInfos]?

    public var requestId: String?

    public var residueAmount: Int32?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanseInfos != nil {
            var tmp : [Any] = []
            for k in self.instanseInfos! {
                tmp.append(k.toMap())
            }
            map["InstanseInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.residueAmount != nil {
            map["ResidueAmount"] = self.residueAmount!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanseInfos"] as? [Any?] {
            var tmp : [ListRechargeBillsResponseBody.InstanseInfos] = []
            for v in value {
                if v != nil {
                    var model = ListRechargeBillsResponseBody.InstanseInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanseInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResidueAmount"] as? Int32 {
            self.residueAmount = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRechargeBillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRechargeBillsResponseBody?

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
            var model = ListRechargeBillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
