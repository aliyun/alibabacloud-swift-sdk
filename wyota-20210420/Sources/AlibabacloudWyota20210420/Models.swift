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

public class DeleteClientsRequest : Tea.TeaModel {
    public var callerAliUid: String?

    public var inManage: Bool?

    public var uuids: [String]?

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
        if self.callerAliUid != nil {
            map["CallerAliUid"] = self.callerAliUid!
        }
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerAliUid"] as? String {
            self.callerAliUid = value
        }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["Uuids"] as? [String] {
            self.uuids = value
        }
    }
}

public class DeleteClientsResponseBody : Tea.TeaModel {
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

public class DeleteClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientsResponseBody?

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
            var model = DeleteClientsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClientsRequest : Tea.TeaModel {
    public var callerAliUid: String?

    public var clientType: Int32?

    public var customResourceId: String?

    public var customResourceStatus: Bool?

    public var inManage: Bool?

    public var includeSubGroups: Bool?

    public var maxResults: Int32?

    public var model: String?

    public var nextToken: String?

    public var onlineStatus: Bool?

    public var platform: String?

    public var searchKeyword: String?

    public var terminalGroupId: String?

    public var uuids: [String]?

    public var withBindUser: Bool?

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
        if self.callerAliUid != nil {
            map["CallerAliUid"] = self.callerAliUid!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.customResourceId != nil {
            map["CustomResourceId"] = self.customResourceId!
        }
        if self.customResourceStatus != nil {
            map["CustomResourceStatus"] = self.customResourceStatus!
        }
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.includeSubGroups != nil {
            map["IncludeSubGroups"] = self.includeSubGroups!
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
        if self.onlineStatus != nil {
            map["OnlineStatus"] = self.onlineStatus!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.searchKeyword != nil {
            map["SearchKeyword"] = self.searchKeyword!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        if self.withBindUser != nil {
            map["WithBindUser"] = self.withBindUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerAliUid"] as? String {
            self.callerAliUid = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["CustomResourceId"] as? String {
            self.customResourceId = value
        }
        if let value = dict["CustomResourceStatus"] as? Bool {
            self.customResourceStatus = value
        }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["IncludeSubGroups"] as? Bool {
            self.includeSubGroups = value
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
        if let value = dict["OnlineStatus"] as? Bool {
            self.onlineStatus = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["SearchKeyword"] as? String {
            self.searchKeyword = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Uuids"] as? [String] {
            self.uuids = value
        }
        if let value = dict["WithBindUser"] as? Bool {
            self.withBindUser = value
        }
    }
}

public class DescribeClientsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FunctionSupport : Tea.TeaModel {
            public var enablePolicy: Bool?

            public var passwordFreeLoginForbiddenReason: String?

            public var supportAssistLogin: Bool?

            public var supportDiagnose: Bool?

            public var supportLimitLoginUser: Bool?

            public var supportLocalDeviceSn: Bool?

            public var supportManage: Bool?

            public var supportModifyPolicy: Bool?

            public var supportPasswordFreeLogin: Bool?

            public var supportReboot: Bool?

            public var supportReset: Bool?

            public var supportResetPin: Bool?

            public var supportStop: Bool?

            public var supportUpgrade: Bool?

            public var unsupportAssistLoginReason: String?

            public var unsupportManageReason: String?

            public var unsupportedLocalDeviceSnReason: String?

            public var versionSupported: Bool?

            public var versionTooLow: Bool?

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
                if self.enablePolicy != nil {
                    map["EnablePolicy"] = self.enablePolicy!
                }
                if self.passwordFreeLoginForbiddenReason != nil {
                    map["PasswordFreeLoginForbiddenReason"] = self.passwordFreeLoginForbiddenReason!
                }
                if self.supportAssistLogin != nil {
                    map["SupportAssistLogin"] = self.supportAssistLogin!
                }
                if self.supportDiagnose != nil {
                    map["SupportDiagnose"] = self.supportDiagnose!
                }
                if self.supportLimitLoginUser != nil {
                    map["SupportLimitLoginUser"] = self.supportLimitLoginUser!
                }
                if self.supportLocalDeviceSn != nil {
                    map["SupportLocalDeviceSn"] = self.supportLocalDeviceSn!
                }
                if self.supportManage != nil {
                    map["SupportManage"] = self.supportManage!
                }
                if self.supportModifyPolicy != nil {
                    map["SupportModifyPolicy"] = self.supportModifyPolicy!
                }
                if self.supportPasswordFreeLogin != nil {
                    map["SupportPasswordFreeLogin"] = self.supportPasswordFreeLogin!
                }
                if self.supportReboot != nil {
                    map["SupportReboot"] = self.supportReboot!
                }
                if self.supportReset != nil {
                    map["SupportReset"] = self.supportReset!
                }
                if self.supportResetPin != nil {
                    map["SupportResetPin"] = self.supportResetPin!
                }
                if self.supportStop != nil {
                    map["SupportStop"] = self.supportStop!
                }
                if self.supportUpgrade != nil {
                    map["SupportUpgrade"] = self.supportUpgrade!
                }
                if self.unsupportAssistLoginReason != nil {
                    map["UnsupportAssistLoginReason"] = self.unsupportAssistLoginReason!
                }
                if self.unsupportManageReason != nil {
                    map["UnsupportManageReason"] = self.unsupportManageReason!
                }
                if self.unsupportedLocalDeviceSnReason != nil {
                    map["UnsupportedLocalDeviceSnReason"] = self.unsupportedLocalDeviceSnReason!
                }
                if self.versionSupported != nil {
                    map["VersionSupported"] = self.versionSupported!
                }
                if self.versionTooLow != nil {
                    map["VersionTooLow"] = self.versionTooLow!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnablePolicy"] as? Bool {
                    self.enablePolicy = value
                }
                if let value = dict["PasswordFreeLoginForbiddenReason"] as? String {
                    self.passwordFreeLoginForbiddenReason = value
                }
                if let value = dict["SupportAssistLogin"] as? Bool {
                    self.supportAssistLogin = value
                }
                if let value = dict["SupportDiagnose"] as? Bool {
                    self.supportDiagnose = value
                }
                if let value = dict["SupportLimitLoginUser"] as? Bool {
                    self.supportLimitLoginUser = value
                }
                if let value = dict["SupportLocalDeviceSn"] as? Bool {
                    self.supportLocalDeviceSn = value
                }
                if let value = dict["SupportManage"] as? Bool {
                    self.supportManage = value
                }
                if let value = dict["SupportModifyPolicy"] as? Bool {
                    self.supportModifyPolicy = value
                }
                if let value = dict["SupportPasswordFreeLogin"] as? Bool {
                    self.supportPasswordFreeLogin = value
                }
                if let value = dict["SupportReboot"] as? Bool {
                    self.supportReboot = value
                }
                if let value = dict["SupportReset"] as? Bool {
                    self.supportReset = value
                }
                if let value = dict["SupportResetPin"] as? Bool {
                    self.supportResetPin = value
                }
                if let value = dict["SupportStop"] as? Bool {
                    self.supportStop = value
                }
                if let value = dict["SupportUpgrade"] as? Bool {
                    self.supportUpgrade = value
                }
                if let value = dict["UnsupportAssistLoginReason"] as? String {
                    self.unsupportAssistLoginReason = value
                }
                if let value = dict["UnsupportManageReason"] as? String {
                    self.unsupportManageReason = value
                }
                if let value = dict["UnsupportedLocalDeviceSnReason"] as? String {
                    self.unsupportedLocalDeviceSnReason = value
                }
                if let value = dict["VersionSupported"] as? Bool {
                    self.versionSupported = value
                }
                if let value = dict["VersionTooLow"] as? Bool {
                    self.versionTooLow = value
                }
            }
        }
        public class HardwareInfo : Tea.TeaModel {
            public var bluetooth: String?

            public var chipId: String?

            public var cpu: String?

            public var mac: String?

            public var memory: String?

            public var storage: String?

            public var wlan: String?

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
                if self.bluetooth != nil {
                    map["Bluetooth"] = self.bluetooth!
                }
                if self.chipId != nil {
                    map["ChipId"] = self.chipId!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.storage != nil {
                    map["Storage"] = self.storage!
                }
                if self.wlan != nil {
                    map["Wlan"] = self.wlan!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bluetooth"] as? String {
                    self.bluetooth = value
                }
                if let value = dict["ChipId"] as? String {
                    self.chipId = value
                }
                if let value = dict["Cpu"] as? String {
                    self.cpu = value
                }
                if let value = dict["Mac"] as? String {
                    self.mac = value
                }
                if let value = dict["Memory"] as? String {
                    self.memory = value
                }
                if let value = dict["Storage"] as? String {
                    self.storage = value
                }
                if let value = dict["Wlan"] as? String {
                    self.wlan = value
                }
            }
        }
        public var aliUid: Int64?

        public var alias: String?

        public var areaSite: String?

        public var bindUserCount: Int32?

        public var bindUserId: String?

        public var buildId: String?

        public var clientType: Int32?

        public var clientVersion: String?

        public var currentConnectDesktop: String?

        public var currentLoginUser: String?

        public var customResInvalidReason: String?

        public var customResourceId: String?

        public var customResourceName: String?

        public var customResourceStatus: Bool?

        public var desktopId: String?

        public var desktopRegionId: String?

        public var deviceOs: String?

        public var functionSupport: DescribeClientsResponseBody.Data.FunctionSupport?

        public var hardwareInfo: DescribeClientsResponseBody.Data.HardwareInfo?

        public var hostOsInfo: String?

        public var inManage: Bool?

        public var ipGeoLocation: String?

        public var ipv4: String?

        public var lastLoginUser: String?

        public var localDeviceSn: String?

        public var locationInfo: String?

        public var loginUser: String?

        public var mainBizType: String?

        public var manageTime: String?

        public var manageTimestamp: Int64?

        public var model: String?

        public var modelPreviewUrl: String?

        public var online: Bool?

        public var onlineStatus: Bool?

        public var passwordFreeLoginUser: String?

        public var platform: String?

        public var productName: String?

        public var publicIpv4: String?

        public var setPasswordFreeLoginUserTime: String?

        public var terminalGroupId: String?

        public var upgradeDownloadType: String?

        public var userBindCount: Int32?

        public var uuid: String?

        public var wosAppVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.functionSupport?.validate()
            try self.hardwareInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.areaSite != nil {
                map["AreaSite"] = self.areaSite!
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
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.currentConnectDesktop != nil {
                map["CurrentConnectDesktop"] = self.currentConnectDesktop!
            }
            if self.currentLoginUser != nil {
                map["CurrentLoginUser"] = self.currentLoginUser!
            }
            if self.customResInvalidReason != nil {
                map["CustomResInvalidReason"] = self.customResInvalidReason!
            }
            if self.customResourceId != nil {
                map["CustomResourceId"] = self.customResourceId!
            }
            if self.customResourceName != nil {
                map["CustomResourceName"] = self.customResourceName!
            }
            if self.customResourceStatus != nil {
                map["CustomResourceStatus"] = self.customResourceStatus!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopRegionId != nil {
                map["DesktopRegionId"] = self.desktopRegionId!
            }
            if self.deviceOs != nil {
                map["DeviceOs"] = self.deviceOs!
            }
            if self.functionSupport != nil {
                map["FunctionSupport"] = self.functionSupport?.toMap()
            }
            if self.hardwareInfo != nil {
                map["HardwareInfo"] = self.hardwareInfo?.toMap()
            }
            if self.hostOsInfo != nil {
                map["HostOsInfo"] = self.hostOsInfo!
            }
            if self.inManage != nil {
                map["InManage"] = self.inManage!
            }
            if self.ipGeoLocation != nil {
                map["IpGeoLocation"] = self.ipGeoLocation!
            }
            if self.ipv4 != nil {
                map["Ipv4"] = self.ipv4!
            }
            if self.lastLoginUser != nil {
                map["LastLoginUser"] = self.lastLoginUser!
            }
            if self.localDeviceSn != nil {
                map["LocalDeviceSn"] = self.localDeviceSn!
            }
            if self.locationInfo != nil {
                map["LocationInfo"] = self.locationInfo!
            }
            if self.loginUser != nil {
                map["LoginUser"] = self.loginUser!
            }
            if self.mainBizType != nil {
                map["MainBizType"] = self.mainBizType!
            }
            if self.manageTime != nil {
                map["ManageTime"] = self.manageTime!
            }
            if self.manageTimestamp != nil {
                map["ManageTimestamp"] = self.manageTimestamp!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.modelPreviewUrl != nil {
                map["ModelPreviewUrl"] = self.modelPreviewUrl!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.onlineStatus != nil {
                map["OnlineStatus"] = self.onlineStatus!
            }
            if self.passwordFreeLoginUser != nil {
                map["PasswordFreeLoginUser"] = self.passwordFreeLoginUser!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.publicIpv4 != nil {
                map["PublicIpv4"] = self.publicIpv4!
            }
            if self.setPasswordFreeLoginUserTime != nil {
                map["SetPasswordFreeLoginUserTime"] = self.setPasswordFreeLoginUserTime!
            }
            if self.terminalGroupId != nil {
                map["TerminalGroupId"] = self.terminalGroupId!
            }
            if self.upgradeDownloadType != nil {
                map["UpgradeDownloadType"] = self.upgradeDownloadType!
            }
            if self.userBindCount != nil {
                map["UserBindCount"] = self.userBindCount!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.wosAppVersion != nil {
                map["WosAppVersion"] = self.wosAppVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["AreaSite"] as? String {
                self.areaSite = value
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
            if let value = dict["ClientVersion"] as? String {
                self.clientVersion = value
            }
            if let value = dict["CurrentConnectDesktop"] as? String {
                self.currentConnectDesktop = value
            }
            if let value = dict["CurrentLoginUser"] as? String {
                self.currentLoginUser = value
            }
            if let value = dict["CustomResInvalidReason"] as? String {
                self.customResInvalidReason = value
            }
            if let value = dict["CustomResourceId"] as? String {
                self.customResourceId = value
            }
            if let value = dict["CustomResourceName"] as? String {
                self.customResourceName = value
            }
            if let value = dict["CustomResourceStatus"] as? Bool {
                self.customResourceStatus = value
            }
            if let value = dict["DesktopId"] as? String {
                self.desktopId = value
            }
            if let value = dict["DesktopRegionId"] as? String {
                self.desktopRegionId = value
            }
            if let value = dict["DeviceOs"] as? String {
                self.deviceOs = value
            }
            if let value = dict["FunctionSupport"] as? [String: Any?] {
                var model = DescribeClientsResponseBody.Data.FunctionSupport()
                model.fromMap(value)
                self.functionSupport = model
            }
            if let value = dict["HardwareInfo"] as? [String: Any?] {
                var model = DescribeClientsResponseBody.Data.HardwareInfo()
                model.fromMap(value)
                self.hardwareInfo = model
            }
            if let value = dict["HostOsInfo"] as? String {
                self.hostOsInfo = value
            }
            if let value = dict["InManage"] as? Bool {
                self.inManage = value
            }
            if let value = dict["IpGeoLocation"] as? String {
                self.ipGeoLocation = value
            }
            if let value = dict["Ipv4"] as? String {
                self.ipv4 = value
            }
            if let value = dict["LastLoginUser"] as? String {
                self.lastLoginUser = value
            }
            if let value = dict["LocalDeviceSn"] as? String {
                self.localDeviceSn = value
            }
            if let value = dict["LocationInfo"] as? String {
                self.locationInfo = value
            }
            if let value = dict["LoginUser"] as? String {
                self.loginUser = value
            }
            if let value = dict["MainBizType"] as? String {
                self.mainBizType = value
            }
            if let value = dict["ManageTime"] as? String {
                self.manageTime = value
            }
            if let value = dict["ManageTimestamp"] as? Int64 {
                self.manageTimestamp = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["ModelPreviewUrl"] as? String {
                self.modelPreviewUrl = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["OnlineStatus"] as? Bool {
                self.onlineStatus = value
            }
            if let value = dict["PasswordFreeLoginUser"] as? String {
                self.passwordFreeLoginUser = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["PublicIpv4"] as? String {
                self.publicIpv4 = value
            }
            if let value = dict["SetPasswordFreeLoginUserTime"] as? String {
                self.setPasswordFreeLoginUserTime = value
            }
            if let value = dict["TerminalGroupId"] as? String {
                self.terminalGroupId = value
            }
            if let value = dict["UpgradeDownloadType"] as? String {
                self.upgradeDownloadType = value
            }
            if let value = dict["UserBindCount"] as? Int32 {
                self.userBindCount = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
            if let value = dict["WosAppVersion"] as? String {
                self.wosAppVersion = value
            }
        }
    }
    public var code: String?

    public var data: [DescribeClientsResponseBody.Data]?

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
            var tmp : [DescribeClientsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeClientsResponseBody.Data()
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

public class DescribeClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientsResponseBody?

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
            var model = DescribeClientsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOrCreateInvitationCodeRequest : Tea.TeaModel {
    public var expireDays: Int32?

    public var expireMinutes: Int32?

    public var terminalGroupId: String?

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
        if self.expireDays != nil {
            map["ExpireDays"] = self.expireDays!
        }
        if self.expireMinutes != nil {
            map["ExpireMinutes"] = self.expireMinutes!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireDays"] as? Int32 {
            self.expireDays = value
        }
        if let value = dict["ExpireMinutes"] as? Int32 {
            self.expireMinutes = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
    }
}

public class GetOrCreateInvitationCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authCode: String?

        public var expireTime: String?

        public var expired: Bool?

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
            if self.authCode != nil {
                map["AuthCode"] = self.authCode!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthCode"] as? String {
                self.authCode = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Expired"] as? Bool {
                self.expired = value
            }
        }
    }
    public var code: String?

    public var data: GetOrCreateInvitationCodeResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetOrCreateInvitationCodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetOrCreateInvitationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrCreateInvitationCodeResponseBody?

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
            var model = GetOrCreateInvitationCodeResponseBody()
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
