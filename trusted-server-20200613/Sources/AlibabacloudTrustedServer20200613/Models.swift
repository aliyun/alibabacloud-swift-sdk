import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeBootRequest : Tea.TeaModel {
    public var propertyUuid: String?

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
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
    }
}

public class DescribeBootResponseBody : Tea.TeaModel {
    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var requestId: String?

    public var whiteListAffiliation: Int32?

    public var whiteListDetail: String?

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
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.whiteListAffiliation != nil {
            map["WhiteListAffiliation"] = self.whiteListAffiliation!
        }
        if self.whiteListDetail != nil {
            map["WhiteListDetail"] = self.whiteListDetail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WhiteListAffiliation") && dict["WhiteListAffiliation"] != nil {
            self.whiteListAffiliation = dict["WhiteListAffiliation"] as! Int32
        }
        if dict.keys.contains("WhiteListDetail") && dict["WhiteListDetail"] != nil {
            self.whiteListDetail = dict["WhiteListDetail"] as! String
        }
    }
}

public class DescribeBootResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBootResponseBody?

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
            var model = DescribeBootResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventsRequest : Tea.TeaModel {
    public var createEndDate: Int64?

    public var createStartDate: Int64?

    public var currentPage: Int32?

    public var eventAffiliation: Int32?

    public var eventLevel: Int32?

    public var eventStatus: Int32?

    public var eventType: Int32?

    public var handleEndDate: Int64?

    public var handleStartDate: Int64?

    public var handleType: Int32?

    public var pageSize: Int32?

    public var propertyName: String?

    public var propertyPrivateIp: String?

    public var propertyPublicIp: String?

    public var propertyUuid: String?

    public var suspect: String?

    public var suspectSig: String?

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
        if self.createEndDate != nil {
            map["CreateEndDate"] = self.createEndDate!
        }
        if self.createStartDate != nil {
            map["CreateStartDate"] = self.createStartDate!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.eventAffiliation != nil {
            map["EventAffiliation"] = self.eventAffiliation!
        }
        if self.eventLevel != nil {
            map["EventLevel"] = self.eventLevel!
        }
        if self.eventStatus != nil {
            map["EventStatus"] = self.eventStatus!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.handleEndDate != nil {
            map["HandleEndDate"] = self.handleEndDate!
        }
        if self.handleStartDate != nil {
            map["HandleStartDate"] = self.handleStartDate!
        }
        if self.handleType != nil {
            map["HandleType"] = self.handleType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.propertyName != nil {
            map["PropertyName"] = self.propertyName!
        }
        if self.propertyPrivateIp != nil {
            map["PropertyPrivateIp"] = self.propertyPrivateIp!
        }
        if self.propertyPublicIp != nil {
            map["PropertyPublicIp"] = self.propertyPublicIp!
        }
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        if self.suspect != nil {
            map["Suspect"] = self.suspect!
        }
        if self.suspectSig != nil {
            map["SuspectSig"] = self.suspectSig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateEndDate") && dict["CreateEndDate"] != nil {
            self.createEndDate = dict["CreateEndDate"] as! Int64
        }
        if dict.keys.contains("CreateStartDate") && dict["CreateStartDate"] != nil {
            self.createStartDate = dict["CreateStartDate"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EventAffiliation") && dict["EventAffiliation"] != nil {
            self.eventAffiliation = dict["EventAffiliation"] as! Int32
        }
        if dict.keys.contains("EventLevel") && dict["EventLevel"] != nil {
            self.eventLevel = dict["EventLevel"] as! Int32
        }
        if dict.keys.contains("EventStatus") && dict["EventStatus"] != nil {
            self.eventStatus = dict["EventStatus"] as! Int32
        }
        if dict.keys.contains("EventType") && dict["EventType"] != nil {
            self.eventType = dict["EventType"] as! Int32
        }
        if dict.keys.contains("HandleEndDate") && dict["HandleEndDate"] != nil {
            self.handleEndDate = dict["HandleEndDate"] as! Int64
        }
        if dict.keys.contains("HandleStartDate") && dict["HandleStartDate"] != nil {
            self.handleStartDate = dict["HandleStartDate"] as! Int64
        }
        if dict.keys.contains("HandleType") && dict["HandleType"] != nil {
            self.handleType = dict["HandleType"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PropertyName") && dict["PropertyName"] != nil {
            self.propertyName = dict["PropertyName"] as! String
        }
        if dict.keys.contains("PropertyPrivateIp") && dict["PropertyPrivateIp"] != nil {
            self.propertyPrivateIp = dict["PropertyPrivateIp"] as! String
        }
        if dict.keys.contains("PropertyPublicIp") && dict["PropertyPublicIp"] != nil {
            self.propertyPublicIp = dict["PropertyPublicIp"] as! String
        }
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
        if dict.keys.contains("Suspect") && dict["Suspect"] != nil {
            self.suspect = dict["Suspect"] as! String
        }
        if dict.keys.contains("SuspectSig") && dict["SuspectSig"] != nil {
            self.suspectSig = dict["SuspectSig"] as! String
        }
    }
}

public class DescribeEventsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accumulation: String?

        public var eventAffiliation: String?

        public var eventLevel: String?

        public var eventStatus: String?

        public var eventType: String?

        public var eventUuid: String?

        public var gmtCreate: Int64?

        public var gmtHandle: Int64?

        public var gmtModified: Int64?

        public var handleType: String?

        public var propertyName: String?

        public var propertyPrivateIp: String?

        public var propertyPublicIp: String?

        public var propertyUuid: String?

        public var suspect: String?

        public var suspectSig: String?

        public var suspectWhiteList: String?

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
            if self.accumulation != nil {
                map["Accumulation"] = self.accumulation!
            }
            if self.eventAffiliation != nil {
                map["EventAffiliation"] = self.eventAffiliation!
            }
            if self.eventLevel != nil {
                map["EventLevel"] = self.eventLevel!
            }
            if self.eventStatus != nil {
                map["EventStatus"] = self.eventStatus!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.eventUuid != nil {
                map["EventUuid"] = self.eventUuid!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtHandle != nil {
                map["GmtHandle"] = self.gmtHandle!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.handleType != nil {
                map["HandleType"] = self.handleType!
            }
            if self.propertyName != nil {
                map["PropertyName"] = self.propertyName!
            }
            if self.propertyPrivateIp != nil {
                map["PropertyPrivateIp"] = self.propertyPrivateIp!
            }
            if self.propertyPublicIp != nil {
                map["PropertyPublicIp"] = self.propertyPublicIp!
            }
            if self.propertyUuid != nil {
                map["PropertyUuid"] = self.propertyUuid!
            }
            if self.suspect != nil {
                map["Suspect"] = self.suspect!
            }
            if self.suspectSig != nil {
                map["SuspectSig"] = self.suspectSig!
            }
            if self.suspectWhiteList != nil {
                map["SuspectWhiteList"] = self.suspectWhiteList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accumulation") && dict["Accumulation"] != nil {
                self.accumulation = dict["Accumulation"] as! String
            }
            if dict.keys.contains("EventAffiliation") && dict["EventAffiliation"] != nil {
                self.eventAffiliation = dict["EventAffiliation"] as! String
            }
            if dict.keys.contains("EventLevel") && dict["EventLevel"] != nil {
                self.eventLevel = dict["EventLevel"] as! String
            }
            if dict.keys.contains("EventStatus") && dict["EventStatus"] != nil {
                self.eventStatus = dict["EventStatus"] as! String
            }
            if dict.keys.contains("EventType") && dict["EventType"] != nil {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("EventUuid") && dict["EventUuid"] != nil {
                self.eventUuid = dict["EventUuid"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtHandle") && dict["GmtHandle"] != nil {
                self.gmtHandle = dict["GmtHandle"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("HandleType") && dict["HandleType"] != nil {
                self.handleType = dict["HandleType"] as! String
            }
            if dict.keys.contains("PropertyName") && dict["PropertyName"] != nil {
                self.propertyName = dict["PropertyName"] as! String
            }
            if dict.keys.contains("PropertyPrivateIp") && dict["PropertyPrivateIp"] != nil {
                self.propertyPrivateIp = dict["PropertyPrivateIp"] as! String
            }
            if dict.keys.contains("PropertyPublicIp") && dict["PropertyPublicIp"] != nil {
                self.propertyPublicIp = dict["PropertyPublicIp"] as! String
            }
            if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
                self.propertyUuid = dict["PropertyUuid"] as! String
            }
            if dict.keys.contains("Suspect") && dict["Suspect"] != nil {
                self.suspect = dict["Suspect"] as! String
            }
            if dict.keys.contains("SuspectSig") && dict["SuspectSig"] != nil {
                self.suspectSig = dict["SuspectSig"] as! String
            }
            if dict.keys.contains("SuspectWhiteList") && dict["SuspectWhiteList"] != nil {
                self.suspectWhiteList = dict["SuspectWhiteList"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeEventsResponseBody.Items]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeEventsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeEventsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsResponseBody?

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
            var model = DescribeEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var propertyUuid: String?

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
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public var extensions: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var gmtRecentReport: Int64?

    public var onlineStatus: Int32?

    public var programExceptionNum: Int32?

    public var programTrustDetail: String?

    public var programTrustStatus: Int32?

    public var programWhiteListId: Int32?

    public var programWhiteListName: String?

    public var propertyAffiliation: Int32?

    public var propertyName: String?

    public var propertyPrivateIp: String?

    public var propertyPublicIp: String?

    public var propertyUuid: String?

    public var requestId: String?

    public var systemExceptionNum: Int32?

    public var systemTrustDetail: String?

    public var systemTrustStatus: Int32?

    public var systemWhiteListId: Int32?

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
        if self.extensions != nil {
            map["Extensions"] = self.extensions!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.gmtRecentReport != nil {
            map["GmtRecentReport"] = self.gmtRecentReport!
        }
        if self.onlineStatus != nil {
            map["OnlineStatus"] = self.onlineStatus!
        }
        if self.programExceptionNum != nil {
            map["ProgramExceptionNum"] = self.programExceptionNum!
        }
        if self.programTrustDetail != nil {
            map["ProgramTrustDetail"] = self.programTrustDetail!
        }
        if self.programTrustStatus != nil {
            map["ProgramTrustStatus"] = self.programTrustStatus!
        }
        if self.programWhiteListId != nil {
            map["ProgramWhiteListId"] = self.programWhiteListId!
        }
        if self.programWhiteListName != nil {
            map["ProgramWhiteListName"] = self.programWhiteListName!
        }
        if self.propertyAffiliation != nil {
            map["PropertyAffiliation"] = self.propertyAffiliation!
        }
        if self.propertyName != nil {
            map["PropertyName"] = self.propertyName!
        }
        if self.propertyPrivateIp != nil {
            map["PropertyPrivateIp"] = self.propertyPrivateIp!
        }
        if self.propertyPublicIp != nil {
            map["PropertyPublicIp"] = self.propertyPublicIp!
        }
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.systemExceptionNum != nil {
            map["SystemExceptionNum"] = self.systemExceptionNum!
        }
        if self.systemTrustDetail != nil {
            map["SystemTrustDetail"] = self.systemTrustDetail!
        }
        if self.systemTrustStatus != nil {
            map["SystemTrustStatus"] = self.systemTrustStatus!
        }
        if self.systemWhiteListId != nil {
            map["SystemWhiteListId"] = self.systemWhiteListId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
            self.extensions = dict["Extensions"] as! String
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! Int64
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! Int64
        }
        if dict.keys.contains("GmtRecentReport") && dict["GmtRecentReport"] != nil {
            self.gmtRecentReport = dict["GmtRecentReport"] as! Int64
        }
        if dict.keys.contains("OnlineStatus") && dict["OnlineStatus"] != nil {
            self.onlineStatus = dict["OnlineStatus"] as! Int32
        }
        if dict.keys.contains("ProgramExceptionNum") && dict["ProgramExceptionNum"] != nil {
            self.programExceptionNum = dict["ProgramExceptionNum"] as! Int32
        }
        if dict.keys.contains("ProgramTrustDetail") && dict["ProgramTrustDetail"] != nil {
            self.programTrustDetail = dict["ProgramTrustDetail"] as! String
        }
        if dict.keys.contains("ProgramTrustStatus") && dict["ProgramTrustStatus"] != nil {
            self.programTrustStatus = dict["ProgramTrustStatus"] as! Int32
        }
        if dict.keys.contains("ProgramWhiteListId") && dict["ProgramWhiteListId"] != nil {
            self.programWhiteListId = dict["ProgramWhiteListId"] as! Int32
        }
        if dict.keys.contains("ProgramWhiteListName") && dict["ProgramWhiteListName"] != nil {
            self.programWhiteListName = dict["ProgramWhiteListName"] as! String
        }
        if dict.keys.contains("PropertyAffiliation") && dict["PropertyAffiliation"] != nil {
            self.propertyAffiliation = dict["PropertyAffiliation"] as! Int32
        }
        if dict.keys.contains("PropertyName") && dict["PropertyName"] != nil {
            self.propertyName = dict["PropertyName"] as! String
        }
        if dict.keys.contains("PropertyPrivateIp") && dict["PropertyPrivateIp"] != nil {
            self.propertyPrivateIp = dict["PropertyPrivateIp"] as! String
        }
        if dict.keys.contains("PropertyPublicIp") && dict["PropertyPublicIp"] != nil {
            self.propertyPublicIp = dict["PropertyPublicIp"] as! String
        }
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SystemExceptionNum") && dict["SystemExceptionNum"] != nil {
            self.systemExceptionNum = dict["SystemExceptionNum"] as! Int32
        }
        if dict.keys.contains("SystemTrustDetail") && dict["SystemTrustDetail"] != nil {
            self.systemTrustDetail = dict["SystemTrustDetail"] as! String
        }
        if dict.keys.contains("SystemTrustStatus") && dict["SystemTrustStatus"] != nil {
            self.systemTrustStatus = dict["SystemTrustStatus"] as! Int32
        }
        if dict.keys.contains("SystemWhiteListId") && dict["SystemWhiteListId"] != nil {
            self.systemWhiteListId = dict["SystemWhiteListId"] as! Int32
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

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
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAikcertRequest : Tea.TeaModel {
    public var aikName: String?

    public var aikPub: String?

    public var ekCert: String?

    public var ekPub: String?

    public var nonceDigest: String?

    public var propertyUuid: String?

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
        if self.aikName != nil {
            map["AikName"] = self.aikName!
        }
        if self.aikPub != nil {
            map["AikPub"] = self.aikPub!
        }
        if self.ekCert != nil {
            map["EkCert"] = self.ekCert!
        }
        if self.ekPub != nil {
            map["EkPub"] = self.ekPub!
        }
        if self.nonceDigest != nil {
            map["NonceDigest"] = self.nonceDigest!
        }
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AikName") && dict["AikName"] != nil {
            self.aikName = dict["AikName"] as! String
        }
        if dict.keys.contains("AikPub") && dict["AikPub"] != nil {
            self.aikPub = dict["AikPub"] as! String
        }
        if dict.keys.contains("EkCert") && dict["EkCert"] != nil {
            self.ekCert = dict["EkCert"] as! String
        }
        if dict.keys.contains("EkPub") && dict["EkPub"] != nil {
            self.ekPub = dict["EkPub"] as! String
        }
        if dict.keys.contains("NonceDigest") && dict["NonceDigest"] != nil {
            self.nonceDigest = dict["NonceDigest"] as! String
        }
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
    }
}

public class GenerateAikcertResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataCredentialBlob: String?

        public var keyCredentialBlob: String?

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
            if self.dataCredentialBlob != nil {
                map["dataCredentialBlob"] = self.dataCredentialBlob!
            }
            if self.keyCredentialBlob != nil {
                map["keyCredentialBlob"] = self.keyCredentialBlob!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dataCredentialBlob") && dict["dataCredentialBlob"] != nil {
                self.dataCredentialBlob = dict["dataCredentialBlob"] as! String
            }
            if dict.keys.contains("keyCredentialBlob") && dict["keyCredentialBlob"] != nil {
                self.keyCredentialBlob = dict["keyCredentialBlob"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: GenerateAikcertResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GenerateAikcertResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class GenerateAikcertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAikcertResponseBody?

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
            var model = GenerateAikcertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateNonceRequest : Tea.TeaModel {
    public var aikName: String?

    public var ekCert: String?

    public var ekPub: String?

    public var propertyUuid: String?

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
        if self.aikName != nil {
            map["AikName"] = self.aikName!
        }
        if self.ekCert != nil {
            map["EkCert"] = self.ekCert!
        }
        if self.ekPub != nil {
            map["EkPub"] = self.ekPub!
        }
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AikName") && dict["AikName"] != nil {
            self.aikName = dict["AikName"] as! String
        }
        if dict.keys.contains("EkCert") && dict["EkCert"] != nil {
            self.ekCert = dict["EkCert"] as! String
        }
        if dict.keys.contains("EkPub") && dict["EkPub"] != nil {
            self.ekPub = dict["EkPub"] as! String
        }
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
    }
}

public class GenerateNonceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var credentialBlob: String?

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
            if self.credentialBlob != nil {
                map["CredentialBlob"] = self.credentialBlob!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CredentialBlob") && dict["CredentialBlob"] != nil {
                self.credentialBlob = dict["CredentialBlob"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: GenerateNonceResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GenerateNonceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class GenerateNonceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateNonceResponseBody?

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
            var model = GenerateNonceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IgnoreEventsRequest : Tea.TeaModel {
    public var eventUuids: String?

    public var handleStyle: Int32?

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
        if self.eventUuids != nil {
            map["EventUuids"] = self.eventUuids!
        }
        if self.handleStyle != nil {
            map["HandleStyle"] = self.handleStyle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventUuids") && dict["EventUuids"] != nil {
            self.eventUuids = dict["EventUuids"] as! String
        }
        if dict.keys.contains("HandleStyle") && dict["HandleStyle"] != nil {
            self.handleStyle = dict["HandleStyle"] as! Int32
        }
    }
}

public class IgnoreEventsResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IgnoreEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IgnoreEventsResponseBody?

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
            var model = IgnoreEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ProduceAikcertRequest : Tea.TeaModel {
    public var aikName: String?

    public var certRequest: String?

    public var ekCert: String?

    public var ekPubKey: String?

    public var includeCertChain: Bool?

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
        if self.aikName != nil {
            map["AikName"] = self.aikName!
        }
        if self.certRequest != nil {
            map["CertRequest"] = self.certRequest!
        }
        if self.ekCert != nil {
            map["EkCert"] = self.ekCert!
        }
        if self.ekPubKey != nil {
            map["EkPubKey"] = self.ekPubKey!
        }
        if self.includeCertChain != nil {
            map["IncludeCertChain"] = self.includeCertChain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AikName") && dict["AikName"] != nil {
            self.aikName = dict["AikName"] as! String
        }
        if dict.keys.contains("CertRequest") && dict["CertRequest"] != nil {
            self.certRequest = dict["CertRequest"] as! String
        }
        if dict.keys.contains("EkCert") && dict["EkCert"] != nil {
            self.ekCert = dict["EkCert"] as! String
        }
        if dict.keys.contains("EkPubKey") && dict["EkPubKey"] != nil {
            self.ekPubKey = dict["EkPubKey"] as! String
        }
        if dict.keys.contains("IncludeCertChain") && dict["IncludeCertChain"] != nil {
            self.includeCertChain = dict["IncludeCertChain"] as! Bool
        }
    }
}

public class ProduceAikcertResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataCredentialBlob: String?

        public var keyCredentialBlob: String?

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
            if self.dataCredentialBlob != nil {
                map["DataCredentialBlob"] = self.dataCredentialBlob!
            }
            if self.keyCredentialBlob != nil {
                map["KeyCredentialBlob"] = self.keyCredentialBlob!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataCredentialBlob") && dict["DataCredentialBlob"] != nil {
                self.dataCredentialBlob = dict["DataCredentialBlob"] as! String
            }
            if dict.keys.contains("KeyCredentialBlob") && dict["KeyCredentialBlob"] != nil {
                self.keyCredentialBlob = dict["KeyCredentialBlob"] as! String
            }
        }
    }
    public var data: ProduceAikcertResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ProduceAikcertResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ProduceAikcertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProduceAikcertResponseBody?

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
            var model = ProduceAikcertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutMessageRequest : Tea.TeaModel {
    public var fileData: String?

    public var propertyUuid: String?

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
        if self.fileData != nil {
            map["FileData"] = self.fileData!
        }
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileData") && dict["FileData"] != nil {
            self.fileData = dict["FileData"] as! String
        }
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
    }
}

public class PutMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KmoduleVerificationResult : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") && dict["code"] != nil {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public class PolicyProcResult : Tea.TeaModel {
            public var code: String?

            public var procData: String?

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
                if self.procData != nil {
                    map["procData"] = self.procData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") && dict["code"] != nil {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("procData") && dict["procData"] != nil {
                    self.procData = dict["procData"] as! String
                }
            }
        }
        public class ProgramVerificationResult : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") && dict["code"] != nil {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public class SystemVerificationResult : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") && dict["code"] != nil {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public var kmoduleVerificationResult: PutMessageResponseBody.Data.KmoduleVerificationResult?

        public var nextClientIMAIndex: Int64?

        public var policyProcResult: PutMessageResponseBody.Data.PolicyProcResult?

        public var programVerificationResult: PutMessageResponseBody.Data.ProgramVerificationResult?

        public var systemVerificationResult: PutMessageResponseBody.Data.SystemVerificationResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.kmoduleVerificationResult?.validate()
            try self.policyProcResult?.validate()
            try self.programVerificationResult?.validate()
            try self.systemVerificationResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kmoduleVerificationResult != nil {
                map["kmoduleVerificationResult"] = self.kmoduleVerificationResult?.toMap()
            }
            if self.nextClientIMAIndex != nil {
                map["nextClientIMAIndex"] = self.nextClientIMAIndex!
            }
            if self.policyProcResult != nil {
                map["policyProcResult"] = self.policyProcResult?.toMap()
            }
            if self.programVerificationResult != nil {
                map["programVerificationResult"] = self.programVerificationResult?.toMap()
            }
            if self.systemVerificationResult != nil {
                map["systemVerificationResult"] = self.systemVerificationResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kmoduleVerificationResult") && dict["kmoduleVerificationResult"] != nil {
                var model = PutMessageResponseBody.Data.KmoduleVerificationResult()
                model.fromMap(dict["kmoduleVerificationResult"] as! [String: Any])
                self.kmoduleVerificationResult = model
            }
            if dict.keys.contains("nextClientIMAIndex") && dict["nextClientIMAIndex"] != nil {
                self.nextClientIMAIndex = dict["nextClientIMAIndex"] as! Int64
            }
            if dict.keys.contains("policyProcResult") && dict["policyProcResult"] != nil {
                var model = PutMessageResponseBody.Data.PolicyProcResult()
                model.fromMap(dict["policyProcResult"] as! [String: Any])
                self.policyProcResult = model
            }
            if dict.keys.contains("programVerificationResult") && dict["programVerificationResult"] != nil {
                var model = PutMessageResponseBody.Data.ProgramVerificationResult()
                model.fromMap(dict["programVerificationResult"] as! [String: Any])
                self.programVerificationResult = model
            }
            if dict.keys.contains("systemVerificationResult") && dict["systemVerificationResult"] != nil {
                var model = PutMessageResponseBody.Data.SystemVerificationResult()
                model.fromMap(dict["systemVerificationResult"] as! [String: Any])
                self.systemVerificationResult = model
            }
        }
    }
    public var requestId: String?

    public var data: PutMessageResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = PutMessageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class PutMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutMessageResponseBody?

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
            var model = PutMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterMessageRequest : Tea.TeaModel {
    public var extensions: String?

    public var instanceId: String?

    public var instanceType: String?

    public var propertyAffiliation: Int32?

    public var propertyName: String?

    public var propertyPrivateIp: String?

    public var propertyPublicIp: String?

    public var propertyUuid: String?

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
        if self.extensions != nil {
            map["Extensions"] = self.extensions!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.propertyAffiliation != nil {
            map["PropertyAffiliation"] = self.propertyAffiliation!
        }
        if self.propertyName != nil {
            map["PropertyName"] = self.propertyName!
        }
        if self.propertyPrivateIp != nil {
            map["PropertyPrivateIp"] = self.propertyPrivateIp!
        }
        if self.propertyPublicIp != nil {
            map["PropertyPublicIp"] = self.propertyPublicIp!
        }
        if self.propertyUuid != nil {
            map["PropertyUuid"] = self.propertyUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
            self.extensions = dict["Extensions"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("PropertyAffiliation") && dict["PropertyAffiliation"] != nil {
            self.propertyAffiliation = dict["PropertyAffiliation"] as! Int32
        }
        if dict.keys.contains("PropertyName") && dict["PropertyName"] != nil {
            self.propertyName = dict["PropertyName"] as! String
        }
        if dict.keys.contains("PropertyPrivateIp") && dict["PropertyPrivateIp"] != nil {
            self.propertyPrivateIp = dict["PropertyPrivateIp"] as! String
        }
        if dict.keys.contains("PropertyPublicIp") && dict["PropertyPublicIp"] != nil {
            self.propertyPublicIp = dict["PropertyPublicIp"] as! String
        }
        if dict.keys.contains("PropertyUuid") && dict["PropertyUuid"] != nil {
            self.propertyUuid = dict["PropertyUuid"] as! String
        }
    }
}

public class RegisterMessageResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RegisterMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterMessageResponseBody?

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
            var model = RegisterMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TrustEventsRequest : Tea.TeaModel {
    public var eventUuids: String?

    public var handleStyle: Int32?

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
        if self.eventUuids != nil {
            map["EventUuids"] = self.eventUuids!
        }
        if self.handleStyle != nil {
            map["HandleStyle"] = self.handleStyle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventUuids") && dict["EventUuids"] != nil {
            self.eventUuids = dict["EventUuids"] as! String
        }
        if dict.keys.contains("HandleStyle") && dict["HandleStyle"] != nil {
            self.handleStyle = dict["HandleStyle"] as! Int32
        }
    }
}

public class TrustEventsResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TrustEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TrustEventsResponseBody?

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
            var model = TrustEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnregisterMessageRequest : Tea.TeaModel {
    public var properties: String?

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
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Properties") && dict["Properties"] != nil {
            self.properties = dict["Properties"] as! String
        }
    }
}

public class UnregisterMessageResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnregisterMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnregisterMessageResponseBody?

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
            var model = UnregisterMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyMessageRequest : Tea.TeaModel {
    public var fileData: String?

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
        if self.fileData != nil {
            map["FileData"] = self.fileData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileData") && dict["FileData"] != nil {
            self.fileData = dict["FileData"] as! String
        }
    }
}

