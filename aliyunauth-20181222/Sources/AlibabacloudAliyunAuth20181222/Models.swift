import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthenticateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var language: String?

    public var operateCode: String?

    public var operatorTypeEnum: String?

    public var productCode: String?

    public var requestFromApp: String?

    public var requestWay: String?

    public var userNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operateCode != nil {
            map["OperateCode"] = self.operateCode!
        }
        if self.operatorTypeEnum != nil {
            map["OperatorTypeEnum"] = self.operatorTypeEnum!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.requestFromApp != nil {
            map["RequestFromApp"] = self.requestFromApp!
        }
        if self.requestWay != nil {
            map["RequestWay"] = self.requestWay!
        }
        if self.userNo != nil {
            map["UserNo"] = self.userNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OperateCode"] as? String {
            self.operateCode = value
        }
        if let value = dict["OperatorTypeEnum"] as? String {
            self.operatorTypeEnum = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RequestFromApp"] as? String {
            self.requestFromApp = value
        }
        if let value = dict["RequestWay"] as? String {
            self.requestWay = value
        }
        if let value = dict["UserNo"] as? String {
            self.userNo = value
        }
    }
}

public class AuthenticateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UserInputList : Tea.TeaModel {
            public class QueryAuthRSDTO : Tea.TeaModel {
                public var content: String?

                public var expandContent: String?

                public var fieldName: String?

