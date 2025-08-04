import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetEveryOneSellsFormListRequest : Tea.TeaModel {
    public var auth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auth != nil {
            map["Auth"] = self.auth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Auth"] as? String {
            self.auth = value
        }
    }
}

public class GetEveryOneSellsFormListResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var id: Int64?

        public var virtualMainDepartment: String?

        public var virtualDepartmentName: String?

        public var virtualDepartmentCode: String?

        public var virtualParentDepartment: String?

        public var virtualDepartmentStatus: String?

        public var dingId: String?

        public var empStatus: String?

        public override init() {
            super.init()
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
            if self.virtualMainDepartment != nil {
                map["VirtualMainDepartment"] = self.virtualMainDepartment!
            }
            if self.virtualDepartmentName != nil {
                map["VirtualDepartmentName"] = self.virtualDepartmentName!
            }
            if self.virtualDepartmentCode != nil {
                map["VirtualDepartmentCode"] = self.virtualDepartmentCode!
            }
            if self.virtualParentDepartment != nil {
                map["VirtualParentDepartment"] = self.virtualParentDepartment!
            }
            if self.virtualDepartmentStatus != nil {
                map["VirtualDepartmentStatus"] = self.virtualDepartmentStatus!
            }
            if self.dingId != nil {
                map["DingId"] = self.dingId!
            }
            if self.empStatus != nil {
                map["EmpStatus"] = self.empStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["VirtualMainDepartment"] as? String {
                self.virtualMainDepartment = value
            }
            if let value = dict["VirtualDepartmentName"] as? String {
                self.virtualDepartmentName = value
            }
            if let value = dict["VirtualDepartmentCode"] as? String {
                self.virtualDepartmentCode = value
            }
            if let value = dict["VirtualParentDepartment"] as? String {
                self.virtualParentDepartment = value
            }
            if let value = dict["VirtualDepartmentStatus"] as? String {
                self.virtualDepartmentStatus = value
            }
            if let value = dict["DingId"] as? String {
                self.dingId = value
            }
            if let value = dict["EmpStatus"] as? String {
                self.empStatus = value
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [GetEveryOneSellsFormListResponse.Body]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
        if let value = dict["body"] as? [Any?] {
            var tmp : [GetEveryOneSellsFormListResponse.Body] = []
            for v in value {
                if v != nil {
                    var model = GetEveryOneSellsFormListResponse.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class PushEveryOneSellMsgRequest : Tea.TeaModel {
    public var dingIdList: [String]?

    public var pushMsg: String?

    public var pushType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dingIdList != nil {
            map["DingIdList"] = self.dingIdList!
        }
        if self.pushMsg != nil {
            map["PushMsg"] = self.pushMsg!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DingIdList"] as? [String] {
            self.dingIdList = value
        }
        if let value = dict["PushMsg"] as? String {
            self.pushMsg = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
    }
}

public class PushEveryOneSellMsgShrinkRequest : Tea.TeaModel {
    public var dingIdListShrink: String?

    public var pushMsg: String?

    public var pushType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dingIdListShrink != nil {
            map["DingIdList"] = self.dingIdListShrink!
        }
        if self.pushMsg != nil {
            map["PushMsg"] = self.pushMsg!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DingIdList"] as? String {
            self.dingIdListShrink = value
        }
        if let value = dict["PushMsg"] as? String {
            self.pushMsg = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
    }
}

public class PushEveryOneSellMsgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}
