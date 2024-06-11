import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DeleteUnbeianIpCheckTypeRequest : Tea.TeaModel {
    public var caller: String?

    public var checkType: Int32?

    public var ip: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.checkType != nil {
            map["CheckType"] = self.checkType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("CheckType") {
            self.checkType = dict["CheckType"] as! Int32
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class DeleteUnbeianIpCheckTypeResponseBody : Tea.TeaModel {
    public class HuntressIpCheckTypeResultDO : Tea.TeaModel {
        public var msg: String?

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
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var errorMessage: String?

    public var huntressIpCheckTypeResultDO: DeleteUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO?

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
        try self.huntressIpCheckTypeResultDO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.huntressIpCheckTypeResultDO != nil {
            map["HuntressIpCheckTypeResultDO"] = self.huntressIpCheckTypeResultDO?.toMap()
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HuntressIpCheckTypeResultDO") {
            var model = DeleteUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO()
            model.fromMap(dict["HuntressIpCheckTypeResultDO"] as! [String: Any])
            self.huntressIpCheckTypeResultDO = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteUnbeianIpCheckTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUnbeianIpCheckTypeResponseBody?

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
            var model = DeleteUnbeianIpCheckTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMainDomainRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
    }
}

public class GetMainDomainResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Data"] = self.data!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMainDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMainDomainResponseBody?

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
            var model = GetMainDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertUnbeianIpCheckTypeRequest : Tea.TeaModel {
    public var caller: String?

    public var checkType: Int32?

    public var ip: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.checkType != nil {
            map["CheckType"] = self.checkType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("CheckType") {
            self.checkType = dict["CheckType"] as! Int32
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class InsertUnbeianIpCheckTypeResponseBody : Tea.TeaModel {
    public class HuntressIpCheckTypeResultDO : Tea.TeaModel {
        public var msg: String?

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
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var errorMessage: String?

    public var huntressIpCheckTypeResultDO: InsertUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO?

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
        try self.huntressIpCheckTypeResultDO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.huntressIpCheckTypeResultDO != nil {
            map["HuntressIpCheckTypeResultDO"] = self.huntressIpCheckTypeResultDO?.toMap()
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HuntressIpCheckTypeResultDO") {
            var model = InsertUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO()
            model.fromMap(dict["HuntressIpCheckTypeResultDO"] as! [String: Any])
            self.huntressIpCheckTypeResultDO = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InsertUnbeianIpCheckTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertUnbeianIpCheckTypeResponseBody?

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
            var model = InsertUnbeianIpCheckTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUnbeianIpCheckTypeRequest : Tea.TeaModel {
    public var caller: String?

    public var checkType: Int32?

    public var ip: String?

    public var limit: Int32?

    public var page: Int32?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.checkType != nil {
            map["CheckType"] = self.checkType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("CheckType") {
            self.checkType = dict["CheckType"] as! Int32
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class ListUnbeianIpCheckTypeResponseBody : Tea.TeaModel {
    public class HuntressIpCheckTypeResultDO : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var aliuid: Int64?

            public var caller: String?

            public var checkType: Int32?

            public var ip: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.caller != nil {
                    map["Caller"] = self.caller!
                }
                if self.checkType != nil {
                    map["CheckType"] = self.checkType!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("Caller") {
                    self.caller = dict["Caller"] as! String
                }
                if dict.keys.contains("CheckType") {
                    self.checkType = dict["CheckType"] as! Int32
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
            }
        }
        public var list: [ListUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO.List]?

        public var msg: String?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var tmp : [ListUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO.List] = []
                for v in dict["List"] as! [Any] {
                    var model = ListUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var errorMessage: String?

    public var huntressIpCheckTypeResultDO: ListUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO?

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
        try self.huntressIpCheckTypeResultDO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.huntressIpCheckTypeResultDO != nil {
            map["HuntressIpCheckTypeResultDO"] = self.huntressIpCheckTypeResultDO?.toMap()
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HuntressIpCheckTypeResultDO") {
            var model = ListUnbeianIpCheckTypeResponseBody.HuntressIpCheckTypeResultDO()
            model.fromMap(dict["HuntressIpCheckTypeResultDO"] as! [String: Any])
            self.huntressIpCheckTypeResultDO = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListUnbeianIpCheckTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUnbeianIpCheckTypeResponseBody?

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
            var model = ListUnbeianIpCheckTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ManageAccessorDomainRequest : Tea.TeaModel {
    public var caller: String?

    public var domain: String?

    public var operation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
    }
}

public class ManageAccessorDomainResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ManageAccessorDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManageAccessorDomainResponseBody?

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
            var model = ManageAccessorDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ManageAccessorDomainWhiteListRequest : Tea.TeaModel {
    public var caller: String?

    public var domains: [String]?

    public var endTime: String?

    public var operation: String?

    public var remark: String?

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
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! [String]
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ManageAccessorDomainWhiteListResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ManageAccessorDomainWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManageAccessorDomainWhiteListResponseBody?

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
            var model = ManageAccessorDomainWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ManageAccessorIpRequest : Tea.TeaModel {
    public var caller: String?

    public var ip: String?

    public var ipVersion: Int32?

    public var operation: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! Int32
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class ManageAccessorIpResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ManageAccessorIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManageAccessorIpResponseBody?

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
            var model = ManageAccessorIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccessorDomainRequest : Tea.TeaModel {
    public var caller: String?

    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
    }
}

public class QueryAccessorDomainResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
            map["Data"] = self.data!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAccessorDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccessorDomainResponseBody?

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
            var model = QueryAccessorDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccessorDomainListRequest : Tea.TeaModel {
    public var caller: String?

    public var domain: String?

    public var pageNo: Int32?

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
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryAccessorDomainListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var domains: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var data: QueryAccessorDomainListResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryAccessorDomainListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAccessorDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccessorDomainListResponseBody?

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
            var model = QueryAccessorDomainListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccessorDomainStatusRequest : Tea.TeaModel {
    public var caller: String?

    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
    }
}

public class QueryAccessorDomainStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var domain: String?

        public var reason: String?

        public var reasonCode: Int32?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: QueryAccessorDomainStatusResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryAccessorDomainStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAccessorDomainStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccessorDomainStatusResponseBody?

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
            var model = QueryAccessorDomainStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccessorDomainWhiteListRequest : Tea.TeaModel {
    public var caller: String?

    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
    }
}

public class QueryAccessorDomainWhiteListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createTime: String?

            public var endTime: String?

            public var startTime: String?

            public var type: String?

            public var valid: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.valid != nil {
                    map["Valid"] = self.valid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Valid") {
                    self.valid = dict["Valid"] as! Bool
                }
            }
        }
        public var items: [QueryAccessorDomainWhiteListResponseBody.Data.Items]?

        public var white: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.white != nil {
                map["White"] = self.white!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                var tmp : [QueryAccessorDomainWhiteListResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = QueryAccessorDomainWhiteListResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("White") {
                self.white = dict["White"] as! Bool
            }
        }
    }
    public var code: Int32?

    public var data: QueryAccessorDomainWhiteListResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryAccessorDomainWhiteListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAccessorDomainWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccessorDomainWhiteListResponseBody?

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
            var model = QueryAccessorDomainWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccessorDomainsStatusRequest : Tea.TeaModel {
    public var caller: String?

    public var domains: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! [String]
        }
    }
}

public class QueryAccessorDomainsStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var domain: String?

        public var reason: String?

        public var reasonCode: Int32?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [QueryAccessorDomainsStatusResponseBody.Data]?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [QueryAccessorDomainsStatusResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryAccessorDomainsStatusResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAccessorDomainsStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccessorDomainsStatusResponseBody?

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
            var model = QueryAccessorDomainsStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAccessorIpRequest : Tea.TeaModel {
    public var caller: String?

    public var ip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
    }
}

public class QueryAccessorIpResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Data"] = self.data!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryAccessorIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccessorIpResponseBody?

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
            var model = QueryAccessorIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAccessorFullDomainsOssListRequest : Tea.TeaModel {
    public var caller: String?

    public var ossList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.ossList != nil {
            map["OssList"] = self.ossList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("OssList") {
            self.ossList = dict["OssList"] as! [String]
        }
    }
}

public class SubmitAccessorFullDomainsOssListResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitAccessorFullDomainsOssListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAccessorFullDomainsOssListResponseBody?

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
            var model = SubmitAccessorFullDomainsOssListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