                public var fieldVid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.expandContent != nil {
                        map["ExpandContent"] = self.expandContent!
                    }
                    if self.fieldName != nil {
                        map["FieldName"] = self.fieldName!
                    }
                    if self.fieldVid != nil {
                        map["FieldVid"] = self.fieldVid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["ExpandContent"] as? String {
                        self.expandContent = value
                    }
                    if let value = dict["FieldName"] as? String {
                        self.fieldName = value
                    }
                    if let value = dict["FieldVid"] as? String {
                        self.fieldVid = value
                    }
                }
            }
            public var queryAuthRSDTO: [AuthenticateResponseBody.Data.UserInputList.QueryAuthRSDTO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.queryAuthRSDTO != nil {
                    var tmp : [Any] = []
                    for k in self.queryAuthRSDTO! {
                        tmp.append(k.toMap())
                    }
                    map["QueryAuthRSDTO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["QueryAuthRSDTO"] as? [Any?] {
                    var tmp : [AuthenticateResponseBody.Data.UserInputList.QueryAuthRSDTO] = []
                    for v in value {
                        if v != nil {
                            var model = AuthenticateResponseBody.Data.UserInputList.QueryAuthRSDTO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.queryAuthRSDTO = tmp
                }
            }
        }
        public var authorized: Bool?

        public var instanceId: String?

        public var operateCode: String?

        public var productCode: String?

        public var recordVid: String?

        public var userInputList: AuthenticateResponseBody.Data.UserInputList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userInputList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorized != nil {
                map["Authorized"] = self.authorized!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.operateCode != nil {
                map["OperateCode"] = self.operateCode!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.recordVid != nil {
                map["RecordVid"] = self.recordVid!
            }
            if self.userInputList != nil {
                map["UserInputList"] = self.userInputList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Authorized"] as? Bool {
                self.authorized = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OperateCode"] as? String {
                self.operateCode = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["RecordVid"] as? String {
                self.recordVid = value
            }
            if let value = dict["UserInputList"] as? [String: Any?] {
                var model = AuthenticateResponseBody.Data.UserInputList()
                model.fromMap(value)
                self.userInputList = model
            }
        }
    }
    public var code: Int32?

    public var data: AuthenticateResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AuthenticateResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class AuthenticateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthenticateResponseBody?

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
            var model = AuthenticateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDetailByOrderRequest : Tea.TeaModel {
    public var acceptor: String?

    public var bizNo: String?

    public var channel: String?

    public var checkAuthItems: String?

    public var empId: String?

    public var language: String?

    public var optSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptor != nil {
            map["Acceptor"] = self.acceptor!
        }
        if self.bizNo != nil {
            map["BizNo"] = self.bizNo!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.checkAuthItems != nil {
            map["CheckAuthItems"] = self.checkAuthItems!
        }
        if self.empId != nil {
            map["EmpId"] = self.empId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.optSource != nil {
            map["OptSource"] = self.optSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Acceptor"] as? String {
            self.acceptor = value
        }
        if let value = dict["BizNo"] as? String {
            self.bizNo = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["CheckAuthItems"] as? String {
            self.checkAuthItems = value
        }
        if let value = dict["EmpId"] as? String {
            self.empId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OptSource"] as? String {
            self.optSource = value
        }
    }
}

public class GetDetailByOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: Int64?

    public var data: GetDetailByOrderResponseBody.Data?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDetailByOrderResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetDetailByOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetailByOrderResponseBody?

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
            var model = GetDetailByOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAuthRequest : Tea.TeaModel {
    public var bizNo: String?

    public var channel: String?

    public var instanceId: String?

    public var language: String?

    public var operatorTypeEnum: String?

    public var orderVid: String?

    public var productCode: String?

    public var requestFromApp: String?

    public var requestWay: String?

    public var userNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizNo != nil {
            map["BizNo"] = self.bizNo!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operatorTypeEnum != nil {
            map["OperatorTypeEnum"] = self.operatorTypeEnum!
        }
        if self.orderVid != nil {
            map["OrderVid"] = self.orderVid!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.requestFromApp != nil {
            map["RequestFromApp"] = self.requestFromApp!
        }
        if self.requestWay != nil {
            map["RequestWay"] = self.requestWay!
        }
        if self.userNo != nil {
            map["UserNo"] = self.userNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizNo"] as? String {
            self.bizNo = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OperatorTypeEnum"] as? String {
            self.operatorTypeEnum = value
        }
        if let value = dict["OrderVid"] as? String {
            self.orderVid = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RequestFromApp"] as? String {
            self.requestFromApp = value
        }
        if let value = dict["RequestWay"] as? String {
            self.requestWay = value
        }
        if let value = dict["UserNo"] as? String {
            self.userNo = value
        }
    }
}

public class QueryAuthResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InfoDTOList : Tea.TeaModel {
            public class InfoDTOList : Tea.TeaModel {
                public var authOrderVid: String?

                public var itemName: String?

                public var itemRecordVid: String?

                public var operateCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authOrderVid != nil {
                        map["AuthOrderVid"] = self.authOrderVid!
                    }
                    if self.itemName != nil {
                        map["ItemName"] = self.itemName!
                    }
                    if self.itemRecordVid != nil {
                        map["ItemRecordVid"] = self.itemRecordVid!
                    }
                    if self.operateCode != nil {
                        map["OperateCode"] = self.operateCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AuthOrderVid"] as? String {
                        self.authOrderVid = value
                    }
                    if let value = dict["ItemName"] as? String {
                        self.itemName = value
                    }
                    if let value = dict["ItemRecordVid"] as? String {
                        self.itemRecordVid = value
                    }
                    if let value = dict["OperateCode"] as? String {
                        self.operateCode = value
                    }
                }
            }
            public var infoDTOList: [QueryAuthResponseBody.Data.InfoDTOList.InfoDTOList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.infoDTOList != nil {
                    var tmp : [Any] = []
                    for k in self.infoDTOList! {
                        tmp.append(k.toMap())
                    }
                    map["InfoDTOList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InfoDTOList"] as? [Any?] {
                    var tmp : [QueryAuthResponseBody.Data.InfoDTOList.InfoDTOList] = []
                    for v in value {
                        if v != nil {
                            var model = QueryAuthResponseBody.Data.InfoDTOList.InfoDTOList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.infoDTOList = tmp
                }
            }
        }
        public var infoDTOList: QueryAuthResponseBody.Data.InfoDTOList?

        public var instanceId: String?

        public var productCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.infoDTOList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.infoDTOList != nil {
                map["InfoDTOList"] = self.infoDTOList?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InfoDTOList"] as? [String: Any?] {
                var model = QueryAuthResponseBody.Data.InfoDTOList()
                model.fromMap(value)
                self.infoDTOList = model
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
        }
    }
    public var code: Int32?

    public var data: QueryAuthResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryAuthResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAuthResponseBody?

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
            var model = QueryAuthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryInEffectQuthOrderRequest : Tea.TeaModel {
    public var bizCode: String?

    public var channel: String?

    public var language: String?

    public var operatorTypeEnum: String?

    public var requestFromApp: String?

    public var requestId: String?

    public var requestWay: String?

    public var userNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operatorTypeEnum != nil {
            map["OperatorTypeEnum"] = self.operatorTypeEnum!
        }
        if self.requestFromApp != nil {
            map["RequestFromApp"] = self.requestFromApp!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestWay != nil {
            map["RequestWay"] = self.requestWay!
        }
        if self.userNo != nil {
            map["UserNo"] = self.userNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OperatorTypeEnum"] as? String {
            self.operatorTypeEnum = value
        }
        if let value = dict["RequestFromApp"] as? String {
            self.requestFromApp = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestWay"] as? String {
            self.requestWay = value
        }
        if let value = dict["UserNo"] as? String {
            self.userNo = value
        }
    }
}

public class QueryInEffectQuthOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class AuthItemRecordGroupItemDTOS : Tea.TeaModel {
                public var authitemID: String?

                public var gmtCreated: String?

                public var msg: String?

                public var name: String?

                public var remarkDataJson: String?

                public var status: Int32?

                public var vid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authitemID != nil {
                        map["AuthitemID"] = self.authitemID!
                    }
                    if self.gmtCreated != nil {
                        map["GmtCreated"] = self.gmtCreated!
                    }
                    if self.msg != nil {
                        map["Msg"] = self.msg!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.remarkDataJson != nil {
                        map["RemarkDataJson"] = self.remarkDataJson!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.vid != nil {
                        map["Vid"] = self.vid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AuthitemID"] as? String {
                        self.authitemID = value
                    }
                    if let value = dict["GmtCreated"] as? String {
                        self.gmtCreated = value
                    }
                    if let value = dict["Msg"] as? String {
                        self.msg = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["RemarkDataJson"] as? String {
                        self.remarkDataJson = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["Vid"] as? String {
                        self.vid = value
                    }
                }
            }
            public class OperateTimes : Tea.TeaModel {
                public var end: String?

                public var start: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    if self.start != nil {
                        map["Start"] = self.start!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["End"] as? String {
                        self.end = value
                    }
                    if let value = dict["Start"] as? String {
                        self.start = value
                    }
                }
            }
            public var authItemRecordGroupItemDTOS: [QueryInEffectQuthOrderResponseBody.Data.List.AuthItemRecordGroupItemDTOS]?

            public var createdTime: String?

            public var lastModifyTime: String?

            public var operateTimes: [QueryInEffectQuthOrderResponseBody.Data.List.OperateTimes]?

            public var orderVid: String?

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
                if self.authItemRecordGroupItemDTOS != nil {
                    var tmp : [Any] = []
                    for k in self.authItemRecordGroupItemDTOS! {
                        tmp.append(k.toMap())
                    }
                    map["AuthItemRecordGroupItemDTOS"] = tmp
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.operateTimes != nil {
                    var tmp : [Any] = []
                    for k in self.operateTimes! {
                        tmp.append(k.toMap())
                    }
                    map["OperateTimes"] = tmp
                }
                if self.orderVid != nil {
                    map["OrderVid"] = self.orderVid!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthItemRecordGroupItemDTOS"] as? [Any?] {
                    var tmp : [QueryInEffectQuthOrderResponseBody.Data.List.AuthItemRecordGroupItemDTOS] = []
                    for v in value {
                        if v != nil {
                            var model = QueryInEffectQuthOrderResponseBody.Data.List.AuthItemRecordGroupItemDTOS()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.authItemRecordGroupItemDTOS = tmp
                }
                if let value = dict["CreatedTime"] as? String {
                    self.createdTime = value
                }
                if let value = dict["LastModifyTime"] as? String {
                    self.lastModifyTime = value
                }
                if let value = dict["OperateTimes"] as? [Any?] {
                    var tmp : [QueryInEffectQuthOrderResponseBody.Data.List.OperateTimes] = []
                    for v in value {
                        if v != nil {
                            var model = QueryInEffectQuthOrderResponseBody.Data.List.OperateTimes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.operateTimes = tmp
                }
                if let value = dict["OrderVid"] as? String {
                    self.orderVid = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
            }
        }
        public var count: Int32?

        public var list: [QueryInEffectQuthOrderResponseBody.Data.List]?

        public override init() {
            super.init()
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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryInEffectQuthOrderResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryInEffectQuthOrderResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var code: Int32?

    public var data: QueryInEffectQuthOrderResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryInEffectQuthOrderResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryInEffectQuthOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInEffectQuthOrderResponseBody?

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
            var model = QueryInEffectQuthOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