public class VerifyMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ImaVerificationResult : Tea.TeaModel {
            public var code: String?

            public var status: Int32?

            public var tcbObsolete: [String]?

            public var untrusted: [String]?

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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tcbObsolete != nil {
                    map["TcbObsolete"] = self.tcbObsolete!
                }
                if self.untrusted != nil {
                    map["Untrusted"] = self.untrusted!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TcbObsolete") && dict["TcbObsolete"] != nil {
                    self.tcbObsolete = dict["TcbObsolete"] as! [String]
                }
                if dict.keys.contains("Untrusted") && dict["Untrusted"] != nil {
                    self.untrusted = dict["Untrusted"] as! [String]
                }
            }
        }
        public class PcrVerificationResult : Tea.TeaModel {
            public var code: String?

            public var status: Int32?

            public var tcbObsolete: [String]?

            public var untrusted: [String]?

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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tcbObsolete != nil {
                    map["TcbObsolete"] = self.tcbObsolete!
                }
                if self.untrusted != nil {
                    map["Untrusted"] = self.untrusted!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TcbObsolete") && dict["TcbObsolete"] != nil {
                    self.tcbObsolete = dict["TcbObsolete"] as! [String]
                }
                if dict.keys.contains("Untrusted") && dict["Untrusted"] != nil {
                    self.untrusted = dict["Untrusted"] as! [String]
                }
            }
        }
        public var imaVerificationResult: VerifyMessageResponseBody.Data.ImaVerificationResult?

        public var pcrVerificationResult: VerifyMessageResponseBody.Data.PcrVerificationResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.imaVerificationResult?.validate()
            try self.pcrVerificationResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imaVerificationResult != nil {
                map["ImaVerificationResult"] = self.imaVerificationResult?.toMap()
            }
            if self.pcrVerificationResult != nil {
                map["PcrVerificationResult"] = self.pcrVerificationResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImaVerificationResult") && dict["ImaVerificationResult"] != nil {
                var model = VerifyMessageResponseBody.Data.ImaVerificationResult()
                model.fromMap(dict["ImaVerificationResult"] as! [String: Any])
                self.imaVerificationResult = model
            }
            if dict.keys.contains("PcrVerificationResult") && dict["PcrVerificationResult"] != nil {
                var model = VerifyMessageResponseBody.Data.PcrVerificationResult()
                model.fromMap(dict["PcrVerificationResult"] as! [String: Any])
                self.pcrVerificationResult = model
            }
        }
    }
    public var data: VerifyMessageResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = VerifyMessageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyMessageResponseBody?

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
            var model = VerifyMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
