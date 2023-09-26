import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AkDisableRequest : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeyName: String?

    public var permissions: [String]?

    public override init() {
        super.init()
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
            map["accessKeyId"] = self.accessKeyId!
        }
        if self.accessKeyName != nil {
            map["accessKeyName"] = self.accessKeyName!
        }
        if self.permissions != nil {
            map["permissions"] = self.permissions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKeyId") && dict["accessKeyId"] != nil {
            self.accessKeyId = dict["accessKeyId"] as! String
        }
        if dict.keys.contains("accessKeyName") && dict["accessKeyName"] != nil {
            self.accessKeyName = dict["accessKeyName"] as! String
        }
        if dict.keys.contains("permissions") && dict["permissions"] != nil {
            self.permissions = dict["permissions"] as! [String]
        }
    }
}

public class AkDisableResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AkDisableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AkDisableResponseBody?

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
            var model = AkDisableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AkEnableRequest : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeyName: String?

    public var permissions: [String]?

    public override init() {
        super.init()
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
            map["accessKeyId"] = self.accessKeyId!
        }
        if self.accessKeyName != nil {
            map["accessKeyName"] = self.accessKeyName!
        }
        if self.permissions != nil {
            map["permissions"] = self.permissions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKeyId") && dict["accessKeyId"] != nil {
            self.accessKeyId = dict["accessKeyId"] as! String
        }
        if dict.keys.contains("accessKeyName") && dict["accessKeyName"] != nil {
            self.accessKeyName = dict["accessKeyName"] as! String
        }
        if dict.keys.contains("permissions") && dict["permissions"] != nil {
            self.permissions = dict["permissions"] as! [String]
        }
    }
}

public class AkEnableResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AkEnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AkEnableResponseBody?

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
            var model = AkEnableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AkGenerateRequest : Tea.TeaModel {
    public var accessKeyName: String?

    public var permissions: [String]?

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
        if self.accessKeyName != nil {
            map["accessKeyName"] = self.accessKeyName!
        }
        if self.permissions != nil {
            map["permissions"] = self.permissions!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKeyName") && dict["accessKeyName"] != nil {
            self.accessKeyName = dict["accessKeyName"] as! String
        }
        if dict.keys.contains("permissions") && dict["permissions"] != nil {
            self.permissions = dict["permissions"] as! [String]
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! Int64
        }
    }
}

public class AkGenerateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeyName: String?

        public var accessKeySecret: String?

        public var userId: String?

        public override init() {
            super.init()
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
                map["accessKeyId"] = self.accessKeyId!
            }
            if self.accessKeyName != nil {
                map["accessKeyName"] = self.accessKeyName!
            }
            if self.accessKeySecret != nil {
                map["accessKeySecret"] = self.accessKeySecret!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKeyId") && dict["accessKeyId"] != nil {
                self.accessKeyId = dict["accessKeyId"] as! String
            }
            if dict.keys.contains("accessKeyName") && dict["accessKeyName"] != nil {
                self.accessKeyName = dict["accessKeyName"] as! String
            }
            if dict.keys.contains("accessKeySecret") && dict["accessKeySecret"] != nil {
                self.accessKeySecret = dict["accessKeySecret"] as! String
            }
            if dict.keys.contains("userId") && dict["userId"] != nil {
                self.userId = dict["userId"] as! String
            }
        }
    }
    public var code: String?

    public var data: AkGenerateResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AkGenerateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AkGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AkGenerateResponseBody?

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
            var model = AkGenerateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AkListPageRequest : Tea.TeaModel {
    public var page: Int32?

    public var size: Int32?

    public var start: Int32?

    public override init() {
        super.init()
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
            map["page"] = self.page!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page") && dict["page"] != nil {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("size") && dict["size"] != nil {
            self.size = dict["size"] as! Int32
        }
        if dict.keys.contains("start") && dict["start"] != nil {
            self.start = dict["start"] as! Int32
        }
    }
}

public class AkListPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public class Permissions : Tea.TeaModel {
                public var authTime: String?

                public var description_: String?

                public var group: String?

                public var permissionCode: String?

