import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddTerminalRequest : Tea.TeaModel {
    public var alias: String?

    public var clientType: String?

    public var mainBizType: String?

    public var serialNumber: String?

    public var terminalGroupId: String?

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
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class AddTerminalResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTerminalResponseBody?

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
            var model = AddTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddTerminalsRequest : Tea.TeaModel {
    public class AddTerminalParams : Tea.TeaModel {
        public var alias: String?

        public var clientType: Int32?

        public var serialNumber: String?

        public var terminalGroupId: String?

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
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.terminalGroupId != nil {
                map["TerminalGroupId"] = self.terminalGroupId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["ClientType"] as? Int32 {
                self.clientType = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["TerminalGroupId"] as? String {
                self.terminalGroupId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var addTerminalParams: [AddTerminalsRequest.AddTerminalParams]?

    public var mainBizType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addTerminalParams != nil {
            var tmp : [Any] = []
            for k in self.addTerminalParams! {
                tmp.append(k.toMap())
            }
            map["AddTerminalParams"] = tmp
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddTerminalParams"] as? [Any?] {
            var tmp : [AddTerminalsRequest.AddTerminalParams] = []
            for v in value {
                if v != nil {
                    var model = AddTerminalsRequest.AddTerminalParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addTerminalParams = tmp
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
    }
}

public class AddTerminalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var serialNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
        }
    }
    public var code: String?

    public var data: [AddTerminalsResponseBody.Data]?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [AddTerminalsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = AddTerminalsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddTerminalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTerminalsResponseBody?

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
            var model = AddTerminalsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAccountLessLoginUserRequest : Tea.TeaModel {
    public var endUserId: String?

    public var serialNumber: String?

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
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class BindAccountLessLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BindAccountLessLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAccountLessLoginUserResponseBody?

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
            var model = BindAccountLessLoginUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindPasswordFreeLoginUserRequest : Tea.TeaModel {
    public var endUserId: String?

    public var mainBizType: String?

    public var serialNumber: String?

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
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class BindPasswordFreeLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BindPasswordFreeLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindPasswordFreeLoginUserResponseBody?

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
            var model = BindPasswordFreeLoginUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDeviceSeatsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var serialNo: String?

    public var serialNoList: [String]?

    public var siteId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
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
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["SerialNoList"] as? [String] {
            self.serialNoList = value
        }
        if let value = dict["SiteId"] as? String {
            self.siteId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class DescribeDeviceSeatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var seatCol: Int32?

        public var seatName: String?

        public var seatNo: String?

        public var seatRow: Int32?

        public var serialNo: String?

        public var siteId: String?

        public var siteName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.seatCol != nil {
                map["SeatCol"] = self.seatCol!
            }
            if self.seatName != nil {
                map["SeatName"] = self.seatName!
            }
            if self.seatNo != nil {
                map["SeatNo"] = self.seatNo!
            }
            if self.seatRow != nil {
                map["SeatRow"] = self.seatRow!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SeatCol"] as? Int32 {
                self.seatCol = value
            }
            if let value = dict["SeatName"] as? String {
                self.seatName = value
            }
            if let value = dict["SeatNo"] as? String {
                self.seatNo = value
            }
            if let value = dict["SeatRow"] as? Int32 {
                self.seatRow = value
            }
            if let value = dict["SerialNo"] as? String {
                self.serialNo = value
            }
            if let value = dict["SiteId"] as? String {
                self.siteId = value
            }
            if let value = dict["SiteName"] as? String {
                self.siteName = value
            }
        }
    }
    public var code: String?

    public var data: [DescribeDeviceSeatsResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDeviceSeatsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDeviceSeatsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDeviceSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceSeatsResponseBody?

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
            var model = DescribeDeviceSeatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTerminalRequest : Tea.TeaModel {
    public var alias: String?

    public var buildId: String?

    public var clientType: Int32?

    public var inManage: Bool?

    public var ipv4: String?

    public var locationInfo: String?

    public var maxResults: Int32?

    public var model: String?

    public var nextToken: String?

    public var searchKeyword: String?

    public var serialNumber: String?

    public var terminalGroupId: String?

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
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.ipv4 != nil {
            map["Ipv4"] = self.ipv4!
        }
        if self.locationInfo != nil {
            map["LocationInfo"] = self.locationInfo!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.searchKeyword != nil {
            map["SearchKeyword"] = self.searchKeyword!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["Ipv4"] as? String {
            self.ipv4 = value
        }
        if let value = dict["LocationInfo"] as? String {
            self.locationInfo = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SearchKeyword"] as? String {
            self.searchKeyword = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ListTerminalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alias: String?

        public var bindUserCount: Int32?

        public var bindUserId: String?

        public var buildId: String?

        public var clientType: Int32?

        public var desktopId: String?

        public var inManage: Bool?

        public var ipv4: String?

        public var lastLoginUser: String?

        public var locationInfo: String?

        public var lockSettings: Bool?

        public var loginUser: String?

        public var model: String?

        public var onlineStatus: Bool?

        public var serialNumber: String?

        public var terminalGroupId: String?

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
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.bindUserCount != nil {
                map["BindUserCount"] = self.bindUserCount!
            }
            if self.bindUserId != nil {
                map["BindUserId"] = self.bindUserId!
            }
            if self.buildId != nil {
                map["BuildId"] = self.buildId!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.inManage != nil {
                map["InManage"] = self.inManage!
            }
            if self.ipv4 != nil {
                map["Ipv4"] = self.ipv4!
            }
            if self.lastLoginUser != nil {
                map["LastLoginUser"] = self.lastLoginUser!
            }
            if self.locationInfo != nil {
                map["LocationInfo"] = self.locationInfo!
            }
            if self.lockSettings != nil {
                map["LockSettings"] = self.lockSettings!
            }
            if self.loginUser != nil {
                map["LoginUser"] = self.loginUser!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.onlineStatus != nil {
                map["OnlineStatus"] = self.onlineStatus!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.terminalGroupId != nil {
                map["TerminalGroupId"] = self.terminalGroupId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["BindUserCount"] as? Int32 {
                self.bindUserCount = value
            }
            if let value = dict["BindUserId"] as? String {
                self.bindUserId = value
            }
            if let value = dict["BuildId"] as? String {
                self.buildId = value
            }
            if let value = dict["ClientType"] as? Int32 {
                self.clientType = value
            }
            if let value = dict["DesktopId"] as? String {
                self.desktopId = value
            }
            if let value = dict["InManage"] as? Bool {
                self.inManage = value
            }
            if let value = dict["Ipv4"] as? String {
                self.ipv4 = value
            }
            if let value = dict["LastLoginUser"] as? String {
                self.lastLoginUser = value
            }
            if let value = dict["LocationInfo"] as? String {
                self.locationInfo = value
            }
            if let value = dict["LockSettings"] as? Bool {
                self.lockSettings = value
            }
            if let value = dict["LoginUser"] as? String {
                self.loginUser = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["OnlineStatus"] as? Bool {
                self.onlineStatus = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["TerminalGroupId"] as? String {
                self.terminalGroupId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var code: String?

    public var data: [ListTerminalResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListTerminalResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTerminalResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTerminalResponseBody?

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
            var model = ListTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendOpsMessageToTerminalsRequest : Tea.TeaModel {
    public var delay: Bool?

    public var msg: String?

    public var opsAction: String?

    public var uuids: [String]?

    public var waitForAck: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delay != nil {
            map["Delay"] = self.delay!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.opsAction != nil {
            map["OpsAction"] = self.opsAction!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        if self.waitForAck != nil {
            map["WaitForAck"] = self.waitForAck!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Delay"] as? Bool {
            self.delay = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["OpsAction"] as? String {
            self.opsAction = value
        }
        if let value = dict["Uuids"] as? [String] {
            self.uuids = value
        }
        if let value = dict["WaitForAck"] as? Bool {
            self.waitForAck = value
        }
    }
}

public class SendOpsMessageToTerminalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failReason: String?

        public var result: String?

        public var serialNumber: String?

        public var success: Bool?

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
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var code: String?

    public var data: [SendOpsMessageToTerminalsResponseBody.Data]?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [SendOpsMessageToTerminalsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = SendOpsMessageToTerminalsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendOpsMessageToTerminalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendOpsMessageToTerminalsResponseBody?

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
            var model = SendOpsMessageToTerminalsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindAccountLessLoginUserRequest : Tea.TeaModel {
    public var serialNumber: String?

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
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class UnbindAccountLessLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UnbindAccountLessLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAccountLessLoginUserResponseBody?

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
            var model = UnbindAccountLessLoginUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindDeviceSeatsRequest : Tea.TeaModel {
    public var serialNoList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNoList"] as? [String] {
            self.serialNoList = value
        }
    }
}

public class UnbindDeviceSeatsShrinkRequest : Tea.TeaModel {
    public var serialNoListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNoListShrink != nil {
            map["SerialNoList"] = self.serialNoListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNoList"] as? String {
            self.serialNoListShrink = value
        }
    }
}

public class UnbindDeviceSeatsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnbindDeviceSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindDeviceSeatsResponseBody?

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
            var model = UnbindDeviceSeatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindPasswordFreeLoginUserRequest : Tea.TeaModel {
    public var mainBizType: String?

    public var serialNumber: String?

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
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class UnbindPasswordFreeLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UnbindPasswordFreeLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindPasswordFreeLoginUserResponseBody?

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
            var model = UnbindPasswordFreeLoginUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
