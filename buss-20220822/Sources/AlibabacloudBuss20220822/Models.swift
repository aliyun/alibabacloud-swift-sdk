import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BusinessResultServiceRequest : Tea.TeaModel {
    public var actionCode: String?

    public var bussinessCode: String?

    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var result: [String: Any]?

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
        if self.actionCode != nil {
            map["ActionCode"] = self.actionCode!
        }
        if self.bussinessCode != nil {
            map["BussinessCode"] = self.bussinessCode!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCode") {
            self.actionCode = dict["ActionCode"] as! String
        }
        if dict.keys.contains("BussinessCode") {
            self.bussinessCode = dict["BussinessCode"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [String: Any]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BusinessResultServiceShrinkRequest : Tea.TeaModel {
    public var actionCode: String?

    public var bussinessCode: String?

    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var resultShrink: String?

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
        if self.actionCode != nil {
            map["ActionCode"] = self.actionCode!
        }
        if self.bussinessCode != nil {
            map["BussinessCode"] = self.bussinessCode!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultShrink != nil {
            map["Result"] = self.resultShrink!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCode") {
            self.actionCode = dict["ActionCode"] as! String
        }
        if dict.keys.contains("BussinessCode") {
            self.bussinessCode = dict["BussinessCode"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.resultShrink = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BusinessResultServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var count: Int32?

    public var data: String?

    public var message: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BusinessResultServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BusinessResultServiceResponseBody?

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
            var model = BusinessResultServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserInvestigationInfoQueryTaskRequest : Tea.TeaModel {
    public var dataType: String?

    public var employeeId: String?

    public var endTime: Int64?

    public var ossFileName: String?

    public var startTime: Int64?

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
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.employeeId != nil {
            map["employeeId"] = self.employeeId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.ossFileName != nil {
            map["ossFileName"] = self.ossFileName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("employeeId") {
            self.employeeId = dict["employeeId"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("ossFileName") {
            self.ossFileName = dict["ossFileName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class CreateUserInvestigationInfoQueryTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateUserInvestigationInfoQueryTaskResponseBody.Data?

    public var message: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateUserInvestigationInfoQueryTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateUserInvestigationInfoQueryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserInvestigationInfoQueryTaskResponseBody?

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
            var model = CreateUserInvestigationInfoQueryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindInstanceInfoRequest : Tea.TeaModel {
    public var bussinessCode: String?

    public var domain: String?

    public var endTime: Int64?

    public var extras: [String: Any]?

    public var ip: String?

    public var needDNS: Bool?

    public var startTime: Int64?

    public var url: String?

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
        if self.bussinessCode != nil {
            map["bussinessCode"] = self.bussinessCode!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.extras != nil {
            map["extras"] = self.extras!
        }
        if self.ip != nil {
            map["ip"] = self.ip!
        }
        if self.needDNS != nil {
            map["needDNS"] = self.needDNS!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bussinessCode") {
            self.bussinessCode = dict["bussinessCode"] as! String
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("extras") {
            self.extras = dict["extras"] as! [String: Any]
        }
        if dict.keys.contains("ip") {
            self.ip = dict["ip"] as! String
        }
        if dict.keys.contains("needDNS") {
            self.needDNS = dict["needDNS"] as! Bool
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class FindInstanceInfoShrinkRequest : Tea.TeaModel {
    public var bussinessCode: String?

    public var domain: String?

    public var endTime: Int64?

    public var extrasShrink: String?

    public var ip: String?

    public var needDNS: Bool?

    public var startTime: Int64?

    public var url: String?

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
        if self.bussinessCode != nil {
            map["bussinessCode"] = self.bussinessCode!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.extrasShrink != nil {
            map["extras"] = self.extrasShrink!
        }
        if self.ip != nil {
            map["ip"] = self.ip!
        }
        if self.needDNS != nil {
            map["needDNS"] = self.needDNS!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bussinessCode") {
            self.bussinessCode = dict["bussinessCode"] as! String
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("extras") {
            self.extrasShrink = dict["extras"] as! String
        }
        if dict.keys.contains("ip") {
            self.ip = dict["ip"] as! String
        }
        if dict.keys.contains("needDNS") {
            self.needDNS = dict["needDNS"] as! Bool
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class FindInstanceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PegInstanceInfoList : Tea.TeaModel {
            public class UserInfo : Tea.TeaModel {
                public var gcLevel: String?

                public var hitWhiteReason: String?

                public var userId: String?

                public var userSite: String?

                public var whiteUser: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gcLevel != nil {
                        map["GcLevel"] = self.gcLevel!
                    }
                    if self.hitWhiteReason != nil {
                        map["HitWhiteReason"] = self.hitWhiteReason!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.userSite != nil {
                        map["UserSite"] = self.userSite!
                    }
                    if self.whiteUser != nil {
                        map["WhiteUser"] = self.whiteUser!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("GcLevel") {
                        self.gcLevel = dict["GcLevel"] as! String
                    }
                    if dict.keys.contains("HitWhiteReason") {
                        self.hitWhiteReason = dict["HitWhiteReason"] as! String
                    }
                    if dict.keys.contains("UserId") {
                        self.userId = dict["UserId"] as! String
                    }
                    if dict.keys.contains("UserSite") {
                        self.userSite = dict["UserSite"] as! String
                    }
                    if dict.keys.contains("WhiteUser") {
                        self.whiteUser = dict["WhiteUser"] as! Bool
                    }
                }
            }
            public var bussinessCode: String?

            public var coordinate: [String: Any]?

            public var idType: String?

            public var instanceId: String?

            public var serviceCreatedTime: String?

            public var userId: String?

            public var userInfo: FindInstanceInfoResponseBody.Data.PegInstanceInfoList.UserInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.userInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bussinessCode != nil {
                    map["BussinessCode"] = self.bussinessCode!
                }
                if self.coordinate != nil {
                    map["Coordinate"] = self.coordinate!
                }
                if self.idType != nil {
                    map["IdType"] = self.idType!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.serviceCreatedTime != nil {
                    map["ServiceCreatedTime"] = self.serviceCreatedTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userInfo != nil {
                    map["UserInfo"] = self.userInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BussinessCode") {
                    self.bussinessCode = dict["BussinessCode"] as! String
                }
                if dict.keys.contains("Coordinate") {
                    self.coordinate = dict["Coordinate"] as! [String: Any]
                }
                if dict.keys.contains("IdType") {
                    self.idType = dict["IdType"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ServiceCreatedTime") {
                    self.serviceCreatedTime = dict["ServiceCreatedTime"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserInfo") {
                    var model = FindInstanceInfoResponseBody.Data.PegInstanceInfoList.UserInfo()
                    model.fromMap(dict["UserInfo"] as! [String: Any])
                    self.userInfo = model
                }
            }
        }
        public var pegInstanceInfoList: [FindInstanceInfoResponseBody.Data.PegInstanceInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pegInstanceInfoList != nil {
                var tmp : [Any] = []
                for k in self.pegInstanceInfoList! {
                    tmp.append(k.toMap())
                }
                map["PegInstanceInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PegInstanceInfoList") {
                var tmp : [FindInstanceInfoResponseBody.Data.PegInstanceInfoList] = []
                for v in dict["PegInstanceInfoList"] as! [Any] {
                    var model = FindInstanceInfoResponseBody.Data.PegInstanceInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pegInstanceInfoList = tmp
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: FindInstanceInfoResponseBody.Data?

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
        if self.count != nil {
            map["Count"] = self.count!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = FindInstanceInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FindInstanceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindInstanceInfoResponseBody?

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
            var model = FindInstanceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindUserAvailbleResourcesRequest : Tea.TeaModel {
    public var bussinessCode: String?

    public var currPage: Int32?

    public var pageSize: Int32?

    public var resourceType: String?

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
        if self.bussinessCode != nil {
            map["bussinessCode"] = self.bussinessCode!
        }
        if self.currPage != nil {
            map["currPage"] = self.currPage!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bussinessCode") {
            self.bussinessCode = dict["bussinessCode"] as! String
        }
        if dict.keys.contains("currPage") {
            self.currPage = dict["currPage"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class FindUserAvailbleResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PegCoordinates : Tea.TeaModel {
            public var bussinessCode: String?

            public var chargeType: String?

            public var coordinate: [String: Any]?

            public var idType: String?

            public var instanceId: String?

            public var region: String?

            public var releaseTime: String?

            public var resCreateTime: String?

            public var resourceStatus: String?

            public var resourceType: String?

            public var serviceCreatedTime: String?

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
                if self.bussinessCode != nil {
                    map["BussinessCode"] = self.bussinessCode!
                }
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.coordinate != nil {
                    map["Coordinate"] = self.coordinate!
                }
                if self.idType != nil {
                    map["IdType"] = self.idType!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.releaseTime != nil {
                    map["ReleaseTime"] = self.releaseTime!
                }
                if self.resCreateTime != nil {
                    map["ResCreateTime"] = self.resCreateTime!
                }
                if self.resourceStatus != nil {
                    map["ResourceStatus"] = self.resourceStatus!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.serviceCreatedTime != nil {
                    map["ServiceCreatedTime"] = self.serviceCreatedTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BussinessCode") {
                    self.bussinessCode = dict["BussinessCode"] as! String
                }
                if dict.keys.contains("ChargeType") {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("Coordinate") {
                    self.coordinate = dict["Coordinate"] as! [String: Any]
                }
                if dict.keys.contains("IdType") {
                    self.idType = dict["IdType"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ReleaseTime") {
                    self.releaseTime = dict["ReleaseTime"] as! String
                }
                if dict.keys.contains("ResCreateTime") {
                    self.resCreateTime = dict["ResCreateTime"] as! String
                }
                if dict.keys.contains("ResourceStatus") {
                    self.resourceStatus = dict["ResourceStatus"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("ServiceCreatedTime") {
                    self.serviceCreatedTime = dict["ServiceCreatedTime"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public class UserInfo : Tea.TeaModel {
            public var gcLevel: String?

            public var hitWhiteReason: String?

            public var userId: String?

            public var userSite: String?

            public var whiteUser: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gcLevel != nil {
                    map["GcLevel"] = self.gcLevel!
                }
                if self.hitWhiteReason != nil {
                    map["HitWhiteReason"] = self.hitWhiteReason!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userSite != nil {
                    map["UserSite"] = self.userSite!
                }
                if self.whiteUser != nil {
                    map["WhiteUser"] = self.whiteUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GcLevel") {
                    self.gcLevel = dict["GcLevel"] as! String
                }
                if dict.keys.contains("HitWhiteReason") {
                    self.hitWhiteReason = dict["HitWhiteReason"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserSite") {
                    self.userSite = dict["UserSite"] as! String
                }
                if dict.keys.contains("WhiteUser") {
                    self.whiteUser = dict["WhiteUser"] as! Bool
                }
            }
        }
        public var pegCoordinates: [FindUserAvailbleResourcesResponseBody.Data.PegCoordinates]?

        public var userInfo: FindUserAvailbleResourcesResponseBody.Data.UserInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pegCoordinates != nil {
                var tmp : [Any] = []
                for k in self.pegCoordinates! {
                    tmp.append(k.toMap())
                }
                map["PegCoordinates"] = tmp
            }
            if self.userInfo != nil {
                map["UserInfo"] = self.userInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PegCoordinates") {
                var tmp : [FindUserAvailbleResourcesResponseBody.Data.PegCoordinates] = []
                for v in dict["PegCoordinates"] as! [Any] {
                    var model = FindUserAvailbleResourcesResponseBody.Data.PegCoordinates()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pegCoordinates = tmp
            }
            if dict.keys.contains("UserInfo") {
                var model = FindUserAvailbleResourcesResponseBody.Data.UserInfo()
                model.fromMap(dict["UserInfo"] as! [String: Any])
                self.userInfo = model
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var data: FindUserAvailbleResourcesResponseBody.Data?

    public var maxResults: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = FindUserAvailbleResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class FindUserAvailbleResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindUserAvailbleResourcesResponseBody?

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
            var model = FindUserAvailbleResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PunishResourceSearchRequest : Tea.TeaModel {
    public var actionCodes: [String]?

    public var bussinessCodes: [String]?

    public var class_: String?

    public var domain: String?

    public var endDate: Int64?

    public var instanceId: String?

    public var ip: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sourceCodes: [String]?

    public var startDate: Int64?

    public var status: String?

    public var url: String?

    public var userIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCodes != nil {
            map["ActionCodes"] = self.actionCodes!
        }
        if self.bussinessCodes != nil {
            map["BussinessCodes"] = self.bussinessCodes!
        }
        if self.class_ != nil {
            map["Class"] = self.class_!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceCodes != nil {
            map["SourceCodes"] = self.sourceCodes!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCodes") {
            self.actionCodes = dict["ActionCodes"] as! [String]
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodes = dict["BussinessCodes"] as! [String]
        }
        if dict.keys.contains("Class") {
            self.class_ = dict["Class"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SourceCodes") {
            self.sourceCodes = dict["SourceCodes"] as! [String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class PunishResourceSearchShrinkRequest : Tea.TeaModel {
    public var actionCodesShrink: String?

    public var bussinessCodesShrink: String?

    public var class_: String?

    public var domain: String?

    public var endDate: Int64?

    public var instanceId: String?

    public var ip: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sourceCodesShrink: String?

    public var startDate: Int64?

    public var status: String?

    public var url: String?

    public var userIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCodesShrink != nil {
            map["ActionCodes"] = self.actionCodesShrink!
        }
        if self.bussinessCodesShrink != nil {
            map["BussinessCodes"] = self.bussinessCodesShrink!
        }
        if self.class_ != nil {
            map["Class"] = self.class_!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceCodesShrink != nil {
            map["SourceCodes"] = self.sourceCodesShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.userIdsShrink != nil {
            map["UserIds"] = self.userIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCodes") {
            self.actionCodesShrink = dict["ActionCodes"] as! String
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodesShrink = dict["BussinessCodes"] as! String
        }
        if dict.keys.contains("Class") {
            self.class_ = dict["Class"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SourceCodes") {
            self.sourceCodesShrink = dict["SourceCodes"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIdsShrink = dict["UserIds"] as! String
        }
    }
}

public class PunishResourceSearchResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var actionCode: String?

        public var bussinessCode: String?

        public var class_: String?

        public var coordinate: String?

        public var creator: String?

        public var deleted: Bool?

        public var domain: String?

        public var extras: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: String?

        public var ip: String?

        public var modifier: String?

        public var objectId: String?

        public var objectType: String?

        public var objectValue: String?

        public var punishFrom: String?

        public var reason: String?

        public var requestId: Int64?

        public var sourceCode: String?

        public var status: String?

        public var url: String?

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
            if self.actionCode != nil {
                map["ActionCode"] = self.actionCode!
            }
            if self.bussinessCode != nil {
                map["BussinessCode"] = self.bussinessCode!
            }
            if self.class_ != nil {
                map["Class"] = self.class_!
            }
            if self.coordinate != nil {
                map["Coordinate"] = self.coordinate!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.extras != nil {
                map["Extras"] = self.extras!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.modifier != nil {
                map["Modifier"] = self.modifier!
            }
            if self.objectId != nil {
                map["ObjectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["ObjectType"] = self.objectType!
            }
            if self.objectValue != nil {
                map["ObjectValue"] = self.objectValue!
            }
            if self.punishFrom != nil {
                map["PunishFrom"] = self.punishFrom!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sourceCode != nil {
                map["SourceCode"] = self.sourceCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionCode") {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("BussinessCode") {
                self.bussinessCode = dict["BussinessCode"] as! String
            }
            if dict.keys.contains("Class") {
                self.class_ = dict["Class"] as! String
            }
            if dict.keys.contains("Coordinate") {
                self.coordinate = dict["Coordinate"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Extras") {
                self.extras = dict["Extras"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Modifier") {
                self.modifier = dict["Modifier"] as! String
            }
            if dict.keys.contains("ObjectId") {
                self.objectId = dict["ObjectId"] as! String
            }
            if dict.keys.contains("ObjectType") {
                self.objectType = dict["ObjectType"] as! String
            }
            if dict.keys.contains("ObjectValue") {
                self.objectValue = dict["ObjectValue"] as! String
            }
            if dict.keys.contains("PunishFrom") {
                self.punishFrom = dict["PunishFrom"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! Int64
            }
            if dict.keys.contains("SourceCode") {
                self.sourceCode = dict["SourceCode"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var dataList: [PunishResourceSearchResponseBody.DataList]?

    public var message: String?

    public var success: String?

    public var totalCount: Int32?

    public var viewCount: Int32?

    public override init() {
        super.init()
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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.viewCount != nil {
            map["ViewCount"] = self.viewCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DataList") {
            var tmp : [PunishResourceSearchResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = PunishResourceSearchResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("ViewCount") {
            self.viewCount = dict["ViewCount"] as! Int32
        }
    }
}

public class PunishResourceSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PunishResourceSearchResponseBody?

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
            var model = PunishResourceSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RiskEventSyncRequest : Tea.TeaModel {
    public var deleted: Bool?

    public var discoveryTime: Int64?

    public var eventName: String?

    public var eventNumber: String?

    public var relevanceBu: String?

    public var riskDetail: String?

    public var riskEffectType: String?

    public var riskLevel: String?

    public var riskType: String?

    public var source: String?

    public var submitter: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.discoveryTime != nil {
            map["DiscoveryTime"] = self.discoveryTime!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventNumber != nil {
            map["EventNumber"] = self.eventNumber!
        }
        if self.relevanceBu != nil {
            map["RelevanceBu"] = self.relevanceBu!
        }
        if self.riskDetail != nil {
            map["RiskDetail"] = self.riskDetail!
        }
        if self.riskEffectType != nil {
            map["RiskEffectType"] = self.riskEffectType!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.riskType != nil {
            map["RiskType"] = self.riskType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.submitter != nil {
            map["Submitter"] = self.submitter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Deleted") {
            self.deleted = dict["Deleted"] as! Bool
        }
        if dict.keys.contains("DiscoveryTime") {
            self.discoveryTime = dict["DiscoveryTime"] as! Int64
        }
        if dict.keys.contains("EventName") {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("EventNumber") {
            self.eventNumber = dict["EventNumber"] as! String
        }
        if dict.keys.contains("RelevanceBu") {
            self.relevanceBu = dict["RelevanceBu"] as! String
        }
        if dict.keys.contains("RiskDetail") {
            self.riskDetail = dict["RiskDetail"] as! String
        }
        if dict.keys.contains("RiskEffectType") {
            self.riskEffectType = dict["RiskEffectType"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! String
        }
        if dict.keys.contains("RiskType") {
            self.riskType = dict["RiskType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Submitter") {
            self.submitter = dict["Submitter"] as! String
        }
    }
}

public class RiskEventSyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var count: Int32?

    public var data: String?

    public var message: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RiskEventSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RiskEventSyncResponseBody?

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
            var model = RiskEventSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchPunishEventsRequest : Tea.TeaModel {
    public var aliUid: String?

    public var bussinessCodes: [String]?

    public var caseCodes: [String]?

    public var eventCodes: [String]?

    public var resourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.bussinessCodes != nil {
            map["BussinessCodes"] = self.bussinessCodes!
        }
        if self.caseCodes != nil {
            map["CaseCodes"] = self.caseCodes!
        }
        if self.eventCodes != nil {
            map["EventCodes"] = self.eventCodes!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodes = dict["BussinessCodes"] as! [String]
        }
        if dict.keys.contains("CaseCodes") {
            self.caseCodes = dict["CaseCodes"] as! [String]
        }
        if dict.keys.contains("EventCodes") {
            self.eventCodes = dict["EventCodes"] as! [String]
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class SearchPunishEventsShrinkRequest : Tea.TeaModel {
    public var aliUid: String?

    public var bussinessCodesShrink: String?

    public var caseCodesShrink: String?

    public var eventCodesShrink: String?

    public var resourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.bussinessCodesShrink != nil {
            map["BussinessCodes"] = self.bussinessCodesShrink!
        }
        if self.caseCodesShrink != nil {
            map["CaseCodes"] = self.caseCodesShrink!
        }
        if self.eventCodesShrink != nil {
            map["EventCodes"] = self.eventCodesShrink!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodesShrink = dict["BussinessCodes"] as! String
        }
        if dict.keys.contains("CaseCodes") {
            self.caseCodesShrink = dict["CaseCodes"] as! String
        }
        if dict.keys.contains("EventCodes") {
            self.eventCodesShrink = dict["EventCodes"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class SearchPunishEventsResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var bussinessCode: String?

        public var caseCode: String?

        public var recordsCount: Int32?

        public var resourceId: String?

        public var tipsCode: String?

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
            if self.bussinessCode != nil {
                map["BussinessCode"] = self.bussinessCode!
            }
            if self.caseCode != nil {
                map["CaseCode"] = self.caseCode!
            }
            if self.recordsCount != nil {
                map["RecordsCount"] = self.recordsCount!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.tipsCode != nil {
                map["TipsCode"] = self.tipsCode!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BussinessCode") {
                self.bussinessCode = dict["BussinessCode"] as! String
            }
            if dict.keys.contains("CaseCode") {
                self.caseCode = dict["CaseCode"] as! String
            }
            if dict.keys.contains("RecordsCount") {
                self.recordsCount = dict["RecordsCount"] as! Int32
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("TipsCode") {
                self.tipsCode = dict["TipsCode"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var dataList: [SearchPunishEventsResponseBody.DataList]?

    public var message: String?

    public var requestId: String?

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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DataList") {
            var tmp : [SearchPunishEventsResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = SearchPunishEventsResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class SearchPunishEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchPunishEventsResponseBody?

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
            var model = SearchPunishEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchPunishRecordsRequest : Tea.TeaModel {
    public var actionCodes: [String]?

    public var aliUid: String?

    public var bussinessCodes: String?

    public var caseCodes: [String]?

    public var domain: String?

    public var endTime: Int64?

    public var eventCodes: [String]?

    public var ip: String?

    public var page: String?

    public var pageSize: String?

    public var punishStatus: [String]?

    public var resourceId: String?

    public var sourceCodes: [String]?

    public var startTime: Int64?

    public var url: String?

    public var urlFuzzy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCodes != nil {
            map["ActionCodes"] = self.actionCodes!
        }
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.bussinessCodes != nil {
            map["BussinessCodes"] = self.bussinessCodes!
        }
        if self.caseCodes != nil {
            map["CaseCodes"] = self.caseCodes!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventCodes != nil {
            map["EventCodes"] = self.eventCodes!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.punishStatus != nil {
            map["PunishStatus"] = self.punishStatus!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.sourceCodes != nil {
            map["SourceCodes"] = self.sourceCodes!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.urlFuzzy != nil {
            map["UrlFuzzy"] = self.urlFuzzy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCodes") {
            self.actionCodes = dict["ActionCodes"] as! [String]
        }
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodes = dict["BussinessCodes"] as! String
        }
        if dict.keys.contains("CaseCodes") {
            self.caseCodes = dict["CaseCodes"] as! [String]
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventCodes") {
            self.eventCodes = dict["EventCodes"] as! [String]
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PunishStatus") {
            self.punishStatus = dict["PunishStatus"] as! [String]
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SourceCodes") {
            self.sourceCodes = dict["SourceCodes"] as! [String]
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UrlFuzzy") {
            self.urlFuzzy = dict["UrlFuzzy"] as! String
        }
    }
}

public class SearchPunishRecordsShrinkRequest : Tea.TeaModel {
    public var actionCodesShrink: String?

    public var aliUid: String?

    public var bussinessCodes: String?

    public var caseCodesShrink: String?

    public var domain: String?

    public var endTime: Int64?

    public var eventCodesShrink: String?

    public var ip: String?

    public var page: String?

    public var pageSize: String?

    public var punishStatusShrink: String?

    public var resourceId: String?

    public var sourceCodesShrink: String?

    public var startTime: Int64?

    public var url: String?

    public var urlFuzzy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCodesShrink != nil {
            map["ActionCodes"] = self.actionCodesShrink!
        }
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.bussinessCodes != nil {
            map["BussinessCodes"] = self.bussinessCodes!
        }
        if self.caseCodesShrink != nil {
            map["CaseCodes"] = self.caseCodesShrink!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventCodesShrink != nil {
            map["EventCodes"] = self.eventCodesShrink!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.punishStatusShrink != nil {
            map["PunishStatus"] = self.punishStatusShrink!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.sourceCodesShrink != nil {
            map["SourceCodes"] = self.sourceCodesShrink!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.urlFuzzy != nil {
            map["UrlFuzzy"] = self.urlFuzzy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCodes") {
            self.actionCodesShrink = dict["ActionCodes"] as! String
        }
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodes = dict["BussinessCodes"] as! String
        }
        if dict.keys.contains("CaseCodes") {
            self.caseCodesShrink = dict["CaseCodes"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventCodes") {
            self.eventCodesShrink = dict["EventCodes"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PunishStatus") {
            self.punishStatusShrink = dict["PunishStatus"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SourceCodes") {
            self.sourceCodesShrink = dict["SourceCodes"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UrlFuzzy") {
            self.urlFuzzy = dict["UrlFuzzy"] as! String
        }
    }
}

public class SearchPunishRecordsResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var actionCode: String?

        public var antiStatus: String?

        public var bussinessCode: String?

        public var caseCode: String?

        public var createTime: String?

        public var domain: String?

        public var eventCode: String?

        public var ip: String?

        public var punishStatus: String?

        public var reason: String?

        public var resourceId: String?

        public var tipsCode: String?

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
            if self.actionCode != nil {
                map["ActionCode"] = self.actionCode!
            }
            if self.antiStatus != nil {
                map["AntiStatus"] = self.antiStatus!
            }
            if self.bussinessCode != nil {
                map["BussinessCode"] = self.bussinessCode!
            }
            if self.caseCode != nil {
                map["CaseCode"] = self.caseCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.eventCode != nil {
                map["EventCode"] = self.eventCode!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.punishStatus != nil {
                map["PunishStatus"] = self.punishStatus!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.tipsCode != nil {
                map["TipsCode"] = self.tipsCode!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionCode") {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("AntiStatus") {
                self.antiStatus = dict["AntiStatus"] as! String
            }
            if dict.keys.contains("BussinessCode") {
                self.bussinessCode = dict["BussinessCode"] as! String
            }
            if dict.keys.contains("CaseCode") {
                self.caseCode = dict["CaseCode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EventCode") {
                self.eventCode = dict["EventCode"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("PunishStatus") {
                self.punishStatus = dict["PunishStatus"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("TipsCode") {
                self.tipsCode = dict["TipsCode"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var dataList: [SearchPunishRecordsResponseBody.DataList]?

    public var message: String?

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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DataList") {
            var tmp : [SearchPunishRecordsResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = SearchPunishRecordsResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class SearchPunishRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchPunishRecordsResponseBody?

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
            var model = SearchPunishRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchPunishRequestRequest : Tea.TeaModel {
    public var antiStatuses: [String]?

    public var bussinessCodes: [String]?

    public var class_: String?

    public var endDate: Int64?

    public var eventCodes: [String]?

    public var extRequestId: String?

    public var id: Int64?

    public var idType: String?

    public var instanceId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var punishDomain: String?

    public var punishIp: String?

    public var punishStatuses: [String]?

    public var punishUrl: String?

    public var punishUrlFull: String?

    public var sourceCodes: [String]?

    public var startDate: Int64?

    public var userIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antiStatuses != nil {
            map["AntiStatuses"] = self.antiStatuses!
        }
        if self.bussinessCodes != nil {
            map["BussinessCodes"] = self.bussinessCodes!
        }
        if self.class_ != nil {
            map["Class"] = self.class_!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.eventCodes != nil {
            map["EventCodes"] = self.eventCodes!
        }
        if self.extRequestId != nil {
            map["ExtRequestId"] = self.extRequestId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.idType != nil {
            map["IdType"] = self.idType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.punishDomain != nil {
            map["PunishDomain"] = self.punishDomain!
        }
        if self.punishIp != nil {
            map["PunishIp"] = self.punishIp!
        }
        if self.punishStatuses != nil {
            map["PunishStatuses"] = self.punishStatuses!
        }
        if self.punishUrl != nil {
            map["PunishUrl"] = self.punishUrl!
        }
        if self.punishUrlFull != nil {
            map["PunishUrlFull"] = self.punishUrlFull!
        }
        if self.sourceCodes != nil {
            map["SourceCodes"] = self.sourceCodes!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntiStatuses") {
            self.antiStatuses = dict["AntiStatuses"] as! [String]
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodes = dict["BussinessCodes"] as! [String]
        }
        if dict.keys.contains("Class") {
            self.class_ = dict["Class"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("EventCodes") {
            self.eventCodes = dict["EventCodes"] as! [String]
        }
        if dict.keys.contains("ExtRequestId") {
            self.extRequestId = dict["ExtRequestId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("IdType") {
            self.idType = dict["IdType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PunishDomain") {
            self.punishDomain = dict["PunishDomain"] as! String
        }
        if dict.keys.contains("PunishIp") {
            self.punishIp = dict["PunishIp"] as! String
        }
        if dict.keys.contains("PunishStatuses") {
            self.punishStatuses = dict["PunishStatuses"] as! [String]
        }
        if dict.keys.contains("PunishUrl") {
            self.punishUrl = dict["PunishUrl"] as! String
        }
        if dict.keys.contains("PunishUrlFull") {
            self.punishUrlFull = dict["PunishUrlFull"] as! String
        }
        if dict.keys.contains("SourceCodes") {
            self.sourceCodes = dict["SourceCodes"] as! [String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class SearchPunishRequestShrinkRequest : Tea.TeaModel {
    public var antiStatusesShrink: String?

    public var bussinessCodesShrink: String?

    public var class_: String?

    public var endDate: Int64?

    public var eventCodesShrink: String?

    public var extRequestId: String?

    public var id: Int64?

    public var idType: String?

    public var instanceId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var punishDomain: String?

    public var punishIp: String?

    public var punishStatusesShrink: String?

    public var punishUrl: String?

    public var punishUrlFull: String?

    public var sourceCodesShrink: String?

    public var startDate: Int64?

    public var userIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antiStatusesShrink != nil {
            map["AntiStatuses"] = self.antiStatusesShrink!
        }
        if self.bussinessCodesShrink != nil {
            map["BussinessCodes"] = self.bussinessCodesShrink!
        }
        if self.class_ != nil {
            map["Class"] = self.class_!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.eventCodesShrink != nil {
            map["EventCodes"] = self.eventCodesShrink!
        }
        if self.extRequestId != nil {
            map["ExtRequestId"] = self.extRequestId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.idType != nil {
            map["IdType"] = self.idType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.punishDomain != nil {
            map["PunishDomain"] = self.punishDomain!
        }
        if self.punishIp != nil {
            map["PunishIp"] = self.punishIp!
        }
        if self.punishStatusesShrink != nil {
            map["PunishStatuses"] = self.punishStatusesShrink!
        }
        if self.punishUrl != nil {
            map["PunishUrl"] = self.punishUrl!
        }
        if self.punishUrlFull != nil {
            map["PunishUrlFull"] = self.punishUrlFull!
        }
        if self.sourceCodesShrink != nil {
            map["SourceCodes"] = self.sourceCodesShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.userIdsShrink != nil {
            map["UserIds"] = self.userIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntiStatuses") {
            self.antiStatusesShrink = dict["AntiStatuses"] as! String
        }
        if dict.keys.contains("BussinessCodes") {
            self.bussinessCodesShrink = dict["BussinessCodes"] as! String
        }
        if dict.keys.contains("Class") {
            self.class_ = dict["Class"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("EventCodes") {
            self.eventCodesShrink = dict["EventCodes"] as! String
        }
        if dict.keys.contains("ExtRequestId") {
            self.extRequestId = dict["ExtRequestId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("IdType") {
            self.idType = dict["IdType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PunishDomain") {
            self.punishDomain = dict["PunishDomain"] as! String
        }
        if dict.keys.contains("PunishIp") {
            self.punishIp = dict["PunishIp"] as! String
        }
        if dict.keys.contains("PunishStatuses") {
            self.punishStatusesShrink = dict["PunishStatuses"] as! String
        }
        if dict.keys.contains("PunishUrl") {
            self.punishUrl = dict["PunishUrl"] as! String
        }
        if dict.keys.contains("PunishUrlFull") {
            self.punishUrlFull = dict["PunishUrlFull"] as! String
        }
        if dict.keys.contains("SourceCodes") {
            self.sourceCodesShrink = dict["SourceCodes"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("UserIds") {
            self.userIdsShrink = dict["UserIds"] as! String
        }
    }
}

public class SearchPunishRequestResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var antiPunishRespTime: String?

        public var antiPunishTime: String?

        public var antiResult: String?

        public var antiStatus: String?

        public var bussinessCode: String?

        public var caseCode: String?

        public var caseExtendCode: String?

        public var caseSubCode: String?

        public var class_: String?

        public var creator: String?

        public var deleted: Bool?

        public var eventCode: String?

        public var expectedRemoveTime: String?

        public var extRequestId: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var id: Int64?

        public var idType: String?

        public var instanceId: String?

        public var ipString: String?

        public var modifier: String?

        public var punishDomain: String?

        public var punishIp: String?

        public var punishRequest: String?

        public var punishRespTime: String?

        public var punishResult: String?

        public var punishStatus: String?

        public var punishTime: String?

        public var punishUrl: String?

        public var reason: String?

        public var sourceCode: String?

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
            if self.antiPunishRespTime != nil {
                map["AntiPunishRespTime"] = self.antiPunishRespTime!
            }
            if self.antiPunishTime != nil {
                map["AntiPunishTime"] = self.antiPunishTime!
            }
            if self.antiResult != nil {
                map["AntiResult"] = self.antiResult!
            }
            if self.antiStatus != nil {
                map["AntiStatus"] = self.antiStatus!
            }
            if self.bussinessCode != nil {
                map["BussinessCode"] = self.bussinessCode!
            }
            if self.caseCode != nil {
                map["CaseCode"] = self.caseCode!
            }
            if self.caseExtendCode != nil {
                map["CaseExtendCode"] = self.caseExtendCode!
            }
            if self.caseSubCode != nil {
                map["CaseSubCode"] = self.caseSubCode!
            }
            if self.class_ != nil {
                map["Class"] = self.class_!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.eventCode != nil {
                map["EventCode"] = self.eventCode!
            }
            if self.expectedRemoveTime != nil {
                map["ExpectedRemoveTime"] = self.expectedRemoveTime!
            }
            if self.extRequestId != nil {
                map["ExtRequestId"] = self.extRequestId!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idType != nil {
                map["IdType"] = self.idType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ipString != nil {
                map["IpString"] = self.ipString!
            }
            if self.modifier != nil {
                map["Modifier"] = self.modifier!
            }
            if self.punishDomain != nil {
                map["PunishDomain"] = self.punishDomain!
            }
            if self.punishIp != nil {
                map["PunishIp"] = self.punishIp!
            }
            if self.punishRequest != nil {
                map["PunishRequest"] = self.punishRequest!
            }
            if self.punishRespTime != nil {
                map["PunishRespTime"] = self.punishRespTime!
            }
            if self.punishResult != nil {
                map["PunishResult"] = self.punishResult!
            }
            if self.punishStatus != nil {
                map["PunishStatus"] = self.punishStatus!
            }
            if self.punishTime != nil {
                map["PunishTime"] = self.punishTime!
            }
            if self.punishUrl != nil {
                map["PunishUrl"] = self.punishUrl!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.sourceCode != nil {
                map["SourceCode"] = self.sourceCode!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntiPunishRespTime") {
                self.antiPunishRespTime = dict["AntiPunishRespTime"] as! String
            }
            if dict.keys.contains("AntiPunishTime") {
                self.antiPunishTime = dict["AntiPunishTime"] as! String
            }
            if dict.keys.contains("AntiResult") {
                self.antiResult = dict["AntiResult"] as! String
            }
            if dict.keys.contains("AntiStatus") {
                self.antiStatus = dict["AntiStatus"] as! String
            }
            if dict.keys.contains("BussinessCode") {
                self.bussinessCode = dict["BussinessCode"] as! String
            }
            if dict.keys.contains("CaseCode") {
                self.caseCode = dict["CaseCode"] as! String
            }
            if dict.keys.contains("CaseExtendCode") {
                self.caseExtendCode = dict["CaseExtendCode"] as! String
            }
            if dict.keys.contains("CaseSubCode") {
                self.caseSubCode = dict["CaseSubCode"] as! String
            }
            if dict.keys.contains("Class") {
                self.class_ = dict["Class"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("EventCode") {
                self.eventCode = dict["EventCode"] as! String
            }
            if dict.keys.contains("ExpectedRemoveTime") {
                self.expectedRemoveTime = dict["ExpectedRemoveTime"] as! String
            }
            if dict.keys.contains("ExtRequestId") {
                self.extRequestId = dict["ExtRequestId"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IdType") {
                self.idType = dict["IdType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IpString") {
                self.ipString = dict["IpString"] as! String
            }
            if dict.keys.contains("Modifier") {
                self.modifier = dict["Modifier"] as! String
            }
            if dict.keys.contains("PunishDomain") {
                self.punishDomain = dict["PunishDomain"] as! String
            }
            if dict.keys.contains("PunishIp") {
                self.punishIp = dict["PunishIp"] as! String
            }
            if dict.keys.contains("PunishRequest") {
                self.punishRequest = dict["PunishRequest"] as! String
            }
            if dict.keys.contains("PunishRespTime") {
                self.punishRespTime = dict["PunishRespTime"] as! String
            }
            if dict.keys.contains("PunishResult") {
                self.punishResult = dict["PunishResult"] as! String
            }
            if dict.keys.contains("PunishStatus") {
                self.punishStatus = dict["PunishStatus"] as! String
            }
            if dict.keys.contains("PunishTime") {
                self.punishTime = dict["PunishTime"] as! String
            }
            if dict.keys.contains("PunishUrl") {
                self.punishUrl = dict["PunishUrl"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("SourceCode") {
                self.sourceCode = dict["SourceCode"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var class_: String?

    public var code: String?

    public var count: Int64?

    public var dataList: [SearchPunishRequestResponseBody.DataList]?

    public var message: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var viewCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.class_ != nil {
            map["Class"] = self.class_!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.viewCount != nil {
            map["ViewCount"] = self.viewCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Class") {
            self.class_ = dict["Class"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("DataList") {
            var tmp : [SearchPunishRequestResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = SearchPunishRequestResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("ViewCount") {
            self.viewCount = dict["ViewCount"] as! Int64
        }
    }
}

public class SearchPunishRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchPunishRequestResponseBody?

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
            var model = SearchPunishRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