                public var permissionName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authTime != nil {
                        map["authTime"] = self.authTime!
                    }
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.group != nil {
                        map["group"] = self.group!
                    }
                    if self.permissionCode != nil {
                        map["permissionCode"] = self.permissionCode!
                    }
                    if self.permissionName != nil {
                        map["permissionName"] = self.permissionName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("authTime") && dict["authTime"] != nil {
                        self.authTime = dict["authTime"] as! String
                    }
                    if dict.keys.contains("description") && dict["description"] != nil {
                        self.description_ = dict["description"] as! String
                    }
                    if dict.keys.contains("group") && dict["group"] != nil {
                        self.group = dict["group"] as! String
                    }
                    if dict.keys.contains("permissionCode") && dict["permissionCode"] != nil {
                        self.permissionCode = dict["permissionCode"] as! String
                    }
                    if dict.keys.contains("permissionName") && dict["permissionName"] != nil {
                        self.permissionName = dict["permissionName"] as! String
                    }
                }
            }
            public var accessKeyId: String?

            public var accessKeyName: String?

            public var accessKeySecret: String?

            public var active: Int32?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var lastCallTime: String?

            public var permissions: [AkListPageResponseBody.Data.DataList.Permissions]?

            public override init() {
                super.init()
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
                    map["accessKeyId"] = self.accessKeyId!
                }
                if self.accessKeyName != nil {
                    map["accessKeyName"] = self.accessKeyName!
                }
                if self.accessKeySecret != nil {
                    map["accessKeySecret"] = self.accessKeySecret!
                }
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmtModify"] = self.gmtModify!
                }
                if self.lastCallTime != nil {
                    map["lastCallTime"] = self.lastCallTime!
                }
                if self.permissions != nil {
                    var tmp : [Any] = []
                    for k in self.permissions! {
                        tmp.append(k.toMap())
                    }
                    map["permissions"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKeyId") && dict["accessKeyId"] != nil {
                    self.accessKeyId = dict["accessKeyId"] as! String
                }
                if dict.keys.contains("accessKeyName") && dict["accessKeyName"] != nil {
                    self.accessKeyName = dict["accessKeyName"] as! String
                }
                if dict.keys.contains("accessKeySecret") && dict["accessKeySecret"] != nil {
                    self.accessKeySecret = dict["accessKeySecret"] as! String
                }
                if dict.keys.contains("active") && dict["active"] != nil {
                    self.active = dict["active"] as! Int32
                }
                if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModify") && dict["gmtModify"] != nil {
                    self.gmtModify = dict["gmtModify"] as! String
                }
                if dict.keys.contains("lastCallTime") && dict["lastCallTime"] != nil {
                    self.lastCallTime = dict["lastCallTime"] as! String
                }
                if dict.keys.contains("permissions") && dict["permissions"] != nil {
                    var tmp : [AkListPageResponseBody.Data.DataList.Permissions] = []
                    for v in dict["permissions"] as! [Any] {
                        var model = AkListPageResponseBody.Data.DataList.Permissions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.permissions = tmp
                }
            }
        }
        public var count: Int32?

        public var currentPage: Int32?

        public var dataList: [AkListPageResponseBody.Data.DataList]?

        public var totalPage: Int32?

        public override init() {
            super.init()
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
                map["count"] = self.count!
            }
            if self.currentPage != nil {
                map["currentPage"] = self.currentPage!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["dataList"] = tmp
            }
            if self.totalPage != nil {
                map["totalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") && dict["count"] != nil {
                self.count = dict["count"] as! Int32
            }
            if dict.keys.contains("currentPage") && dict["currentPage"] != nil {
                self.currentPage = dict["currentPage"] as! Int32
            }
            if dict.keys.contains("dataList") && dict["dataList"] != nil {
                var tmp : [AkListPageResponseBody.Data.DataList] = []
                for v in dict["dataList"] as! [Any] {
                    var model = AkListPageResponseBody.Data.DataList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataList = tmp
            }
            if dict.keys.contains("totalPage") && dict["totalPage"] != nil {
                self.totalPage = dict["totalPage"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: AkListPageResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AkListPageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AkListPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AkListPageResponseBody?

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
            var model = AkListPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AkUpdateRequest : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeyName: String?

    public var permissions: [String]?

    public override init() {
        super.init()
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
            map["accessKeyId"] = self.accessKeyId!
        }
        if self.accessKeyName != nil {
            map["accessKeyName"] = self.accessKeyName!
        }
        if self.permissions != nil {
            map["permissions"] = self.permissions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKeyId") && dict["accessKeyId"] != nil {
            self.accessKeyId = dict["accessKeyId"] as! String
        }
        if dict.keys.contains("accessKeyName") && dict["accessKeyName"] != nil {
            self.accessKeyName = dict["accessKeyName"] as! String
        }
        if dict.keys.contains("permissions") && dict["permissions"] != nil {
            self.permissions = dict["permissions"] as! [String]
        }
    }
}

public class AkUpdateResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AkUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AkUpdateResponseBody?

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
            var model = AkUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DimGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DimGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DimGroupResponseBody?

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
            var model = DimGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
